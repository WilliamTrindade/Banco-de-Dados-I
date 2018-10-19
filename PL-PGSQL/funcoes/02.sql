CREATE OR REPLACE FUNCTION media1(p1 numeric, p2 numeric) RETURNS varchar
AS $$
DECLARE mensagem varchar; vmedia numeric;
BEGIN
	vmedia := (p1 + p2) /2;
	IF vmedia >= 7
	THEN
		mensagem := 'Aprovado';
	ELSE
		mensagem := 'Reprovado';
	END IF;
	RETURN mensagem;
END;
$$ LANGUAGE plpgsql;

CREATE TABLE ALUNO1(codaluno int, nomealuno varchar, nota1 numeric, nota2 numeric ,PRIMARY KEY(codaluno));
INSERT INTO aluno1 VALUES (1, 'a1', '10.0', '10.0');
INSERT INTO aluno1 VALUES (2, 'a2', '10.0', '2.0');
SELECT NOMEALUNO, media1(nota1, nota2) from aluno1;
