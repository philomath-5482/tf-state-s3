/* Creating ec2-instance from us-east-2 region */
resource "aws_instance" "ec2_example" {
 ami           = "ami-092b51d9008adea15"
 instance_type = "t2.micro"
 tags          = {
  Name = "Ec2 Intance with remote state"
 }
}

