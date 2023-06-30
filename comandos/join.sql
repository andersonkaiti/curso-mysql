select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;

select * from gafanhotos;