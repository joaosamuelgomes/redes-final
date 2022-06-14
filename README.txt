## Pré requisitos:


' sudo apt update '
' sudo apt-get update '


- Vagrant
' $ sudo apt install -y vagrant '


- VirtualBox
' $ sudo apt install -y virtualbox '


- Ansible
' $ sudo apt install -y ansible '




## Box
 Com esses programas instalados basta executar o seguinte comando na pasta root do trabalho: "vagrant up"
 Com a vm rodando acesse a página web com o ip " 192.168.56.56 "






## Samba
 Para realizar o teste do servidor Samba basta abrir o gerenciador de arquivos e digitar na barra de pesquisa:
 "smb://192.168.56.56/samba/" 
 Usuário = " vagrant "
 Senha= " 123 "


 O Samba serve apenas para leitura, não sendo possível alterar seu conteúdo, pois foi assim configurado no Playbook, porém essa configuração pode ser alterada.






## Proxy
 Para que seja possível testar o proxy, necessitamos primeiramente configurar ele no navegador:
- Encontre o menu de configurações do seu navegador
- Busque por configurações avançadas
- Busque pela opção para configurar o proxy
- Busque pela opção de configuração manual do proxy
- Adicione o seguinte IP como endereço do proxy - [192.168.60.58]()
- Adicione a seguinte porta como porta do serviço - [3128]()


 Após realizar estas configurações o teste pode ser realizando tentando acessar os seguintes sites:
- [google.com](https://google.com)
- [bing.com](https://bing.com)
- [yahoo.com](https://yahoo.com)
- [duckduckgo.com](https://duckduckgo.com)
- [ask.com](https://ask.com)
- [aol.com](https://aol.com)
- [searchencrypt.com](https://searchencrypt.com)
- [msn.com](https://msn.com)
- [wolframalpha.com](https://wolframalpha.com)
- [nationmaster.com](https://nationmaster.com)


 Estas URLs são bloqueadas pelo proxy








## Postfix
 Para realizar o teste do postfix, precisamos primeiramente acessar a máquina e criar um usuário:


- Acessar máquina
' $ vagrant ssh '


- Criar usuário
' $ sudo adduser destinatario '


- Após estes passos acesse o servidor via telnet:
' $ telnet localhost 25 '
(Caso queira este servidor também pode ser acessado por fora da máquina com " $ telnet 192.168.56.56 " )


- No terminal da telnet por os seguintes comandos:


"
MAIL FROM: root@localhost
RCPT TO: destinatario@localhost


DATA
Subject: Título do Email


Aqui está o corpo do nosso email


.
"
 * O ponto marca o final do corpo do email.


- Para sair do telnet
' quit '


- Para testar se o email foi enviado, faça login como destinatário
' $ su destinatario '


- Veja sua caixa de entrada com 
' $ mail '
 O email recebido irá aparecer na caixa de entrada


- Dentro da vm, você também pode ver seus emails com o mail client "Mutt", que já irá estar instalado, rode: `$ mutt`, o mutt pode ser usado inclusive para facilmente deletar, responder ou encaminhar os emails


## UFW
O UFW libera as portas necessárias para FTP e bloqueia conexões do ip 203.0.113.4

Para habilitar o UFW entre no box com 'vagrant ssh'
Dentro do box digite o comando 'sudo ufw enable'

## FTP
 Para conectar no servidor de arquivos, primeiramente precisamos instalar o FileZilla (https://filezilla-project.org), após a instalação do mesmo basta realizar os seguintes passos:
- Dentro do Filezilla vá para File > Site Manager > New Site
- Nas opções de criptografia selecione " TLS explícito "
- Utilize os seguintes dados nos campos:
   Host: " 192.168.56.56 "
   Logon Type: " Ask Password "
   User: " teste "
- Clique em connect e insira a senha " teste "
- Para fazer o upload de um arquivo, arraste um arquivo para a janela abaixo de Remote Site
- Para fazer o download de um arquivo ou pasta, clique com o botão direito e escolha Download
