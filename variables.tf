# aws provider config
variable "aws_region" {
  description = "AWS Region"
}

variable "aws_access_key_id" {
  description = "AWS Access Key ID"
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  sensitive   = true
}

# aws tag for all resources
variable "aws_tag_project" {
  description = "AWS Tag on All Resources"
}

# aws vpc
variable "aws_ec2_vpc" {
  description = "AWS VPC for Windows Server"
}

# aws ec2 config
variable "aws_ec2_ami_id" {
  default = {
    # Amazon Linux
    us-east-1 = "ami-0022f774911c1d690"
  }
}

variable "aws_ec2_instance_type" {
  description = "Type of AWS EC2 instance."
  default     = "t2.micro"
}

variable "aws_ec2_keypair_name" {
  description = "AWS keypair name"
}

variable "aws_ec2_instance_count" {
  default = 1
}
