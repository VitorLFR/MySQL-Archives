CREATE DATABASE escolaexercicio;

USE escolaexercicio;

create table Alunos(
	aluno_ID int primary key auto_increment not null,
    nome varchar(255),
    idade int,
    turma_ID int,
    FOREIGN KEY (turma_id) REFERENCES Turmas(turma_id)
);

create table Turmas(
	turma_id int primary key auto_increment not null,
    descricao varchar(255)
);

create table Notas(
	aluno_id int,
    atividade_id int,
	FOREIGN KEY (aluno_ID) REFERENCES Alunos(aluno_ID),
    FOREIGN KEY (atividade_ID) REFERENCES Atividades(atividade_id),
    nota decimal(5,2)
);

create table Atividades(
	atividade_id int primary key auto_increment not null,
    descricao varchar(255),
    turma_id int,
    FOREIGN KEY (turma_id) REFERENCES Turmas(turma_id)
);

create table Turma_Professor(
	turma_id int,
    professor_id int,
    PRIMARY KEY (turma_id, professor_id),
    FOREIGN KEY (turma_id) REFERENCES Turmas(turma_id),
    FOREIGN KEY (professor_id) REFERENCES Professores(professor_id)
);

create table Professores(
	professor_id int primary key auto_increment not null,
    nome varchar(255)
);

-- Inserção de dados nas Turmas
INSERT INTO Turmas (turma_id, descricao) VALUES (1, 'Matemática 101');
INSERT INTO Turmas (turma_id, descricao) VALUES (2, 'História 101');
INSERT INTO Turmas (turma_id, descricao) VALUES (3, 'Ciências 101');
INSERT INTO Turmas (turma_id, descricao) VALUES (4, 'Português 101');

-- Inserção de dados nos Professores
INSERT INTO Professores (professor_id, nome) VALUES (1, 'Carlos Silva');
INSERT INTO Professores (professor_id, nome) VALUES (2, 'Maria Fernandes');
INSERT INTO Professores (professor_id, nome) VALUES (3, 'João Pereira');
INSERT INTO Professores (professor_id, nome) VALUES (4, 'Arthur Rosa');

-- Inserção de dados na tabela Turma_Professor
INSERT INTO Turma_Professor (turma_id, professor_id) VALUES (1, 1);
INSERT INTO Turma_Professor (turma_id, professor_id) VALUES (2, 2);
INSERT INTO Turma_Professor (turma_id, professor_id) VALUES (3, 3);

-- Inserção de dados nos Alunos
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (1, 'Ana Santos', 15, 1);
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (2, 'Pedro Gonçalves', 16, 1);
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (3, 'Lucas Andrade', 15, 2);
INSERT INTO Alunos (aluno_id, nome, idade, turma_id) VALUES (4, 'Mariana Costa', 16, 3);
INSERT INTO Alunos (aluno_id, nome, idade) VALUES (5, 'Arthur Braulino', 17);

-- Inserção de dados nas Atividades
INSERT INTO Atividades (atividade_id, descricao, turma_id) VALUES (1, 'Prova de Matemática', 1);
INSERT INTO Atividades (atividade_id, descricao, turma_id) VALUES (2, 'Trabalho de História', 2);
INSERT INTO Atividades (atividade_id, descricao, turma_id) VALUES (3, 'Experimento de Ciências', 3);

-- Inserção de dados nas Notas
INSERT INTO Notas (aluno_id, atividade_id, nota) VALUES (1, 1, 9.5);
INSERT INTO Notas (aluno_id, atividade_id, nota) VALUES (2, 1, 8.0);
INSERT INTO Notas (aluno_id, atividade_id, nota) VALUES (3, 2, 7.5);
INSERT INTO Notas (aluno_id, atividade_id, nota) VALUES (4, 1, 8.5);
INSERT INTO Notas (aluno_id, atividade_id) VALUES (5, 1);

SELECT Alunos.nome, Turmas.descricao FROM Alunos inner join Turmas on Turmas.turma_id = Alunos.turma_id;
SELECT Alunos.nome, Turmas.descricao, Notas.nota FROM Alunos left join Turmas on Turmas.turma_id = Alunos.turma_id left join  Notas on Notas.aluno_id = Alunos.aluno_id;
SELECT Alunos.nome, Notas.nota FROM Alunos left join Notas on Alunos.aluno_id = Notas.aluno_id;
SELECT Alunos.nome, Notas.nota FROM Alunos LEFT JOIN Notas ON Alunos.aluno_id = Notas.aluno_id AND Notas.atividade_id = 1;
SELECT Notas.nota, Alunos.nome FROM Notas right join Alunos on Notas.aluno_id = Alunos.aluno_id;

SELECT Alunos.nome, Turmas.descricao, Professores.nome FROM Alunos inner join Turmas on Turmas.turma_id = Alunos.turma_id INNER JOIN Professores on Professores.professor_id = Turmas.turma_id;
SELECT Alunos.Nome, Turmas.descricao FROM Alunos LEFT JOIN Turmas ON Alunos.turma_id = Turmas.turma_id;
SELECT Professores.nome, Turmas.descricao FROM Professores LEFT JOIN Turma_Professor ON Professores.professor_id = Turma_Professor.turma_id LEFT JOIN Turmas ON Turma_Professor.turma_Id = Turmas.turma_id;
SELECT Turmas.descricao AS Materia, Atividades.descricao AS Atividade FROM Turmas LEFT JOIN Atividades ON Turmas.turma_id = Atividades.atividade_id;

SELECT Alunos.nome, Notas.nota FROM Alunos LEFT JOIN Notas ON Alunos.aluno_id = Notas.atividade_id AND Notas.atividade_id = 1;

SELECT Atividades.descricao, Notas.nota FROM Atividades RIGHT JOIN Notas ON Atividade.atividade_id = Notas.atividade_id LEFT JOIN Alunos ON Notas.aluno_id = Alunos_aluno_id;  

SELECT Notas.nota, Alunos.nome FROM Notas RIGHT JOIN Alunos ON Alunos.aluno_id = Notas.atividade_id;