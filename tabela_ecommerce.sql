CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(255) NOT NULL,
    valor DECIMAL(8, 2) NOT NULL,
    codigo BIGINT NOT NULL,
    tipo VARCHAR(255),
    tamanhos VARCHAR(255)
);

INSERT INTO tb_produtos(produto, valor, codigo, tipo, tamanhos) 
VALUES("Saia", 129.99, 1001, "Jeans", "P, M, G, GG");

INSERT INTO tb_produtos(produto, valor, codigo, tipo, tamanhos) 
VALUES("Jaqueta", 529.99, 1010, "Couro Sintético", "M e GG");

INSERT INTO tb_produtos(produto, valor, codigo, tipo, tamanhos) 
VALUES("Vestido", 249.99, 1005, "Algodão", "PP, G, GG");

INSERT INTO tb_produtos(produto, valor, codigo, tipo, tamanhos) 
VALUES("Calça", 149.99, 1009, "Jeans", "");

INSERT INTO tb_produtos(produto, valor, codigo, tipo, tamanhos) 
VALUES("Macacão", 619.99, 1002, "Algodão", "PP, P, M, G, GG");

INSERT INTO tb_produtos(produto, valor, codigo, tipo, tamanhos) 
VALUES("Bermuda", 89.99, 1008, "Jeans", "M e G");

INSERT INTO tb_produtos(produto, valor, codigo, tipo, tamanhos) 
VALUES("Casaco", 139.99, 1012, "Algodão", "PP, P, G");

INSERT INTO tb_produtos(produto, valor, codigo, tipo, tamanhos) 
VALUES("Boné", 79.99, 1016, "Algodão", "Único");

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET tamanhos = "P, M e G" WHERE id = 4;

SELECT * FROM tb_produtos;

