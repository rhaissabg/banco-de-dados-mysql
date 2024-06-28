CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255),
	origem VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias(categoria, origem) 
VALUES("Fruta", "Vegetal"),
("Legume", "Vegetal"),
("Verdura", "Vegetal"),
("Ovos", "Animal"),
("Leite", "Animal");

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL (5,2) NOT NULL,
    quantidade BIGINT,
    data_validade DATE,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos(nome, valor, quantidade, data_validade, id_categoria) 
VALUES("Maçã", 4.99, 215, "2024-07-01", 1),
("Batata", 8.49, 120, "2024-07-15", 2),
("Banana", 6.99, 456, "2024-06-30", 1),
("Alface", 2.99, 132, "2024-07-01", 3),
("Couve", 5.99, 215, "2024-06-29", 3),
("Leite Desnatado", 10.99, 236, "2024-08-15", 5),
("Ovo Branco", 10.39, 145, "2024-07-21", 4),
("Caixa de Leite Integral", 58.29, 398, "2024-10-01", 5);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT nome, valor, tb_categorias.categoria, tb_categorias.origem 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id WHERE origem = "vegetal";