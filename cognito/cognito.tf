resource "aws_cognito_user_pool" "foodieflow_user_pool" {
  name = "user_pool_${var.projectName}"

  auto_verified_attributes = ["email"]

  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_email"
      priority = 1
    }
  }
}

resource "aws_cognito_user_pool_client" "client" {
  name = "my_user_pool_client"

  user_pool_id = aws_cognito_user_pool.pool.id

  generate_secret = true
}