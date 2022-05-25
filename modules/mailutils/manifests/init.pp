class mailutils {

  package { 'mailutils':   # deve conter o nome do pacote a ser instalado
    ensure  => present,
    require => Class['system_update'], # Define que deve ser realizado uma atualização do sistema antes de instalar
  }

}
