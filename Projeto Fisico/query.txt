-- Query com WHERE e ORDER BY
SELECT id, data_hora, status 
FROM Pedido 
WHERE cliente_id = 1
ORDER BY data_hora DESC;

-- Query com COUNT e GROUP BY
SELECT cpf_garcom, COUNT(id) AS total_pedidos 
FROM Pedido 
GROUP BY cpf_garcom;

-- Query com HAVING e LIMIT

SELECT cpf_garcom, total_pedidos
FROM (
    SELECT cpf_garcom, COUNT(id) AS total_pedidos  
    FROM Pedido  
    GROUP BY cpf_garcom 
    HAVING COUNT(id) > 1
) 
WHERE ROWNUM <= 3;

-- Query com JOIN
SELECT Pedido.id, ItemCardapio.descricao 
FROM Pedido 
JOIN PedidoItem ON Pedido.id = PedidoItem.id_pedido
JOIN ItemCardapio ON PedidoItem.codigo_item = ItemCardapio.codigo
WHERE Pedido.cliente_id = 1;

-- Query com SUBQUERY
SELECT nome, cpf 
FROM Cliente 
WHERE id IN (
    SELECT cliente_id 
    FROM Pedido 
    WHERE id IN (
        SELECT id 
        FROM Pagamento 
        WHERE valor = (SELECT MAX(valor) FROM Pagamento)
    )
);
