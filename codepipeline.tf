# resource "aws_codepipeline" "codepipeline" {
#     name     = "SecondPipeline-clone"
#     role_arn = aws_iam_role.pipeline_role.arn
#     artifact_store {
#         type     = "S3"
#         location = aws_s3_bucket.codepipeline_bucket.bucket
#     }
#     stage {
#         name = "Source"
#         action {
#             category         = "Source"
#             namespace        = "SourceVariables"
#             output_artifacts = ["SourceArtifact"]
#             name             = "Source"
#             owner            = "AWS"
#             provider         = "CodeStarSourceConnection"
#             version          = "1"
#             configuration = {
#                 BranchName           = "main"
#                 FullRepositoryId     = "charliecon/github-aws-cicd"
#                 OutputArtifactFormat = "CODE_ZIP"
#                 ConnectionArn        = aws_codestarconnections_connection.connection.arn
#             }
#         }
#     }
#     stage {
#         name = "Build"
#         action {
#             input_artifacts  = ["SourceArtifact"]
#             output_artifacts = ["BuildArtifact"]
#             namespace        = "BuildVariables"
#             category         = "Build"
#             name             = "Build"
#             owner            = "AWS"
#             provider         = "CodeBuild"
#             version          = "1"
#             configuration = {
#                 ProjectName = "SecondBuildProject"
#             }
#         }
#     }
# }