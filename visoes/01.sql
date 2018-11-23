CREATE TABLE TABELA (COD INT, VAL1 INT, VAL2 INT, PRIMARY KEY(COD));

-- criar visao --
CREATE VIEW VISAO1 AS SELECT COD, VAL1 FROM TABELA;

-- inserir dados --
INSERT INTO TABELA VALUES (1, 1, 1);
INSERT INTO TABELA VALUES (2, 2, 2);
INSERT INTO TABELA VALUES (3, 3, 3);
INSERT INTO TABELA VALUES (4, 4, 4);

-- chamar visao --
SELECT * FROM VISAO1;

-- atualização da visao --
INSERT INTO VISAO1 (COD, VAL1) values (11,10);

-- erro: --
-- valor 2 nao existe na view --
-- INSERT INTO VISAO1 (COD, VAL1, VAL2) values (12,10,100);

-- criar visao 2 --
CREATE VIEW VISAO2 AS SELECT VAL1, VAL2 FROM TABELA;

-- erro:--
-- insere codigo nulo --
-- integridade referencial --
-- not null --
INSERT INTO VISAO2 (VAL1, VAL2) VALUES (10, 100);
