CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DOUBLE NOT NULL,
    departamento VARCHAR(255) NOT NULL,
    regime VARCHAR(255)
);

INSERT INTO tb_funcionarios(nome, cargo, salario, departamento, regime)
VALUES("Marisa", "CEO", 12560.00, "Diretoria", "Híbrido");

INSERT INTO tb_funcionarios(nome, cargo, salario, departamento, regime)
VALUES("Matheus", "Designer", 5280.00, "Desenvolvimento Front-end", "Home-Office");

INSERT INTO tb_funcionarios(nome, cargo, salario, departamento, regime) 
VALUES("Lorena", "Desenvolvedora FulStack", 7000.00, "Desenvolvimento Back-end", "Híbrido");

INSERT INTO tb_funcionarios(nome, cargo, salario, departamento, regime) 
VALUES("Rogério", "Estagiário", 1570.00, "Desenvolvimento Front-end", "Presencial");

INSERT INTO tb_funcionarios(nome, cargo, salario, departamento, regime) 
VALUES("Jussara", "Desenvolvedora Back-end", 5640.00, "Desenvolvimento Back-end", "Híbrido");

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = "3500.00" WHERE id = 4;
UPDATE tb_funcionarios SET cargo = "Desenvolvedor Front-end Jr" WHERE id = 4;

SELECT * FROM  tb_funcionarios;