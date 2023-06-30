-- 1) Uma lista com o nome de todas as gafanhotas:
select * from gafanhotos
where sexo = 'F';

-- 2) Uma lista com os dados de todos aqueles que nasceram
-- entre 1º/jan/2000 e 31/dez/2015:
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

-- 3) Uma lista com o nome de todos os homens que trabalham
-- como Programadores:
select nome, profissao from gafanhotos
where sexo = 'M' and profissao = 'programador';

-- 4) Uma lista com os dados de todas as mulheres que nasceram
-- no Brasil e que têm seu nome inciando com o letra J:
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'j%';

-- 5) Uma lista com o nome e a nacionalidade de todos os homens que
-- têm Silva no nome, não nasceram no Brasil e pesam menos que 100 Kg:
select nome, nacionalidade from gafanhotos
where nome like '%silva%' and nacionalidade != 'Brasil' and peso < 100;

-- 6) Qual é a maior altura entre gafanhotos homens que moram no Brasil?
select max(altura) from gafanhotos;

-- 7) Qual é a média de peso dos gafanhotos cadastrados?
select avg(peso) from gafanhotos;

-- 8) Qual é o menor peso entre os gafanhotos mulheres que nasceram fora
-- do Brasil e entre 1º/jan/1990 e 31/dez/2000?
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil'
and nascimento between '1990-01-01' and '2000-12-31';

-- 9) Quantas gafanhotas mulheres têm mais de 1.90m de altura?
select count(altura) from gafanhotos
where sexo = 'F' and altura > '1.90';