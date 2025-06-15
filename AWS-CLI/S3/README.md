#In  this I explain S3.sh file.

1.Create bucket 

  Commands used :

  * aws s3api create-bucket
  * --bucket ind-2025
  * --region eu-north-1 \
  * --create-bucket-configuration LocationConstraint=eu-north-1

  This commands help to create bucket in eu-north-1.

2.Copy files from local folder to bucket

 * aws s3 cp ~/AWS/AWS-CLI s3://ind-2025/ --recursive

 This command helps to copy local folder to aws bucket.

3.List files

 * aws s3 ls s3://ind-2025/

  This command helps to list all files in bucket.

4.Remove files.

  * aws s3 rm s3://ind-2025/AWS-CLI/Launch-instances/userdata

  This command helps to remove userdate file from bucket.

5.Remove folder.

  * aws s3 rm s3://ind-2025/AWS-CLI --recursive

  This command helps to remove folder in bucket.
  It betters to use this command to delete bucket.

6.Give public access to the file.

  * aws s3 cp ~/AWS/AWS-CLI s3://ind-2025/ --acl public-read

  This command helps to give public access.

7.Enable versioning

  * aws s3api put-bucket-versioning \
  * --bucket ind-2025 \
  * --versioning-configuration Status=Enabled 

  This commands help to enable bucket versioning(It means save modified files)

8.Enable lifecycle policy

 * aws s3api put-bucket-lifecycle-configuration \
 * --bucket ind-2025 \
 * bucket-lifecycle-configuration file://filename.json

 This commands help to enable lifecycle policy for the bucket.
