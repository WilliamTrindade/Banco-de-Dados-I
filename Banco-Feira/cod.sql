CREATE TABLE FISCAL
	(	
		codfis int,
     	nomefis varchar,
     	salario numeric(12,2),
     	primary key (codfis)
	);

CREATE TABLE PRODUTO
	(
       	codproduto int,
       	nomeproduto varchar(50),
       	primary key(codproduto)
	);
	
CREATE TABLE ESTANDE
	(
		codest int,
        nomeest varchar(50),
        aluguelest numeric(12,2),
        codfis int,
        primary key (codest),
        foreign key (codfis) references fiscal(codfis)
    );
    CREATE TABLE ESTANDE_PRODUTO
	(
	codest int,
        codproduto int,
        valor numeric(12,2),
        foreign key(codest) references estande (codest),
        foreign key(codproduto) references produto (codproduto),
        primary key(codest, codproduto)
    );
    
