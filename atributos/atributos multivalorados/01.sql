#Se quisermos salvar vários números de telefone
#Funcionário (codfunc, nomefunc) 
#Telefone (codfunc, número) codfunc referencia Funcionário

CREATE TABLE FUNCIONARIO (CODFUNC, NOMEFUNC, PRIMARY KEY(CODFUNC));
CREATE TABLE TELEFONE (CODFUNC, NUMERO, FOREIGN KEY(CODFUNC) REFERENCES FUNCIONARIO);
#telefone é entidade fraca
                                                     
                                                        
