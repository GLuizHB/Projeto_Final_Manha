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



select * from avaliacao;

select * from aluno; 

select al.ra,av.nota1,av.nota2,av.nota3,av.nota4
	from aluno al join avaliacao av
    on av.fk_aluno_id = al.id;

