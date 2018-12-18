# Terraform GKE

![Alt text](https://github.com/jasmeetkohli/terraform_gke/blob/master/terraform-gcp%20(8).png)


### Structure:

|-- main.tf <br />
|-- terraform.tfvars_sample <br />
|-- variables.tf <br />
|-- webApp <br />
&nbsp;&nbsp;&nbsp;    |-- main.tf <br />
&nbsp;&nbsp;&nbsp;    |-- namespace.tf <br />
&nbsp;&nbsp;&nbsp;    |-- replication_controller.tf <br />
&nbsp;&nbsp;&nbsp;    |-- service.tf <br />
&nbsp;&nbsp;&nbsp;    |-- variables.tf <br />
|-- cluster <br />
&nbsp;&nbsp;&nbsp;   |-- README.md <br />
&nbsp;&nbsp;&nbsp;   |-- main.tf <br />
&nbsp;&nbsp;&nbsp;   |-- outputs.tf <br />
&nbsp;&nbsp;&nbsp;   |-- variables.tf <br />
