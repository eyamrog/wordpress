# wordpress
WordPress in a VPC in AWS

Prerequisites:
- Select an AWS Region with at least 3 Availability Zones
- Create one S3 Bucket to store WordPress media and another to store WordPress code
- Prepare WordPress AMIs and enable URL Rewrite in the HTTP Server to redirect media requests to the CloudFront Distribution

Deploy the CloudFormation Stacks in this order:
- WebCFD: CloudFront Stack. Take note of the Distribution DNS Name for configuring the .htaccess file. Update the S3 Media Bucket with the policy in "wpmediabucketpolicy.json"
- WebVPC: VPC Stack
- WebSG: Security Group Stack
- AMILookUp: Lambda Function to determine the latest Amazon Linux AMI Id
- Bastion: Bastion Instance
- WebRDS: RDS Instance Stack
- WebALB: Application Load Balancing Stack
- Prepare the WordPress AMIs that will be utilized by WebASG
- WebASG: Auto Scaling Group Stack
