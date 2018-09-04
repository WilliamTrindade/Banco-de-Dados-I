--Aumente em 10% o valor dos cavalos do criador cujo código é 3
SELECT NOMECRIADOR, NOMECAVALO, VALOR * 0.1 FROM CRIADOR, CAVALO WHERE
CRIADOR.CODCRIADOR = 3;
