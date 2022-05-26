create database db_generation_game_online;
use db_generation_game_online;
create table classe
(
 id bigint auto_increment,
 nome varchar(255),
 origem varchar(255),
 primary key(id)
);

create table personagem
(
 id bigint auto_increment,
 nome varchar(255),
 vida bigint,
 mana bigint,
 stamina bigint,
 classe_id bigint,
 primary key(id),
 foreign key(classe_id) references classe(id)
);

insert into classe (nome, origem) values ("Guerreiro", "Demacia");
insert into classe (nome, origem) values ("Mago", "Demacia");
insert into classe (nome, origem) values ("Soldado", "Shurima");
insert into classe (nome, origem) values ("Feiticeiro", "Shurima");
insert into classe (nome, origem) values ("Pilgrim", "Vazio");
select * from classe;

insert into personagem(nome, vida, mana, stamina, classe_id) values("Luciana", 250, 1000, 500, 2);
insert into personagem(nome, vida, mana, stamina, classe_id) values("Karen", 1000, 250, 500, 1);
insert into personagem(nome, vida, mana, stamina, classe_id) values("yasuo", 500, 250, 500, 3);
insert into personagem(nome, vida, mana, stamina, classe_id) values("kaisa", 750, 250, 500, 1);
insert into personagem(nome, vida, mana, stamina, classe_id) values("Jet", 250, 500, 1000, 4);
insert into personagem(nome, vida, mana, stamina, classe_id) values("illaoi", 250, 250, 1000, 5);
insert into personagem(nome, vida, mana, stamina, classe_id) values("Feena", 500, 750, 250, 1);
insert into personagem(nome, vida, mana, stamina, classe_id) values("Justin", 750, 250, 500, 1);

select * from personagem where mana <= 500;
select * from personagem where mana > 250 and mana < 1000;
select * from personagem where nome like "%c%";
select * from personagem inner join classe where personagem.classe_id = classe.id;
select * from personagem inner join classe where personagem.classe_id = 1 and classe.id = personagem.classe_id;