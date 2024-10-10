# Mapeamento ER-Relacional

### Pagamento (id, método, valor) 

### Reserva(id, qtd_pessoas, data/hora, cliente_id!)
> cliente_id → Cliente(id)

### Cliente(id, nome, cpf, id_pagamento!)
> id_pagamento → Pagamento (id)

### Indica(id_cliente_indicador, id_cliente_indicado)
> id_cliente → Cliente (id)

> promocao_id → Promoção(id)

### Promoção(id, descricao, [id_cliente_indicador, id_cliente_indicado])
> id_cliente_indicador → cliente (id)

> id_cliente_indicado → cliente (id)

### Pedido(id, data/hora, status, cliente_id!, cpf_garçom)

> cliente_id → Cliente(id)

> cpf_garçom → garçom (cpf)

### ItemCardapio(codigo, preco, descricao, qtd)
### PedidoItem (id_pedido, codigo_item)
> id_pedido → pedido (id)

> código_item → itemCardápio (código)
### Produto(codigo, data_validade, tipo)
> codigo → ItemCardapio(codigo)
### Fornecedor(cnpj, end_logradouro, end_cidade, end_cep)
### ProdutoFornecedor(produto_id, fornecedor_cnpj, id_ingrediente)
> produto_id → Produto(id)

> fornecedor_cnpj → Fornecedor(cnpj)
### Prato(codigo, nome)
> codigo → ItemCardapio(codigo)
### Garcom(cpf)
> cpf → Funcionário(cpf)
### Cozinheiro(cpf)
> cpf → Funcionário(cpf)
### Especialidade (cpf_cozinheiro, especialidade)
> cpf_cozinheiro → cozinheiro (cpf)
### CozinheiroPratoIngrediente(cozinheiro_id, ingrediente_id, prato_id)

> cozinheiro_id → cozinheiro (cpf)

> prato_id →  Prato(codigo)

> ingrediente_id →  Ingrediente(id)
### Ingrediente(id, nome, data_validade, qtd_estoque)
### Restaurante(cnpj, end_cep, end_cidade, end_logradouro)
### Funcionário(cpf, telefone, nome, restaurante_id!)
> restaurante_id → restaurante (cnpj)
