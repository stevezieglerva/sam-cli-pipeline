# sam-cli-pipeline-icf

Creates a pipeline that in turn can run a standad buildspec.yml to create a serverless app using SAM CLI.

## Usage
1. Look at the [run_yaml.sh](run_yaml.sh) examples of how to run the AWS CLI to deploy the CloudFormation stack. You need to update the the parameters for your stack


```
aws cloudformation deploy 
    --template-file pipeline_infra.yaml 
    --stack-name jira-api-export-pipeline 
    --tags Type=jira-api-export Environment=prod 
    --capabilities CAPABILITY_NAMED_IAM 
    --parameter-overrides 
        IAMUser=ziegler-aws 
        GitHubOAuthToken=$GH_PERSONAL_ACCESS_TOKEN 
        RepositoryName=jira-api-export 
        GitHubOwner=ICF-ITModernization 
        S3BucketPrefix=jira 
        BranchName=main
```

2. Copy the buildspec.yml to your SAM app's repo root directory. 
