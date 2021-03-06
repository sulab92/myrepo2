provider "aws" {
  region     = "ap-south-1"
  access_key = "
  secret_key = "
  }
provider "aws" {
  region = "us-east-1"
  alias  = "hello"
}
resource "aws_instance" "myec2" {
  ami           = "ami-08f63db601b82ff5f"
  instance_type = "t2.micro"
}

resource "aws_instance" "myec3" {

  instance_type = "t2.medium"
  ami           = "ami-04d29b6f966df1537"
  provider      = aws.hello
}
