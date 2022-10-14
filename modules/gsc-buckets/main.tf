resource "google_storage_bucket" "ndzamngang-test-bk" {
  name          = "${var.name}-bk"
  location      = var.location
  # force_destroy = true
}