SELECT COUNT(*) FROM VINHO, VINICOLA WHERE 
VINHO.CODVINICOLA = VINICOLA.CODVINICOLA
AND
NOMEVINICOLA = 'Serra';