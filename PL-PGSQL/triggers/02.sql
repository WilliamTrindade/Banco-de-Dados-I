create table departamento (coddepto int, nomdepto char (50),
primary key (coddepto));

insert into departamento values (1,'d1');
insert into departamento values (2,'d2');

create table funcionario (codfunc int, nomfunc char(50), coddepto int,
foreign key (coddepto) references departamento (coddepto),
primary key (codfunc));

insert into funcionario values (1,'f1',1);
insert into funcionario values (2,'f2',1);
insert into funcionario values (3,'f3',1);
insert into funcionario values (4,'f4',2);
insert into funcionario values (5,'f5',2);
insert into funcionario values (6,'f6',2);
insert into funcionario values (7,'f6',2);

insert into funcionario values (8,'f8',2);

--FUNÇÃO--
CREATE FUNCTION fvernumfuncdepto() returns TRIGGER
AS $$
DECLARE VCONTA int;
BEGIN
    SELECT COUNT(*) INTO VCONTA FROM funcionario
    WHERE coddepto = NEW.coddepto;
	--NAO DEIXA PASSAR DE 4 FUNCIONARIOS--
    IF VCONTA > 4
        THEN RAISE EXCEPTION 'MAIS DE 4 funcionários';
    END IF;
    RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

--GATILHO--
CREATE TRIGGER tvernumf AFTER UPDATE OR INSERT
ON funcionario FOR EACH ROW EXECUTE PROCEDURE fvernumfuncdepto();
