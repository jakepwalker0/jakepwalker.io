resource "aws_key_pair" "pem-key" {
  key_name   = "aws_keypair"
  public_key = "${file("files/id_rsa.pub")}"
}