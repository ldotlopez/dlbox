VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = 'vagrant-wheezy-amd64'
	config.vm.box_url = 'http://elbonia.cent.uji.es/src/vagrant-wheezy-amd64.box'
    config.vm.box_download_checksum = 'aed63c2b21d9e8b25e8c744285c11fc738148dd8'
	config.vm.box_download_checksum_type = 'sha1'

	config.vm.hostname = 'dlbox'
    # config.vm.provision "shell", inline: "apt-get update; apt-get install python -yqq"

	config.vm.provision "ansible" do |ansible|
	    ansible.sudo = true
		ansible.playbook = "provisioning/playbook.yml"
	end

end
