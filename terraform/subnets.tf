resource "aws_subnet" "eu-west-2-public" {
    vpc_id = "${aws_vpc.default.id}"

    cidr_block = "${var.public_cidr}"
    availability_zone = "eu-west-2b"

    tags = {
        Name = "Public Subnet"
    }
}

resource "aws_subnet" "eu-west-2c-public" {
    vpc_id = "${aws_vpc.default.id}"

    cidr_block = "${var.public_cidr}"
    availability_zone = "eu-west-2c"

    tags = {
        Name = "Public Subnet"
    }
}