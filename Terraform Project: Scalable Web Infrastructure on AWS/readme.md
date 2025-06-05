# 🚀 Terraform Project: Scalable Web Infrastructure on AWS

This project provisions a scalable, load-balanced web infrastructure on **Amazon Web Services** using **Terraform**, an infrastructure-as-code (IaC) tool. The configuration automates the creation of a VPC with public subnets, an Application Load Balancer, EC2 instances managed by an Auto Scaling Group (ASG), and dynamic scaling policies based on traffic and CPU utilization.

## 📌 Key Features

- **Custom VPC** with two public subnets across different Availability Zones.
- **Internet Gateway** and **public route table** for external access.
- **Security Group** allowing inbound HTTP (port 80) and SSH (port 22) traffic.
- **Application Load Balancer** to distribute traffic between instances.
- **Launch Template** for EC2 configuration.
- **Auto Scaling Group** with scaling policies triggered by:
  - **CPU utilization** 
  - **Request count per target** 
- **Health checks** configured on the ALB Target Group.

## 🧱 Architecture Overview

                +-----------------------+
                |  Application Load     |
                |      Balancer (ALB)   |
                +----------+------------+
                           |
           +---------------+---------------+
           |                               |
    +------v------+                 +------v------+
    |   EC2 in    |                 |   EC2 in    |
    | Subnet A    |                 | Subnet B    |
    +-------------+                 +-------------+
           \                             /
            \       Auto Scaling        /
             \      Group (ASG)        /
              +-----------------------+
                      |
                +-----v-----+
                |  Target   |
                |  Group    |
                +-----------+


## 🔧 Requirements

- Terraform ≥ 1.0
- AWS CLI configured with appropriate permissions
- An AWS account
- Add your AMAZON credentials on /.aws/credentials file

## 📝 Usage

1. **Clone the repository**:

   ```bash
   git clone https://github.com/VolodimirY/ASIR/tree/main/Terraform%20Project:%20Scalable%20Web%20Infrastructure%20on%20AWS
   cd terraform-aws-scalable-web
   ```
  
2. **Initialize Terraform**:
   
    ```bash
    terraform init
    ```
3. **Plan and Apply**:

    ```bash
    terraform plan
    terraform apply
    ```
   
