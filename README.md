# docker-build-azure-container-registry
Terraform - Docker Build, Push and Pull from a custom Registry

Goal:
- An HTML page rendering the text "Giacomo Quaglia Exercise 003 - VM 01" will be browsable at the URL http://<IP_1>:80/
- An HTML page rendering the text "Giacomo Quaglia Exercise 003 - VM 02" will be browsable at the URL http://<IP_2>:80/

Expectations:
- Azure Cloud Resources will be created in the Resource Group: Giacomo-Quaglia-001
- Stack: Linux virtual machines with a NGINX container exposing the requested HTML pages
  - A SINGLE docker image named "text-printer" will be built and pushed on a new custom PRIVATE Azure Container Registry
- Public IP on top of the virtual machines to make the VMs reachable on internet
- The Cloud Resources provisioning will be done ONLY through Terraform
  - The Azure credentials for Terraform are available in the LastPass shared folder "Shared-Tutoring Giacomo Quaglia"
- The Virtual Machines configurations will be performed through bash script/s to run after the Cloud Resources provisioning
  - The Terraform "remote-exec" provider or other solutions can be used to execute the script/s
- Docker Image "text-printer": consists of a nginx process that publishes a static HTML page whose content is taken from the container variable "TEXT_TO_PRINT"
- Azure Container Registry:
  - tier: "Basic"
  - will be created by it's own terraform
- The work, to be considered done, should be pushed in the git repository "tutoring_giacomo-quaglia_terraform-001"
  - branch name: "tickets/<current_ticket_id>"
  - folder "docker-registry" with the terraform code + state for the Azure Container Registry creation
  - folder "vms" with the terraform code for the VMs creation
  - folder "text-printer" with all the code about the docker image creation + docker push commands used

![tickets-SXPDEVOG-445](https://github.com/giacomoquaglia11/docker-build-azure-container-registry/assets/153645847/dcc9b063-81cc-4d88-bc0c-95e61c84f998)
