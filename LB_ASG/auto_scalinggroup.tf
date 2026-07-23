#write a resource for auto scaling group by attachment my launch template and load balancer
resource "aws_autoscaling_group" "myasg" {
  name                      = "my-auto-scaling-group"
  max_size                  = 4
  min_size                  = 2
  desired_capacity          = 2
  vpc_zone_identifier       = [aws_subnet.public1.id, aws_subnet.public2.id]
  launch_template {
    id      = aws_launch_template.mylt.id
    version = "$Latest"
  }
  
}