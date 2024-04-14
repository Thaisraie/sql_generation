create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
ID bigint auto_increment primary key,
DESCRICAO varchar(50) not null
);

insert into tb_categorias (descricao) values ("Salgada");
insert into tb_categorias (descricao) values ("Doce");
insert into tb_categorias (descricao) values ("Vegetariana");
insert into tb_categorias (descricao) values ("Massa Fina");
insert into tb_categorias (descricao) values ("Massa Grossa");

select * from tb_categorias;

create table tb_pizzas(
id bigint auto_increment,
Pizza varchar(255) not null,
Integral decimal(6,2) not null,
Broto decimal(6,2) not null,
Grande decimal(6,2) not null,
Categoria_id bigint, 
primary key (id)
);

alter table tb_pizzas add constraint fk_pizzas_categorias
foreign key (Categoria_id) references tb_categorias(id);

insert into tb_pizzas (Pizza, Integral, Broto, Grande, Categoria_id) values 
("Calabresa", 50.00, 22.50, 45.00, 1),
("Mussarela", 35.00, 15.00, 40.00, 5),
("Marguerita", 60.00, 27.50, 100.00, 3),
("Portuguesa", 65.99, 33.99, 69.99, 4),
("Doce de Leite", 87.99, 44.00, 100.00, 2),
("Coco", 35.00, 15.00, 39.00, 2),
("Chocolate", 68.99, 34.00, 59.99, 2),
("Morango", 35.00, 15.00, 30.00, 2);

select Integral from tb_pizzas where Integral > 45.00;
select Broto from tb_pizzas where Broto > 45.00;
select Grande from tb_pizzas where Grande > 45.00;

select Integral from tb_pizzas where Integral between 50.00 and 100.00;
select Broto from tb_pizzas where Broto between 50.00 and 100.00;
select Grande from tb_pizzas where Grande between 50.00 and 100.00;

select * from tb_pizzas where Pizza like "%M%";

select Pizza, Integral, Broto, Grande, tb_categorias.descricao
from tb_pizzas inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id;

select Pizza, tb_categorias.descricao
from tb_pizzas inner join tb_categorias on tb_pizzas.categoria_id = tb_categorias.id;

select Pizza, tb_categorias.descricao
from tb_categorias inner join tb_pizzas on tb_pizzas.Categoria_id = tb_categorias.id
where categoria_id = "2";

select * from tb_pizzas;


























)




