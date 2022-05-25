create database db_brecho;
use db_brecho;

create table produtos
(
id bigint auto_increment,
 nome varchar(255),
 tipo varchar(255),
 valor decimal(5,2),
 qtd bigint,
 cor varchar(255),
 primary key(id)
 );
 
insert into produtos(nome, valor, tipo, cor, qtd) values ("Brusinha", 250, "bloguerinha", "rosa", 21);
insert into produtos(nome, valor, tipo, cor, qtd) values ("croped", 300, "reage mulher", "preto", 2);
insert into produtos(nome, valor, tipo, cor, qtd) values ("Calça", 301, "É+DR300", "azul", 40);
insert into produtos(nome, valor, tipo, cor, qtd) values ("Sapatenis", 500, "VOvóJuJu", "branco e preto", 34);
insert into produtos(nome, valor, tipo, cor, qtd) values ("meia", 100, "Guti", "preto", 96);
insert into produtos(nome, valor, tipo, cor, qtd) values ("meia", 100, "Guti", "bege", 62);
insert into produtos(nome, valor, tipo, cor, qtd) values ("Sapatenis", 500, "VOvóJuJu", "branco e marrom", 26);
insert into produtos(nome, valor, tipo, cor, qtd) values ("Brusinha", 250, "bloguerinha", "branco", 35);
 
 select nome, tipo, valor, qtd, cor  from produtos where valor > 50;
 select nome, tipo, valor, qtd, cor  from produtos where valor < 50;
 select nome, tipo, valor, qtd, cor  from produtos where id = 2;
 
 use db_checho;
 update produtos set nome = "sapato" when id = 4;
 delete from produtos where id = 2;
  delete from produtos where id = 3;