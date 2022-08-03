aws s3api create-bucket --bucket doc-state.tf --acl private

aws s3api put-bucket-encryption \
    --bucket doc-state.tf \
    --server-side-encryption-configuration '{"Rules": [{"ApplyServerSideEncryptionByDefault": {"SSEAlgorithm": "AES256"}}]}'
