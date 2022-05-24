create database rh_empresa;
use rh_empresa;
create table colaboradores
(
 id bigint auto_increment,
 nome varchar(255),
 salario bigint,
 empresa varchar(255),
 cidade varchar(255),
 idade bigint,
 primary key (id)
);
insert into colaboradores(nome, salario, empresa, cidade, idade) values ("Marcelo", 2500, "candy", "Londrina", 23);
insert into colaboradores(nome, salario, empresa, cidade, idade) values ("Maria", 3000, "ice cream", "Curitiba", 21);
insert into colaboradores(nome, salario, empresa, cidade, idade) values ("João", 1500, "Watermelon", "Ponta Grossa", 32);
insert into colaboradores(nome, salario, empresa, cidade, idade) values ("Matheus", 7500, "Caramel", "Foz do iguaçu", 28);
insert into colaboradores(nome, salario, empresa, cidade, idade) values ("Lucas", 1000, "Lolipop", "Medianeira", 35);

select salario from colaboradores where salario > 2000;
select salario from colaboradores where salario < 2000;

update colaboradores set salario = 2500 where id = 5;