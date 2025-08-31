resource "aws_instance" "web" {
  ami           = var.ec2_web["ami_id"]
  instance_type = var.ec2_web["type"]
  subnet_id = var.ec2_web["subnet"]

}

 variable ec2_web {
   default = {
    ami_id = "ami-05ffe3c48a9991133"
    type = "t2.micro"
    subnet = "subnet-09f429177d2a31039"
   }
 
 }
