CREATE DATABASE db_generation_game_online;
use db_generation_game_online;


CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    elemento VARCHAR(255) NOT NULL,
    max_nivel INT NOT NULL
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    forca INT NOT NULL,
    velocidade INT NOT NULL,
    defesa INT NOT NULL,
    id_tb_classes BIGINT NOT NULL,
    FOREIGN KEY (id_tb_classes) REFERENCES tb_classes(id) 
);
INSERT INTO tb_classes(elemento, max_nivel)
VALUES ("fogo", 50),
	   ("agua", 75),
      ("vento", 100),
      ("terra", 100),
      ("raio" , 75);


INSERT INTO tb_personagens(nome, forca, velocidade, defesa, id_tb_classes)
VALUES ('Kai', 9000, 60, 7000, 1),
('Nya', 7000, 80, 600, 2), 
('Cole', 1000, 50, 900, 3), 
('Jay', 600, 100, 5000, 4), 
('Zane', 800, 70, 8000, 1), 
('Lloyd', 950, 85, 750, 2), 
('Morro', 850, 90, 6050, 4),
('Sensei Wu', 500, 400, 12500, 3); 

SELECT * FROM tb_personagens WHERE forca > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT 
    tb_personagens.nome AS personagem_nome,
    tb_personagens.forca,
    tb_personagens.velocidade,
    tb_personagens.defesa,
    tb_classes.elemento AS classe_elemento,
    tb_classes.max_nivel AS classe_max_nivel
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.id_tb_classes = tb_classes.id
WHERE tb_classes.elemento = 'vento';
