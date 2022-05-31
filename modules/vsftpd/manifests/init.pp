class vsftpd {

  package { 'vsftpd':   # Deve conter o nome do pacote a ser instalado
    ensure  => present, # Define o estado que o serviço deve estar
    require => Class['system_update'], # Define que deve ser realizado uma atualização do sistema antes de instalar
  }

   file {'/etc/vsftpd.conf':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/vsftpd/vsftpd.conf',
  }
}
