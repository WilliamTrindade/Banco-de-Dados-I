SELECT NOMRES, NOMESP FROM RESTAURANTE, ESPECIALIDADE, RESTAURANTE_ESPECIALIDADE
WHERE RESTAURANTE.CODRES = RESTAURANTE_ESPECIALIDADE.CODRES 
AND RESTAURANTE_ESPECIALIDADE.CODESP = ESPECIALIDADE.CODESP
AND ESPECIALIDADE.CODESP = 1;
