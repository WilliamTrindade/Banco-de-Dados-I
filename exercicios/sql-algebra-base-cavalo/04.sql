SELECT NOMECRIADOR FROM CRIADOR WHERE NOT EXISTS (SELECT DISPUTA FROM DISPUTA, CAVALO WHERE CAVALO.CODCRIADOR = CRIADOR.CODCRIADOR);
