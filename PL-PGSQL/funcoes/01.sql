CREATE OR REPLACE FUNCTION sf_alomundo() 
	RETURNS varchar
AS $$
DECLARE
	mensagem VARCHAR := 'Alo, Mundo';
BEGIN
	RETURN mensagem;
END;
$$ LANGUAGE plpgsql;
SELECT sf_alomundo();
