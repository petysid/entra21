create database projeto;
use projeto;
create table cliente (
	nome varchar(50) not null,
    telefone varchar(11),
	idade int,
    dependentes int
);
ALTER TABLE cliente ADD email VARCHAR(20);
ALTER TABLE cliente DROP COLUMN dependentes;
ALTER TABLE cliente MODIFY COLUMN email VARCHAR(150);
INSERT INTO cliente VALUES ('Peterson', '47999989120', 32, 'pety@gmail.com');
SELECT * FROM cliente;
