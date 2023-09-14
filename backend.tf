# creating terraform block for using s3 as backend

terraform {
  backend "s3" {
    
    bucket = "ravi-batch-09"   #........Objects public
    key    = "rajnish.tfstate"
    region = "ap-south-1"
  }
}
