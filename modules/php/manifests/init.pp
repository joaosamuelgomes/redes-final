class php {

  package { 'php':   # deve conter o nome do pacote a ser instalado
    ensure  => present,
    require => Class['system_update'], # Define que deve ser realizado uma atualização do sistema antes de instalar
  }

  package { 'php-mysqli':
    ensure  => present,
    require => Package['php']
  }

}
