resource "random_string" "string" {
  length           = 5
  special          = false
}

resource "null_resource" "string" {
  provisioner "local-exec" {
    command = "echo Random string is ${random_string.string.result}"
  }
}

output "sluchaen_string" {
  value = "${random_string.string.result}"
}
