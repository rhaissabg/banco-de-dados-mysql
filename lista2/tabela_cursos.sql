CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    turno VARCHAR(255),
    regime VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias(turno, regime) 
VALUES("Manhã", "EAD"),
("Tarde", "EAD"),
("Noite", "EAD"),
("Manhã", "Presencial"),
("Tarde", "Presencial"),
("Noite", "Presencial");

CREATE TABLE tb_cursos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    materia VARCHAR(255) NOT NULL,
    mensalidade DECIMAL(7,2) NOT NULL,
    duracao_meses BIGINT,
    nivel VARCHAR(255),
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id)
);

INSERT INTO tb_cursos(materia, mensalidade, duracao_meses, nivel, id_categoria) 
VALUES("Programação Front-end", 800.00, 6, "Iniciante", 1),
("Programação Front-end", 700.00, 6, "Iniciante", 2),
("Programação Front-end", 500.00, 6, "Intermediário", 6),
("Programação Back-end", 1200.00, 8, "Iniciante", 1),
("Programação Back-end", 1000.00, 10, "Avançado", 5),
("Programação Back-end", 900.00, 7, "Intermediário", 6),
("Programação Fullstack", 2000.00, 12, "Iniciante", 4),
("Programação Fullstack", 1800.00, 18, "Intermediário", 2),
("Programação Fullstack", 2400.00, 12, "Avançado", 3);

SELECT * FROM tb_cursos WHERE mensalidade > 500.00; 

SELECT * FROM  tb_cursos WHERE mensalidade BETWEEN 600.00 AND 1000.00;

-- não tinha atributo com J, fiz com F
SELECT * FROM tb_cursos WHERE materia LIKE "%f%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.id_categoria = tb_categorias.id;

SELECT materia, mensalidade, nivel, tb_categorias.turno, tb_categorias.regime
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.id_categoria = tb_categorias.id WHERE tb_categorias.regime = "presencial";