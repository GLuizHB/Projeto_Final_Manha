-- DDL - Data Definition Language
	-- Linguagem de Definição de Dados
create database projetodiario1;

USE projetodiario1;

create table aluno(
	id int primary key auto_increment,
    ra char(8) not null unique

);
-- DML
INSERT INTO aluno (ra) VALUES ('12345678');
INSERT INTO aluno (ra) VALUES ('12345679');
INSERT INTO aluno (ra) VALUES ('12345680');
INSERT INTO aluno (ra) VALUES ('12345681');
INSERT INTO aluno (ra) VALUES ('12345682');
INSERT INTO aluno (ra) VALUES ('12345683');
INSERT INTO aluno (ra) VALUES ('12345684');
INSERT INTO aluno (ra) VALUES ('12345685');
INSERT INTO aluno (ra) VALUES ('12345686');
INSERT INTO aluno (ra) VALUES ('12345687');
INSERT INTO aluno (ra) VALUES ('12345688');
INSERT INTO aluno (ra) VALUES ('12345689');
INSERT INTO aluno (ra) VALUES ('12345690');
INSERT INTO aluno (ra) VALUES ('12345691');
INSERT INTO aluno (ra) VALUES ('12345692');
INSERT INTO aluno (ra) VALUES ('12345693');
INSERT INTO aluno (ra) VALUES ('12345694');
INSERT INTO aluno (ra) VALUES ('12345695');
INSERT INTO aluno (ra) VALUES ('12345696');
INSERT INTO aluno (ra) VALUES ('12345697');
INSERT INTO aluno (ra) VALUES ('12345698');
INSERT INTO aluno (ra) VALUES ('12345699');
INSERT INTO aluno (ra) VALUES ('12345700');
INSERT INTO aluno (ra) VALUES ('12345701');
INSERT INTO aluno (ra) VALUES ('12345702');
INSERT INTO aluno (ra) VALUES ('12345703');

-- DQL
select * from aluno;

-- Deleta os dados e zerar o ID da tabela
truncate table aluno;

-- Deleta a tabela
drop table aluno;

show tables;

CREATE TABLE diariobordo (
    id int PRIMARY KEY auto_increment,
    texto text not null,
    datahora datetime not null,
    fk_aluno_id int not null
);
 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;

select * from diariobordo;
select * from aluno;

insert diariobordo(texto,datahora,fk_aluno_id)values('a aula foi legal','2024-08-01 09:16:00', 13);
insert diariobordo(texto,datahora,fk_aluno_id)values('Gostei da aula','2024-08-01 09:34:00', 10);
insert diariobordo(texto,datahora,fk_aluno_id)values('Maravilha','2024-08-01 09:37:00', 3);
insert diariobordo(texto,datahora,fk_aluno_id)values('aula muito boa','2024-08-01 09:53:00', 5);
insert diariobordo(texto,datahora,fk_aluno_id)values('ZZZZZZZZZZzzzzz','2024-08-01 09:37:00', 20);

SELECT *  FROM diariobordo;
SELECT * FROM 
     diariobordo 
     JOIN 
	 aluno 
     ON diariobordo.fk_aluno_id = aluno.id;
     
     
SELECT
     d.texto,
     d.datahora,
     a.ra
     FROM 
     diariobordo d 
     JOIN 
	 aluno a 
     ON d.fk_aluno_id = a.id;
     
     
     

-- 01/08/2024
-- 50%
-- 06 set.
-- Popular o diário
-- SQLAlchemy - pra conexão com banco
-- Python e SQL
-- Pandas - pd.read_sql(sql)
-- MatplotLib
-- Dashboard


-- Exercício
-- Modelo Conceitual - crie uma nova entidade chamada avaliacao.
                                                      -- id pk
                                                      -- nota1 int
                                                      -- nota2 int
                                                      -- nota3 int
                                                      -- nota4 int
                                                      -- fk_aluno_id
-- Modelo Lógico
-- Modelo Físico (brModelo)
-- INSERTs de 5 alunos com as notas
-- SELECT * FROM avaliacao;
-- SELECT JOIN : tabela aluno com tabela avaliação.




-- EXERCÍCIO - Resolução

CREATE TABLE avaliacao (
    id_pk INT PRIMARY KEY AUTO_INCREMENT,
    nota1 INT NOT NULL CHECK (nota1 <= 25),
    nota2 INT NOT NULL CHECK (nota2 <= 25),
    nota3 INT NOT NULL CHECK (nota3 <= 25),
    nota4 INT NOT NULL CHECK (nota4 <= 25),
    fk_aluno_id INT NOT NULL
);

 truncate table avaliacao;
 
