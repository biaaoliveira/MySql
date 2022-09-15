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

select * from tb_personagens;

select * from tb_personagens where vida > 50;

select * from tb_personagens where forca between 50 and 100 order by vida;

select*from tb_personagens where nome like "a%";

select nome,habilidade,vida,forca, tb_classes.classe
from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classe_id;

select nome,habilidade,vida,forca, tb_classes.sub_classe
from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classe_id where classe_id = 3;

insert into tb_classes(classe, sub_classe)
values ("sage"," curandeira");

insert into tb_classes(classe, sub_classe)
values ("sova", "arqueiro");

insert into tb_classes(classe, sub_classe)
values ("raze", "bombista");

insert into tb_classes(classe, sub_classe)
values ("breach", "guerreiro");

insert into tb_classes(classe, sub_classe)
values ("vater", "mago");

insert into tb_personagens(nome,habilidade,vida,forca,classe_id) values("Alexia", "voar", 25, 30,4),
        ("Sofia", "cura", 30, 60, 4),
        ("Margot", "corre" , 50, 25, 5),
        ("Lizzie", "caçador" , 25, 33, 4),
        ("Althor","teletransporte" , 50, 120, 3),
        ("Marves","hipinose" ,30, 30, 2),
        ("Bisterd","super força",  90, 100, 1);
