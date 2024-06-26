CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade BIGINT,
    matricula BIGINT NOT NULL,
    ano_escolar BIGINT NOT NULL,
    turma BIGINT,
    nota DECIMAL(4, 2) NOT NULL
);

INSERT INTO tb_alunos(nome, idade, matricula, ano_escolar, turma, nota) 
VALUES("Miguel", 12, 1001, 6, 601, 8.5),
("Ana", 14, 1009, 9, 903, 7.6),
("Carolina", 9, 1005, 5, 501, 9.4),
("João", 12, 1007, 6, 602, 5.2),
("Isadora", 15, 1008, 9, 902, 6.1),
("Carlos", 9, 1010, 4, 401, 8.7),
("Alex", 13, 1014, 8, 801, 4.2),
("Maria", 10, 1016, 6, 601, 6.5);

SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET idade = 11 WHERE id = 8;

SELECT * FROM tb_alunos;

