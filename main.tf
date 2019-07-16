resource "null_resource" "string" {
  provisioner "local-exec" {
    command = "echo Hello ${var.name}"
  }

}


variable "name" {
    type = "string"
    default = "Yaroslav"
}
