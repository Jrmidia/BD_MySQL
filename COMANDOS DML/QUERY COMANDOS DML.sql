COMANDOS DML - DATA MODIFICATION LANGAGE

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

alter table usuario
drop column sexo;   		-- EXLUIR UM CAMPO

alter table usuario
add column sexo enum('m','f') first;  -- FIRST [NO FINAL] - adiciona o campo no inicio das colunas

alter table usuario
modify column sexo varchar (1) null;  -- MODIFY - modifica o tipo primitivo do campo

alter table usuario
change column nascimento nasc date not null;

alter table usuario
change column endereco bairro varchar (20);  -- CHANGE alterar nome e tipo do campo.