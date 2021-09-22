provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region = var.aws_region
}

resource "aws_instance" "app_server" {
    ami = "ami-00dfe2c7ce89a450b"
    instance_type = "t2.micro"

    tags = {
        Name = "Server_app"
    }
}