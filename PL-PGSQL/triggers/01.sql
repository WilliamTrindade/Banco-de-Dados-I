create table empregado
(codemp int, nomemp char(40), 
 salario numeric(10,2),
 primary key (codemp));
 
insert into empregado values (1,'emp1',2000.00);

CREATE FUNCTION fversal() returns TRIGGER
AS $$
BEGIN
IF NEW.salario < OLD.salario
THEN RAISE EXCEPTION 'salario nao pode diminuir';
END IF;
RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER tversal AFTER UPDATE ON empregado
FOR EACH ROW EXECUTE PROCEDURE fversal();

--erro--
UPDATE empregado SET salario = 12 WHERE codemp=1;
