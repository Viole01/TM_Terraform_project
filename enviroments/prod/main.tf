module "ec2_prod" {
  source = "../../modules/ec2"
  ami = var.ami
  instance_type = var.instance_type
  Name = "dev-instance"
  count = 2
}