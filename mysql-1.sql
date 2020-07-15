create database cadastro
default character set utf8
default collate utf8_general_ci
;

use cadastro;

create table pessoa (
id_pessoa int primary key  auto_increment NOT NULL,
nome varchar (30) NOT NULL,
nascimento date NOT NULL,
sexo enum ('M', 'F')NOT NULL,
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasil'

) default charset = utf8;

describe pessoa;
select * from pessoa;


insert into pessoa 
(nome, nascimento, sexo, peso, altura ) 
values 
('Alex', '1998-10-05', 'M', '80.00', '1.75' ),
('Lucas', '1998-10-05', 'M', '80.00', '1.75' ),
('Victor', '1998-10-05', 'M', '80.00', '1.75' );