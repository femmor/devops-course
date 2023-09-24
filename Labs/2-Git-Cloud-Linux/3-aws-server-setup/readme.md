
# AWS Lab

In this Lab we will be using AWS Lightsail to create a Linux instance.  We will be using this instance throughout the course.  You can use any AWS service you want, but I recommend Lightsail as it is the easiest to use and the cheapest.  You can use the free tier for most of the course.  There may be some fees for storage and bandwidth.  The fees should be minimal.  Make sure to stop/destroy instances that you are no longer using.  In later chapters you can use Terraform to bring up and down instances as they are needed.


### AWS Free Tier

If you don't already have an account - sign up for a free tier account here.  You will need a credit card to sign up, but you will not be charged unless you go over the free tier limits.

https://aws.amazon.com/free

If you don't want to use AWS, you do not need to sign up. You can instead use a different cloud provider or a local VM. The only part of the course that requires AWS is the Terraform Labs and the AWS CLI Labs.  You can skip those labs, or modify them to use a different cloud provider or local VM.


# Three Access Methods:
There are three main ways to access AWS services:

- AWS Console (https://aws.amazon.com/)
- AWS CLI (https://aws.amazon.com/cli/)
- AWS SDK (https://aws.amazon.com/developer/tools/)

# AWS Lightsail - Create a Linux Instance

For most of the course using free tier AWS Lightsail is sufficient.

https://lightsail.aws.amazon.com/
- Options: Linux, OS Only, Ubuntu 22.04 LTS
- Go with a Free tier instance 

Note: There may be fees for storage and bandwidth. The fees should be minimal. Make sure to stop/destroy instances that you are no longer using.  In later chapters you can use Terraform to bring up and down instances as they are needed.


# Connect to the Instance over SSH

https://lightsail.aws.amazon.com/ls/webapp/home/instances

# Create a Billing Alarm

We will be using AWS CloudWatch to create a billing alarm.  This will alert you if you are going over the free tier limits.  You can also use this to monitor your billing if you are using AWS for other projects.  Almost all companies create Billing alarms to monitor their AWS costs, so this is a good practice.

https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html


# Summary

You created a AWS Instance! We will be using AWS throughout this course to do more and more things. This was just the basics to get a server up and running.