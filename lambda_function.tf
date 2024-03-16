resource "aws_lambda_function" "tfer--create-002D-auth-002D-challenge" {
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "create-auth-challenge"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/create-auth-challenge"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::730335442495:role/service-role/create-auth-challenge-role-nz3hh25n"
  runtime                        = "python3.12"
  skip_destroy                   = "false"
  source_code_hash               = "g6+GYVRsQMfSiWXvpmzCIapGVlVZFPy3P6/IUYz78wE="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--define-002D-auth-002D-challenge" {
  s3_bucket     = "lambda-foodieflow"
  s3_key        = "define-auth-challenge-c59f32d6-215c-45fc-8613-3dfb836d627b.zip"
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "define-auth-challenge"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/define-auth-challenge"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::730335442495:role/service-role/define-auth-challenge-role-ohf2ct4p"
  runtime                        = "python3.12"
  skip_destroy                   = "false"
  source_code_hash               = "cQ1FfVLgUlynbCuURuusXEBgRHc62Tf8fNuyy1Ues8g="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--jwt-002D-validator" {
  s3_bucket     = "lambda-foodieflow"
  s3_key        = "jwt-validator-3b16b3a5-cce1-4a6e-87c0-b833260b8fad.zip"
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "jwt-validator"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/jwt-validator"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::730335442495:role/service-role/jwt-validator-role-3vaaix4i"
  runtime                        = "python3.12"
  skip_destroy                   = "false"
  source_code_hash               = "ssBbj/0AqzZ7CBYxgPDxDDQaHJkrqPSTe5GWfBe8Y7I="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--pre-002D-signup" {
  s3_bucket     = "lambda-foodieflow"
  s3_key        = "pre-signup-zip-67a5b6c8-4835-4ed3-a289-7137d4a34e1e.zip"
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "pre-signup"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/pre-signup"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::730335442495:role/service-role/pre-signup-role-6q4osfie"
  runtime                        = "python3.12"
  skip_destroy                   = "false"
  source_code_hash               = "Rgz1UthfsojMKL6KA1UcCRfHJD/DrvJ6i234LQL/wHI="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--pre-002D-signup-002D-new" {
  s3_bucket     = "lambda-foodieflow"
  s3_key        = "pre-signup-new-42ae4e8d-270e-4ccd-bf8c-0bbdf3119675.zip"
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "pre-signup-new"
  handler       = "lambda_function.lambda_handler"
  layers        = ["arn:aws:lambda:us-east-1:730335442495:layer:venv-layer:1"]

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/pre-signup-new"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::730335442495:role/service-role/pre-signup-new-role-0i2qa0od"
  runtime                        = "python3.12"
  skip_destroy                   = "false"
  source_code_hash               = "pwR4Brtc/nLhVvFgo0aIItArdm0I0uAwsVbEnwoUec0="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--pre-002D-signup-002D-zip" {
  s3_bucket     = "lambda-foodieflow"
  s3_key        = "pre-signup-f6c5e86c-11e7-46ed-94da-b7f435eb16a1.zip"
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "pre-signup-zip"
  handler       = "lambda_function.lambda_handler"
  layers        = ["arn:aws:lambda:us-east-1:730335442495:layer:venv-layer:1"]

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/pre-signup-zip"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::730335442495:role/service-role/pre-signup-zip-role-xwtq5fdw"
  runtime                        = "python3.12"
  skip_destroy                   = "false"
  source_code_hash               = "xgEcZ5m0zScz9ZGRw7VTDUKVcjtb3kMQWu4WHAKtzJc="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--verify-002D-auth-002D-challenge" {
  s3_bucket     = "lambda-foodieflow"
  s3_key        = "verify-auth-challenge-f524a303-99f2-49a2-a576-5f3bdc727364.zip"
  architectures = ["x86_64"]

  ephemeral_storage {
    size = "512"
  }

  function_name = "verify-auth-challenge"
  handler       = "lambda_function.lambda_handler"

  logging_config {
    log_format = "Text"
    log_group  = "/aws/lambda/verify-auth-challenge"
  }

  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::730335442495:role/service-role/verify-auth-challenge-role-u9f4k3ic"
  runtime                        = "python3.12"
  skip_destroy                   = "false"
  source_code_hash               = "ytdFuiXWRfzOd7/LH6N7ma7EQHqEBgk1LqwBr65ONRA="
  timeout                        = "3"

  tracing_config {
    mode = "PassThrough"
  }
}
