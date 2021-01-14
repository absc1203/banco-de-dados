-- Criando o Banco de Dados
CREATE DATABASE db_escola;

-- Selecionando o banco para ser usado
USE db_escola;

-- Criando tabela Alunos
CREATE TABLE alunos(
id BIGINT(5) auto_increment,
nome VARCHAR(255),
nota decimal(2,1),
cpf VARCHAR(14),
nome_mae VARCHAR(255),
primary key (id)
);


-- Populando tabela
INSERT INTO alunos(nome,nota,cpf,nome_mae)
VALUES ("André",7,"683.090.390-42", "Carla");
INSERT INTO alunos(nome,nota,cpf,nome_mae)
VALUES ("Bruna",8,"801.375.340-94", "Aparecida");
INSERT INTO alunos(nome,nota,cpf,nome_mae)
VALUES ("Camila",9,"644.306.840-81", "Maria");
INSERT INTO alunos(nome,nota,cpf,nome_mae)
VALUES ("Gabriel",9,"395.215.260-92", "Adelaide");
INSERT INTO alunos(nome,nota,cpf,nome_mae)
VALUES ("Alexandre",5,"478.986.960-18", "Ursula");
INSERT INTO alunos(nome,nota,cpf,nome_mae)
VALUES ("Laura",4,"979.260.400-61", "Elizabete");
INSERT INTO alunos(nome,nota,cpf,nome_mae)
VALUES ("Larissa",2,"204.190.910-25", "Aurora");
INSERT INTO alunos(nome,nota,cpf,nome_mae)
VALUES ("Ana",0,"398.437.630-84", "Cleunice");
INSERT INTO alunos(nome,nota,cpf,nome_mae)
VALUES ("Carol",6,"642.772.540-80", "Elizete");

-- consulta de alunos com nota maior que 7
SELECT * FROM alunos WHERE nota > 7;

-- consulta de alunos com nota menor que 7
SELECT * FROM alunos WHERE nota < 7;

-- Alterando dados
UPDATE alunos SET nota = 8 WHERE id = 8; 

-- Consulta na tabela
SELECT * FROM alunos;

