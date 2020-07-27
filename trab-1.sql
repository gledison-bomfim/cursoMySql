/* Lista com os Exercícios:
1) Uma lista com o nome de todos os gafanhotos.
2) Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015.
3) Uma lista com o nome de todos os homens que trabalham como programadores.
4) Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J.
5) Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg.
6) Qual é a maior altura entre gafanhotos Homens que moram no Brasil?
7) Qual é a média de peso dos gafanhotos cadastrados?
8) Qual é o menor peso entre os gafanhotos Mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
9) Quantas gafanhotos Mulheres tem mais de 1.90cm de altura?
*/

SELECT * FROM gafanhotos;

SELECT nome FROM gafanhotos;

SELECT * FROM gafanhotos WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';

SELECT nome, profissao FROM gafanhotos WHERE sexo  LIKE 'M' AND profissao = 'programador';

SELECT * FROM gafanhotos WHERE sexo LIKE 'F' AND nacionalidade = 'Brasil' and nome like 'J%';

SELECT nome, nacionalidade FROM gafanhotos WHERE sexo = 'M' AND nome LIKE '%Silva%' and peso < 100.00 AND nacionalidade != 'Brasil';

SELECT MAX(altura) FROM gafanhotos WHERE sexo LIKE 'M' AND nacionalidade = 'Brasil';

SELECT AVG(peso) FROM gafanhotos;

SELECT MIN(peso) FROM gafanhotos WHERE sexo LIKE 'F' AND nacionalidade != 'Brasil' AND nascimento BETWEEN '1990-01-01' and '2000-12-31';

SELECT COUNT(*) FROM gafanhotos WHERE sexo LIKE 'F' AND altura > '1.90';
