INSERT INTO Cliente (id, nome, cpf) VALUES (1, 'João Silva', '12345678901');
INSERT INTO Cliente (id, nome, cpf) VALUES (2, 'Maria Oliveira', '98765432101');
INSERT INTO Cliente (id, nome, cpf) VALUES (3, 'Carlos Pereira', '23456789012');
INSERT INTO Cliente (id, nome, cpf) VALUES (4, 'Ana Costa', '87654321098');
INSERT INTO Cliente (id, nome, cpf) VALUES (5, 'Lucas Souza', '34567890123');

INSERT INTO Fornecedor (cnpj, end_logradouro, end_cidade, end_cep) VALUES ('12345678000100', 'Rua das Flores, 100', 'São Paulo', '01001000');
INSERT INTO Fornecedor (cnpj, end_logradouro, end_cidade, end_cep) VALUES ('23456789000111', 'Av. Paulista, 200', 'São Paulo', '01311000');
INSERT INTO Fornecedor (cnpj, end_logradouro, end_cidade, end_cep) VALUES ('34567890000122', 'Rua das Palmeiras, 300', 'Rio de Janeiro', '20040001');
INSERT INTO Fornecedor (cnpj, end_logradouro, end_cidade, end_cep) VALUES ('45678900000133', 'Av. Atlântica, 400', 'Rio de Janeiro', '22021010');
INSERT INTO Fornecedor (cnpj, end_logradouro, end_cidade, end_cep) VALUES ('56789000000144', 'Rua das Orquídeas, 500', 'Belo Horizonte', '30140001');

INSERT INTO Pagamento (id, metodo, valor) VALUES (1, 'Cartão de Crédito', 100.50);
INSERT INTO Pagamento (id, metodo, valor) VALUES (2, 'Dinheiro', 50.00);
INSERT INTO Pagamento (id, metodo, valor) VALUES (3, 'Cartão de Débito', 75.20);
INSERT INTO Pagamento (id, metodo, valor) VALUES (4, 'Pix', 30.00);
INSERT INTO Pagamento (id, metodo, valor) VALUES (5, 'Cartão de Crédito', 150.80);

INSERT INTO ItemCardapio (codigo, preco, descricao, qtd) VALUES (1, 29.90, 'Pizza Margherita', 20);
INSERT INTO ItemCardapio (codigo, preco, descricao, qtd) VALUES (2, 24.90, 'Hamburguer Artesanal', 15);
INSERT INTO ItemCardapio (codigo, preco, descricao, qtd) VALUES (3, 19.90, 'Salada Caesar', 10);
INSERT INTO ItemCardapio (codigo, preco, descricao, qtd) VALUES (4, 34.90, 'Lasanha à Bolonhesa', 8);
INSERT INTO ItemCardapio (codigo, preco, descricao, qtd) VALUES (5, 12.90, 'Batata Frita', 30);

INSERT INTO Ingrediente (id, nome, data_validade, qtd_estoque) VALUES (1, 'Tomate', TO_DATE('2024-12-31', 'YYYY-MM-DD'), 50);
INSERT INTO Ingrediente (id, nome, data_validade, qtd_estoque) VALUES (2, 'Alface', TO_DATE('2024-10-15', 'YYYY-MM-DD'), 30);
INSERT INTO Ingrediente (id, nome, data_validade, qtd_estoque) VALUES (3, 'Carne Bovina', TO_DATE('2024-11-30', 'YYYY-MM-DD'), 20);
INSERT INTO Ingrediente (id, nome, data_validade, qtd_estoque) VALUES (4, 'Queijo Mussarela', TO_DATE('2024-12-10', 'YYYY-MM-DD'), 40);
INSERT INTO Ingrediente (id, nome, data_validade, qtd_estoque) VALUES (5, 'Farinha de Trigo', TO_DATE('2025-01-31', 'YYYY-MM-DD'), 60);

INSERT INTO Restaurante (cnpj, end_cep, end_cidade, end_logradouro) VALUES ('11122233000101', '01001001', 'Recife', 'Rua Alameda, 101');
INSERT INTO Restaurante (cnpj, end_cep, end_cidade, end_logradouro) VALUES ('22233344000112', '01311001', 'São Paulo', 'Av. Central, 202');
INSERT INTO Restaurante (cnpj, end_cep, end_cidade, end_logradouro) VALUES ('33344455000123', '20040002', 'Rio de Janeiro', 'Rua Prado, 303');
INSERT INTO Restaurante (cnpj, end_cep, end_cidade, end_logradouro) VALUES ('44455566000134', '22021011', 'Rio de Janeiro', 'Av. Marítima, 404');
INSERT INTO Restaurante (cnpj, end_cep, end_cidade, end_logradouro) VALUES ('55566677000145', '30140002', 'Belo Horizonte', 'Rua Belvedere, 505');

