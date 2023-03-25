module "vpc" {
  source               = "terraform-aws-modules/vpc/aws"
  name                 = var.aws_ec2_vpc.name
  cidr                 = var.aws_ec2_vpc.cidr
  azs                  = ["${var.aws_region}a", "${var.aws_region}b"]
  private_subnets      = var.aws_ec2_vpc.private_subnets
  public_subnets       = var.aws_ec2_vpc.public_subnets
  enable_dns_hostnames = true
  enable_dns_support   = true
  enable_nat_gateway   = false
  enable_vpn_gateway   = false
}
