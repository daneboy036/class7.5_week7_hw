# https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
resource "local_file" "foo" {
  content  = "Classic Cheeseburger with Fries"
  filename = "${path.module}/favorite-food.txt"
}
