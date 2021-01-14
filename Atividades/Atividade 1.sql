-- Criando o Banco de Dados
CREATE DATABASE db_servico_rh;

-- Selecionando o banco para ser usado
USE db_servico_rh;

-- Criando tabela Funcionarios
CREATE TABLE funcionarios(
id BIGINT(5) auto_increment,
nome VARCHAR(255),
cpf VARCHAR(14),
cargo VARCHAR(255),
salario DECIMAL(10,2),
primary key (id)
);

-- Populando tabela
INSERT INTO funcionarios(nome,cpf,cargo,salario)
VALUES ("André","249.324.120-70","DEV JAVA JR", 5000);
INSERT INTO funcionarios(nome,cpf,cargo,salario)
VALUES ("Lucas","269.250.125-60","DEV JAVA JR", 5000);
INSERT INTO funcionarios(nome,cpf,cargo,salario)
VALUES ("Marcos","761.237.480-33","DEV .NET JR",4500);
INSERT INTO funcionarios(nome,cpf,cargo,salario)
VALUES ("Pedro","314.695.780-93","ANALISTA DE SISTEMAS",1800);
INSERT INTO funcionarios(nome,cpf,cargo,salario)
VALUES ("Gustavo","775.449.600-30","ANALISTA DE REDES",1750);

-- consulta de funcionarios com salario maior que R$2000
SELECT * FROM funcionarios WHERE salario > 2000;

-- consulta de funcionarios com salario menor que R$2000
SELECT * FROM funcionarios WHERE salario < 2000;

-- Alterando dados
UPDATE funcionarios SET salario = 4600 WHERE id = 3; 

-- Consulta na tabela
SELECT * FROM funcionarios

