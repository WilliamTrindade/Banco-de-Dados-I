CREATE TABLE fiscal (
    codfis integer NOT NULL auto_increment,
    nomfis varchar(50),
    salario numeric(12,2),
	primary key (codfis));
	
CREATE TABLE estande (
    codest integer NOT NULL  auto_increment,
    nomest varchar(50),
    aluguel numeric(12,2),
    codfis integer,
	primary key (codest),
	foreign key (codfis) references fiscal(codfis));

CREATE TABLE produto (
    codprod integer NOT NULL auto_increment,
    nomprod varchar(50),
	primary key (codprod));

CREATE TABLE vende (
    codest integer NOT NULL,
    codprod integer NOT NULL,
    valor numeric(12,2),
	primary key (codest,codprod),
	foreign key (codest) references estande(codest),
	foreign key (codprod) references produto(codprod));


INSERT INTO fiscal VALUES (1, 'fulano', 10000.00);
INSERT INTO fiscal VALUES (2, 'beltrano', 11000.00);
INSERT INTO fiscal VALUES (3, 'siclano', 12000.00);

INSERT INTO estande VALUES (1, 'ESTANDE 1', 120.00, 1);
INSERT INTO estande VALUES (2, 'ESTANDE 2', 120.00, 1);
INSERT INTO estande VALUES (3, 'ESTANDE 3', 120.00, 2);
INSERT INTO estande VALUES (4, 'ESTANDE 4', 120.00, 2);

INSERT INTO produto VALUES (1, 'produto1');
INSERT INTO produto VALUES (2, 'produto2');
INSERT INTO produto VALUES (3, 'produto3');
INSERT INTO produto VALUES (4, 'produto4');

INSERT INTO vende VALUES (1, 1, 10.00);
INSERT INTO vende VALUES (1, 2, 11.00);
INSERT INTO vende VALUES (1, 3, 12.00);
INSERT INTO vende VALUES (2, 1, 13.00);
INSERT INTO vende VALUES (2, 2, 14.00);
INSERT INTO vende VALUES (3, 1, 23.00);
INSERT INTO vende VALUES (3, 3, 21.00);
