use cadastro;

select  * from gafanhotos;

select  * from cursos;

select  * from gafanhoto_assiste_curso;

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

SELECT  carga FROM cursos
GROUP BY carga;

SELECT totaulas, COUNT(nome) FROM cursos
GROUP BY totaulas
ORDER BY totaulas;

SELECT carga, COUNT(nome) FROM cursos
GROUP BY carga;

SELECT * FROM cursos WHERE totaulas = 12;


SELECT carga, COUNT(nome) FROM cursos
GROUP BY carga
HAVING COUNT(nome) > 3 ;

SELECT ano, COUNT(*) FROM cursos
GROUP BY ano
HAVING COUNT(ano) >= 5 
order by count(*) desc;

SELECT AVG(carga) FROM cursos;

SELECT * FROM cursos 
WHERE ANO > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos); 


ALTER TABLE gafanhotos add cursopreferido INT;

ALTER TABLE gafanhotos ADD FOREIGN KEY (cursopreferido) REFERENCES cursos(idcurso);

SELECT * FROM gafanhotos;

SELECT * FROM cursos;


UPDATE gafanhotos set cursopreferido = '6' WHERE id = '1';


UPDATE gafanhotos SET cursopreferido = '22' WHERE (id = '2');
UPDATE gafanhotos SET cursopreferido = '12' WHERE (id = '3');
UPDATE gafanhotos SET cursopreferido = '7' WHERE (id = '4');
UPDATE gafanhotos SET cursopreferido = '1' WHERE (id = '5');
UPDATE gafanhotos SET cursopreferido = '8' WHERE (id = '6');
UPDATE gafanhotos SET cursopreferido = '4' WHERE (id = '7');
UPDATE gafanhotos SET cursopreferido = '5' WHERE (id = '8');
UPDATE gafanhotos SET cursopreferido = '30' WHERE (id = '10');
UPDATE gafanhotos SET cursopreferido = '3' WHERE (id = '9');
UPDATE gafanhotos SET cursopreferido = '22' WHERE (id = '11');


SELECT nome, cursopreferido FROM gafanhotos;

SELECT nome, ano FROM cursos;

SELECT g.nome, g.cursopreferido, cursos.nome, cursos.ano FROM gafanhotos as g INNER JOIN cursos on cursos.idcurso = g.cursopreferido;

SELECT g.nome, g.cursopreferido, cursos.nome, cursos.ano FROM gafanhotos as g  RIGHT  JOIN cursos on cursos.idcurso = g.cursopreferido; 

SELECT g.nome, g.cursopreferido, cursos.nome, cursos.ano FROM gafanhotos as g  LEFT  JOIN cursos on cursos.idcurso = g.cursopreferido;

CREATE TABLE gafanhoto_assiste_curso (
    id int  primary key not null auto_increment, 
    data date,
    idgafanhoto int,
    idcurso int,
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
	FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
) DEFAULT CHARSET = utf8;

insert into gafanhoto_assiste_curso VALUES (
    DEFAULT, '2014-03-01', '1','2'
);