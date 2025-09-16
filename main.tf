provider "aws" {
  region = "us-east-1" # or another Free Tier–friendly region
}
aws ec2 describe-instance-types \
  --filters Name=free-tier-eligible,Values=true \
  --query "InstanceTypes[*].InstanceType" \
  --output text
resource "aws_instance" "three" {
  ami           = "ami-xxxxxxxx" # Replace with a valid Free Tier–eligible AMI
  instance_type = "t2.micro"     # ✅ Free Tier–eligible
  ...
}