INSERT INTO avaliacao (nota1, nota2, nota3, nota4, fk_aluno_id) VALUES
(20, 18, 15, 22, 1), -- Notas para o aluno com id 1
(23, 19, 20, 21, 2), -- Notas para o aluno com id 2
(17, 16, 14, 20, 3), -- Notas para o aluno com id 3
(25, 24, 22, 23, 4), -- Notas para o aluno com id 4
(19, 18, 20, 21, 5); -- Notas para o aluno com id 5

ALTER TABLE avaliacao ADD CONSTRAINT FK_avaliacao_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;

select * from avaliacao;

select * from aluno; 

select al.ra,av.nota1,av.nota2,av.nota3,av.nota4
	from aluno al join avaliacao av
    on av.fk_aluno_id = al.id;

-- Tipos de variaveis
-- int : inteiro
-- variável quantitativa
-- variável independente e dependente
-- variável independente quantitativa 

-- 02/08/2024

ALTER TABLE aluno ADD COLUMN nome VARCHAR(80);
ALTER TABLE aluno ADD COLUMN tempoestudo INT NOT NULL;
ALTER TABLE aluno ADD COLUMN rendafamiliar DECIMAL(10, 2);
describe aluno;

select * from aluno;

-- ra, nome, tempoestudo, rendafamiliar,
-- Desafio:
-- 50 alunos com todos agora.
-- Gpt gerando com IA.

select * from aluno order by id desc limit 1;
 
 insert aluno(ra,nome,tempoestudo,rendafamiliar)values('12345695','Juarez',1,4567.98);
 
INSERT INTO aluno (ra, nome, tempoestudo, rendafamiliar) VALUES
('12345704', 'Maria', 2, 3210.45),
('12345705', 'João', 4, 2456.78),
('12345706', 'Luana', 3, 7890.12),
('12345707', 'Pedro', 1, 1234.56),
('12345708', 'Ana', 5, 4567.89),
('12345709', 'Roberto', 2, 6789.01),
('12345710', 'Camila', 3, 2345.67),
('12345711', 'Fernando', 4, 6789.01),
('12345712', 'Isabela', 1, 3456.78),
('12345713', 'Carlos', 5, 7890.12),
('12345714', 'Juliana', 2, 1234.56),
('12345715', 'Rafael', 3, 5678.90),
('12345716', 'Tatiane', 4, 2345.67),
('12345717', 'Lucas', 1, 6789.01),
('12345718', 'Sofia', 5, 4567.89),
('12345719', 'Eduardo', 2, 7890.12),
('12345720', 'Patrícia', 3, 3456.78),
('12345721', 'Bruno', 4, 5678.90),
('12345722', 'Mariana', 1, 2345.67),
('12345723', 'Gustavo', 5, 6789.01),
('12345724', 'Aline', 2, 1234.56),
('12345725', 'Felipe', 3, 7890.12),
('12345726', 'Larissa', 4, 5678.90),
('12345727', 'Viviane', 1, 3456.78),
('12345728', 'Marcelo', 5, 6789.01),
('12345729', 'Cristina', 2, 2345.67),
('12345730', 'Sérgio', 3, 4567.89),
('12345731', 'Gabriel', 4, 7890.12),
('12345732', 'Paula', 1, 1234.56),
('12345733', 'Fábio', 5, 5678.90),
('12345734', 'Marcos', 2, 6789.01),
('12345735', 'Vanessa', 3, 3456.78),
('12345736', 'Ricardo', 4, 2345.67),
('12345737', 'Carla', 1, 7890.12),
('12345738', 'Joana', 5, 4567.89),
('12345739', 'Natan', 2, 1234.56),
('12345740', 'Eduarda', 3, 6789.01),
('12345741', 'José', 4, 5678.90),
('12345742', 'Elaine', 1, 3456.78),
('12345743', 'Gabriela', 5, 2345.67),
('12345744', 'Renato', 2, 7890.12),
('12345745', 'Tatiane', 3, 4567.89),
('12345746', 'Beatriz', 4, 6789.01),
('12345747', 'João', 1, 5678.90),
('12345748', 'Fernanda', 5, 1234.56),
('12345749', 'Lucas', 2, 3456.78),
('12345750', 'Amanda', 3, 7890.12);

