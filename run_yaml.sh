# This is a sample way to deploy the template with the required parameters

# Stack name variables 
export STACK_NAME="dynamodb-fulltext-pipeline"
export TARGET_STACK_NAME="dynamodb-fulltext"
export TARGET_PARAMETER_OVERRIDES="Test=0"

# GitHub connection variables
export GITHUB_OWNER="stevezieglerva"
export REPOSITORY_NAME="aws-dynamodb-fulltext"
export BRANCH_NAME="main"

# Tag variables
export TYPE="dynamodb-fulltext"
export ENVIRONMENT="prod"


aws cloudformation deploy --template-file pipeline_infra.yaml --stack-name $STACK_NAME --tags Type=$TYPE Environment=$ENVIRONMENT --capabilities CAPABILITY_NAMED_IAM --parameter-overrides GitHubOAuthToken=$GH_PERSONAL_ACCESS_TOKEN BranchName=$BRANCH_NAME RepositoryName=$REPOSITORY_NAME GitHubOwner=$GITHUB_OWNER TargetStackName=$TARGET_STACK_NAME



