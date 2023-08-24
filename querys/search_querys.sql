use schoolProjetc;

-- select das tabelas 

select * from aluno;
select * from professor;
select * from curso;

-- filtros simples

select idAluno, Pnome, Fnome, CPF from aluno where periodo_curso =5;
select idProfessor, Pnome,Fnome, email_constitucional from professor where prontuario = 'PR67890';

SELECT * FROM professor
ORDER BY data_nascimento;

SELECT * FROM aluno 
ORDER BY data_nascimento DESC;


SELECT d.idDisciplina, d.nome AS nome_disciplina, d.sigla AS sigla_disciplina,
       c.idCurso, c.nome AS nome_curso, c.sigla AS sigla_curso
FROM disciplina d
JOIN curso c ON d.idCurso = c.idCurso;


SELECT d.idCurso, c.nome AS nome_curso, COUNT(d.idDisciplina) AS total_disciplinas
FROM disciplina d
JOIN curso c ON d.idCurso = c.idCurso
GROUP BY d.idCurso, c.nome
HAVING COUNT(d.idDisciplina) > 1;

select d.idCurso, a.Pnome,a.Fnome as nome_curso, COUNT(d.idDisciplina) as Total_disciplinas
from disciplina d JOIN aluno_has_curso ac on d.IdCurso = ac.IdCurso JOIN aluno a on a.idAluno = ac.idAluno 
GROUP BY d.idCurso, a.Pnome,a.Fnome HAVING COUNT(d.idDisciplina) >1;