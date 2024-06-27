CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL, -- ansiolítico, antidepre, relaxante muscular...
    tarja VARCHAR(255) -- preta, vermelha, amarela...
);

INSERT INTO tb_categorias(tipo, tarja) 
VALUES("Antidepressivo", "Vermelha"),
("Ansiolítico", "Preta"),
("Relaxante Muscular", "Vermelha"),
("Anti-alergico", "Sem tarja"),
("Analgésico", "Amarela");

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade BIGINT,
    validade DATE NOT NULL,
    valor DECIMAL(6,2),
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos(nome, quantidade, validade, valor, id_categoria) 
VALUES("Alprazolam", 200, "2024-12-12", 29.49, 2),
("Citalopram", 425, "2025-06-12", 58.90, 1),
("Dipirona", 698, "2024-08-06", 10.99, 5),
("Loratadina", 119, "2026-05-20", 12.49, 4),
("Dorflex", 345, "2025-12-12", 29.49, 3),
("Neolsadina", 115, "2024-10-16", 50.49, 5),
("Allegra", 621, "2025-12-08", 54.99, 4),
("Nevralgex", 211, "2026-12-05", 4.49, 3);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT nome, valor, tb_categorias.tipo, tb_categorias.tarja
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.tarja = "vermelha";