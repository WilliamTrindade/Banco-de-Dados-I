--Se quisermos salvar vários números de telefone--
--Funcionário (codfunc, nomefunc) --
--Telefone (codfunc, número) codfunc referencia Funcionário

CREATE TABLE FUNCIONARIO (CODFUNC INT, NOMEFUNC VARCHAR(50), PRIMARY KEY(CODFUNC));
CREATE TABLE TELEFONE (CODFUNC INT, NUMERO VARCHAR(50), FOREIGN KEY(CODFUNC) REFERENCES FUNCIONARIO);
--telefone é entidade fraca--

--INSERTS--
INSERT INTO FUNCIONARIO VALUES(1, 'William');
INSERT INTO TELEFONE VALUES(1, '51 992309099');
INSERT INTO TELEFONE VALUES(1, '55 990123332');

--SELECTS--
SELECT NOMEFUNC, NUMERO  FROM FUNCIONARIO, TELEFONE WHERE TELEFONE.CODFUNC = FUNCIONARIO.CODFUNC;


                                                     
                                                        
