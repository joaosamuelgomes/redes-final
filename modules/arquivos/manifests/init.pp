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
  file {'/var/www/html/src/pages/Grupo-01-samba':
    ensure => 'directory' #Cria uma pasta Grupo-01-samba no caminho var/www/html/src/pages
  }
  file {'/var/www/html/src/pages/Grupo-01-samba/imagens':
    ensure => 'directory' #Cria uma pasta imagens no caminho var/www/html/src/pages/Grupo-01-samba
  }
  file {'/var/www/html/src/pages/Grupo-02-proxy':
    ensure => 'directory' #Cria uma pasta Grupo-02-proxy no caminho var/www/html/src/pages
  }
  file {'/var/www/html/src/pages/Grupo-03-email':
    ensure => 'directory' #Cria uma pasta Grupo-03-email no caminho var/www/html/src/pages
  }
  file {'/var/www/html/src/pages/Grupo-04-firewall':
    ensure => 'directory' #Cria uma pasta Grupo-04-firewall no caminho var/www/html/src/pages
  }
  file {'/var/www/html/src/pages/Grupo-05-arquivos':
    ensure => 'directory' #Cria uma pasta Grupo-05-arquivos no caminho var/www/html/src/pages
  }
  file {'/var/www/html/src/pages/Grupo-06-banco':
    ensure => 'directory' #Cria uma pasta Grupo-06-banco no caminho var/www/html/src/pages
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

  file {'/var/www/html/src/images/vagrantfile.jfif':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/images/vagrantfile.jfif',
  }

  file {'/var/www/html/src/images/database.jfif':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/images/database.jfif',
  }

  file {'/var/www/html/src/pages/Grupo-01-samba/index.html':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-01-samba/index.html',
  }

  file {'/var/www/html/src/pages/Grupo-01-samba/imagens/samba.jpeg':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-01-samba/imagens/samba.jpeg',
  }

  file {'/var/www/html/src/pages/Grupo-01-samba/imagens/uniju.png':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-01-samba/imagens/uniju.png',
  }

  file {'/var/www/html/src/pages/Grupo-02-proxy/index.html':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-02-proxy/index.html',
  }

  file {'/var/www/html/src/pages/Grupo-02-proxy/styles.css':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-02-proxy/styles.css',
  }

  file {'/var/www/html/src/pages/Grupo-02-proxy/app.js':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-02-proxy/app.js',
  }

  file {'/var/www/html/src/pages/Grupo-03-email/index.html':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-03-email/index.html',
  }

  file {'/var/www/html/src/pages/Grupo-04-firewall/index.html':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-04-firewall/index.html',
  }

  file {'/var/www/html/src/pages/Grupo-04-firewall/index.css':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-04-firewall/index.css',
  }

  file {'/var/www/html/src/pages/Grupo-05-arquivos/index.html':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-05-arquivos/index.html',
  }

  file {'/var/www/html/src/pages/Grupo-05-arquivos/index.css':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-05-arquivos/index.css',
  }

  file {'/var/www/html/src/pages/Grupo-06-banco/index.html':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-06-banco/index.html',
  }

  file {'/var/www/html/src/pages/Grupo-06-banco/about.html':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-06-banco/about.html',
  }

  file {'/var/www/html/src/pages/Grupo-06-banco/conexao.php':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-06-banco/conexao.php',
  }

  file {'/var/www/html/src/pages/Grupo-06-banco/readme.html':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-06-banco/readme.html',
  }

  file {'/var/www/html/src/pages/Grupo-06-banco/style.css':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-06-banco/style.css',
  }

  file {'/var/www/html/src/pages/Grupo-06-banco/table.php':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arquivos/src/pages/Grupo-06-banco/table.php',
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

}
