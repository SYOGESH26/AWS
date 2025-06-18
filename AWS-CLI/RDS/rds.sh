#In This I write rds instance automation script.
#!/bin/bash
aws rds create-db-instance \
	--db-instance-identifier mysql \
	--db-instance-class db.t3.micro \
	--engine mysql \
	--master-username admin \
	--master-user-password admin1234 \
	--allocated-storage 25 \
	--storage-type gp2 \
	--db-subnet-group-name yogesh \
	--publicly-accessible \
	--port 3306 \
	--backup-retention-period 7

#To enter in mysql use following command

end=$(aws rds db-describe-instance --query 'DBInstances[0].Endpoint.Address' --output text)

mysql -h $end -P 3306 -u admin -p 

