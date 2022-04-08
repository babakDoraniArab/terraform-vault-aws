data "aws_ssm_parameter" "token" {
    name = "/app/vault/token"
}
