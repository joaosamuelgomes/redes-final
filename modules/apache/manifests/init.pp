class apache {

  package { 'apache2':   # deve conter o nome do pacote a ser instalado
    ensure  => present,
    require => Class['system_update'], # Define que deve ser realizado uma atualização do sistema antes de instalar
  }

  service { 'apache2':    # nome do serviço
    ensure  => 'running', # Garante que o pacote apache2 precisa estar rodando
    require => Package['apache2'],
  }

}
