provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "php_server" {
  ami           = "ami-08c40ec9ead489470" # Ubuntu 22.04 en us-east-1
  instance_type = "t3.micro"
  key_name      = "terraform-key" # asegúrate de tener un par de llaves creado en AWS

  tags = {
    Name = "Servidor-PHP"
  }

  # Permitir acceso SSH y HTTP
  vpc_security_group_ids = [aws_security_group.web_sg.id]
}

resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Permite HTTP y SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "public_ip" {
  value = aws_instance.php_server.public_ip
}
