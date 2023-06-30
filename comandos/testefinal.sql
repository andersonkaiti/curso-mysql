create table pagamento (
empregado_id int not null auto_increment,
data date,
valor int,
primary key(empregado_id)
) default charset = utf8mb4;

insert into empregado values
(default, 'João', '20'),
(default, 'Maria', '30'),
(default, 'José', '22'),
(default, 'Joaquim', '26'),
(default, 'Manoel', '21');

insert into pagamento values
(default, '02-07-08', '1000'),
(default, '02-07-08', '2000'),
(default, '02-07-08', '1400'),
(default, '02-07-08', '1200'),
(default, '02-07-08', '5000');

SELECT count(*)
FROM Empregado, Pagamento
WHERE Empregado.id = Pagamento.empregado_id
AND Empregado.idade < 25 AND Pagamento.valor > 1500;