provider "google" {
	project = "${var.gcp-project}"
	region = "${var.gcp-region}"
}

resource "google_compute_instance" "inst" {
	name = "${var.common-name}"
	zone = "${var.gcp-region}-a"
	
	machine_type = "f1-micro"
	
	boot_disk {
		initialize_params {
			image = "centos-cloud/centos-7"
		}
	}
	
	network_interface {
		network = "default"
		access_config {
			nat_ip = google_compute_address.static.address
		}
	}
	
	service_account {
		email = "${var.service-account}"
		scopes = ["userinfo-email", "compute-ro", "storage-ro"]
	}
	
	labels = {
		owner = "rakesh"
		createdby = "terraform"
	}
	
	metadata = {
		ssh-keys = join("\n", [for user, key in var.ssh_keys : "${user}:${key}"])
		block-project-ssh-keys = true
	}
}

resource "google_compute_address" "static" {
  name = "ipv4-address"
}