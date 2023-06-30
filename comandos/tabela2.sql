create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset = utf8mb4;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso);