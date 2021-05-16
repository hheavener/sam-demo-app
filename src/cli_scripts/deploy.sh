# Deploys the application to AWS using the cloudformation.yaml template.
# After deploying, the stack can be found in the CloudFormation service
# under the name specified in the --stack-name parameter below in the 
# region specified by the --region parameter.
#
# Learn more about 'sam deploy' here:
# https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-deploy.html

sam deploy;\

# The template file generated after running 'sam package'
--template-file templates/cloudformation.yaml;\

# TODO: The name for the CloudFormation stack
--stack-name <STACK_NAME>;\

# TODO: AWS Toolkit profile name (contains access key credentials to AWS)
#
# For help setting up the AWS Toolkit for VSCode, look here:
# https://docs.aws.amazon.com/toolkit-for-vscode/latest/userguide/setting-up.html
--profile <AWS_TOOLKIT_PROFILE_NAME>;\

# TODO: The region to deploy the SAM application
--region <REGION> # Region for the application
