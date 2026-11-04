USE lanchonete;
select * from produto;


/* Prática 13 – Lanchonete – perguntas ao banco
   Salve este arquivo como pratica-13.sql antes de começar. */
USE lanchonete;

-- pergunta 1: produtos com o preço chamado preco_rs
-- dica: a palavra do apelio
SELECT nome, preco_tabela AS preco_rs FROM produto;

-- pergunta 2: produtos de 12 a 15 reais
-- dica: o operador que quer dizer entre
SELECT nome, preco_tabela FROM produto
WHERE preco_tabela between 12 AND 15;

-- pergunta 3: produtos com Açaí no começo do nome
-- dica: o operador de parte do texto
SELECT nome FROM produto WHERE nome like 'Açaí%';

-- pergunta 4: pedidos retirados no balcão
-- dica: coluna vazia (nunca use = NULL)
SELECT numero FROM pedido
WHERE entregador_codigo IS NULL;

-- pergunta 5: os 3 produtos disponíveis mais caros
SELECT nome, preco_tabela FROM produto
WHERE disponivel = TRUE
-- dica: do maior para o menor
ORDER BY preco_tabela desc
-- dica: mostrar só as primeiras linhas
limit 3;