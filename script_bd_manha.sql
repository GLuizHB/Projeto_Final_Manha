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

-- 01/08/2024
-- 50%
-- conclusao 06 set.
