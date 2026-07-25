module "instance" {
  source =  "C:/Users/venna/DevOps/terraform/MODULES/envs/dev/instance"
  iname   = "dev_instance"
  ami     = "ami-078fe7ff43e10cf8c"
  itype   = "t3.micro"
  key     = "dhurandhar"
  volsize = 10
}

module "security" {
  source =  "C:/Users/venna/DevOps/terraform/MODULES/envs/dev/security"
  sgname  = "dev_security"
  ports  = [22, 80, 443]
}