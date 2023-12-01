create database lista4;
use lista4;

create table estoque (
id int auto_increment,
nome varchar(40) not null,
fabricante varchar(40) not null,
quantidade int not null,
valor float not null,
tipo varchar(20) not null,
primary key (id)
);

insert into estoque (nome, fabricante, quantidade, valor, tipo) values
('Playsation 4', 'Sony', 100, 1999, 'Console'),
('Core i5 8GB Ram SSD 240', 'Dell', 200, 1899, 'Notebook'),
('Xbox one', 'Microsoft', 350, 1299, 'Console'),
('J1', 'Samsung', 300, 499, 'Celular'),
('iPhone 10', 'Apple', 50, 1499, 'Smartphone'),
('Playsation 3', 'Sony', 100, 399, 'Console'),
('Sofá estofado', 'Coréia', 200, 499, 'Sofá'),
('Armário de serviço', 'Aracaju', 50, 129, 'Armário'),
('Refrigerador 420L', 'CCE', 200, 1499, 'Refrigerador'),
('Wii', 'Nintendo', 250, 999, 'Console');

-- 1. Exibir o número de produtos em estoque agrupados pelo tipo
-- select count(estoque.nome) from estoque group by tipo; quantidade de registros
select tipo, sum(quantidade) from estoque group by tipo;

-- 2. Exibir o número de produtos em estoque por fabricante
-- select count(estoque.nome) from estoque group by fabricante quantidade de regsitros
select fabricante, sum(quantidade) from estoque group by fabricante;

-- 3. Exibir o número de produtos em estoque de acordo com o tipo e fabricante
select tipo, fabricante, sum(quantidade) from estoque group by tipo, fabricante;

-- 4. Exibir o valor total dos produtos em estoque agrupados pelo tipo
select tipo, sum(quantidade*valor) from estoque group by tipo;

-- 5. Exibir o número de produtos em estoque agrupados pelo tipo, exibir somente os que possuem quantidade em estoque superior a 200
select tipo, sum(quantidade) from estoque group by tipo having sum(quantidade) >200;

-- 6. A partir do anterior, agrupar além do tipo o fabricante
select tipo, fabricante, sum(quantidade) from estoque group by tipo, fabricante having sum(quantidade) >200;

-- 7. Exibir a quantidade em estoque e o valor do estoque agrupados pelo nome, cujo a quantidade supere 200 e o valor do estoque seja igual ou superior a 100 mil.
select nome, sum(quantidade), sum(quantidade*valor) from estoque group by nome having sum(quantidade) >200 and sum(quantidade*valor) >= 100000;

