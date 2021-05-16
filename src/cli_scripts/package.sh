# Packages the application and sends zip archive to S3.
# After packaging, a copy of the SAM template is returned and stored as cloudformation.yaml
# with references to AWS resources instead of local artifacts.
#
# Learn more about 'sam package' here:
# https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-package.html

sam package;\

# The SAM template specifying how the application should be packaged
--template-file templates/template.yaml;\

# The filename for the returned CloudFormation template
--output-template-file templates/cloudformation.yaml;\

# TODO: S3 bucket for storing .zip archives of the project
--s3-bucket <S3_BUCKET>;\

# TODO: AWS Toolkit profile name (contains access key credentials to AWS)
#
# For help setting up the AWS Toolkit for VSCode, look here:
# https://docs.aws.amazon.com/toolkit-for-vscode/latest/userguide/setting-up.html
--profile <AWS_TOOLKIT_PROFILE_NAME>;\

## TODO: The region for the packaged application
--region us-east-1
