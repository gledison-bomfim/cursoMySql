
/* Exercício de fixação da aula*/

SELECT * FROM gafanhotos ;

/* 1-uma lista com as profissoes dos gafanhatos e seus respectivos quantitativos. */


SELECT COUNT(*) quantidade, profissao FROM gafanhotos
GROUP BY profissao;

/* 2- Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005 ? */

SELECT  COUNT(nome) FROM gafanhotos WHERE nascimento > '2005-01-01'
ORDER BY nascimento;

SELECT nome, nascimento, COUNT(nome) FROM gafanhotos 
GROUP BY nascimento
having nascimento > '2005-01-01'
ORDER BY nascimento;

/*Correto*/
select sexo,count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/* 3-Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem
e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3
gafanhotos com essa nacionalidade. */


SELECT COUNT(*) quantidade, nome, nacionalidade FROM gafanhotos WHERE nacionalidade != ('brasil')
GROUP BY nacionalidade
HAVING COUNT(quantidade) > 3 
ORDER BY nacionalidade;

/* 4- Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas 
pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso.*/

SELECT AVG(altura) FROM gafanhotos;

SELECT  COUNT(*), altura, peso  FROM gafanhotos WHERE peso > 100.00
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos)
ORDER BY altura;

SELECT nome, altura, peso FROM gafanhotos WHERE peso > 100.00
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos)
ORDER BY altura;

SELECT  altura, COUNT(altura) FROM gafanhotos WHERE peso > 100.00
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos)
ORDER BY altura;

