resource "aws_instance" "ziyote_ec2_first" {
  ami           = "ami-06b09bfacae1453cb" #works ONLY in us-east-1
  instance_type = "t2.micro"

  subnet_id = aws_subnet.public_subnet_1.id
  key_name  = "radostinpaskalev_key"
  # we will be using the heredoc syntax
  user_data                   = <<EOF
  #!/bin/bash
  sudo yum update -y
  sudo yum install -y httpd
  sudo systemctl start httpd.service
  sudo systemctl enable httpd.service
  sudo echo "<h1> At $(hostname -f) </h1>" > /var/www/html/index.html
  EOF
  associate_public_ip_address = true
  tags = {
    Name = "Ziyo_first_instance"
  }
}