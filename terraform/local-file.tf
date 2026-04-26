resource "local_file" "foo" {
  content  = "Classic Cheeseburger with Fries"
  filename = "${path.module}/favorite-food.txt"
}
