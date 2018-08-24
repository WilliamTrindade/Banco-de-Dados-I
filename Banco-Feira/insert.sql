INSERT INTO FISCAL(codfis, nomefis, salario) VALUES (1, 'jhon', '1000'), (2, 'Mary', '1000'), (3, 'Joaquim', '2000');
INSERT INTO ESTANDE(codest, nomeest, aluguelest, codfis) VALUES (1, 'Estande1', '500', 1), (2, 'Estande2', '500', 3), (3, 'Estande3', '500', 1);
INSERT INTO PRODUTO(codproduto, nomeproduto) VALUES (1, 'pastel'), (2, 'Torrada'), (3, 'Bauru'), (4, 'Croquete');

INSERT INTO ESTANDE_PRODUTO (CODEST, CODPRODUTO, VALOR) VALUES
(1, 2, '30'),
(1, 3, '50'),
(2, 1, '10'),
(3, 1, '8'),
(3, 2, '20');
