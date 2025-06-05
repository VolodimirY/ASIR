provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Terraform-vpc"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.internet_gateway_name
  }
}

resource "aws_subnet" "subnet_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet_b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route_table_association" "subnet_a_assoc" {
  subnet_id      = aws_subnet.subnet_a.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "subnet_b_assoc" {
  subnet_id      = aws_subnet.subnet_b.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_security_group" "web_sg" {
  name   = "terraform-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_launch_template" "web_template" {
  name_prefix   = "terraform-template-"
  image_id      = var.ami_id
  instance_type = var.instance_type

  user_data = base64encode(var.user_data)

  vpc_security_group_ids = [aws_security_group.web_sg.id]


  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_autoscaling_group" "web_asg" {
  desired_capacity     = var.asg_desired_capacity
  max_size             = var.asg_max_size
  min_size             = var.asg_min_size
  vpc_zone_identifier  = [aws_subnet.subnet_a.id, aws_subnet.subnet_b.id]
  launch_template {
    id      = aws_launch_template.web_template.id
    version = "$Latest"
  }
  target_group_arns    = [aws_lb_target_group.web_target_group.arn]
  health_check_type    = "EC2"
  tag {
    key                 = "Name"
    value               = "terraform-instance"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_policy" "escalado_cpu" {
  count                  = var.habilitar_autoscaling && !var.deshabilitar_downscale ? 1 : 0
  name                   = "escalado-cpu"
  policy_type            = "TargetTrackingScaling"
  autoscaling_group_name = aws_autoscaling_group.web_asg.name
  estimated_instance_warmup = var.cpu_instance_warmup
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = var.cpu_target_value
  }
}

resource "aws_autoscaling_policy" "escalado_request_count" {
  count                  = var.habilitar_autoscaling && !var.deshabilitar_downscale ? 1 : 0
  name                   = "escalado-personas"
  policy_type            = "TargetTrackingScaling"
  autoscaling_group_name = aws_autoscaling_group.web_asg.name
  estimated_instance_warmup = var.request_instance_warmup
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ALBRequestCountPerTarget"
      resource_label          = "${aws_lb.web_lb.arn_suffix}/${aws_lb_target_group.web_target_group.arn_suffix}"
    }
    target_value = var.request_target_value
  }
}

resource "aws_lb" "web_lb" {
  name               = "terraform-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.web_sg.id]
  subnets            = [aws_subnet.subnet_a.id, aws_subnet.subnet_b.id]
}

resource "aws_lb_target_group" "web_target_group" {
  name     = "terraform-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
    matcher             = "200"
  }
}

resource "aws_lb_listener" "web_listener" {
  load_balancer_arn = aws_lb.web_lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web_target_group.arn
  }
}


