output "ec2_instance-id" {
        description = "Instance ID of ec2 instance"
        value = aws_instance.ec2.id
}
