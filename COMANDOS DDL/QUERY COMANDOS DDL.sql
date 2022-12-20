COMANDOS DDL - DATA DEFINITION LANGAGE

create database cadastro

create table usuario (
id_usuario int not null,
nome varchar (45) not null,
cpf varchar (8) not null,
Endereco Varchar (50) null,
primary key (id_usuario)
);

alter table usuario
add column nascimento date;

-- desc usuario

alter table usuario
add column sexo varchar(1);  -- adicionar um campo 

alter table usuario
add column sexo enum('m','f') after cpf;   -- AFTER - insere o campo após a coluna declarada 

alter table usuario			-- EXLUIR UMA COLUNA [CAMPO]
drop column sexo;   		

alter table usuario
add column sexo enum('m','f') first;  -- FIRST [NO FINAL] - adiciona o campo no inicio das colunas

alter table usuario
modify column sexo varchar (1) null;  -- MODIFY - modifica o tipo primitivo do CAMPO

alter table usuario
change column nascimento nasc date not null;

alter table usuario
change column endereco bairro varchar (20);  -- CHANGE alterar nome e tipo do CAMPO

alter table usuario
rename to perfil; 		-- RENAME TO - alterar o nome da TABELA

desc USUARIO

-- IF EXISITS [SE EXISITIR]  -  IF NOT EXISITS [SE NÃO EXISTIR]
create table if not exists perfil (				
id_perfil int not null,
nome_perfil varchar (14) not null,
biografia varchar (255) null
);

alter table perfil  			-- ADD PRIMARY KEY - definir a chave primary key após a criação da tabela
add primary key (id_perfil);

-- drop table perfil

desc perfil

instagram @jr.midia
