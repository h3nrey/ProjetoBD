-- Criação do Banco
CREATE DATABASE habisbi

-- Criação das tabelas

-- Criar tabelas independentes primeiro

CREATE TABLE Cliente (
    id NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    cpf VARCHAR2(11) UNIQUE
);
CREATE TABLE Fornecedor (
    cnpj VARCHAR2(14) PRIMARY KEY,
    end_logradouro VARCHAR2(255),
    end_cidade VARCHAR2(100),
    end_cep VARCHAR2(8)
);
CREATE TABLE Pagamento (
    id NUMBER PRIMARY KEY,
    metodo VARCHAR2(50),
    valor NUMBER(10, 2)
);
CREATE TABLE ItemCardapio (
    codigo NUMBER PRIMARY KEY,
    preco NUMBER(10, 2),
    descricao VARCHAR2(255),
    qtd NUMBER
);
CREATE TABLE Ingrediente (
    id NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    data_validade DATE,
    qtd_estoque NUMBER
);
CREATE TABLE Restaurante (
    cnpj VARCHAR2(14) PRIMARY KEY,
    end_cep VARCHAR2(8),
    end_cidade VARCHAR2(100),
    end_logradouro VARCHAR2(255)
);
CREATE TABLE Funcionario (
    cpf VARCHAR2(11) PRIMARY KEY,
    telefone VARCHAR2(15),
    nome VARCHAR2(100),
    restaurante_id VARCHAR2(14),
    CONSTRAINT fk_funcionario_restaurante FOREIGN KEY (restaurante_id) REFERENCES Restaurante(cnpj)
);
CREATE TABLE Garcom (
    cpf VARCHAR2(11) PRIMARY KEY,
    CONSTRAINT fk_garcom_funcionario FOREIGN KEY (cpf) REFERENCES Funcionario(cpf)
);
CREATE TABLE Cozinheiro (
    cpf VARCHAR2(11) PRIMARY KEY,
    CONSTRAINT fk_cozinheiro_funcionario FOREIGN KEY (cpf) REFERENCES Funcionario(cpf)
);
CREATE TABLE Especialidade (
    cpf_cozinheiro VARCHAR2(11),
    especialidade VARCHAR2(100),
    CONSTRAINT fk_especialidade_cozinheiro FOREIGN KEY (cpf_cozinheiro) REFERENCES Cozinheiro(cpf)
);
CREATE TABLE Reserva (
    id NUMBER PRIMARY KEY,
    qtd_pessoas NUMBER,
    data_hora TIMESTAMP,
    cliente_id NUMBER,
    CONSTRAINT fk_cliente_id FOREIGN KEY (cliente_id) REFERENCES Cliente(id)
);
CREATE TABLE Produto (
    codigo NUMBER PRIMARY KEY,
    data_validade DATE,
    tipo VARCHAR2(50),
    CONSTRAINT fk_produto_itemcardapio FOREIGN KEY (codigo) REFERENCES ItemCardapio(codigo)
);
CREATE TABLE Prato (
    codigo NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    CONSTRAINT fk_prato_itemcardapio FOREIGN KEY (codigo) REFERENCES ItemCardapio(codigo)
);
CREATE TABLE Promocao (
    id NUMBER PRIMARY KEY,
    descricao VARCHAR2(255),
    id_cliente_indicador NUMBER,
    id_cliente_indicado NUMBER,
    CONSTRAINT fk_promocao_indicador FOREIGN KEY (id_cliente_indicador) REFERENCES Cliente(id),
    CONSTRAINT fk_promocao_indicado FOREIGN KEY (id_cliente_indicado) REFERENCES Cliente(id)
);
CREATE TABLE Indica (
    id_cliente_indicador NUMBER,
    id_cliente_indicado NUMBER,
    CONSTRAINT fk_indicador FOREIGN KEY (id_cliente_indicador) REFERENCES Cliente(id),
    CONSTRAINT fk_indicado FOREIGN KEY (id_cliente_indicado) REFERENCES Cliente(id)
);
CREATE TABLE Pedido (
    id NUMBER PRIMARY KEY,
    data_hora TIMESTAMP,
    status VARCHAR2(50),
    cliente_id NUMBER,
    cpf_garcom VARCHAR2(11),
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    CONSTRAINT fk_pedido_garcom FOREIGN KEY (cpf_garcom) REFERENCES Garcom(cpf)
);
CREATE TABLE PedidoItem (
    id_pedido NUMBER,
    codigo_item NUMBER,
    CONSTRAINT fk_pedidoitem_pedido FOREIGN KEY (id_pedido) REFERENCES Pedido(id),
    CONSTRAINT fk_pedidoitem_item FOREIGN KEY (codigo_item) REFERENCES ItemCardapio(codigo)
);
CREATE TABLE ProdutoFornecedor (
    produto_id NUMBER,
    fornecedor_cnpj VARCHAR2(14),
    id_ingrediente NUMBER,
    CONSTRAINT fk_produtofornecedor_produto FOREIGN KEY (produto_id) REFERENCES Produto(codigo),
    CONSTRAINT fk_produtofornecedor_fornecedor FOREIGN KEY (fornecedor_cnpj) REFERENCES Fornecedor(cnpj)
);
CREATE TABLE CozinheiroPratoIngrediente (
    cozinheiro_id VARCHAR2(11),
    ingrediente_id NUMBER,
    prato_id NUMBER,
    CONSTRAINT fk_cpi_cozinheiro FOREIGN KEY (cozinheiro_id) REFERENCES Cozinheiro(cpf),
    CONSTRAINT fk_cpi_prato FOREIGN KEY (prato_id) REFERENCES Prato(codigo),
    CONSTRAINT fk_cpi_ingrediente FOREIGN KEY (ingrediente_id) REFERENCES Ingrediente(id)
);