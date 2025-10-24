SELECT * FROM loja_online.clientes;

SELECT * FROM produtos;

SELECT * FROM colaboradores
ORDER BY nome ASC;

SELECT nome, sexo
FROM clientes
WHERE sexo = 'f';

SELECT * 
FROM clientes
WHERE cidade = 'Viseu';

SELECT COUNT(*) AS total_clientes_viseu
FROM clientes
WHERE cidade = 'Viseu';

SELECT COUNT(*) AS total_clientes
FROM clientes
WHERE cidade IN ('Porto', 'Lisboa', 'Coimbra');

SELECT nome, cidade
FROM clientes
WHERE cidade IN ('Porto', 'Lisboa', 'Coimbra');

SELECT nome, sexo
FROM clientes
WHERE sexo = 'm';

SELECT nome
FROM clientes
WHERE nome LIKE 'Carlos%' OR nome LIKE '%Silva%';

SELECT nome, email
FROM clientes
WHERE nome LIKE 'A%';

SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade;

SELECT cidade, COUNT(*) AS clientes_femininos
FROM clientes
WHERE sexo = 'f'
GROUP BY cidade;

SELECT nome,
		CASE 
		WHEN ativo = 1 THEN 'ativo'
		ELSE 'inativo'
		END AS estado
FROM colaboradores;

SELECT COUNT(*) AS total_encomendas
FROM encomendas;

SELECT COUNT(*) AS total_encomendas_pagas
FROM encomendas
WHERE paga = 1; 

SELECT COUNT(*) AS total_encomendas_2031
FROM encomendas
WHERE YEAR(data_hora) = 2031;

SELECT data_hora
FROM encomendas
WHERE YEAR(data_hora) = 2031
ORDER BY data_hora ASC
LIMIT 20;

SELECT DATE(data_hora) AS dia, COUNT(*) AS total_encomendas
FROM encomendas
WHERE YEAR(data_hora) = 2031 AND MONTH(data_hora) = 8
GROUP BY DATE(data_hora)
ORDER BY dia; 

SELECT * FROM encomendas
WHERE DATE(data_hora) = '2031-08-15';

SELECT COUNT(*) AS total_encomendas
FROM encomendas e
JOIN clientes c ON e.id_cliente = c.id
WHERE c.nome = 'Rosa Laura Araújo Matos'; 

SELECT 
  (SELECT nome FROM clientes WHERE id = e.id_cliente) AS cliente,
  (SELECT nome FROM colaboradores WHERE id = e.id_colaborador) AS colaborador,
  e.data_hora
FROM encomendas e;

-- codigo corrigido e mais estruturado
SELECT 
    e.id AS id_encomenda,
    e.data_hora,
    c.nome AS nome_cliente,
    c.email,
    c.telefone,
    c.morada,
    c.cidade,
    col.nome AS nome_colaborador,
    p.produto,
    p.preco_unidade,
    ep.quantidade
FROM encomendas e
JOIN clientes c ON e.id_cliente = c.id
JOIN colaboradores col ON e.id_colaborador = col.id
JOIN encomendas_produtos ep ON e.id = ep.id_encomenda
JOIN produtos p ON ep.id_produto = p.id
WHERE e.id = 1;




Os ultimos exercícios eu não entendi muito bem por isso não fiz

-> Não tava entendendo o funcionamento do join