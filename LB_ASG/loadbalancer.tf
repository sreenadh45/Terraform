#write a resource for load balancer for my subnets and launch template
resource "aws_elb" "myloadbalancer" {
  name               = "my-load-balancer"
  security_groups    = [aws_security_group.mysecgroup.id]
  subnets            = [aws_subnet.public1.id, aws_subnet.public2.id]

  listener {
  
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}
