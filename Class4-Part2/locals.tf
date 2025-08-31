locals {
    common_tags = {
        Name = "Hello-${var.region}"
        Enviroment = "Dev"
        Team = "DevOps"
    }
    
}