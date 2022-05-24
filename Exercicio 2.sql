create database ecommerce;
use ecommerce;
create table produtos
(
 id bigint auto_increment,
 nome varchar(255),
 preco bigint,
 marca varchar(255),
 cor varchar(255),
 qtd bigint,
 primary key (id)
);
insert into produtos(nome, preco, marca, cor, qtd) values ("Brusinha", 250, "bloguerinha", "rosa", 21);
insert into produtos(nome, preco, marca, cor, qtd) values ("croped", 300, "reage mulher", "preto", 2);
insert into produtos(nome, preco, marca, cor, qtd) values ("Calça", 301, "É+DR300", "azul", 40);
insert into produtos(nome, preco, marca, cor, qtd) values ("Sapatenis", 500, "VOvóJuJu", "branco e preto", 34);
insert into produtos(nome, preco, marca, cor, qtd) values ("meia", 100, "Guti", "preto", 96);
insert into produtos(nome, preco, marca, cor, qtd) values ("meia", 100, "Guti", "bege", 62);
insert into produtos(nome, preco, marca, cor, qtd) values ("Sapatenis", 500, "VOvóJuJu", "branco e marrom", 26);
insert into produtos(nome, preco, marca, cor, qtd) values ("Brusinha", 250, "bloguerinha", "branco", 35);

select preco from produtos where preco > 500;
select preco from produtos where preco < 500;

update protudos set preco = 150 where id = 5;