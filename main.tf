####
provider "google" {
 credentials = file("/home/ella_anusha16/key.json")
 project     = "gcp-dev-276600"
 region      = "us-east1"
}

