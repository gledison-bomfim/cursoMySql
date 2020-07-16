use cadastro;


select  * from gafanhotos;

select * from cursos 
order by nome;

select * from cursos 
order by nome desc;

select * from cursos 
order by idcurso desc;

select nome, carga, ano from cursos
order by nome;

SELECT * FROM cursos WHERE ano = '2016'
ORDER BY nome;

SELECT  nome, descricao, carga FROM cursos 
WHERE ano = '2016'
ORDER BY nome;


SELECT  nome, descricao, ano FROM cursos 
WHERE ano <= '2016'
ORDER BY nome;

SELECT  nome, descricao, ano FROM cursos 
WHERE ano > '2016'
ORDER BY ano, nome;

SELECT  * FROM cursos 
WHERE totaulas BETWEEN '20' and '30'
ORDER BY nome;

SELECT  * FROM cursos 
WHERE ano in (2010, 2015)
ORDER BY nome;

SELECT  * FROM cursos 
WHERE ano not in (2010, 2015)
ORDER BY nome;

SELECT  * FROM cursos 
WHERE carga >35 and totaulas < 30;
