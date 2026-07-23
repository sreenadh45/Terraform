resource "aws_instance" "my_instance" {
  for_each = var.instance_names
  tags = {
    Name = each.value.iname
  }
  ami           = each.value.ami_id    
  instance_type = each.value.itype
  key_name      = each.value.ikey
  root_block_device {
    volume_size = each.value.volume
  }
  availability_zone = each.value.az
  
}

variable "instance_names" {
  type = map(object({
    iname               = string
    ami_id              = string    
    itype               = string
    ikey                = string
    volume              = number
    az                  = string    
  }))
  default = {
    instance1 = {
      iname             = "instance1"
      ami_id            = "ami-078fe7ff43e10cf8c"
      itype             = "t3.micro"
      ikey              = "dhurandhar"
      volume            = 8
      az                = "us-east-2a"
    }       
    instance2 = {
      iname             = "instance2"
      ami_id            = "ami-078fe7ff43e10cf8c"
      itype             = "c7i-flex.large"
      ikey              = "dhurandhar"
      volume            = 8
      az                = "us-east-2b"
    }
  }

}