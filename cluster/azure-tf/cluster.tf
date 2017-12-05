provider "azurerm" {}

resource "azurerm_resource_group" "test" {
  name     = "acctestRG1"
  location = "West Europe"
}

resource "azurerm_container_service" "test" {
  name                   = "acctestcontainercervice1"
  location               = "${azurerm_resource_group.test.location}"
  resource_group_name    = "${azurerm_resource_group.test.name}"
  orchestration_platform = "Kubernetes"

  master_profile {
    count      = 1
    dns_prefix = "acctestmaster1"
  }

  linux_profile {
    admin_username = "acctestuser1"
    ssh_key        = {
      key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC83wl9Px8IsZeVjPWv36y831fN6zciD1w1O9SDjyuXf63J0md73DSpqFIBBZpY2kKwfPnnTtVU10+2m9uV22pPc3UjzLnw+aJCzOpSZJwhvQ3td+4hy8enkOIbFWrGz8eMbJ01DcGNR61QD+NsGADWEO5EI0C+uQS6XOTiyVOTDsI4LBTmiOC0tre/LvJJ+k1Pu+Q+8CnwgXN4SVFI0hAJ2w/sbutVeYmkkYaEp7fqA//d4iX4EYYGJejb9p/lLhe+J8o04q2fy3ozGbWaBF4F58QqdDecm0eHOZlSzjdErs0dp4XBZicKtOjRr9zE0/zf2XzguGAguFCPMaW2mCOcY8CY6YJQC60dT7nEmID/RxXhObWSuuCJ9KH8RHzqHEEdib+XjFSAupYxGOLQA7iyfvxxvifo80dJuXUPRFRjEcowNqM7hQwO4v6zdTBxO3VRppBe1BlMJm0iDpCztBYtXVNKFUwVaRAqF52Hv1TtQ5h7bYCAwYfIOhUBwL8HjzuwwAUTbBn1uLeBPHQXE6KWX5x0GbpfyZnzbZYCDGQj2vAAUV9/w+IK9hY3KJpyNbFC/UUWif/waQ9XptPWQ60iBbArgV3LX3mj5Hea5qSQIJUtBi2LXcQMPXGJbUH8uCxUma53F+gR318lEMD9XJASK4TNluCHQIqBIFMB1K7Yiw== ilya@sotkov.com"
    }
  }

  agent_pool_profile {
    name       = "default"
    count      = 1
    dns_prefix = "acctestagent1"
    vm_size    = "Standard_A0"
  }

  service_principal {
    client_id     = "e8622286-58f8-4961-9b4e-43b1317c2bdb"
    client_secret = "b69bf7ff-fc37-487a-bcd4-7233688e9f74"
  }

  diagnostics_profile {
    enabled = false
  }

  tags {
    Environment = "Production"
  }
}
