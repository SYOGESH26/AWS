#In  this I explain about S3 folder
----------------------------------
File 1:- create-bucket.sh
----------------------------------
Commands used:-
* aws s3api create-bucket (Starting command to create bucket.)
* --bucket bucketname (In this we specify Bucket name.)
* --region regionname (In this we specify region.)
* --create-bucket-configuration LocationConstraint=regionname (In this we specifically say I want my bucket in this region.)

![s3 l1](https://github.com/user-attachments/assets/88e51e75-2db8-4ef1-b1c2-32b6ad667cdd)

-----------------------------------
Output

![s3 1](https://github.com/user-attachments/assets/8aa37f87-963f-499f-a4e0-4016a7c4021c)

----------------------------------
File 2:-s3-upload-download-listfiles-listfolder-deletefiles.sh
----------------------------------
Commands used:-
* aws s3 cp localfolder s3://bucketname/ (Copy file from local folder to s3 bucket.)
* aws s3 cp s3://bucketname/filename localfolder (Copy file from Bucket to localfolder.)
* aws s3 ls s3://bucketname/ (List bucket files.)
* aws s3 rm s3://bucketname/ --recursive (Remove files from folder.)
* aws s3 rm s3://bucketname/filename (Remove file from s3 Bucket.)
  
  ![s3 l2](https://github.com/user-attachments/assets/47b91139-75cc-4d95-beec-80b6df3e5ef9)

  -----------------------------------
  Output

  ![s3 2](https://github.com/user-attachments/assets/17fba6fe-a567-4d7c-9c2a-96123601c3b2)

  ------------------------------------
  File 3:-acl-versioning.sh
  ------------------------------------
  Commands used:-
  * aws s3 cp localfolder s3://bucketname/ --acl public-read
  * aws s3api put-bucker-versioning (This command for enabling versionong.)
  * --bucket bucketname (Provide bucket name.)
  * --versioning-configuration status=enabled (This enables bucket versioning)

    ![s3 l3](https://github.com/user-attachments/assets/6c65509a-c48b-4876-a519-a1a39b1cc01d)

 -----------------------------------
 Output:-

 ![s3 3](https://github.com/user-attachments/assets/72753ba6-1081-48e6-b645-13cb186922ed)








