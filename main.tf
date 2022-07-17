# function code archieve
data "archive_file" "function_code" {
  type             = "zip"
  source_file      = "${path.module}/src/lambda_function.py"
  output_file_mode = "0666"
  output_path      = "${path.module}/files/lambda_function.zip"
}

data "archive_file" "layer_code" {
  type             = "zip"
  source_dir       = "${path.module}/src/shared/"
  output_file_mode = "0666"
  output_path      = "${path.module}/files/lambda_layer.zip"
}
