CREATE TRIGGER fgatilho1 AFTER update or insert
	ON fornece FOR EACH ROW
	EXECUTE PROCEDURE procedimento_função ();
    
	CREATE FUNCTION procedimento_função () returns trigger
		AS $$
	DECLARE vconta int;
      BEGIN
        SELECT COUNT(*) INTO VCONTA FROM FORNECE 
        	WHERE codprod = new.codprod;
        IF vconta > 4
      THEN RAISE EXCEPTION 'Mais de 4';
      END IF;
       RETURN NEW;
        END;
        $$
LANGUAGE 'plpgsql'
