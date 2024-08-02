
create table Avaliação(
	id_pk int primary key auto_increment,
    nota1 int not null unique,
    nota2 int not null unique,
    nota3 int not null unique,
    nota4 int not null unique,
    fk_aluno_id int not null
);

INSERT INTO Avaliação (nota1, nota2, nota3, nota4, fk_aluno_id) VALUES
(85, 90, 78, 88, 1), -- Notas para o aluno com id 1
(82, 75, 88, 91, 2), -- Notas para o aluno com id 2
(79, 84, 77, 85, 3), -- Notas para o aluno com id 3
(90, 92, 81, 87, 4), -- Notas para o aluno com id 4
(76, 80, 89, 93, 5); -- Notas para o aluno com id 5


select * from avaliação;

select * from aluno; 

select * from avaliação join aluno
	on avaliação.id_pk = aluno.id;
    


