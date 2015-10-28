Vagrant.configure(2) do |config|

  config.vm.box = "amp_centos6.4"
  config.vm.box_url = "http://wdev.qa.admarketplace.net/vagrant_boxes/jenkins_base/centos_6.4_base.box"

  config.vm.provider "virtualbox" do |vb|
     vb.customize ["modifyvm", :id, "--memory", "1024"]
     vb.customize ["modifyvm", :id, "--usb", "off"]
     vb.customize ["modifyvm", :id, "--usbehci", "off"]
  end

  config.vm.provision "shell", path: "./scripts/bootstrap.sh"

end
