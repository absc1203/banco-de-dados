create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255),
ativa boolean,
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
garantia boolean,
preco decimal(7,2),
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

insert into tb_categoria(descricao,ativa) values ("Banheiro",true);
insert into tb_categoria(descricao,ativa) values ("Decoração",true);
insert into tb_categoria(descricao,ativa) values ("Iluminação",true);
insert into tb_categoria(descricao,ativa) values ("Ferramentas",true);
insert into tb_categoria(descricao,ativa) values ("Acabamento",true);

insert into tb_produto(nome,garantia,preco,id_categoria) values("Banheira",true,1070,1);
insert into tb_produto(nome,garantia,preco,id_categoria) values("Assento Sanitário",true,40,1);
insert into tb_produto(nome,garantia,preco,id_categoria) values("Box",true,500,1);
insert into tb_produto(nome,garantia,preco,id_categoria) values("Cortina",true,90,2);
insert into tb_produto(nome,garantia,preco,id_categoria) values("Papel de Parede",false,85,2);
insert into tb_produto(nome,garantia,preco,id_categoria) values("Abajur",true,30,3);
insert into tb_produto(nome,garantia,preco,id_categoria) values("Luminária",true,50,3);
insert into tb_produto(nome,garantia,preco,id_categoria) values("Furadeira",true,450,4);
insert into tb_produto(nome,garantia,preco,id_categoria) values("Tinta",true,60,5);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where preco like "%C%";

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id;

select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id and tb_categoria.id = 1;






















