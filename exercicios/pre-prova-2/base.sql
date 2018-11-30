CREATE TABLE Estado
 (siglaestado char(2),
 nomestado varchar(50),
 primary key (siglaestado));
CREATE TABLE Cidade
 (codcid int,
 nomcid varchar(50),
 siglaestado char(2),
 primary key(codcid),
 foreign key (siglaestado) references Estado(siglaestado));
CREATE TABLE Cliente
 (codcli int,
 nomcli varchar(100),
 codcid int,
 primary key (codcli),
 foreign key (codcid) references Cidade(codcid));
CREATE TABLE Tipo
 (codtipo int,
 nomtipo varchar(50),
 primary key(codtipo));
CREATE TABLE Fabricante
(codfab int,
nomfab varchar(50),
primary key (codfab));
CREATE TABLE Vendedor
(codvend int,
nomvend varchar(100),
primary key(codvend));
CREATE TABLE Produto
(codprod int,
nomprod varchar(100),
valorprod numeric (12,2),
codfab int,
codtipo int,
primary key (codprod),
foreign key (codfab) references Fabricante (codfab),
foreign key (codtipo) references Tipo (codtipo));
CREATE TABLE Compra
(codcompra int,
data_compra date,
codcli int,
codvend int,
primary key(codcompra),
foreign key (codcli) references Cliente(codcli),
foreign key(codvend) references Vendedor(codvend));
CREATE TABLE Item_Compra
(codcompra int,
codprod int,
 quantidade int,
primary key(codcompra,codprod),
foreign key (codprod) references Produto(codprod),
foreign key(codcompra) references Compra(codcompra));
CREATE TABLE Fornecedor
(codfornec int,
nomfornec varchar(100),
primary key(codfornec));
CREATE TABLE Fornece
(codfornec int,
codprod int,
valor_prod_fornec numeric(14,2),
primary key(codfornec,codprod),
foreign key (codprod) references Produto(codprod),
foreign key(codfornec) references Fornecedor(codfornec));
