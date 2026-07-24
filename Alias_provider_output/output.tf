output "details" {
    value = [aws_instance.my_instance.id, aws_instance.dev_instance.id, aws_instance.my_instance.availability_zone, 
    aws_instance.dev_instance.public_ip, aws_instance.my_instance.public_ip]
}