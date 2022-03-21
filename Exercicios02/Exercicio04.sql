CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
setor VARCHAR(255) NOT NULL,
procDoProduto VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (tipo, setor, procDoProduto) 
VALUES ("Frutas", "Organico", "Alta Procura");

INSERT INTO tb_categoria (tipo, setor, procDoProduto) 
VALUES ("Legumes", "Organico", "Média Procura");

INSERT INTO tb_categoria (tipo, setor, procDoProduto) 
VALUES ("Verduras", "Não Organico", "Alta Procura");

INSERT INTO tb_categoria (tipo, setor, procDoProduto) 
VALUES ("Bulbos", "Não Organico", "Pequena Procura");

INSERT INTO tb_categoria (tipo, setor, procDoProduto) 
VALUES ("Raizes", "Organico", "Alta Procura");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(5,2) NOT NULL,
validade DATE,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produto (nome, preco, validade, categoria_id) 
VALUES ("Banana", 7.98, '2021-08-20', 1);

INSERT INTO tb_produto (nome, preco, validade, categoria_id) 
VALUES ("Alho", 11.89, '2021-08-26', 4);

INSERT INTO tb_produto (nome, preco, validade, categoria_id) 
VALUES ("Cebola", 6.58, '2021-08-10', 4);

INSERT INTO tb_produto (nome, preco, validade, categoria_id)
VALUES ("Berinjela", 9.95, '2021-08-14', 2);
 
INSERT INTO tb_produto (nome, preco, validade, categoria_id) 
VALUES ("Milho", 2.65, '2021-08-01', 2);

INSERT INTO tb_produto (nome, preco, validade, categoria_id) 
VALUES ("Melancia Densuke", 86.99, '2021-08-19', 1);

INSERT INTO tb_produto (nome, preco, validade, categoria_id) 
VALUES ("Batata", 23.99, '2021-08-20', 5);

INSERT INTO tb_produto (nome, preco, validade, categoria_id) 
VALUES ("Brócolis", 78.99, '2021-08-30', 3);

INSERT INTO tb_produto (nome, preco, validade, categoria_id) 
VALUES ("Limão", 35.95, '2021-08-08', 1);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id; 

SELECT * FROM tb_produto INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produto.categoria_id 
WHERE procDoProduto LIKE "%Alta%";