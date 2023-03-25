# ssh-keygen -t rsa -b 2048 -f my-keypair
# ssh-keygen -p -m PEM -f my-keypair
# We'll need private key from my-keypair to get the RDP password for the windows instance
resource "aws_key_pair" "ec2_key_pair" {
  key_name   = var.aws_ec2_keypair_name
  public_key = file("${abspath(path.cwd)}/my-keypair.pub")
}
