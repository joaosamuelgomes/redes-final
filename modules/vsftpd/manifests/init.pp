class vsftpd {

  package { 'vsftpd':   # Deve conter o nome do pacote a ser instalado
    ensure  => running, # Define o estado que o serviço deve estar
    require => Class['system_update'], # Define que deve ser realizado uma atualização do sistema antes de instalar
    hasrestart => true # Se true o serviço deve reiniciar após a instalação
  }

}
