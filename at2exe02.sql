CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;


CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255) NOT NULL
);


CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    disponivel BOOLEAN NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Tradicional', 'Pizzas clássicas com sabores tradicionais'),
    ('Especial', 'Pizzas com sabores diferenciados e ingredientes especiais'),
    ('Doce', 'Pizzas com coberturas doces e frutas'),
    ('Vegetariana', 'Pizzas sem carne, com vegetais frescos'),
    ('Premium', 'Pizzas com ingredientes nobres e exclusivos');

INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, disponivel, id_categoria)
VALUES
    ('Margherita', 'Mussarela, tomate, manjericão', 39.90, TRUE, 1),
    ('Calabresa', 'Calabresa, cebola, mussarela', 42.50, TRUE, 1),
    ('Frango com Catupiry', 'Frango desfiado, catupiry, milho', 45.90, TRUE, 2),
    ('Pepperoni', 'Pepperoni, mussarela, molho de tomate', 50.00, TRUE, 2),
    ('Chocolate', 'Chocolate ao leite, granulado', 35.00, TRUE, 3),
    ('Romeu e Julieta', 'Queijo, goiabada', 38.90, TRUE, 3),
    ('Vegana', 'Queijo vegano, cogumelos, espinafre', 48.00, TRUE, 4),
    ('Camarão Premium', 'Camarão, alho poró, cream cheese', 89.90, TRUE, 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';


SELECT p.id_pizza, p.nome_pizza, p.preco, c.nome_categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

SELECT p.id_pizza, p.nome_pizza, p.preco, c.nome_categoria 
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Doce';
