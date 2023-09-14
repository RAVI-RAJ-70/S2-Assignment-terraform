# printing ec2 instance ami 
output "output_message_of_ami" {
  value = [for server01 in aws_instance.server01 : server01.ami]
}

# printing s3 bucket id
output "output_message_of_s3_id" {
  value = [for example01 in aws_s3_bucket.example01 : example01.id]
}


/* output "bucket_arn" {
  value = aws_s3_bucket.example01.arn
}


output "bucket_region" {
  value = aws_s3_bucket.example01.region
} */



