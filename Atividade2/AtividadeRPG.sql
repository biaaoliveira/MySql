create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
     id int primary key auto_increment,
     classe varchar(30) not null,
     sub_classe varchar(30) not null
);
create table tb_personagens(
     id int primary key auto_increment,
     nome varchar(10) not null,
     habilidade varchar(30) not null,
     vida int not null,
     forca int not null,
     classe_id int not null,
     foreign key(classe_id) references tb_classes(id)
);


