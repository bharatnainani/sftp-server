# Source code = https://github.com/clouddrove/terraform-aws-sftp


module "sftp" {
    source                    = "clouddrove/sftp/aws"
    version                   = "0.15.0"
    name                      = format("%v-sftp-server", var.environment)
    key_path                  = "keys/bharat.pub"
    user_name                 = "sftp-user" # If there are more then 1 user then we will use count
    enable_sftp               = true
    s3_bucket_id              = aws_s3_bucket.sftp_bucket.id
    endpoint_type             = "PUBLIC"  #Keeping this PUBLIC so that you can access it
    tags = {
      Name        = format("%v-sftp-server", var.environment)
      Project     = var.project
      Managedby   = "Terraform"
      Environment = var.environment
    }
}

#S3 bucket to store the sftp files

resource "aws_s3_bucket" "sftp_bucket" {
  bucket = format("%v-sftp-data", var.environment)
  tags = {
    Name        = format("%v-sftp-bucket", var.environment)
    Project     = var.project
    Managedby   = "Terraform"
    Environment = var.environment
  }
}

