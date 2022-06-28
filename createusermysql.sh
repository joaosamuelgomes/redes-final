#!/usr/bin/env bash
DBNAME=usuario
DBUSER=admin
DBPASSWD=admin

#!Define a senha do usuário root
debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
#!Repete o processo
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"

#! Cria um banco de dados
mysql -uroot -p$DBPASSWD -e "CREATE DATABASE $DBNAME"
#! Passa privilégios de root para o usuário dentro do banco criado
mysql -uroot -p$DBPASSWD -e "grant all privileges on $DBNAME.* to '$DBUSER'@'%' identified by '$DBPASSWD'"

#! Cria uma tabela usuario
mysql -uroot -p$DBPASSWD -e "USE $DBNAME CREATE TABLE USUARIO (usu_codigo VARCHAR(20), usu_nome VARCHAR(20), usu_email VARCHAR(20), usu_datadecadastro VARCHAR(20));"
#! Insere dados dentro da tabela usuario
mysql -uroot -p$DBPASSWD -e "USE $DBNAME INSERT INTO USUARIO (usu_codigo, usu_nome, usu_email, usu_datadecadastro) VALUES(1, TESTE, teste@teste.com, 2022-04-27);"