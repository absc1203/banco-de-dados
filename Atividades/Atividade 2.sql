-- Criando o Banco de Dados
CREATE DATABASE db_ecommerce;

-- Selecionando o banco para ser usado
USE db_ecommerce;

-- Criando tabela Produtos
CREATE TABLE produtos(
id BIGINT(5) auto_increment,
nome VARCHAR(255),
desconto boolean,
garantia boolean,
preco DECIMAL(10,2),
primary key (id)
);

-- Populando tabela
INSERT INTO produtos(nome,desconto,garantia,preco)
VALUES ("Camisa",false,true, 120);
INSERT INTO produtos(nome,desconto,garantia,preco)
VALUES ("Regata",true,true, 30);
INSERT INTO produtos(nome,desconto,garantia,preco)
VALUES ("Camisa Polo",false,true, 40);
INSERT INTO produtos(nome,desconto,garantia,preco)
VALUES ("Tênis",true,true, 120);
INSERT INTO produtos(nome,desconto,garantia,preco)
VALUES ("Boné",false,true, 70);
INSERT INTO produtos(nome,desconto,garantia,preco)
VALUES ("Shorts",true,true, 50);
INSERT INTO produtos(nome,desconto,garantia,preco)
VALUES ("Corta Vento",false,true, 550);
INSERT INTO produtos(nome,desconto,garantia,preco)
VALUES ("Moletom",true,true, 180);
INSERT INTO produtos(nome,desconto,garantia,preco)
VALUES ("Calça",false,true, 80);

-- consulta de produtos com preço maior que R$500
SELECT * FROM produtos WHERE preco > 500;

-- consulta de funcionarios com salario menor que R$2000
SELECT * FROM produtos WHERE preco < 500;

-- Alterando dados
UPDATE produtos SET preco = 600 WHERE id = 4; 

-- Consulta na tabela
SELECT * FROM produtos

