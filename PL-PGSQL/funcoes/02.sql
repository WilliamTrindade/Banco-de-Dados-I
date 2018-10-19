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

select media1(10, 10);
