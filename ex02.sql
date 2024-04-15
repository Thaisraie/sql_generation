create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
ID bigint auto_increment primary key,
Medicamento varchar(50) not null,
Cosmetico varchar(50) not null
);

insert into tb_categorias (Medicamento, Cosmetico) values 
("Gripe", "Cabelo"),
("Vitaminas", "Unha"),
("Dor", "Pele"),
("Febre", "Corpo"),
("Resfriado", "Higiene Pessoal");

select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment primary key,
Nome varchar(50) not null,
Peso varchar(50) not null,
QNT int not null,
Preco decimal(6,2) not null,
Categoria_id bigint
);

alter table tb_produtos add constraint fk_produtos_categorias
foreign key (Categoria_id) references tb_categorias(id);

insert into tb_produtos (Nome, Peso, QNT, Preco, Categoria_id) values 
("Apracur", "500mg", 1, 7.00, 1),
("Vitamina A", "110g", 1, 101.43, 2),
("Advil", "490mg", 1, 37.93, 3),
("DorFlex", "70mg", 1, 25.31, 4),
("Shampoo", "250ml", 1, 23.55, 1),
("Esmalte", " ", 1, 3.99, 2),
("Hidratante", "240ml", 1, 66.99, 3),
("Sabonete", "80g", 1, 7.99, 4),
("Creme Dental", "90g", 1, 15.49, 5);

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 5.00 and 60.00;

select * from tb_produtos where Nome like "%c%";

select Nome, Peso, QNT, Preco, tb_categorias.Medicamento, tb_categorias.Cosmetico
from tb_produtos inner join tb_categorias on tb_produtos.Categoria_id = tb_categorias.id;

select Nome, Peso, QNT, Preco, tb_categorias.Medicamento, tb_categorias.Cosmetico
from tb_categorias inner join tb_produtos on tb_produtos.Categoria_id = tb_categorias.id
where Cosmetico = "Cabelo";

select * from tb_produtos;




