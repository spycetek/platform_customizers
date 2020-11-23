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

### Result AMI Name Format
aws-elasticbeanstalk-amzn-2.0.20201028.64bit-eb_php74_nginx118-hvm-2020-11-23T01-30
