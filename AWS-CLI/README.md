#In this I explain ELB-and-ASG.sh file.

1. Create launch template.
   * aws ec2 create-launch-template \
   * --launch-template-name ubuntu \
   * --version-description "v1" \
   * --launch-template-data '{
   * "ImageId": "ami-042b4708b1d05f512",
   * "InstanceType": "t3.micro",
   * "SecurityGroupIds": ["sg-0cb90b73f6b498377"],
   * "KeyName": "LINUX",
   * "BlockDeviceMappings": [
   *  {
   *    "DeviceName": "/dev/sdb",
   *    "Ebs": {
   *      "VolumeSize": 20,
   *      "VolumeType": "gp2"
   *    }
   *   }
   * ]
   * }'

   This helps to create Template with 20GB storage capacity.

2.Launch instance from launch template
   * aws ec2 run-instances \
   * --launch-template LaunchTemplateName=ubuntu,Version=1 \
   * --query 'Instances[0].InstanceId' \
   * --output text)

3.Create Target Groups
  * aws elbv2 create-target-group \
  * --name yogesh \
  * --protocol HTTP \
  * --port 80 \
  * --vpc-id vpc-045774ae9176698dd \
  * --health-check-protocol HTTP \
  * --health-check-path / \
  * --health-check-interval-seconds 30 \
  * --health-check-timeout-seconds 5 \
  * --healthy-threshold-count 5 \
  * --unhealthy-threshold-count 2 \
  * --target-type instance \
  * --query 'TargetGroups[0].TargetGroupArn' \
  * --output text)

  This helps to create target group addtional with health checkups.

4.Register instances to targets group.
  * aws elbv2 register-targets \
  * --target-group-arn $TI \
  * --targets Id=$IID

  This helps to register instances to target group.

5.Create load balancer
  * aws elbv2 create-load-balancer \
  * name ylb \
  * --subnets subnet-0ee364cb4bc327550 subnet-0874547ec9c59a4d6 \
  * --security-groups sg-07171e8fa0eb2f751 \
  * --scheme internet-facing \
  * --ip-address-type ipv4 \
  * --type application \
  * --query 'LoadBalancers[0].LoadBalancerArn' \
  * --output text)

  This helps to create load balancer 

6.Create listener for load balancer.
  * aws elbv2 create-listener \
  * --load-balancer-arn $elb \
  * --protocol HTTP \
  * --port 80 \
  * --default-actions Type=forward,TargetGroupArn=$TI

  This help to create listener for load balancer.

7.Create ASG.

  * aws autoscaling create-auto-scaling-group \
  * --auto-scaling-group-name ASG \
  * --launch-template LaunchTemplateName=ubuntu,Version=1 \
  * --max-size 5 \
  * --min-size 2 \
  * --desired-capacity 3 \
  * --vpc-zone-identifier "subnet-0ee364cb4bc327550,subnet-0874547ec9c59a4d6" \
  * --target-group-arns "paste arn"

  This commands helps to create auto scaling groups. 

  



