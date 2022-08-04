## Create S3 backend for Terraform states

```bash
aws s3api create-bucket --bucket doc-state.tf --acl private

aws s3api put-bucket-encryption \
    --bucket doc-state.tf \
    --server-side-encryption-configuration '{"Rules": [{"ApplyServerSideEncryptionByDefault": {"SSEAlgorithm": "AES256"}}]}'
```

## Deployment

```bash
cd dev
```

Set GITHUB_TOKEN environment variable for TF Github provider to work. Token
scope needs to allow creation of Actions Environments and setting of Actions
Secrets 

```bash
export GITHUB_TOKEN=xxx
```

Edit config.auto.tfvars and set environment name and domain name.

Run
```bash
terraform init
terraform apply
```

```bash
cd website
```

Edit config.auto.tfvars and set environment and sftp credentials

Run
```bash
terraform init
terraform apply
```
