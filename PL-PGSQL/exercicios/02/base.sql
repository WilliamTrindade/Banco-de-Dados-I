create table SOCIO
(codsocio int not null,
nome_socio varchar (40) not null,
idade int,
primary key (codsocio));
create table ESTADO
(siglaEstado char (2) not null,
nome_Estado char (50),
primary key (siglaEstado));
create table MUNICIPIO
(codmun int not null,
nome_mun varchar (40) not null,
area_mun int,
siglaEstado char (2) not null,
populacao_mun int,
foreign key (siglaEstado) references Estado (siglaEstado),
primary key (codmun));
create table CLUBE
(codclube int not null,
nome_clube varchar (255),
codmun int not null,
vagas int,
foreign key (codmun) references municipio (codmun),
primary key(codclube));
create table PARTICIPA
(codclube int not null,
codsocio int not null,
primary key (codclube,codsocio),
foreign key (codsocio) references socio (codsocio),
foreign key (codclube) references clube (codclube));
