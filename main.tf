##
provider "google" {
 credentials = file("/home/app/key.json")
 project     = "gcp-dev-276600"
 region      = "us-east1"
}
