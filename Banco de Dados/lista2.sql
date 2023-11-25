select * from cursos;
select * from alunos;

-- 1. Criar uma base de dados chamada exercicio2.
create database exercicio2;

-- 2. Selecione a base criada.
use exercicio2;

-- 3. Crie a tabela cursos com os seguintes campos:
create table cursos (
 id int auto_increment,
 nome varchar(45) not null,
 primary key(id)
);

-- 3. Crie a tabela alunos com os seguintes campos:
create table alunos (
 id int auto_increment,
 nome varchar(45) not null,
 id_cursos int not null,
 primary key(id),
 foreign key(id_cursos) references cursos(id)
);

-- 4. Cadastre os seguintes cursos:
insert into cursos(nome) values 
('Flutter'),
('Java'),
('Kotlin'),
('Objective-c'),
('Swift');

-- 5. Cadastre os seguintes alunos:
insert into alunos (nome, id_cursos) values
('José', 1),
('Dalva', 2),
('Osvaldo', 2),
('Guga', 3),
('Zilda', 1),
('Humberto', 5),
('Aroldo', 1),
('Anastácio', 5),
('Regina', 2),
('Dolores', 1),
('Eustácio', 1),
('Fernanda', 3);

-- 6. Liste o nome dos alunos que estão matriculados no curso Flutter.
select alunos.nome, cursos.nome from alunos inner join cursos on alunos.id_cursos = cursos.id where cursos.nome = 'Flutter';

-- 7. Liste o nome dos alunos e o nome dos cursos em que estão matriculados
select alunos.nome, cursos.nome from alunos inner join cursos on alunos.id_cursos = cursos.id;

-- 8. Exibir o nome do curso e a quantidade de alunos cadastrado no curso mesmo que haja curso sem alunos matriculados.
select cursos.nome, count(alunos.nome) from alunos right join cursos on alunos.id_cursos = cursos.id group by cursos.id;