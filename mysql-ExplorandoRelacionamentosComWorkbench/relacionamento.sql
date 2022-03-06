/*operando com o command line
entendendo os relacionamentos
criando uma modelagem de banco
*/

#comando utilizado para acessar os bancos de dados no servidor local
/opt/lampp/bin/mysql -u root #linux
/mysql -u root #windows & mac

#visualiando os bancos existentes.
show databases;

#criando database
CREATE DATABASE youtube;

#acessando o banco criado.
use youtube;

#criando tabela videos
CREATE TABLE videos(
    id_videos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    author VARCHAR(30),
    title VARCHAR(30),
    likes INT,
    deslikes INT
);

#populando tabela videos
INSERT INTO videos ( author, title, likes, deslikes ) VALUES(
     'Maria', 'MySQL', 20, 3
);

INSERT INTO videos ( author, title, likes, deslikes ) VALUES(
    'Joao', 'HTML', 30, 3
);

INSERT INTO videos ( author, title, likes, deslikes ) VALUES(
     'Maria', 'Python', 50, 0
);

INSERT INTO videos ( author, title, likes, deslikes ) VALUES(
     'Joao', 'CSS', 25, 1
);

INSERT INTO videos ( author, title, likes, deslikes ) VALUES(
     'Pedro', 'JavaScript', 18, 2
);

#criando tabela author
CREATE TABLE author(
    id_author INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    born DATE
);

#populando tabela author
INSERT INTO author ( nome, born ) VALUES(
    'Maria', '1992-04-19'
);

INSERT INTO author ( nome, born ) VALUES(
    'Joao', '1996-06-26'
);

INSERT INTO author ( nome, born ) VALUES(
    'Pedro', '2001-03-08'
);

#iniciando a modificacao da coluna author da tabela videos

#deixando nulo os campos author
UPDATE videos SET author='';

#alterando coluna author para adicionar o foreign key
alter table videos change author fk_author int null;

#adicionando o foreign key
ALTER TABLE videos 
ADD CONSTRAINT fk_author 
FOREIGN KEY (fk_author) 
REFERENCES author(id_author) 
ON DELETE CASCADE ON UPDATE CASCADE;

#realizando uma consulta com join
SELECT * FROM videos JOIN author ON videos.fk_author = author.id_author;

#realizando uma consulta com joi exibindo quem sao os autores de cada video
SELECT videos.title, author.nome FROM videos join author ON videos.fk_author = author.id_author;