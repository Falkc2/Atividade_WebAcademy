/* 0 º FN */

CREATE TABLE inicial_0fn (

    inicial_id BIGINT PRIMARY KEY NOT NULL, 
    
    Id_cliente VARCHAR(255) NOT NULL,
    telefone VARCHAR(11),
    id_pedido BIGINT,
    produto VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL (10,2),
    id_endereco_entrega TEXT
);
/*  ---------------------------------------------------------------------------------------------------------------------------- */
/* 1º FN */
 CREATE TABLE inicial_1fn (

    inicial_1fn_id BIGINT PRIMARY KEY NOT NULL,

    cliente_nome VARCHAR(255) NOT NULL, 
    cliente_telefone VARCHAR(11),

    produto_nome VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL (10,2),

    id_pedido BIGINT,
    
    endereco_rua VARCHAR(255),
    endereco_numero INT


 );
/*  ---------------------------------------------------------------------------------------------------------------------------- */
/* 2º FN */
CREATE TABLE cliente_02fn (

    cliente_id BIGINT PRIMARY KEY NOT NULL,
    cliente_nome VARCHAR(255) NOT NULL,
    cliente_telefone VARCHAR(11)

);

CREATE TABLE produto_02fn (

    id_produto BIGINT PRIMARY KEY NOT NULL,
    produto_nome VARCHAR(255) NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL

);

CREATE TABLE endereco_02fn (

    endereco_id BIGINT PRIMARY KEY NOT NULL,
    endereco_rua VARCHAR (255) NOT NULL,
    endereco_numero INT,
    id_cliente_fk BIGINT,

    CONSTRAINT id_cliente_fk FOREIGN KEY (id_cliente_fk) REFERENCES cliente(cliente_id)

);

CREATE TABLE pedido_02fn (

    id_pedido BIGINT PRIMARY KEY NOT NULL,

    id_cliente_fk BIGINT NOT NULL,
    id_produto_fk BIGINT NOT NULL,
    id_endereco_fk BIGINT NOT NULL,

    CONSTRAINT id_cliente_fk FOREIGN KEY (id_cliente_fk) REFERENCES cliente(Id_cliente),
    CONSTRAINT id_produto_fk FOREIGN KEY (id_produto_fk) REFERENCES produto(id_produto),
    CONSTRAINT id_endereco_fk FOREIGN KEY (id_endereco_fk) REFERENCES endereco(Id_endereco)

);
/*  ---------------------------------------------------------------------------------------------------------------------------- */
 /* 3º FN */

CREATE TABLE cliente_03fn (

    cliente_id BIGINT PRIMARY KEY NOT NULL,
    cliente_nome VARCHAR(255) NOT NULL,
    cliente_telefone VARCHAR(11)

);

CREATE TABLE produto_03fn (

    id_produto BIGINT PRIMARY KEY NOT NULL,
    produto_nome VARCHAR(255) NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL

);

CREATE TABLE endereco_03fn (

    endereco_id BIGINT PRIMARY KEY NOT NULL,
    endereco_rua VARCHAR (255) NOT NULL,
    endereco_numero INT,
    id_cliente_fk BIGINT,

    CONSTRAINT id_cliente_fk FOREIGN KEY (id_endereco_fk) REFERENCES endereco(endereco_id)

);

CREATE TABLE pedido_03fn (

    id_pedido BIGINT PRIMARY KEY NOT NULL,

    id_cliente_fk BIGINT NOT NULL,
    id_produto_fk BIGINT NOT NULL,
    id_endereco_fk BIGINT NOT NULL,

    CONSTRAINT id_cliente_fk FOREIGN KEY (id_cliente_fk) REFERENCES cliente_03fn(cliente_id),
    CONSTRAINT id_produto_fk FOREIGN KEY (id_produto_fk) REFERENCES produto_03fn(id_produto),
    CONSTRAINT id_endereco_fk FOREIGN KEY (id_endereco_fk) REFERENCES endereco_03fn(endereco_id)

);

CREATE TABLE item_pedido_03fn (

    id_item_pedido BIGINT PRIMARY KEY NOT NULL,
    id_produto_fk BIGINT,
    id_pedido_fk BIGINT,
    id_preco_unitario_fk BIGINT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL (10,2) NOT NULL,

    CONSTRAINT id_produto_fk FOREIGN KEY (id_produto_fk) REFERENCES produto_03fn(id_produto),
    CONSTRAINT id_pedido_fk FOREIGN KEY (id_pedido_fk) REFERENCES pedido_03fn(id_pedido)

);
