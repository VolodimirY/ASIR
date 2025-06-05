# --------------------------------------------
# 🌍 Region and Networking Configuration
# --------------------------------------------

variable "region" {
  description = "AWS region where the resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "internet_gateway_name" {
  description = "Name for the Internet Gateway"
  type        = string
  default     = "main-igw"
}

# --------------------------------------------
# 🖥️ EC2 Instance Configuration
# --------------------------------------------

variable "ami_id" {
  description = "AMI ID used to launch EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type to launch"
  type        = string
  default     = "t3.micro"
}

variable "user_data" {
  description = "Initialization script for EC2 instances"
  type        = string
}

# --------------------------------------------
# 🚀 Auto Scaling Group (ASG) Configuration
# --------------------------------------------

variable "asg_min_size" {
  description = "Minimum number of instances in the Auto Scaling Group"
  type        = number
  default     = 1
}

variable "asg_max_size" {
  description = "Maximum number of instances in the Auto Scaling Group"
  type        = number
  default     = 3
}

variable "asg_desired_capacity" {
  description = "Desired number of instances in the Auto Scaling Group"
  type        = number
  default     = 1
}

# --------------------------------------------
# 📈 Scaling Policies
# --------------------------------------------

# General Autoscaling Toggles
variable "habilitar_autoscaling" {
  description = "Boolean to enable or disable autoscaling"
  type        = bool
  default     = true
}

variable "deshabilitar_downscale" {
  description = "Boolean to disable only downscaling"
  type        = bool
  default     = false
}

# CPU-based Scaling
variable "cpu_target_value" {
  description = "Target CPU utilization (in percentage) for the CPU-based scaling policy"
  type        = number
  default     = 70
}

variable "cpu_instance_warmup" {
  description = "Estimated warm-up time for new instances in the CPU policy (in seconds)"
  type        = number
  default     = 180
}

# RequestCountPerTarget-based Scaling
variable "request_target_value" {
  description = "Target number of requests per instance in the Target Group"
  type        = number
  default     = 100
}

variable "request_instance_warmup" {
  description = "Estimated warm-up time for new instances in the RequestCount policy (in seconds)"
  type        = number
  default     = 180
}
