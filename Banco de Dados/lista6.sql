create database lista6;
use lista6;


-- 1. Transação simples
-- a. Crie uma tabela chamada funcionários com as colunas id, nome, e cargo.
create table funcionarios (
id int auto_increment,
nome varchar(40) not null,
cargo varchar(30)not null,
primary key(id)
);

-- b. Inicie uma transação
start transaction;

-- c. Insira alguns registros.
insert into funcionarios (nome, cargo) values ('James', 'Mestre Flutter');
insert into funcionarios (nome, cargo) values ('Lazaroto', 'Auxiliar do James');
insert into funcionarios (nome, cargo) values ('Nicolas', 'Aviãozinho');

-- d. Visualize os registros inseridos
select * from funcionarios;

-- e. Confirme a transação.
commit;

-- f. Visualize se os registros inseridos ainda estão na tabela
select * from funcionarios;

-- g. Desfaça a transação.
-- start transaction;
rollback;

-- h. Verifique se os registros foram removidos.
select * from funcionarios;

-- 2. Simulando um erro
-- a. Crie uma tabela chamada transações com as colunas id, nome, e descrição (not null).
create table transacoes (
id int auto_increment,
nome varchar(40) not null,
descricao varchar(30)not null,
primary key(id)
);

-- b. Inicie uma transação
start transaction;

-- c. Insira alguns registros.
insert into transacoes (nome, descricao) values ('Bruno', 'Lokão da Cooper');
insert into transacoes (nome, descricao) values ('Carlos', 'Maromba');
insert into transacoes (nome, descricao) values ('Rafa', 'Violão');

-- d. Visualize os registros inseridos.
select * from transacoes; 

-- e. Simule um erro inserindo um registro com valor nulo.
insert into transacoes (nome, descricao) values ( 'Catchup');

-- f. Desfaça a transação
rollback;

-- g. Verifique que os registros não foram inseridos na tabela.
select * from transacoes; 

-- 3. Atualizando dados
-- a. Crie uma tabela chamada inventário com as colunas id, nome, e quantidade.
create table inventario (
id int auto_increment,
nome varchar(40) not null,
quantidade int,
primary key(id)
);

-- b. Insira alguns registros.
insert into inventario (nome, quantidade) values ('Cama', '13');
insert into inventario (nome, quantidade) values ('Sofá', '20');
insert into inventario (nome, quantidade) values ('Cerveja', '12');

-- c. Inicie uma transação
start transaction;

-- d. Visualize os registros inseridos.
select * from inventario;

-- e. Atualize a quantidade de um registro na tabela
update inventario set quantidade = '24' where nome = 'Cerveja';

-- f. Confirme a transação.
commit;

-- g. Verifique se o registro foi atualizado corretamente.
select * from inventario;

-- h. Inicie outra transação
start transaction;

-- i. Atualize a quantidade de outro registro na tabela
update inventario set quantidade = '42' where nome = 'Cama';


-- j. Desfaça a transação
rollback;

-- k. Verifique se os registros do segundo registro não foram atualizados.
select * from inventario;

-- 4. Savepoint
-- a. Crie uma tabela chamada pessoas com as colunas id, nome, e idade
create table pessoas (
id int auto_increment,
nome varchar(40) not null,
idade int,
primary key(id)
);
drop table pessoas;
-- b. Inicie uma transação.
start transaction;

-- c. Insira alguns registros
insert into pessoas (nome, idade) values ('Foca Gerald', 24);
insert into pessoas (nome, idade) values ('Gaybriel', 24);
insert into pessoas (nome, idade) values ('GustavoBoy', 24);

-- d. Defina um savepoint.
savepoint inicial;

-- e. Insira mais alguns registros.
insert into pessoas (nome, idade) values ('Laluna', 62);
insert into pessoas (nome, idade) values ('Ednei Mascarenhas', 24);

-- f. Visualize os registros inseridos.
select * from pessoas;

-- g. Retorne ao savepoint
rollback to savepoint inicial;

-- h. Confirme a transação.
commit;

-- i. Verifique que o segundo conjunto de registros não foram inseridos na tabela
select * from pessoas;

-- 5. Bloqueando tabelas
-- a. Crie uma tabela chamada estoque com as colunas id, nome, e quantidade.
create table estoque (
id int auto_increment,
nome varchar(40) not null,
quantidade int,
primary key(id)
);

-- b. Bloqueie a tabela para escrita e leitura.
lock table estoque write; -- Bloqueio de escrita na tabela
lock table estoque read; -- Bloqueio de leitura na tabela

-- c. Inicie uma transação.
start transaction;

-- d. Insira alguns registros
insert into estoque (nome, quantidade) values ('Cadeira', 13);
insert into estoque (nome, quantidade) values ('Chuveiro', 13);
insert into estoque (nome, quantidade) values ('Baralho', 13);

-- e. Confirme a transação.
commit;

-- f. Visualize os registros inseridos.
select * from estoque;

-- g. Desbloqueie a tabela.
unlock table;

