# resource "aws_s3_bucket" "codepipeline_bucket" {
#     bucket = "codepipeline-us-east-1-57214888729"
# }

# resource "aws_s3_bucket_policy" "bucket_policy" {
#     bucket = aws_s3_bucket.codepipeline_bucket.bucket
#     policy = jsonencode({
#         "Id" = "SSEAndSSLPolicy"
#         "Statement" = [
#             {
#                 "Action" = "s3:PutObject"
#                 "Condition" = {
#                     "StringNotEquals" = {
#                         "s3:x-amz-server-side-encryption" = "aws:kms"
#                     }
#                 }
#                 "Effect"    = "Deny"
#                 "Principal" = "*"
#                 "Resource"  = "arn:aws:s3:::codepipeline-us-east-1-57214888729/*"
#                 "Sid"       = "DenyUnEncryptedObjectUploads"
#             },
#             {
#                 "Action" = "s3:*"
#                 "Condition" = {
#                     "Bool" = {
#                         "aws:SecureTransport" = "false"
#                     }
#                 }
#                 "Effect"    = "Deny"
#                 "Principal" = "*"
#                 "Resource"  = "arn:aws:s3:::codepipeline-us-east-1-57214888729/*"
#                 "Sid"       = "DenyInsecureConnections"
#             },
#         ]
#         "Version" = "2012-10-17"
#     })
# }