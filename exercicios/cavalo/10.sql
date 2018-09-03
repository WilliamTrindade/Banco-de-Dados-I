--Liste o(s) nome(s) do(s) cavalo(s) que disputaram a prova denominada ‘GP
--Bento Goncalves’;
SELECT NOMECAVALO, NOMPROVA FROM CAVALO, PROVA, DISPUTA WHERE 
DISPUTA.CODCAVALO = CAVALO.CODCAVALO AND
DISPUTA.CODPROVA = PROVA.CODPROVA AND
PROVA.NOMPROVA = 'GP Bento Goncalves';
