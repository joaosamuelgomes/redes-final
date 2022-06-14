Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.56.56"
  config.vm.provision "ansible" do |ansible|
    ansible.inventory_path = "./inventory"  # path para o arquivo de inventory, onde estão os hosts
    ansible.limit = "all"                   # define o limite de conexões à vm
    ansible.playbook = "playbook.yml"       # path para o playbook, onde estão definidas as instruções de provisionamento
  end
end
