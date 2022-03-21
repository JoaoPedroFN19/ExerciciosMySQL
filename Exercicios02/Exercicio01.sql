CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT,
nivel INT NOT NULL,
classe_personagem VARCHAR(255) NOT NULL,
fase VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classe (classe_personagem, fase, nivel)
VALUES ("Arqueiro", "Avançado", 89);

INSERT INTO tb_classe (classe_personagem, fase, nivel)
VALUES ("Arqueiro", "Básico", 15);

INSERT INTO tb_classe (classe_personagem, fase, nivel)
VALUES ("Guerreiro", "Intermediário", 50);

INSERT INTO tb_classe (classe_personagem, fase, nivel)
VALUES ("Mago", "Avançado", 99);

INSERT INTO tb_classe (classe_personagem, fase, nivel)
VALUES ("Mago", "Básico", 8);

CREATE TABLE tb_personagem (
id BIGINT AUTO_INCREMENT,
nome varchar(255),
atkf int NOT NULL,
atkm int NOT NULL,
deff int NOT NULL,
defm int NOT NULL,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_personagem (nome, atkf, atkm, deff, defm, classe_id)
VALUES ("Legolas", 10000, 5000, 200, 200, 1);

INSERT INTO tb_personagem (nome, atkf, atkm, deff, defm, classe_id)
VALUES ("Smith", 500, 1000, 50, 50, 1);

INSERT INTO tb_personagem (nome, atkf, atkm, deff, defm, classe_id)
VALUES ("Hebert", 3000, 0, 10000, 8000, 2);

INSERT INTO tb_personagem (nome, atkf, atkm, deff, defm, classe_id)
VALUES ("Ataz", 1000, 1000, 5000, 6700, 2);

INSERT INTO tb_personagem (nome, atkf, atkm, deff, defm, classe_id)
VALUES ("Conan", 8000, 5000, 5500, 7000, 2);

INSERT INTO tb_personagem (nome, atkf, atkm, deff, defm, classe_id)
VALUES ("Gerould", 700, 1000, 8200, 500, 3);

INSERT INTO tb_personagem (nome, atkf, atkm, deff, defm, classe_id)
VALUES ("Carle", 6000, 4000, 2000, 200, 3);

INSERT INTO tb_personagem (nome, atkf, atkm, deff, defm, classe_id)
VALUES ("Evelot", 10000, 10000, 10000, 10000, 3);

SELECT * FROM tb_personagem;

SELECT * FROM tb_classe;

SELECT * FROM tb_personagem WHERE atkf > 2000;

SELECT * FROM tb_personagem WHERE atkm > 2000;

SELECT * FROM tb_personagem WHERE deff BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE defM BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

SELECT * FROM tb_personagem INNER JOIN tb_classe
ON tb_classe.id = tb_personagem.classe_id;

SELECT * FROM tb_personagem INNER JOIN tb_classe
ON tb_classe.id = tb_personagem.classe_id
WHERE classe_personagem LIKE "%Arqueiro%";

