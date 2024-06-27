CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(5,2),
    tamanho VARCHAR(255)
);

INSERT INTO tb_categorias(valor, tamanho)
VALUES(39.99, "Pequena"),
(49.99, "Média"),
(69.99, "Grande"),
(89.99, "Família"),
(109.99, "Maracanã");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(255) NOT NULL,
    ingrediente_extra VARCHAR(255),
    borda_recheada VARCHAR(255),
    molhos VARCHAR(255),
    categorias_id BIGINT,
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);

INSERT INTO  tb_pizzas(sabor, ingrediente_extra, borda_recheada, molhos, categorias_id) 
VALUES("Calabresa", "Bacon", "Catupiry", "Ketchup", 3),
("4 Queijos", "Oréganos", "Queijo", "Mostarda", 3),
("Marguerita", "Tomate", "Catupiry", "Maionese", 2),
("Chocolate", "Confete", "Nutella", "Leite Condensado", 5);

INSERT INTO tb_pizzas(sabor, molhos, categorias_id) 
VALUES("Marguerita", "Ketchup e Maionese", 4),
("Calabresa", "Mostarda", 1);

INSERT INTO  tb_pizzas(sabor, ingrediente_extra, borda_recheada, categorias_id) 
VALUES("Chocolate", "Coco Ralado", "Chocolate Branco", 5),
("4 Queijos", "Cebola", "Catupiry", 2);

-- pizzas acima de R$ 45,00
SELECT sabor, ingrediente_extra, borda_recheada, molhos, tb_categorias.valor, tb_categorias.tamanho 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id WHERE valor > 45.00;

-- pizzas entre R$ 50,00 e R$ 100,00
SELECT sabor, ingrediente_extra, borda_recheada, molhos, tb_categorias.valor, tb_categorias.tamanho 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id WHERE valor BETWEEN 50.00 and 100.00;

-- pizzas que possuem m
SELECT sabor, ingrediente_extra, borda_recheada, molhos, tb_categorias.valor, tb_categorias.tamanho 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id WHERE sabor LIKE "%m%";

-- todos os dados de ambas as tabelas
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

-- pizzas de tamanho médio
SELECT sabor, ingrediente_extra, borda_recheada, molhos, tb_categorias.valor, tb_categorias.tamanho 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categorias_id = tb_categorias.id WHERE tamanho = "media";