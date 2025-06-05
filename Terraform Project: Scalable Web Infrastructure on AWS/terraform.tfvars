# ------------------------
# CONFIGURATION DOCUMENT
# ------------------------

# ------------------------
# ⚙️ Basic Configuration
# ------------------------

# AWS region where all resources will be deployed
region = "us-east-1"

# AMI (base operating system image). Use a valid Amazon Linux 2 AMI or similar.
ami_id = "ami-0953476d60561c955"

# Virtual machine type. You can change this to t2.micro, t3.small, etc.
instance_type = "t2.nano"

# ------------------------
# 🌐 Network and Internet
# ------------------------

# Name for the Internet Gateway that allows access to the Internet
internet_gateway_name = "terraform-igw"

# ------------------------
# 🚀 Auto Scaling Group
# ------------------------

# Minimum number of instances that will always be running
asg_min_size = 1

# Maximum number of instances that can be launched when scaling out
asg_max_size = 4

# Desired number of instances when the infrastructure starts
asg_desired_capacity = 1

# ------------------------
# 📈 Scaling Policies
# ------------------------

# Enables or disables autoscaling entirely
habilitar_autoscaling = true

# true = only scales up and DOES NOT scale down; false = scales up AND down based on demand
deshabilitar_downscale = false

# CPU-based scaling: a new instance is launched if this % of CPU usage is exceeded
cpu_target_value     = 50  # Percentage of CPU usage to trigger scaling
cpu_instance_warmup  = 30  # Time in seconds for an instance to be ready after scaling

# Request-based scaling per instance
request_target_value    = 100 # Number of requests needed to trigger infrastructure scaling  
request_instance_warmup = 100 # Time in seconds for an instance to be ready after scaling

# ------------------------
# 🧰 Initialization Script
# ------------------------

# This script runs automatically on each instance at launch with sudo permissions
# For example, it can install Apache, add web page files, scripts, etc.

user_data = <<-EOF
#!/bin/bash

yum install -y nginx
systemctl start nginx
systemctl enable nginx

cd /usr/share/nginx/html

curl -O https://raw.githubusercontent.com/VolodimirY/Extra/main/index.html
curl -O https://raw.githubusercontent.com/VolodimirY/Extra/main/styles.css
curl -O https://raw.githubusercontent.com/VolodimirY/Extra/main/scripts.js

sed -i "/<\/body>/i <h5>Private machine IP: $(hostname)</h5>" index.html

systemctl restart nginx

EOF
