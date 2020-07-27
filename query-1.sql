create database cadastro
default character set utf8
default collate utf8_general_ci
;

use cadastro;

create table pessoa (
id_pessoa int primary key  auto_increment ,
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
(nome, nascimento, sexo, peso, altura) 
values 
('Alex', '1998-10-05', 'M', '80.00', '1.75' ),
('Lucas', '1998-10-05', 'M', '80.00', '1.75' ),
('Victor', '1998-10-05', 'M', '80.00', '1.75' );


alter table pessoa
drop column profissao;

alter table pessoa
add column profissao varchar(10) after nome;

alter table pessoa
modify column profissao varchar(30);

alter table pessoa
change prof profissao  varchar (30);

alter table pessoa
drop column profissao;

alter table pessoa
rename to pessoas;

alter table pessoas
rename to pessoa;


create table if not exists cursos(
nome varchar (30) not null unique,
descrição text ,
carga int unsigned,
totaulas int,
ano year default '2020'
) default charset utf8;

alter table cursos
add column id_curso int  first;

alter table cursos
add primary key  (id_curso);


select * from cursos;
desc cursos;

insert into cursos values
('6','Tesase', 'n sei', '10', '20', '2015');

update cursos
set nome = 'HTML 5' WHERE id_curso = '1';
update cursos
set nome = 'tste 44', ano = '2010', carga= '40' WHERE id_curso = '6' limit 1;

delete from cursos
where id_curso = '4';

truncate table cursos;

