create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean,
primary key (id)
);

create table tb_curso(
id bigint auto_increment,
nome varchar(255) not null,
carga_horaria int not null,
certificado boolean not null,
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

insert into tb_categoria(descricao,ativo) values("Tecnologia", false);
insert into tb_categoria(descricao,ativo) values("ADM", true);
insert into tb_categoria(descricao,ativo) values("Biologia", false);
insert into tb_categoria(descricao,ativo) values("Financeiro", true);
insert into tb_categoria(descricao,ativo) values("Mecanica", false);

insert into tb_curso (nome,carga_horaria,certificado,id_categoria) values("Java",80,true,1);
insert into tb_curso (nome,carga_horaria,certificado,id_categoria) values("C",60,false,1);
insert into tb_curso (nome,carga_horaria,certificado,id_categoria) values(".NET",80,true,1);
insert into tb_curso (nome,carga_horaria,certificado,id_categoria) values("Gestão",40,false,2);
insert into tb_curso (nome,carga_horaria,certificado,id_categoria) values("DNA",20,true,3);
insert into tb_curso (nome,carga_horaria,certificado,id_categoria) values("Data Science",100,false,1);
insert into tb_curso (nome,carga_horaria,certificado,id_categoria) values("Solda",30,true,5);
insert into tb_curso (nome,carga_horaria,certificado,id_categoria) values("Front-End",50,false,1);
insert into tb_curso (nome,carga_horaria,certificado,id_categoria) values("Back-end",60,true,1);

select * from tb_curso where carga_horaria > 50;

select * from tb_curso where carga_horaria between 10 and 30;

select * from tb_curso where nome like "%j%";

select * from tb_curso inner join tb_categoria on tb_curso.id_categoria = tb_categoria.id;

select * from tb_curso inner join tb_categoria on tb_curso.id_categoria = tb_categoria.id and tb_categoria.id = 1;






