resource "aws_instance" "okta-wic-ad" {
  instance_type               = var.aws_ec2_instance_type
  ami                         = var.aws_ec2_ami_id
  count                       = var.aws_ec2_instance_count
  key_name                    = aws_key_pair.ec2_key_pair.key_name
  vpc_security_group_ids      = ["${aws_security_group.allow_rdp_http.id}"]
  subnet_id                   = element(module.vpc.public_subnets, count.index)
  associate_public_ip_address = true
  tags = {
    "project" = var.aws_tag_project
  }
}

