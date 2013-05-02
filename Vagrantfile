Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provision :shell, :inline => "apt-get install --yes sudo wget"
  config.vm.provision :shell, :inline => "wget http://strawlab.org/rosinstall/scripts/run_check_electric.bash -O /tmp/run_check_electric.bash"
  config.vm.provision :shell, :inline => "chmod a+x /tmp/run_check_electric.bash"
  config.vm.provision :shell, :inline => "source /tmp/run_check_electric.bash"
end
