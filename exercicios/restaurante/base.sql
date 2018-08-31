create table cidade  
(codcid int,
nomcid varchar(50),
website varchar(200),
numhabitantes int,
primary key (codcid));

insert into cidade (codcid,nomcid) values (1,'Camaqua');

insert into cidade (codcid,nomcid) values (2,'Jaguarao');

insert into cidade (codcid,nomcid) values (3,'Herval');


create table especialidade
(codesp int,
nomesp varchar(50),
descesp varchar(200),
primary key (codesp));

insert into especialidade (codesp,nomesp) values (1,'Cozinha Italiana');
insert into especialidade (codesp,nomesp) values (2,'Cozinha Jamaicana');
insert into especialidade (codesp,nomesp) values (3,'Cozinha Uruguaia');

create table restaurante 
(codres int,
nomres varchar(50),
email varchar(200),
endereco varchar(100),
fone int,
codcid int,
primary key(codres),
foreign key (codcid) references cidade(codcid));

insert into restaurante (codres, nomres,codcid) values (1,'R. da Nona',2);
insert into restaurante (codres, nomres,codcid) values (2,'R. da Abuela',2);
insert into restaurante (codres, nomres,codcid) values (3,'R. do Nono',1);
insert into restaurante (codres, nomres,codcid) values (4,'R. do Dindo',1);
insert into restaurante (codres, nomres,codcid) values (5,'R. da Dinda',3);


create table restaurante_especialidade
(codesp int,
codres int,
primary key (codesp, codres),
foreign key (codesp) references especialidade (codesp),
foreign key (codres) references restaurante (codres));


insert into restaurante_especialidade(codesp,codres) values (1,3);
insert into restaurante_especialidade(codesp,codres) values (1,1);
insert into restaurante_especialidade(codesp,codres) values (1,2);
insert into restaurante_especialidade(codesp,codres) values (2,3);
insert into restaurante_especialidade(codesp,codres) values (3,3);
insert into restaurante_especialidade(codesp,codres) values (2,2);
insert into restaurante_especialidade(codesp,codres) values (2,1);
insert into restaurante_especialidade(codesp,codres) values (1,4);
