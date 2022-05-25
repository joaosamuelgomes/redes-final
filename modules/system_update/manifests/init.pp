class system_update {
    exec { 'apt-get update':
    command => 'apt-get update', # Executa a atualização do sistema
  }
  $sysPackages = [ 'build-essential' ]
  package { $sysPackages:
    ensure  => 'installed',
    require => Exec['apt-get update'], # Instala o pacote build-essential
  }
}
