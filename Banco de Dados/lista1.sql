-- 1. Criar uma base de dados chamada exercicio1.
create database exercicio1;

-- 2. Selecione a base criada.
use exercicio1;

-- 3. Crie uma tabela chamada colaborador
create table colaborador (
	nome varchar(20) not null,
    cpf varchar(14) not null,
    salario double,
    idade int,
    email varchar(100)
);

-- 4. Adicione a coluna data de nascimento (data).
alter table colaborador add data_de_nascimento date;

-- 5. Remova a coluna idade.
alter table colaborador drop column idade;

-- 6. Altere o tamanho da coluna nome para 50 caracteres.
alter table colaborador modify column nome varchar(50);

-- 7. Insira o registro:
insert into colaborador values ('Carlos', '239.862.380-77', '2000', 'carlos@outlook.com', '2000-02-10');

-- 8. Cadastre os seguintes registros:
insert into colaborador values
('Joana', '869.528.720-35', 1500, 'joana@terra.com', '2000-03-01'),
('João', '543.779.150-02', 2700, 'joao@gmail.com', '1990-05-20'),
('Adilson', '973.066.590-73', 1350, 'adilson@gmail', '2002-10-10'),
('Laura', '731.759.250-14', 1680, 'laura@yahoo.com', '2001-02-02'),
('Jeferson', '290.775.290-12', 3000, 'jeferson@terra.com.br', '1980-07-26'),
('Urda', '497.273.190-76', 2000, 'urda@aol.com', '1969-04-25'),
('Toni', '977.521.750-48', 5090, 'toni@gmail', '1987-04-17'),
('Aroldo', '873.297.260-10', 2400, 'aroldo@gmail', '1990-01-01'),
('José', '361.709.900-90', 7000, 'jose@gmail', '1976-03-15'),
('Zilda', '825.765.180-01', null, null, '1950-12-20');

-- 9. Busque todos os registros da tabela.
select * from colaborador;

-- 10. Exiba quantos registros existem na tabela.
select count(*) from colaborador;

-- 11. Exiba o número de colaboradores com email no gmail.
select count(*) from colaborador where email like '%gmail%';

-- 12. Exiba o número de colaboradores com 22 anos.
select count(*) from colaborador where data_de_nascimento >= '2000-11-24' and data_de_nascimento < '2001-11-24';

-- 13. Exiba o número de colaboradores cujo nome começa com ‘A’.
select count(*) from colaborador where nome LIKE 'A%';

-- 14. Exiba o nome dos colaboradores cujo email está nulo.
select nome from colaborador where email is null;

-- 15. Atualize a data de nascimento do Jeferson para 16/05/1981.
update colaborador set data_de_nascimento = '1981-05-16' where nome = 'Jeferson';

-- 16. Exiba os nomes e salário dos colaboradores que ganham mais de 2000 reais.
select nome, salario from colaborador where salario > 2000;

-- 17. Exiba os nomes e data de nascimento, ordenando de forma crescente pelo nome
select nome, data_de_nascimento from colaborador order by nome asc;

-- 18. Exiba todas as informações dos colaboradores que nasceram antes de 2000.
select * from colaborador where data_de_nascimento < '2000-01-01';

-- 19. Exiba qual é o maior salário.
select MAX(salario) from colaborador;

-- 20. Exiba qual o menor salário.
select MIN(salario) from colaborador;

-- 21. Exiba a média salarial.
select avg(salario) from colaborador;

-- 22. Exiba a soma de todos os salários.
select  SUM(salario) from colaborador; 

-- 23. Deletar todos os colaboradores com salário superior a 2500 reais.
delete from colaborador where salario > 2500;