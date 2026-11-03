-- o pedido 1 e os itens
INSERT INTO pedido (data_hora, cliente_codigo,
  unidade_codigo, entregador_codigo)
-- dica: no quadro do pedido 1, o código do entregador
VALUES ('2026-10-03 19:10', 1, 1, 1);
INSERT INTO item_pedido (pedido_numero, produto_codigo,
  quantidade, preco_cobrado)
-- dica: no quadro do pedido 1, o código da tapioca
VALUES (1, 2, 1, 18.00), (1, 3, 1, 12.00);

-- o endereço certo é Av. A, 100
-- dica: o comando que muda um dado
UPDATE unidade SET endereco = 'Av. A, 100'
  WHERE codigo = 1;

-- o produto Teste (código 4) foi um engano
-- dica: o nome da coluna da chave do produto
DELETE FROM produto WHERE codigo = 4;
DELETE FROM cliente WHERE codigo = 1;

-- transação desfeita
START TRANSACTION;
UPDATE produto SET preco_tabela = preco_tabela * 2
  WHERE codigo = 1;
SELECT nome, preco_tabela FROM produto
  WHERE codigo = 1;
-- dica: o comando que desfaz a transação
ROLLBACK;
SELECT nome, preco_tabela FROM produto
  WHERE codigo = 1;
