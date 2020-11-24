# platform_customizers
A collection of scripts for platform customizations.

## customize_al2_php74_eb_platform.sh
### Creating AMI
**Base AMI**  
aws-elasticbeanstalk-amzn-2.0.20201028.64bit-eb_php74_amazon_linux_2-hvm-2020-11-06T06-51 - ami-031161258c9071967

**User Data**  
```
#cloud-config
  repo_upgrade: none
```

**Customize Platform**

* SSH to the EC2 instance as ec2-user
* Execute below.
```
git clone https://github.com/spycetek/platform_customizers.git
sudo ./platform_customizers/customize_al2_php74_eb_platform.sh
```

**Create AMI**

* Log out from SSH
* Stop the instance in AWS console
* Create image from AWS console

AMI Name Format Sample:
```
aws-elasticbeanstalk-amzn-2.0.20201028.64bit-eb_php74_nginx118-hvm-2020-11-23T01-30
```

Description Sample:
```
Customized AMI of Amazon Linux 2 PHP7.4 Nginx1.18 based on ami-031161258c9071967
```
