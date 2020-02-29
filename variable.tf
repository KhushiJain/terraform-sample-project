variable "gcp-project" { default = "crypto-gantry-244719" }

variable "gcp-region" { default = "europe-west2" } 

variable "common-name" { default = "rakesh-dev-instance" }

variable "service-account" { default = "687231667717-compute@developer.gserviceaccount.com" }

variable "ssh_keys" {
	type = map(string)
	default = {
		"rakesh.ahirrao" : "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC8qjFOWw5qsvnvSTtzEjmmPucujD0yvIweJPgvAzVhtIgjecwlj749bn7VzzmBuHpq51vF0rAv6cQRAbACCufOqquaZNzuctXYw0/blzqsQ3jSV4QsNQ5X+v3yOVle9CzAMYHC9/eb2XzSSiUKPSyy4LMo2rmz+thd1fnib8R+Ca0k7f3GWqCXIYUseQnYjnDlrFrD4Z5K6kR6C+sHCOzSzDdd3fvD1KI8/DcPokx945KxNDH7ekYhH/gw83xHQhG1QSOTUE1KqKIL4hsuibvO0ceNhp9JaAgrgTrg1EDmbuZlcuWeL4p3TsFnC6xDsOY3HNK6cqInYIBVjihhRcsF rakesh.ahirrao"
	}
}