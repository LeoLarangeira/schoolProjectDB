-- inserts nas tabelas
use schoolProjetc;
/*
-- Inserir curso 1
INSERT INTO curso (nome, sigla, duracao, tipo_duracao, periodo_aula, data_inicio)
VALUES ('Engenharia de Software', 'ES', 8, 'Semestral', 'Tarde', '2023-09-01');

-- Inserir curso 2
INSERT INTO curso (nome, sigla, duracao, tipo_duracao, periodo_aula, data_inicio)
VALUES ('Administração', 'ADM', 6, 'Anual', 'Manhã', '2023-08-15');

-- Inserir curso 3
INSERT INTO curso (nome, sigla, duracao, tipo_duracao, periodo_aula, data_inicio)
VALUES ('Medicina', 'MED', 12, 'Anual', 'Manhã', '2023-07-01');

-- Inserir curso 4
INSERT INTO curso (nome, sigla, duracao, tipo_duracao, periodo_aula, data_inicio)
VALUES ('Direito', 'DIR', 10, 'Semestral', 'Noite', '2023-08-30');

-- Inserir curso 5
INSERT INTO curso (nome, sigla, duracao, tipo_duracao, periodo_aula, data_inicio)
VALUES ('Psicologia', 'PSI', 8, 'Trimestral', 'Tarde', '2023-09-10');

-- Inserir curso 6
INSERT INTO curso (nome, sigla, duracao, tipo_duracao, periodo_aula, data_inicio)
VALUES ('Engenharia Civil', 'EC', 10, 'Anual', 'Manhã', '2023-08-20');


-- Inserir área 1
INSERT INTO area (nome)
VALUES ('Tecnologia da Informação');

-- Inserir área 2
INSERT INTO area (nome)
VALUES ('Saúde');

-- Inserir área 3
INSERT INTO area (nome)
VALUES ('Administração');

-- Inserir área 4
INSERT INTO area (nome)
VALUES ('Engenharia');

-- Inserir área 5
INSERT INTO area (nome)
VALUES ('Direito');

-- Inserir área 6
INSERT INTO area (nome)
VALUES ('Psicologia');


-- Inserir aluno 1
INSERT INTO aluno (Pnome, Fnome, CPF, data_nascimento, periodo_curso, prontuario, idArea)
VALUES ('João', 'Silva', '12345678901', '2000-01-15', 2, 'PR12345', 1);

-- Inserir aluno 2
INSERT INTO aluno (Pnome, Fnome, CPF, data_nascimento, periodo_curso, prontuario, idArea)
VALUES ('Maria', 'Santos', '98765432101', '2001-05-20', 1, 'PR67890', 2);

-- Inserir aluno 3
INSERT INTO aluno (Pnome, Fnome, CPF, data_nascimento, periodo_curso, prontuario, idArea)
VALUES ('Carlos', 'Ferreira', '55544433301', '1999-11-10', 3, 'PR23456', 1);

-- Inserir aluno 4
INSERT INTO aluno (Pnome, Fnome, CPF, data_nascimento, periodo_curso, prontuario, idArea)
VALUES ('Ana', 'Rocha', '77788899901', '2002-08-05', 2, 'PR78901', 3);

-- Inserir aluno 5
INSERT INTO aluno (Pnome, Fnome, CPF, data_nascimento, periodo_curso, prontuario, idArea)
VALUES ('Lucas', 'Oliveira', '11122233301', '2001-04-02', 1, 'PR34567', 4);

-- Inserir aluno 6
INSERT INTO aluno (Pnome, Fnome, CPF, data_nascimento, periodo_curso, prontuario, idArea)
VALUES ('Isabela', 'Cavalcanti', '44455566601', '2000-12-18', 3, 'PR89012', 2);


-- Inserir disciplina 1
INSERT INTO disciplina (idDisciplina, nome, sigla, semestre, aula_semana, aula_total, idArea, idCurso)
VALUES (1, 'Programação I', 'PROG', 1, 4, 64, 1, 1);

-- Inserir disciplina 2
INSERT INTO disciplina (idDisciplina, nome, sigla, semestre, aula_semana, aula_total, idArea, idCurso)
VALUES (2, 'Anatomia Humana', 'ANAT', 2, 3, 48, 2, 3);

-- Inserir disciplina 3
INSERT INTO disciplina (idDisciplina, nome, sigla, semestre, aula_semana, aula_total, idArea, idCurso)
VALUES (3, 'Economia', 'ECON', 1, 2, 32, 3, 2);

-- Inserir disciplina 4
INSERT INTO disciplina (idDisciplina, nome, sigla, semestre, aula_semana, aula_total, idArea, idCurso)
VALUES (4, 'Física I', 'FIS1', 2, 3, 48, 4, 1);

-- Inserir disciplina 5
INSERT INTO disciplina (idDisciplina, nome, sigla, semestre, aula_semana, aula_total, idArea, idCurso)
VALUES (5, 'Direito Civil', 'DCIV', 1, 3, 48, 5, 4);

-- Inserir disciplina 6
INSERT INTO disciplina (idDisciplina, nome, sigla, semestre, aula_semana, aula_total, idArea, idCurso)
VALUES (6, 'Psicologia Clínica', 'PSIC', 2, 2, 32, 6, 6);

-- Inserir professor 1
INSERT INTO professor (Pnome, FNome, prontuario, email_constitucional, data_nascimento)
VALUES ('Ana', 'Silva', 'PR12345', 'ana.silva@example.com', '1980-03-15');

-- Inserir professor 2
INSERT INTO professor (Pnome, FNome, prontuario, email_constitucional, data_nascimento)
VALUES ('Carlos', 'Santos', 'PR67890', 'carlos.santos@example.com', '1975-08-25');

-- Inserir professor 3
INSERT INTO professor (Pnome, FNome, prontuario, email_constitucional, data_nascimento)
VALUES ('Maria', 'Ferreira', 'PR23456', 'maria.ferreira@example.com', '1985-12-10');

-- Inserir professor 4
INSERT INTO professor (Pnome, FNome, prontuario, email_constitucional, data_nascimento)
VALUES ('Lucas', 'Rocha', 'PR78901', 'lucas.rocha@example.com', '1990-06-20');

-- Inserir professor 5
INSERT INTO professor (Pnome, FNome, prontuario, email_constitucional, data_nascimento)
VALUES ('Isabela', 'Oliveira', 'PR34567', 'isabela.oliveira@example.com', '1978-04-05');

-- Inserir professor 6
INSERT INTO professor (Pnome, FNome, prontuario, email_constitucional, data_nascimento)
VALUES ('Pedro', 'Cavalcanti', 'PR89012', 'pedro.cavalcanti@example.com', '1982-11-15');

	-- Inserir sala 1
INSERT INTO sala (idSala, tipo, computadores, projetor, lousa_digital, bloco, andar)
VALUES (101, 'Laboratório', 20, 1, 0, 'A', '1º Andar');

-- Inserir sala 2
INSERT INTO sala (idSala, tipo, computadores, projetor, lousa_digital, bloco, andar)
VALUES (102, 'Sala de Aula', 30, 0, 1, 'B', '2º Andar');

-- Inserir sala 3
INSERT INTO sala (idSala, tipo, computadores, projetor, lousa_digital, bloco, andar)
VALUES (103, 'Sala de Reunião', 10, 1, 0, 'A', '3º Andar');

-- Inserir sala 4
INSERT INTO sala (idSala, tipo, computadores, projetor, lousa_digital, bloco, andar)
VALUES (104, 'Auditório', 0, 1, 1, 'C', '1º Andar');

-- Inserir sala 5
INSERT INTO sala (idSala, tipo, computadores, projetor, lousa_digital, bloco, andar)
VALUES (105, 'Laboratório', 15, 1, 0, 'B', '4º Andar');

-- Inserir sala 6
INSERT INTO sala (idSala, tipo, computadores, projetor, lousa_digital, bloco, andar)
VALUES (106, 'Sala de Aula', 25, 0, 1, 'A', '2º Andar');


-- Inserir turma 1
INSERT INTO turma (idTurma, nome, idDisciplina, idArea)
VALUES (1, 'A1', 1, 1);

-- Inserir turma 2
INSERT INTO turma (idTurma, nome, idDisciplina, idArea)
VALUES (2, 'B1', 2, 2);

-- Inserir turma 3
INSERT INTO turma (idTurma, nome, idDisciplina, idArea)
VALUES (3, 'C1', 3, 3);

-- Inserir turma 4
INSERT INTO turma (idTurma, nome, idDisciplina, idArea)
VALUES (4, 'D1', 4, 4);

-- Inserir turma 5
INSERT INTO turma (idTurma, nome, idDisciplina, idArea)
VALUES (5, 'A2', 5, 1);

-- Inserir turma 6
INSERT INTO turma (idTurma, nome, idDisciplina, idArea)
VALUES (6, 'B2', 6, 2);

-- Inserir aluno_has_curso 1
INSERT INTO aluno_has_curso (idAluno, idCurso, situacao, data_matricula)
VALUES (1, 1, 'Matriculado', '2023-08-01 10:00:00');

-- Inserir aluno_has_curso 2
INSERT INTO aluno_has_curso (idAluno, idCurso, situacao, data_matricula)
VALUES (2, 2, 'Matriculado', '2023-07-15 09:30:00');
select * from aluno;
-- Inserir aluno_has_curso 3
INSERT INTO aluno_has_curso (idAluno, idCurso, situacao, data_matricula)
VALUES (4, 3, 'Trancado', '2023-08-20 14:15:00');

-- Inserir aluno_has_curso 4
INSERT INTO aluno_has_curso (idAluno, idCurso, situacao, data_matricula)
VALUES (7, 4, 'Matriculado', '2023-06-10 11:45:00');

-- Inserir aluno_has_curso 5
INSERT INTO aluno_has_curso (idAluno, idCurso, situacao, data_matricula)
VALUES (5, 1, 'Matriculado', '2023-07-05 13:30:00');

-- Inserir aluno_has_curso 6
INSERT INTO aluno_has_curso (idAluno, idCurso, situacao, data_matricula)
VALUES (6, 2, 'Matriculado', '2023-08-10 08:20:00');

*/

select * from aluno;
-- Inserir registros na tabela aluno_has_disciplina
INSERT INTO aluno_has_disciplina (idAluno, idDisciplina, idArea)
VALUES (1, 1, 1),
       (2, 2, 2),
       (4, 3, 3),
       (5, 4, 4),
       (6, 5, 1),
       (7, 6, 2);

INSERT INTO sala_has_turma (idProfessor, idTurma, idDisciplina, idArea)
VALUES (1, 1, 1, 1),
       (2, 2, 2, 2),
       (3, 3, 3, 3),
       (4, 4, 4, 4),
       (5, 5, 5, 1),
       (6, 6, 6, 2);
       
INSERT INTO professor_has_turma (idProfessor, idTurma, idDisciplina, idArea)
VALUES (1, 1, 1, 1),
       (2, 2, 2, 2),
       (3, 3, 3, 3),
       (4, 4, 4, 4),
       (5, 5, 5, 1),
       (6, 6, 6, 2);
