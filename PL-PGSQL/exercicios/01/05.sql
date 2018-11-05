CREATE FUNCTION NaoDeixaPassarDe20() returns TRIGGER
AS $$
	DECLARE CONTA int; 
	BEGIN
		SELECT COUNT(*) INTO CONTA FROM PROFESSOR;
		IF CONTA > 2
			THEN RAISE EXCEPTION 'mais professores que o permitido!';
		END IF;
		RETURN NEW;
	END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER gatilho AFTER update or insert or delete ON PROFESSOR FOR EACH ROW EXECUTE PROCEDURE NaoDeixaPassarDe20();
