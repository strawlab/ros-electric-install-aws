Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.provision :shell, :path => "install_strawlab_public_repo.sh"
  config.vm.provision :shell, :path => "build_ros.sh"
end
