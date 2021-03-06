﻿create table professor
(codprof int not null,
nomprof varchar(40),
titulação char (20),
primary key (codprof));
create table curso
(codcurso int not null,
nomcurso varchar(40),
primary key (codcurso));
create table aluno
(codaluno int not null,
nomaluno varchar(40),
idade int not null,
primary key (codaluno));
create table turma
(codturma int not null,
codcurso int not null,
data_inicio date not null,
data_fim date not null,
codprof int not null,
foreign key (codcurso) references curso (codcurso),
foreign key (codprof) references professor (codprof),
primary key (codturma));
create table matricula
(codaluno int not null,
codturma int not null,
primary key (codaluno,codturma),
foreign key (codturma) references turma (codturma),
foreign key (codaluno) references aluno (codaluno));
