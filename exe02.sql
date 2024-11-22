CREATE DATABASE db_eletronicos;

USE db_eletronicos;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	produto VARCHAR(255) NOT NULL,
    marca VARCHAR(30)NOT NULL,
	quantidade INT,
    lote INT,
	preco DECIMAL(7,2) NOT NULL);
    
    
    INSERT INTO tb_produtos(produto,marca,quantidade,lote,preco)
    VALUES('Smartphone Galaxy S23', 'Samsung', 50, 101, 3999.99),
    ('Notebook ThinkPad X1 Carbon', 'Lenovo', 20, 202, 8999.99),
    ('Smart TV OLED CX 55"', 'LG', 15, 303, 7499.90),
    ('Console PlayStation 5', 'Sony', 25, 404, 4499.90),
    ('Fone de Ouvido QuietComfort 45', 'Bose', 100, 505, 1999.00),
    ('Smartwatch Series 9', 'Apple', 30, 606, 4299.00),
    ('Monitor UltraWide 34"', 'Dell', 10, 707, 5999.99),
    ('Caixa de Som Bluetooth Charge 5', 'JBL', 70, 808, 899.90),
    ('Câmera Mirrorless Alpha 7 IV', 'Sony', 5, 909, 14999.90),
    ('Roteador AX6000 WiFi 6', 'TP-Link', 40, 1001, 1399.99);
    
    SELECT * FROM tb_produtos WHERE preco < 500;
    
    SELECT * FROM tb_produtos WHERE preco > 500;
    
    UPDATE tb_produtos  SET preco = 499.99 WHERE id = 1;
    
    SELECT * FROM tb_produtos;
    
    
    