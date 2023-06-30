use cadastro;

create table gafanhoto_assiste_curso (
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key(id),
    foreign key(idgafanhoto) references gafanhotos(id),
    foreign key(idcurso) references cursos(idcurso)
) default charset = utf8mb4;

insert into gafanhoto_assiste_curso values
(default, '2015-12-22', '3', '6'),
(default, '2014-01-01', '22', '12'),
(default, '2016-05-12', '1', '19');

select g.nome, c.nome from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;





