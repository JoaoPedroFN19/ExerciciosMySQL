CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
materia varchar(255) NOT NULL,
nota float,
PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, idade, materia, nota)
VALUE ("João", 19, "Artes", 9.0);

INSERT INTO tb_alunos (nome, idade, materia, nota)
VALUE ("Rosi", 27, "Artes", 10.0);

INSERT INTO tb_alunos (nome, idade, materia, nota)
VALUE ("Emanuel", 23, "Artes", 6.0);

INSERT INTO tb_alunos (nome, idade, materia, nota)
VALUE ("Sabrina", 29, "Artes", 7.0);

INSERT INTO tb_alunos (nome, idade, materia, nota)
VALUE ("Ricardo", 31, "Artes", 9.0);

INSERT INTO tb_alunos (nome, idade, materia, nota)
VALUE ("Cleverson", 24, "Artes", 3.0);

INSERT INTO tb_alunos (nome, idade, materia, nota)
VALUE ("Vivi", 25, "Artes", 4.0);

INSERT INTO tb_alunos (nome, idade, materia, nota)
VALUE ("Rafael", 42, "Artes", 10.0);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota >= 7;

SELECT * FROM tb_alunos WHERE nota <= 7;

UPDATE tb_alunos SET nota = 8 WHERE id = 4;

