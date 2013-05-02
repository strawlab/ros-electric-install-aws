This is repository shows how to get our [ROS](http://www.ros.org)
Electric installation up and running an Amazon AWS using Ubuntu
12.04. You will need to set your credentials like this.

    export AWS_ACCESS_KEY_ID="access key"	     
    export AWS_SECRET_ACCESS_KEY="secret"	     
    export AWS_KEYPAIR_NAME="keypair name"	     
    export AWS_SSH_PRIVKEY="/path/to/file.pem"   
    export AWS_SECURITY_GROUPS="quicklaunch-1"   
    					     
    export AWS_INSTANCE_TYPE="m1.small"	     
    export AWS_REGION="us-east-1"		     
    export AWS_AMI="ami-7747d01e" # 12.04 release

Make sure you have [Vagrant](http://www.vagrantup.com) installed with the
AWS plugin. Then type:

    vagrant up --provider=aws
