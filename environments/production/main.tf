module "vpc"{
    source = "../../modules/vpc"
    cidr_block = "10.0.0.0/22"
    env = "Prod"
    subnet_cidr = "10.0.1.0/24"
    az = "ap-south-1a"
}

module "ec2"{
    source = "../../modules/ec2"
    ami = "ami-0f918f7e67a3323f0"
    instance_type = "t2.micro"
    subnet_id = module.vpc.mySubnetID
    instance_count = 2
    env = "Prod"
}