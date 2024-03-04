resource "aws_instance" "ec2-instance" {
        aim = var.ami_id
        instance_type = var.instance_type
        vpc_security_group_ids = [aws_security_group.mysg.id]
}

resource "aws_security_group" "mysg" {
        name = "ssh-port"
        description = "Allow ssh traffic"
        vpc_id = var.vpc_id
        ingress {
                description = "Allow ssh inbound traffic"
                from_port = var.port_in
                to_port = var.port_out
                protocol = "tcp"
                cidr_blocks = [var.cidr_block]
}
        tags = {
                name ="allow_ssh"
        }
}
