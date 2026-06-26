SELECT c.nome, p.data_pedido
FROM clientes c
INNER JOIN pedidos p
ON c.id_cliente = p.id_cliente;
#-----------------------------------A primeira parte dessa bomba#
SELECT c.nome, i.produto, i.quantidade
FROM clientes c
INNER JOIN pedidos p
ON c.id_cliente = p.id_cliente
INNER JOIN itens_pedido i
ON p.id_pedido = i.id_pedido;
#-----------------------------------A primeira parte dessa bomba#
SELECT p.id_pedido, c.nome, p.valor_total
FROM pedidos p
INNER JOIN clientes c
ON p.id_cliente = c.id_cliente;
#-----------------------------------A primeira parte dessa bomba#
SELECT c.nome, p.id_pedido
FROM clientes c
LEFT JOIN pedidos p
ON c.id_cliente = p.id_cliente;
#-----------------------------------A segunda parte dessa bomba#
SELECT c.nome, p.valor_total
FROM clientes c
LEFT JOIN pedidos p
ON c.id_cliente = p.id_cliente;
#-----------------------------------A segunda parte dessa bomba#
SELECT c.nome, i.produto
FROM clientes c
LEFT JOIN pedidos p
ON c.id_cliente = p.id_cliente
LEFT JOIN itens_pedido i
ON p.id_pedido = i.id_pedido;
#-----------------------------------A segunda parte dessa bomba#
SELECT c.nome, p.id_pedido
FROM clientes c
RIGHT JOIN pedidos p
ON c.id_cliente = p.id_cliente;
#-----------------------------------A terceira parte dessa bomba#
SELECT i.produto, i.quantidade, c.nome
FROM clientes c
RIGHT JOIN pedidos p
ON c.id_cliente = p.id_cliente
RIGHT JOIN itens_pedido i
ON p.id_pedido = i.id_pedido;
#-----------------------------------terceira parte dessa bomba#
