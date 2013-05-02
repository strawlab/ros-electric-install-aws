Vagrant.configure("2") do |config|

  # install our repositories
  config.vm.provision :shell, :path => "install_multiverse_repo.sh"
  config.vm.provision :shell, :path => "install_strawlab_public_repo.sh"

  # build as normal user (named "ubuntu")
  config.vm.provision :shell, :inline => "su --login ubuntu --command /vagrant/build_ros.sh"

  config.vm.provider :aws do |aws|
    config.vm.box = "dummy"
    config.vm.box_url = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"
    aws.access_key_id = ENV['AWS_ACCESS_KEY_ID']
    aws.secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
    aws.keypair_name = ENV['AWS_KEYPAIR_NAME']
    aws.ssh_private_key_path = ENV['AWS_SSH_PRIVKEY']
    aws.region = ENV['AWS_REGION']
    aws.security_groups = ENV['AWS_SECURITY_GROUPS']
    aws.ami = ENV['AWS_AMI']
    aws.instance_type = ENV['AWS_INSTANCE_TYPE']
    aws.ssh_username = "ubuntu"
  end
end
