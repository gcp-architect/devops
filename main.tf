provider "google" {
 credentials = file("/home/ella_anusha16/terraform.json")
 project     = "enhanced-bebop-271121"
 region      = "us-west1"
}


// A single Google Cloud Engine instance
resource "google_compute_instance" "default" {
 name         = "terraform"
 machine_type = "f1-micro"
 zone         = "us-west1-a"

 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-9"
   }
 }

// Make sure flask is installed on all new instances for later steps
 metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential python-pip rsync; pip install flask"

 network_interface {
   network = "default"

   access_config {
     // Include this section to give the VM an external ip address
   }
 }
}
