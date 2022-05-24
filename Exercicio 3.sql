create database escola;
use escola;
create table estudantes
(
 id bigint auto_increment,
 nome varchar(255),
 matricula bigint,
 nota bigint,
 serie bigint,
 idade bigint,
 primary key (id)
);
insert into colaboradores(nome,  matricula, nota, serie, idade) values ("Mariazinha", 1000, 9, 3, 9);
insert into colaboradores(nome,  matricula, nota, serie, idade) values ("Joazinho", 1001, 5, 3, 9);
insert into colaboradores(nome,  matricula, nota, serie, idade) values ("Pedrinho", 1002, 4, 3, 9);
insert into colaboradores(nome,  matricula, nota, serie, idade) values ("Aninha", 1007, 10, 3, 9);
insert into colaboradores(nome,  matricula, nota, serie, idade) values ("Luluzinha", 1003, 8, 3, 9);
insert into colaboradores(nome,  matricula, nota, serie, idade) values ("Serginho", 1004, 1, 3, 9);
insert into colaboradores(nome,  matricula, nota, serie, idade) values ("Fernandinha", 1005, 6, 3, 9);
insert into colaboradores(nome,  matricula, nota, serie, idade) values ("Luquinhas", 1006, 5, 3, 9);

select nota from estudantes where nota > 7;
select nota from estudantes where nota < 7;

update nota set estudantes = 7 where id = 2;