INSERT INTO Funcionario (cpf, telefone, nome, restaurante_id) VALUES ('98765432100', '11999999999', 'Pedro Lima', '11122233000101');
INSERT INTO Funcionario (cpf, telefone, nome, restaurante_id) VALUES ('87654321000', '21988888888', 'Paula Mendes', '11122233000101');
INSERT INTO Funcionario (cpf, telefone, nome, restaurante_id) VALUES ('76543210000', '31977777777', 'Clara Souza', '11122233000101');
INSERT INTO Funcionario (cpf, telefone, nome, restaurante_id) VALUES ('65432100000', '21966666666', 'Fábio Castro', '44455566000134');
INSERT INTO Funcionario (cpf, telefone, nome, restaurante_id) VALUES ('54321000000', '11955555555', 'Gabriel Rocha', '55566677000145');
INSERT INTO Funcionario (cpf, telefone, nome, restaurante_id) VALUES ('00000000001', '11999999999', 'Pedro Lima', '11122233000101');
INSERT INTO Funcionario (cpf, telefone, nome, restaurante_id) VALUES ('00000000002', '21988888888', 'Paula Mendes', '11122233000101');
INSERT INTO Funcionario (cpf, telefone, nome, restaurante_id) VALUES ('00000000003', '31977777777', 'Clara Souza', '11122233000101');
INSERT INTO Funcionario (cpf, telefone, nome, restaurante_id) VALUES ('00000000004', '21966666666', 'Fábio Castro', '44455566000134');
INSERT INTO Funcionario (cpf, telefone, nome, restaurante_id) VALUES ('00000000005', '11955555555', 'Gabriel Rocha', '55566677000145');

INSERT INTO Garcom (cpf) VALUES ('00000000001');
INSERT INTO Garcom (cpf) VALUES ('00000000002');
INSERT INTO Garcom (cpf) VALUES ('00000000003');
INSERT INTO Garcom (cpf) VALUES ('00000000004');
INSERT INTO Garcom (cpf) VALUES ('00000000005');

INSERT INTO Cozinheiro (cpf) VALUES ('98765432100');
INSERT INTO Cozinheiro (cpf) VALUES ('87654321000');
INSERT INTO Cozinheiro (cpf) VALUES ('76543210000');
INSERT INTO Cozinheiro (cpf) VALUES ('65432100000');
INSERT INTO Cozinheiro (cpf) VALUES ('54321000000');

INSERT INTO Especialidade (cpf_cozinheiro, especialidade) VALUES ('98765432100', 'Cozinha Italiana');
INSERT INTO Especialidade (cpf_cozinheiro, especialidade) VALUES ('87654321000', 'Cozinha Francesa');
INSERT INTO Especialidade (cpf_cozinheiro, especialidade) VALUES ('76543210000', 'Cozinha Brasileira');
INSERT INTO Especialidade (cpf_cozinheiro, especialidade) VALUES ('65432100000', 'Cozinha Japonesa');
INSERT INTO Especialidade (cpf_cozinheiro, especialidade) VALUES ('54321000000', 'Churrasco');

