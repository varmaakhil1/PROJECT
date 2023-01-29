

module aws_wordpress {
    source              = "./modules/latest"
    database_name           = "wordpress_db"   
    database_user           = "wordpress_user" 
    // Password will be used to create db user and change it later
    database_password = "PassWord4-user" //password for user database
    shared_credentials_file = "~/.aws/credentials"         //Access key and Secret key file location
    region                  = "eu-south-1"  //Milan Region
    IsUbuntu                = true             // true for ubuntu,false for linux 2  //
    // avaibility zone and their CIDR

     VPC_cidr     = "10.0.0.0/16"     // VPC CIDR
    subnet1_cidr = "10.0.1.0/24"     // Public Subnet for EC2
    subnet2_cidr = "10.0.2.0/24"     //Private Subnet for RDS
    subnet3_cidr = "10.0.3.0/24"     //Private subnet for RDS
    PUBLIC_KEY_PATH  = "./mykey-pair.pub" // key name for ec2, make sure it is created before terrafomr apply
    PRIV_KEY_PATH    = "./mykey-pair"
    instance_type    = "t2.micro"    //type of instance
    instance_class   = "db.t2.micro" //type of RDS Instance
    Zone1          = "eu-south-1a" // for EC2
    Zone2          = "eu-south-1b" //for RDS 
    Zone3          = "eu-south-1c" //for RDS
    root_volume_size = 22
}