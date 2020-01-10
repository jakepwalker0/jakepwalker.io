resource "aws_instance" "webserver" {
    ami = "${lookup(var.amis, var.aws_region)}"
    availability_zone = "eu-west-2b"
    instance_type = "${var.instance_type}"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids = ["${aws_security_group.webservers.id}"]
    subnet_id = "${aws_subnet.eu-west-2-public.id}"
    associate_public_ip_address = true
    source_dest_check = false

    tags = {
        Name = "jakepwalker.io"
        type = "webserver"
    }
}