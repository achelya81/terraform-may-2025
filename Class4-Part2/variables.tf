variable region {
  default = "us-east-1"
  type = string
  description = "Provide region"
}


variable key_name {
    default = "my-key"
    type = string
    description = "my-key-pair"
  }

  variable port {
    default = [22, 80]
    type = list(number)
    description = "Provide port"
  }

  variable ec2_web { 
    default = {
    ami_id = "ami-0150ccaf51ab55a51"
    type = "t2.micro"
    subnet = "subnet-09f429177d2a31039"
  }
    type = map(string)
  }
  
  variable subnet1_cidr {}
  variable subnet1_az {}
  variable subnet1_name {}

  variable vpc {
    type = object({
      cidr = string
      name = string
    })
    default = {
      cidr = ""
      name = ""
    }
  }
   
   variable subnet {
     type = list(object({
      cidr = string
      az = string
      name = string
     }))
     default =[
      
      {
       az = ""
       cidr = ""
       name = ""
     },

        {
       az = ""
       cidr = ""
       name = ""
     },
        {
       az = ""
       cidr = ""
       name = ""
     },
     ]
   }