# este arquivo será o primeiro a ser executado pelo Vagrant

Exec { path => [ '/usr/bin:/usr/sbin:/bin:/usr/local/bin:/usr/local/sbin:/sbin' ] }

# instalando pacotes direto sem uso de modulos
package { [
    'vim',
    'links'
  ]:
  ensure  => 'installed', # para garantir que o pacote esteja disponivel e atualizado
  require => Class['system_update'],
}

# instalando pacotes a partir uso dos modulos
include system_update
include apache
include mysql
include php
include phpmyadmin
include postfix
include mailutils
include mutt
include arquivos
include vsftpd
include squid
include config
include reload
include samba
