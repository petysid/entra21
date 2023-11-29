create database atividade;
use atividade;

create table marca (
cd_marca int auto_increment,
ds_marca varchar(30) not null,
primary key(cd_marca)
);

create table modelo (
cd_modelo int auto_increment,
ds_modelo varchar(50) not null,
cd_marca int,
primary key(cd_modelo),
foreign key(cd_marca) references marca(cd_marca)
);

create table veiculo (
nr_placa varchar(7),
cd_modelo int,
nr_ano_fab int not null,
nr_ano_mod int not null,
primary key(nr_placa),
foreign key(cd_modelo) references modelo(cd_modelo)
);

create table combustivel (
cd_combustivel int auto_increment,
ds_combustivel varchar(30) not null,
primary key(cd_combustivel)
);

create table veiculo_combustivel (
cd_combustivel int,
nr_placa varchar(7),
primary key(cd_combustivel, nr_placa),
foreign key(cd_combustivel) references combustivel(cd_combustivel),
foreign key(nr_placa) references veiculo(nr_placa)
);

-- 2.Exibir informações dos veículos fabricados a partir de 2010 (inclusive).
select * from veiculo where nr_ano_fab >= 2010;

-- 3. Exibir o número da placa e a descrição do modelo dos veículos. 
select nr_placa, ds_modelo from veiculo inner join modelo on veiculo.cd_modelo = modelo.cd_modelo;

-- 4. Exibir a descrição dos modelos da marca volkswagem.
select ds_modelo, ds_marca from modelo inner join marca on modelo.cd_marca = marca.cd_marca where marca.ds_marca = 'volkswagem';

-- 5. Exibir a descrição dos modelos das marcas citroen e peugeot.
select ds_modelo, ds_marca from modelo inner join marca on modelo.cd_marca = marca.cd_marca where marca.ds_marca = 'citroen' or marca.ds_marca = 'peugeot';

-- 6. Exibir informações dos veículos cujo ano de fabricação e ano modelo são idênticos.
select * from veiculo where nr_ano_fab = nr_ano_mod;

-- 7. Exibir informações dos veículos cujo ano de fabricação e ano modelo são diferentes
select * from veiculo where nr_ano_fab <> nr_ano_mod;

-- 8. Exibir o número da placa e a descrição do combustível de todos os veículos a gasolina.
select nr_placa, ds_combustivel from veiculo_combustivel inner join combustivel on veiculo_combustivel.cd_combustivel = combustivel.cd_combustivel where combustivel.ds_combustivel = 'gasolina';