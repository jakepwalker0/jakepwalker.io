resource "aws_route_table_association" "eu-west-2-public" {
    subnet_id = "${aws_subnet.eu-west-2-public.id}"
    route_table_id = "${aws_route_table.eu-west-2-public.id}"
}