CREATE DATABASE tb_funcionarios;
USE tb_funcionarios;


CREATE TABLE tb_funcionarios (
 id			BIGINT AUTO_INCREMENT PRIMARY KEY,
 nome 		VARCHAR (100) NOT NULL,
 email		VARCHAR (255)NOT NULL UNIQUE,
 cpf		VARCHAR(14) NOT NULL UNIQUE,
 setor 		VARCHAR(255),
 salario	DECIMAL(6,2)NOT NULL);
            
INSERT INTO tb_funcionarios(nome, email, cpf, setor, salario)
VALUES ("ANA MARIA SANTANA", "ANA@GMAIL.COM", "234.876.345-79", "balcão", 2120.99),
("BEATRIZ ROXA PAES", "BEATRIZ@EMAIL.COM", "456.231.869-80", "estoque", 2774.99),
("CARLOS AUGUSTO SANTOS", "CARLOS@HOTMAIL.COM", "453.124.546-23", "limpeza", 1412.00),
("JULIA ALMEIDA DO CARMO", "JULIA@AMAIL.COM", "432.764.125-09", "auxiliar de loja", 1812.00 );


SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 1742.00 WHERE id = 3;

SELECT * FROM tb_funcionarios;