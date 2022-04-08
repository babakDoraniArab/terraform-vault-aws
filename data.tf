data "aws_ssm_parameter" "token" {
    name = "/app/vault/token"
}

data "aws_ssm_parameter" "access_key"{
    name = "/app/vault/aws/AWS_ACCESS_KEY"
}
data "aws_ssm_parameter" "secret_key"{
    name = "/app/vault/aws/AWS_SECRET_KEY"
}