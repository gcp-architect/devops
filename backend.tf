terraform {
  backend "gcs" {
    bucket  = "gcpdevops"
    prefix  = "terraform/state"
    credentials = "/home/ella_anusha16/key.json"
  }
}
