class arquivos {

  file {'/var/www/html/src':
    ensure => 'directory' #Cria uma pasta src no caminho var/www/html
  }
  file {'/var/www/html/src/images':
    ensure => 'directory' #Cria uma pasta images no caminho var/www/html/src
  }
  file {'/var/www/html/src/pages':
    ensure => 'directory' #Cria uma pasta pages no caminho var/www/html/src
  }
  file {'/var/www/html/src/scripts':
    ensure => 'directory' #Cria uma pasta scripts no caminho var/www/html/src
  }
  file {'/var/www/html/src/style':
    ensure => 'directory' #Cria uma pasta style no caminho var/www/html/src
  }
  # A partir daqui, todos os comandos são para copiar arquivos do módulo para a VM
  file {'/var/www/html/index.html': # Aqui fica o destino do arquivo dentro da vm
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/index.html', # Aqui o lugar onde ele se encontra
  }

  file {'/var/www/html/style.css':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/style.css',
  }

  file {'/var/www/html/vagrantfile.jfif':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/vagrantfile.jfif',
  }

  file {'/var/www/html/src/images/database.jfif':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/images/database.jfif',
  }
  file {'/var/www/html/src/pages/about.html':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/about.html',
  }
  file {'/var/www/html/src/pages/readme.html':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/readme.html',
  }
  file {'/var/www/html/src/pages/table.php':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/table.php',
  }
  file {'/var/www/html/src/pages/conexao.php':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/conexao.php',
  }
  file {'/var/www/html/src/scripts/script.js':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/scripts/script.js',
  }
  file {'/var/www/html/src/style/about.css':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/style/about.css',
  }
  file {'/var/www/html/src/style/helpers.css':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/style/helpers.css',
  }
  file {'/var/www/html/src/style/index.css':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/style/index.css',
  }
  file {'/var/www/html/src/style/readme.css':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/style/readme.css',
  }
  file {'/var/www/html/src/style/reset.css':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/style/reset.css',
  }
   file {'/etc/vsftpd.conf':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet://vsftpd.conf',
  }
}
