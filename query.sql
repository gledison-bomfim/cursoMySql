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

SELECT * FROM cursos
WHERE carga > 35 AND totaulas < 30; 

SELECT * FROM cursos
WHERE nome = 'PHP';

SELECT * FROM cursos
WHERE nome LIKE '%P%';

SELECT * FROM cursos
WHERE nome LIKE '%P%';


SELECT * FROM cursos
WHERE nome LIKE '%Ph%p';


SELECT * FROM cursos
WHERE nome LIKE '%Ph%p_';

SELECT * FROM cursos
WHERE nome LIKE 'p__t%';

SELECT * FROM  gafanhotos 
WHERE nome like '%silva%';

SELECT nacionalidade FROM gafanhotos;

SELECT DISTINCT nacionalidade FROM gafanhotos;

SELECT DISTINCT nacionalidade FROM gafanhotos
order by nacionalidade;

SELECT   DISTINCT carga  FROM cursos
ORDER BY carga;

SELECT  COUNT(*)   FROM cursos;

SELECT  COUNT(*)   FROM cursos WHERE carga >30;

SELECT * FROM cursos ORDER BY carga; 

SELECT MAX(carga) FROM cursos;


SELECT MAX(carga) FROM cursos WHERE ano = '2016';

SELECT MAX(totaulas) FROM cursos WHERE ano = '2016';

SELECT MIN(totaulas) FROM cursos WHERE ano = '2016';

SELECT SUM(totaulas) FROM cursos WHERE ano = '2016';

SELECT AVG(totaulas) FROM cursos;