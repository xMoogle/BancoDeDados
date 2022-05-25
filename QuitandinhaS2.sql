create database db_quintanda;
use db_quintanda;
create table produtos
(
 id bigint auto_increment,
 tipo varchar(255),
 qtd bigint,
 nome varchar(255),
 valor decimal(5,2),
 fornecedorid bigint,
 primary key(id)
);

insert into produtos(nome, tipo, qtd, valor, fornecedorid) values ("banana", "fruta", 100 , 2.50 , 1);
insert into produtos(nome, tipo, qtd, valor, fornecedorid) values ("uva", "fruta", 10 , 12.50 , 2);
insert into produtos(nome, tipo, qtd, valor, fornecedorid) values ("pêra", "fruta", 50 , 3.50 , 2);
insert into produtos(nome, tipo, qtd, valor, fornecedorid) values ("Maçã", "fruta", 100 , 2.50 , 1);
insert into produtos(nome, tipo, qtd, valor, fornecedorid) values ("Salada mista", "outras", 100 , 5.00 , 3);
insert into produtos(nome, tipo, qtd, valor, fornecedorid) values ("cenoura", "legume", 200 , 8.50 , 2);
insert into produtos(nome, tipo, qtd, valor, fornecedorid) values ("xuxu", "legume", 150 , 8.50 , 2);
insert into produtos(nome, tipo, qtd, valor, fornecedorid) values ("bolo de mulango", "outras", 5 , 10.00 , 2);


select nome, tipo, qtd, valor, fornecedorid from produtos where tipo = "fruta";
select nome, tipo, qtd, valor, fornecedorid from produtos where tipo = "legume";

delete from produtos where id = 6;
delete from produtos where id = 7;

