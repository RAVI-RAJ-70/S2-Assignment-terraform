# resource one.........................................................
# creating s3 bucket using count

resource "aws_s3_bucket" "example01" {
  count = length(var.name)

  bucket = var.name[count.index]

  #acl    = "private"

  tags = {
    name        = var.name[count.index]
    environment = var.environment[0]
    purpose = var.purpose[0]
    owner = var.owner[0]
  }
}

# resource two.......................................................
# creating EC2 instance using for-each loop

resource "aws_instance" "server01" {

  # Create one instance for each subnet

  for_each = toset(var.set)

  ami = "ami-02bb7d8191b50f4bb"

  instance_type = "t2.micro"

  subnet_id = "subnet-0962069167a59d185"

  tags = {

    Name = each.key

    Owner = "Raaz"

    Purpose = "Training"

  }
  volume_tags = {

    Name = each.key

    Owner = "Raaz"

    Purpose = "Training"
  }

}



