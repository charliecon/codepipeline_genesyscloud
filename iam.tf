# resource "aws_iam_role" "pipeline_role" {
#     name               = "AWSCodePipelineServiceRole-us-east-1-MyMainPipeline-clone"    
#     tags               = {}
#     path               = "/service-role/"
#     assume_role_policy = jsonencode({
#         "Statement" = [
#             {
#                 "Action" = "sts:AssumeRole"
#                 "Effect" = "Allow"
#                 "Principal" = {
#                     "Service" = "codepipeline.amazonaws.com"
#                 }
#             },
#         ]
#         "Version" = "2012-10-17"
#     })
# }

# TODO: Still have two other policies to terraformise. Don't know if both are actually necessary.
#       Also need to attach these policies to a role. 

# TODO : remove hard coded arns from resource array 
resource "aws_iam_policy" "param_store" {
    name        = "GetSecretsPolicy"
    description = "Policy for secret management access. Created for an CopePipeline. Charlie 28-06-22"
    path        = "/"   
    policy = jsonencode({
        "Statement" = [
            {
            "Action" = [
                "secretsmanager:GetSecretValue",
                "ssm:GetParameters",
            ]
            "Effect" = "Allow"
            "Resource" = [
                "arn:aws:ssm:us-east-1:435681138675:parameter/CodeBuild/GENESYSCLOUD_REGION",
                "arn:aws:ssm:us-east-1:435681138675:parameter/CodeBuild/dev/GENESYSCLOUD_OAUTHCLIENT_ID",
                "arn:aws:ssm:us-east-1:435681138675:parameter/CodeBuild/dev/GENESYSCLOUD_OAUTHCLIENT_SECRET",
                "arn:aws:ssm:us-east-1:435681138675:parameter/CodeBuild/test/GENESYSCLOUD_OAUTHCLIENT_ID",
                "arn:aws:ssm:us-east-1:435681138675:parameter/CodeBuild/test/GENESYSCLOUD_OAUTHCLIENT_SECRET",
                "arn:aws:secretsmanager:us-east-1:435681138675:secret:dev/charlie_genesyscloud_oauth_creds-pSx8KX",
            ]
            "Sid" = "VisualEditor0"
            },
        ]
        "Version" = "2012-10-17"
    })
}