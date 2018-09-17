--CRIA TABELA PRODUTO--
CREATE TABLE PRODUTO (
	CODPROD INT,
    NOMPROD VARCHAR(100),
    PRIMARY KEY (CODPROD)
);

--CRIA A TABELA COMPOSICAO--
CREATE TABLE COMPOSICAO(
	CODPRODUTOCOMPOSTO INT,
    CODPRODUTOCOMPOE INT,
    QTD INT,
    PRIMARY KEY (CODPRODUTOCOMPOSTO, CODPRODUTOCOMPOE),
    FOREIGN KEY (CODPRODUTOCOMPOE) REFERENCES PRODUTO(CODPROD),
    FOREIGN KEY (CODPRODUTOCOMPOSTO) REFERENCES PRODUTO(CODPROD)
);

--INSERE PRODUTOS NA TABELA PRODUTO--
INSERT INTO PRODUTO VALUES (1, 'Fusca'), (2, 'ccarcaca'), (3, 'motor'), (4, 'roda'), (5, 'aro'), (6, 'pneu');

--INSERE PRODUTO NA TABELA COMPOSICAO--
INSERT INTO COMPOSICAO (CODPRODUTOCOMPOSTO, CODPRODUTOCOMPOE, QTD) VALUES (1,2,1);
INSERT INTO COMPOSICAO (CODPRODUTOCOMPOSTO, CODPRODUTOCOMPOE, QTD) VALUES (1,3,1);
INSERT INTO COMPOSICAO (CODPRODUTOCOMPOSTO, CODPRODUTOCOMPOE, QTD) VALUES (1,4,4);
INSERT INTO COMPOSICAO (CODPRODUTOCOMPOSTO, CODPRODUTOCOMPOE, QTD) VALUES (4,5,1);
INSERT INTO COMPOSICAO (CODPRODUTOCOMPOSTO, CODPRODUTOCOMPOE, QTD) VALUES (4,6,1);

--PEGA O NOME DO PRODUTO QUE É COMPOSTO--
--PEGA O NOME DO PRODUTO QUE É COMPONENTE--
--E A QUANTIDADE--
SELECT COMPOSTO.NOMPROD as COMPOSTO, COMPONENTE.NOMPROD as COMPONENTE, QTD
FROM PRODUTO as COMPOSTO, COMPOSICAO, PRODUTO as COMPONENTE WHERE
COMPOSTO.CODPROD = COMPOSICAO.CODPRODUTOCOMPOSTO AND 
COMPOSICAO.CODPRODUTOCOMPOE = COMPONENTE.CODPROD;