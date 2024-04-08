resource "aws_instance" "my_first_instance" {
  ami           = var.ami
#   count = length(var.instance_types)
  instance_type = var.instance_type
  key_name = "prajjwal-key"
  security_groups = [ "suraj_vired" ]
#   count = var.instance_count

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt upgrade -y
              sudo apt install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              sudo echo "Hello World" > /var/www/html/index.html
              EOF


  tags = {
    Name = "HelloWorld"
  }
}