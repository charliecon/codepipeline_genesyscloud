# /* DEV */
# resource "aws_ssm_parameter" "dev_client_id" {
#     name        = "/CodeBuild/dev/GENESYSCLOUD_OAUTHCLIENT_ID"
#     description = "Genesys Cloud dev environment oauth client ID."
#     data_type   = "text"
#     key_id      = "alias/aws/ssm"
#     tier        = "Standard"
#     type        = "SecureString"
#     value       = var.dev_genesyscloud_oauthclient_id
# }

# resource "aws_ssm_parameter" "dev_client_secret" {
#     name        = "/CodeBuild/dev/GENESYSCLOUD_OAUTHCLIENT_SECRET"
#     description = "Genesys Cloud dev environment oauth client secret."
#     data_type   = "text"
#     key_id      = "alias/aws/ssm"
#     tier        = "Standard"
#     type        = "SecureString"
#     value       = var.dev_genesyscloud_oauthclient_secret
# }

# /* TEST */
# resource "aws_ssm_parameter" "test_client_id" {
#     name        = "/CodeBuild/test/GENESYSCLOUD_OAUTHCLIENT_ID"
#     description = "Genesys Cloud test environment oauth client ID."
#     data_type   = "text"
#     key_id      = "alias/aws/ssm"
#     tier        = "Standard"
#     type        = "SecureString"
#     value       = var.test_genesyscloud_oauthclient_id
# }

# resource "aws_ssm_parameter" "test_client_secret" {
#     name        = "/CodeBuild/test/GENESYSCLOUD_OAUTHCLIENT_SECRET"
#     description = "Genesys Cloud test environment oauth client secret."
#     data_type   = "text"
#     key_id      = "alias/aws/ssm"
#     tier        = "Standard"
#     type        = "SecureString"
#     value       = var.test_genesyscloud_oauthclient_secret
# }

# resource "aws_ssm_parameter" "oauth_client_region" {
#     name  = "/CodeBuild/GENESYSCLOUD_REGION"
#     type  = "String"
#     value = var.genesyscloud_oauthclient_region
# }