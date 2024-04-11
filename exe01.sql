create database db_servicoRh;

use db_servicoRh;

create table rh(
id bigint auto_increment,
nome varchar(255) not null,
matricula int,
setor varchar(255) not null,
cargo varchar(255) not null,
salario decimal(6,2) not null,
primary key(id)
);

insert into rh(nome,matricula,setor,cargo,salario) values("José",124,"Back-end","Gerente Software",8500.00);
insert into rh(nome,matricula,setor,cargo,salario) values("Larissa",125,"Back-end","Sênior",5000.00);
insert into rh(nome,matricula,setor,cargo,salario) values("João",126,"Back-end","Dev Pleno",3500.00);
insert into rh(nome,matricula,setor,cargo,salario) values ("Thais",123,"Back-end","Dev Júnior",1900.00);
insert into rh(nome,matricula,setor,cargo,salario) values ("Maria",127,"Back-end","Trainee",1600.00);

select * from rh where salario > 2000;
select * from rh where salario < 2000;

select * from rh;






