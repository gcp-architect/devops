terraform {
  backend "gcs" {
    bucket  = "devops4me"
    prefix  = "terraform/state"
    credentials = "/home/ella_anusha16/terraform.json"
  }
}
