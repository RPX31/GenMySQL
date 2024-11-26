CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria TEXT NOT NULL
);
CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto TEXT NOT NULL,
    preco_produto DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Medicamentos', 'Produtos para tratamento e prevenção de doenças'),
('Higiene Pessoal', 'Produtos de cuidados pessoais e higiene'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele'),
('Vitaminas e Suplementos', 'Produtos para suporte nutricional e bem-estar'),
('Equipamentos Médicos', 'Dispositivos e acessórios médicos');
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco_produto, quantidade_estoque, id_categoria) VALUES
('Paracetamol', 'Medicamento para dores e febre', 12.50, 100, 1),
('Sabonete Líquido', 'Sabonete para higiene pessoal', 25.00, 50, 2),
('Hidratante Facial', 'Creme hidratante para pele', 70.00, 30, 3),
('Vitamina C', 'Suplemento de vitamina C', 45.00, 80, 4),
('Esfigmomanômetro', 'Aparelho para medir pressão', 120.00, 10, 5),
('Shampoo Anticaspa', 'Shampoo para tratamento de caspa', 35.00, 40, 2),
('Base de Maquiagem', 'Produto cosmético para pele', 90.00, 20, 3),
('Termômetro Digital', 'Aparelho para medir temperatura', 60.00, 15, 5);
SELECT * FROM tb_produtos WHERE preco_produto > 50.00;
SELECT * FROM tb_produtos WHERE preco_produto BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';
SELECT 
    p.id_produto, p.nome_produto, p.preco_produto, 
    c.nome_categoria, c.descricao_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;
SELECT 
    p.id_produto, p.nome_produto, p.preco_produto, 
    c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome_categoria = 'Cosméticos';
