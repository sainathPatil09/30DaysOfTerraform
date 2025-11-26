# **Creating S3 bucket with Terraform is so easy**

## **No manual clicks, complete automation with one click Infra up and down**


### **Step 1: Create a terraform.tf file**

 - configure required providers like (AWS, GCP, Azure etc)
 - Also choose compactable versions for seamless automation without any break
 - Also with Provider block we can specify at with region Infrastructure should be provisend

  ```
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.21.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
  ```

###  **Create a file s3.tf (can give any name)**
 - Here code we will write HCL code to provision s3 bucket
```
<block>   <parameter> {
      <args>
}
```

- **block** : we are creating s3 bucket so block is `resource`
- **parameter** : what type of resource you are creating `aws_s3_bucket` and  give local name to this block (any name) `my_bucket`
- **args** : args required to create bucket

```
resource "aws_s3_bucket" "my_bucket" {
  bucket = "test-bucket-sainath"

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
  
}
```
- Make sure you already authenticated your terminal with your AWS account
 - do `aws configure` to authenticate
- terraform validate (to check syntax)
- terraform plan (to dry run infra)
- terraform apply (to create infra)

**And Done a s3 bucket is create you can verify it by checking in your console**

Demo video: https://youtu.be/09HQ_R1P7Lw?si=tc3OMGpJptuYhTB5
