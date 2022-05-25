# -*- mode: ruby -*-
# vi: set ft=ruby

# $script = <<EOF
# sudo apt-get update
#sudo apt-get install nginx -y
#EOF

Vagrant.configure("2") do |config|
  config.vm.define "server1" do |server1| # Nomeando a vm como server1
    server1.vm.box = "ubuntu/bionic64" # Imagem ubuntu utilizada
    server1.vm.network "private_network", ip: "192.168.56.56" # Definindo ip da vm
    server1.vm.provision :"shell", path: "allowports.sh" # Executa comando que libera as portas que um servidor de banco de dados necessita
    server1.vm.provision :"shell", path: "installpuppet.sh"  # versoes mais novas exigem instalar puppet na box
    server1.vm.provision :puppet do |puppet| # Definindo configurações do puppet
      puppet.manifests_path = "manifests" # Caminho onde o puppet achará seu arquivo de configurações
      puppet.manifest_file = "default.pp" # Nome do arquivo de configurações dentro do caminho
      puppet.module_path = "modules" # Pasta onde o puppet encontrará os módulos necessários
      puppet.options = ['--verbose']
    end
    server1.vm.provision :"shell", path: "createusermysql.sh"
  end
end