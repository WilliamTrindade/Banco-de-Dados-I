SELECT VENDEDOR.CODVEND, NOMVEND
FROM VENDEDOR, COMPRA
WHERE VENDEDOR.CODVEND = COMPRA.CODVEND
GROUP BY VENDEDOR.CODVEND, NOMVEND
HAVING COUNT(*) > 4;
