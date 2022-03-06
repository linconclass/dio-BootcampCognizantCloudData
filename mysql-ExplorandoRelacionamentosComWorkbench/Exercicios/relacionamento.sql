/*operando com o command line
entendendo os realacionametnos
criando uma modelagem de banco
*/

#comando utilizado para acessar os bancos de dados no servidor local
/opt/lampp/bin/mysql -u root

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

INSERT INTO videos ( author, title, likes, delies ) VALUES(
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