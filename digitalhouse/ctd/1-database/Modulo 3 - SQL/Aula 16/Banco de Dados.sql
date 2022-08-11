/*
	1 - Liste todas as categorias junto com informações sobre seus produtos.
	Incluir todas as categorias, mesmo que não tenham produtos.
*/
SELECT 
	a.CategoriaNome,
    b.*
FROM Categorias a
LEFT JOIN Produtos b
ON a.CategoriaID = b.CategoriaID;

/*
	2 -Liste as informações de contato de clientes que nunca compraram no emarket.
*/

SELECT 	a.ClienteID,
		a.Empresa,
        a.Contato,
        a.Telefone,
		b.FaturaID
FROM Clientes a
LEFT JOIN Faturas b
ON a.ClienteID = b.ClienteID
WHERE b.FaturaID IS NULL
