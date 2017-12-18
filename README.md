# wordpress
WordPress in a VPC in AWS

Prerequisites:
- Select an AWS Region with at least 3 Availability Zones
- Create one S3 Bucket to store WordPress media and another to store WordPress code
- Prepare WordPress AMIs and enable URL Rewrite in the HTTP Server to redirect media requests to the CloudFront Distribution

Deploy the CloudFormation Stacks in this order:
- WebCFD: CloudFront Stack. Take note of the Distribution DNS Name for configuring the .htaccess file
- WebVPC: VPC Stack
- WebSG: Security Group Stack
- WebRDS: RDS Instance Stack
- WebALB: Application Load Balancing Stack
- WebASG: Auto Scaling Group Stack
