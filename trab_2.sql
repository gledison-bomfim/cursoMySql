
/* Exercício de fixação da aula*/


/* 1-uma lista com as profissoes dos gafanhatos e seus respectivos quantitativos. */

/* 2- Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005 ? */

/* 3-Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem
e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3
gafanhotos com essa nacionalidade. */

/* 4-uma lista agrupada pela altura dos gafanhotos ,mostrando quantas pessoas 
pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso.*/

SELECT * FROM gafanhotos ;

SELECT * FROM gafanhotos where profissao = 'programador';

SELECT COUNT(*) quantidade, profissao FROM gafanhotos
GROUP BY profissao;

SELECT COUNT(*)quantidade, nascimento FROM gafanhotos
GROUP BY nascimento
HAVING COUNT (nascimento) > 2005-01-01
ORDER BY nascimento;

SELECT COUNT(*) quantidade, nacionalidade FROM gafanhotos
GROUP BY nacionalidade
HAVING COUNT(quantidade) > 3
ORDER BY nacionalidade;
