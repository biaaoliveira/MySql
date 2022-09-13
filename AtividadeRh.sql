create database rh;
use rh;
create table colaborador(
    cod_func int primary key auto_increment,
    cpf varchar(11),
    nome varchar(40),
    endereco varchar(30),
    salario int
);

 insert into colaborador (cpf, nome, endereco ,salario) values (45268443810, "Bianca","Avenida Paulo Augusto", 1500),(45268443811, "Fabio", "Rua Fagundes, 33", 2500),(45268443812, "Giovanna",  "Avenida Tucurumas, 7898", 3000),(45268443813, "Thiago", "Avenida Torres Lima, 650",7500),(45268443814, "Lucas", "Avenida Pable Esteves, 23", 10000);
 select * from colaborador;
 
select * from colaborador where salario > 2000;

select * from colaborador where salario < 2000;

update colaborador set cod_func= 7 where cod_func= 1;
 

