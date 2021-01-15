create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null,
mana_regen boolean,
primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
defesa int not null,
ataque int not null,
id_classe bigint,
primary key (id),
foreign key (id_classe) references tb_classe(id)
);

insert into tb_classe(descricao,mana_regen) values("Guerreiro", false);
insert into tb_classe(descricao,mana_regen) values("Mago", true);
insert into tb_classe(descricao,mana_regen) values("Arqueiro", false);
insert into tb_classe(descricao,mana_regen) values("Suporte", true);
insert into tb_classe(descricao,mana_regen) values("Tank", false);

insert into tb_personagem (nome,defesa,ataque,id_classe) values("Tink",3000,3500,1);
insert into tb_personagem (nome,defesa,ataque,id_classe) values("Darius",1000,4500,3);
insert into tb_personagem (nome,defesa,ataque,id_classe) values("Dipsy",1000,4500,3);
insert into tb_personagem (nome,defesa,ataque,id_classe) values("Harry Poker",500,5000,2);
insert into tb_personagem (nome,defesa,ataque,id_classe) values("Tink",3000,500,4);
insert into tb_personagem (nome,defesa,ataque,id_classe) values("Warrior",3000,3500,1);
insert into tb_personagem (nome,defesa,ataque,id_classe) values("Tobias",8000,1000,5);
insert into tb_personagem (nome,defesa,ataque,id_classe) values("Jeronimo",8000,1000,5);
insert into tb_personagem (nome,defesa,ataque,id_classe) values("Cardif",8000,1000,5);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where ataque between 1000 and 2000;

select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe on tb_personagem.id_classe = tb_classe.id;

select * from tb_personagem inner join tb_classe on tb_personagem.id_classe = tb_classe.id and tb_classe.id = 3;
select * from tb_personagem inner join tb_classe on tb_personagem.id_classe = tb_classe.id and tb_classe.descricao = "arqueiro";




