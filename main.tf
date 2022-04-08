resource "vault_aws_secret_backend" "aws" {
    access_key = data.aws_ssm_parameter.access_key.value
    secret_key = data.aws_ssm_parameter.secret_key.value
    path =  "aws"
    region = var.region
    default_lease_ttl_seconds = 3600
    max_lease_ttl_seconds =  7200
  
}

resource "aws_iam_role" "role" {
    name= "deplyment-role"
    assume_role_policy = data.aws_iam_policy_document.policy.json
    tags = local.tags
  
}

resource "aws_iam_role_policy_attachment" "attachment" {
    role = aws_iam_role.role.name
    policy_arn = data.aws_iam_policy.policy.arn
  
}