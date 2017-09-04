###################### CREATING THE DATABASE SCHEMA ############################

-- create the db
create database estacionamento_db;

-- select it as the current db
use estacionamento_db;

-- create the customer table
create table cliente (
	cpf int,
    nome varchar(60),
    dtnasc DATE,
    primary key(cpf)    
);

-- create the model table
create table modelo(
	codmod int,
    descricao varchar(40),
    primary key(codmod)		
);

-- create the patio table
create table patio(
	num int,
    ender varchar(40),
    capacidade int,
    primary key(num)
);

-- create the vehicle table
create table veiculo(
	placa varchar(8),
    cliente_cpf int,
    modelo_codigo int,
    primary key(placa),
    foreign key(cliente_cpf) references cliente(cpf),
    foreign key(modelo_codigo) references modelo(codmod)
);

-- create the table parking
create table estaciona(
	cod int,
    patio_num int,
    veiculo_placa varchar(8),
    dtentrada date,
    dtsaida date,
    hsentrada time,
    hssaida time,
    primary key(cod),
    foreign key(patio_num) references patio(num),
    foreign key(veiculo_placa) references veiculo(placa)
);

###################### PUPULATE THE TABLES ############################

insert into cliente values (1, "Fernando Rosa Moraes", "1980-01-01");
insert into cliente values (2, "Maria Nunes de Sá", "1984-01-01");
insert into cliente values (3, "Caio Bezerra dos Santos", "1987-01-01");
insert into cliente values (4, "Rosana de Moura Pires", "1970-01-01");
insert into cliente values (5, "Mario Reis de Oliveira", "1989-01-01");

insert into modelo values (1, "Sedan");
insert into modelo values (2, "Camioneta");
insert into modelo values (3, "Hatch");
insert into modelo values (4, "Caminhão");
insert into modelo values (5, "Moto");

insert into patio values(1, "Rua A", 45);
insert into patio values(2, "Rua B", 20);
insert into patio values(3, "Rua C", 100);

create table veiculo(
	placa varchar(8),
    cliente_cpf int,
    modelo_codigo int,
    primary key(placa),
    foreign key(cliente_cpf) references cliente(cpf),
    foreign key(modelo_codigo) references modelo(codmod)
);

insert into veiculo values("JEG-1010", 1, 1);
insert into veiculo values("JJJ-2020", 1, 1);
