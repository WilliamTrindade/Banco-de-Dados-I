CREATE OR REPLACE FUNCTION f_soma(val1 int, val2 int) 
	RETURNS int
AS $$
DECLARE
	soma int := val1 + val2;
BEGIN
	RETURN soma;
END;
$$ LANGUAGE plpgsql;

SELECT f_soma(1, 2);
