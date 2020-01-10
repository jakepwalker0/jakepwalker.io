resource "aws_eip" "webserver" {
    instance = "${aws_instance.webserver.id}"
    vpc = true
}