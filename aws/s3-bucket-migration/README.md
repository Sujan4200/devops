#######################
# S3 Bucket Migration #
#######################


Full procedure at:
------------------
	- https://medium.com/@theankitojha/aws-s3-bucket-migration-between-different-aws-accounts-15c7dba0454a

------------------------------------------------------------------------------------
# Various steps involved in s3 bucket migration from one AWS account to another are:
------------------------------------------------------------------------------------

## Get the AWS Account Number for destination account:
First of all, we need to go to the console of the destination account and note down its account Id.

## Source S3 bucket - Policy Attach:
Attach the **bucketPolicy-sourceBucket** bucket policy to the source s3 bucket.

## Destination AWS Account IAM User - Policy Attach:
Attach the **IAMPolicy-destinationAcc** IAM policy to a new IAM user which will be used for bucket migration.

## Installation of AWS CLI in your machine:
Now, install AWS CLI in your machine and configure the access and secret keys as per the newly created IAM user using **aws configure** command.

## Syncing S3 objects to destination AWS Account:
Finally, we are able to sync the objects from source aws s3 bucket to destination aws s3 bucket.



That's all.
Happy learning! :)
