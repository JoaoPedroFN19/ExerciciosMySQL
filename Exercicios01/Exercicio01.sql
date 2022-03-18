CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_atributos (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
setor varchar(255) NOT NULL,
salario decimal(0.2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_atributos (nome, idade, setor, salario)
VALUES ("João", 19, "Tecnologia", 2200.00);

INSERT INTO tb_atributos (nome, idade, setor, salario)
VALUES ("Emanul", 23, "Tecnologia", 3000.00);

INSERT INTO tb_atributos (nome, idade, setor, salario)
VALUES ("Miguel", 19, "Tecnologia", 2000.00);

INSERT INTO tb_atributos (nome, idade, setor, salario)
VALUES ("Sabrina", 29, "Tecnologia", 3500.00);

INSERT INTO tb_atributos (nome, idade, setor, salario)
VALUES ("Ricardo", 27, "Tecnologia", 3200.00);

SELECT * FROM tb_atributos;

SELECT nome, idade, setor, concat('R$ ', FORMAT(salario, 2, 'pt_BR')) AS salario FROM tb_atributos;

SELECT * FROM tb_atributos WHERE salario >= 2000.00;

SELECT * FROM tb_atributos WHERE salario <= 2000.00;

UPDATE tb_atributos SET salario = 1100.00 WHERE id = 5;

UPDATE tb_atributos SET salario = 900.00 WHERE id = 1;

UPDATE tb_atributos SET nome = "Emanuel" WHERE id = 2;

ALTER TABLE tb_atributos MODIFY salario decimal (8,2);
