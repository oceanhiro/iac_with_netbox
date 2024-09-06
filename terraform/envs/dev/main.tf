module "vpc" {

    source = "../../modules/vpc"

    vpc-name = "TEST-VPC1"
    vpc-cidr = "10.1.0.0/16"

}