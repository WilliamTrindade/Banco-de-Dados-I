--Se quisermos salvar vários números de telefone--
--Funcionário (codfunc, nomefunc) --
--Telefone (codfunc, número) codfunc referencia Funcionário

CREATE TABLE FUNCIONARIO (CODFUNC INT, NOMEFUNC VARCHAR(50), PRIMARY KEY(CODFUNC));
CREATE TABLE TELEFONE (CODFUNC INT, NUMERO VARCHAR(50), FOREIGN KEY(CODFUNC) REFERENCES FUNCIONARIO);
--telefone é entidade frac--
                                                     
                                                        
