terraform {
  backend "gcs" {
    bucket  = "gcpdevops"
    prefix  = "terraform/state"
    credentials = "/home/app/key.json"
  }
}
