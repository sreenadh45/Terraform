resource "aws_launch_template" "mylt" {
  name_prefix   = "terraform-lt"
  image_id      = "ami-078fe7ff43e10cf8c"
  instance_type = "t3.micro"
  key_name     = "dhurandhar"

  vpc_security_group_ids = [aws_security_group.mysecgroup.id]
  block_device_mappings {
    device_name = "/dev/xvda"
    ebs {
      volume_size = 10
    }
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "MyLaunchTemplateInstance"
    }
  }
  #write user data for httpd to print hostname on the web page
  user_data = base64encode(<<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd
              sudo systemctl start httpd
              sudo systemctl enable httpd
              echo "<h1>Welcome to my website</h1>" > /var/www/html/index.html
              echo "<h2>Hostname: $(hostname)</h2>" >> /var/www/html/index.html
              EOF
  )
  
}