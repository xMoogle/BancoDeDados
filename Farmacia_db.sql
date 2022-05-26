create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categoria
(
 id bigint auto_increment,
 nome varchar(255),
 setor varchar(255),
 primary key(id)
);

create table tb_produtos
(
 id bigint auto_increment,
 nome varchar(255),
 valor decimal(6,2),
 qtd int,
 marca varchar(255),
 categoria_id bigint,
 
 primary key(id),
 foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(nome, setor) value("suplemento", "conveniência");
insert into tb_categoria(nome, setor) value("anti-inflamatório", "medicamentos");
insert into tb_categoria(nome, setor) value("antibiótico", "medicamentos");
insert into tb_categoria(nome, setor) value("isotônicos e energéticos", "conveniência");
insert into tb_categoria(nome, setor) value("xarope", "medicamentos s/ prescrição");

insert into tb_produtos(nome, valor, qtd, marca, categoria_id) values("Creatina 300", 180 , 100 , "Grouth", 1);
insert into tb_produtos(nome, valor, qtd, marca, categoria_id) values("whey protein chocolate", 180 , 100 , "Grouth", 1);
insert into tb_produtos(nome, valor, qtd, marca, categoria_id) values("Paracetabem", 35.00 , 100 , "Genérico", 2);
insert into tb_produtos(nome, valor, qtd, marca, categoria_id) values("amoxicilina", 90 , 60 , "Umbrella Corps", 3);
insert into tb_produtos(nome, valor, qtd, marca, categoria_id) values("Rochelle", 20.50 , 100 , "TomaXarope", 5);
insert into tb_produtos(nome, valor, qtd, marca, categoria_id) values("Deeprona", 15.00 , 90 , "Horzine", 2);
insert into tb_produtos(nome, valor, qtd, marca, categoria_id) values("Energético", 12.00 , 10 , "Red and Blue", 4);
insert into tb_produtos(nome, valor, qtd, marca, categoria_id) values("Colinha", 5.00 , 90 , "coquinha", 4);



select * from tb_produtos where valor > 50;
select * from tb_produtos where valor > 5.00 and valor < 60.00;
select * from tb_produtos where nome like "%c%";
select * from tb_produtos inner join tb_categoria where tb_categoria.id = tb_produtos.categoria_id;
select * from tb_produtos inner join tb_categoria where tb_categoria.id = 1 and tb_categoria.id = tb_produtos.categoria_id;


