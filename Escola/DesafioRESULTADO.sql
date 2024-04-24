USE escoladb;

SELECT * FROM alunos;
SELECT * FROM cursos;
SELECT * FROM inscricoes;

-- Buscar o nome do Aluno que tenha uma Inscrição

SELECT Alunos.Nome FROM Alunos INNER JOIN  inscricoes ON inscricoes.AlunoID = alunos.AlunoID;

-- WHERE Alunos.Nome = "Carlos Souza";

SELECT Alunos.Nome, Cursos.Nome FROM alunos INNER JOIN inscricoes ON inscricoes.AlunoID = alunos.AlunoID INNER JOIN cursos ON cursos.CursoID WHERE Cursos.Nome = "Matemática";

SELECT Cursos.Nome FROM cursos INNER JOIN inscricoes ON inscricoes.CursoID = cursos.CursoID;

SELECT Cursos.Nome, Alunos.Nome FROM Alunos INNER JOIN inscricoes ON inscricoes.AlunoID = alunos.AlunoID INNER JOIN cursos ON inscricoes.CursoID = cursos.CursoID WHERE Alunos.Nome = "João Silva"; 

SELECT DISTINCT Alunos.Nome, Alunos.Email FROM Alunos INNER JOIN inscricoes ON inscricoes.AlunoID = alunos.AlunoID;

SELECT Alunos.Nome, Cursos.Nome, inscricoes.DataInscricao FROM Alunos INNER JOIN inscricoes ON inscricoes.AlunoID = alunos.AlunoID INNER JOIN cursos ON inscricoes.CursoID = cursos.CursoID;

SELECT a.Nome AS NomeAluno, c.Nome AS UltimoCurso FROM Alunos a INNER JOIN Inscricoes i ON i.CursoID INNER JOIN Cursos c ON i.CursoID = c.CursoID ORDER BY i.DataInscricao DESC;