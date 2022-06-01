class samba {

  package { 'samba':   # deve conter o nome do pacote a ser instalado
    ensure  => present,
    require => Class['system_update'], # Define que deve ser realizado uma atualização do sistema antes de instalar
  }

  file {'/home/vagrant/samba':
    ensure => 'directory' #Cria uma pasta src no caminho var/www/html
  }

  file {'/etc/samba/smb.conf': # Aqui fica o destino do arquivo dentro da vm
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/samba/smb.conf', # Aqui o lugar onde ele se encontra
  }

  file {'/home/vagrant/samba/arquivoImportante.txt': # Aqui fica o destino do arquivo dentro da vm
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/samba/arquivoImportante.txt', # Aqui o lugar onde ele se encontra
  }

}
