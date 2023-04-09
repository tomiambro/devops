# devops

Devops template using terraform to deploy infrastructure to AWS and gitops for continous delivery.

### Usage

There is one folder for each environment and a modules folder.

.

├── README.md

├── modules

│   └── compute-module

│       ├── main.tf

│       └── variables.tf

├── prod

│   ├── main.tf

│   └── variables.tf

└── stage

|    ├── main.tf

|    └── variables.tf

To deploy infrastructure and code to an EC2 instance just create a pull request and uncomment lines 3 to 5 on the `terraform.yml` file.