INSERT INTO Reserva (id, qtd_pessoas, data_hora, cliente_id) VALUES (1, 4, TO_TIMESTAMP('2024-10-15 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO Reserva (id, qtd_pessoas, data_hora, cliente_id) VALUES (2, 2, TO_TIMESTAMP('2024-10-16 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO Reserva (id, qtd_pessoas, data_hora, cliente_id) VALUES (3, 6, TO_TIMESTAMP('2024-10-17 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3);
INSERT INTO Reserva (id, qtd_pessoas, data_hora, cliente_id) VALUES (4, 3, TO_TIMESTAMP('2024-10-18 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4);
INSERT INTO Reserva (id, qtd_pessoas, data_hora, cliente_id) VALUES (5, 5, TO_TIMESTAMP('2024-10-19 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5);

INSERT INTO Produto (codigo, data_validade, tipo) VALUES (1, TO_DATE('2024-12-31', 'YYYY-MM-DD'), 'Batata');
INSERT INTO Produto (codigo, data_validade, tipo) VALUES (2, TO_DATE('2024-11-30', 'YYYY-MM-DD'), 'Tomate');
INSERT INTO Produto (codigo, data_validade, tipo) VALUES (3, TO_DATE('2024-12-15', 'YYYY-MM-DD'), 'Cebola');
INSERT INTO Produto (codigo, data_validade, tipo) VALUES (4, TO_DATE('2025-01-10', 'YYYY-MM-DD'), 'Refrigerante em Lata');
INSERT INTO Produto (codigo, data_validade, tipo) VALUES (5, TO_DATE('2025-02-28', 'YYYY-MM-DD'), 'Trigo');

INSERT INTO Prato (codigo, nome) VALUES (1, 'Pizza Margherita');
INSERT INTO Prato (codigo, nome) VALUES (2, 'Hamburguer Artesanal');
INSERT INTO Prato (codigo, nome) VALUES (3, 'Salada Caesar');
INSERT INTO Prato (codigo, nome) VALUES (4, 'Lasanha à Bolonhesa');
INSERT INTO Prato (codigo, nome) VALUES (5, 'Batata Frita');

INSERT INTO Promocao (id, descricao, id_cliente_indicador, id_cliente_indicado) VALUES (1, 'Indique um amigo e ganhe 10%', 1, 2);
INSERT INTO Promocao (id, descricao, id_cliente_indicador, id_cliente_indicado) VALUES (2, 'Indique um amigo e ganhe 10%', 2, 3);
INSERT INTO Promocao (id, descricao, id_cliente_indicador, id_cliente_indicado) VALUES (3, 'Indique um amigo e ganhe 10%', 3, 4);
INSERT INTO Promocao (id, descricao, id_cliente_indicador, id_cliente_indicado) VALUES (4, 'Indique um amigo e ganhe 10%', 4, 5);
INSERT INTO Promocao (id, descricao, id_cliente_indicador, id_cliente_indicado) VALUES (5, 'Indique um amigo e ganhe 10%', 5, 1);

INSERT INTO Indica (id_cliente_indicador, id_cliente_indicado) VALUES (1, 2);
INSERT INTO Indica (id_cliente_indicador, id_cliente_indicado) VALUES (2, 3);
INSERT INTO Indica (id_cliente_indicador, id_cliente_indicado) VALUES (3, 4);
INSERT INTO Indica (id_cliente_indicador, id_cliente_indicado) VALUES (4, 5);
INSERT INTO Indica (id_cliente_indicador, id_cliente_indicado) VALUES (5, 1);

INSERT INTO Pedido (id, data_hora, status, cliente_id, cpf_garcom) VALUES (1, TO_TIMESTAMP('2024-10-10 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Em andamento', 1, '00000000001');
INSERT INTO Pedido (id, data_hora, status, cliente_id, cpf_garcom) VALUES (2, TO_TIMESTAMP('2024-10-10 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Finalizado', 2, '00000000001');
INSERT INTO Pedido (id, data_hora, status, cliente_id, cpf_garcom) VALUES (3, TO_TIMESTAMP('2024-10-11 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Em andamento', 3, '00000000002');
INSERT INTO Pedido (id, data_hora, status, cliente_id, cpf_garcom) VALUES (4, TO_TIMESTAMP('2024-10-12 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Finalizado', 4, '00000000003');
INSERT INTO Pedido (id, data_hora, status, cliente_id, cpf_garcom) VALUES (5, TO_TIMESTAMP('2024-10-13 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Cancelado', 5, '00000000001');

INSERT INTO PedidoItem (id_pedido, codigo_item) VALUES (1, 1);
INSERT INTO PedidoItem (id_pedido, codigo_item) VALUES (2, 2);
INSERT INTO PedidoItem (id_pedido, codigo_item) VALUES (3, 3);
INSERT INTO PedidoItem (id_pedido, codigo_item) VALUES (4, 4);
INSERT INTO PedidoItem (id_pedido, codigo_item) VALUES (5, 5);

INSERT INTO ProdutoFornecedor (produto_id, fornecedor_cnpj, id_ingrediente) VALUES (1, '12345678000100', 1);
INSERT INTO ProdutoFornecedor (produto_id, fornecedor_cnpj, id_ingrediente) VALUES (2, '23456789000111', 2);
INSERT INTO ProdutoFornecedor (produto_id, fornecedor_cnpj, id_ingrediente) VALUES (3, '34567890000122', 3);
INSERT INTO ProdutoFornecedor (produto_id, fornecedor_cnpj, id_ingrediente) VALUES (4, '45678900000133', 4);
INSERT INTO ProdutoFornecedor (produto_id, fornecedor_cnpj, id_ingrediente) VALUES (5, '56789000000144', 5);

INSERT INTO CozinheiroPratoIngrediente (cozinheiro_id, ingrediente_id, prato_id) VALUES ('98765432100', 1, 1);
INSERT INTO CozinheiroPratoIngrediente (cozinheiro_id, ingrediente_id, prato_id) VALUES ('87654321000', 2, 2);
INSERT INTO CozinheiroPratoIngrediente (cozinheiro_id, ingrediente_id, prato_id) VALUES ('76543210000', 3, 3);
INSERT INTO CozinheiroPratoIngrediente (cozinheiro_id, ingrediente_id, prato_id) VALUES ('65432100000', 4, 4);
INSERT INTO CozinheiroPratoIngrediente (cozinheiro_id, ingrediente_id, prato_id) VALUES ('54321000000', 5, 5);
