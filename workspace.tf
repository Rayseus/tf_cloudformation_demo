variable "name" {}

resource "aws_cloudformation_stack" "test" {
  name = "${var.name}"
  
  template_body = "${file("${path.module}/clouds.json")}"
}
