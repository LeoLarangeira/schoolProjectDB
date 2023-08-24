# Criação dos bancos

create database if not exists schoolProjetc;

use schoolProjetc;

-- criação da table curso;

create table if not exists curso (
	idCurso int primary key not null auto_increment,
    nome VARCHAR(45),
    sigla VARCHAR(5),
    duracao tinyint,
    tipo_duracao ENUM('Semestral', 'Anual', 'Trimestral'),
    periodo_aula ENUM('Manhã', 'Tarde', 'Noite'),
    data_inicio DATE,
    constraint unique_idCurso unique (idCurso)

);

-- create table area 

create table if not exists area (
	idArea int primary key not null auto_increment,
	nome varchar(45)
);


-- criação da table curso;
create table if not exists aluno (
	idAluno int primary key not null auto_increment,
    Pnome varchar(45),
	Fnome varchar(45),
	CPF CHAR(11),
    data_nascimento DATE,
    periodo_curso tinyint,
    prontuario varchar(45),
    idArea int,
    constraint unique_idAluno unique(idAluno),
    constraint unique_CPF unique(CPF),
    constraint foreign_key_idArea foreign key (idArea) references area(idArea)
);


-- criação da tabela disciplina 

create table if not exists disciplina(
	idDisciplina int not null unique,
	nome varchar(45),
	sigla char(4),
    semestre TINYINT,
    aula_semana int,
    aula_total int,
    idArea int,
    idCurso int,
	primary key (idDisciplina,idArea,IdCurso),
    constraint foreign_key_Area foreign key(idArea) references area(idArea),
    constraint foreign_key_Curso foreign key(idCurso) references curso(idCurso)
);
-- criação da table professor

create table if not exists professor (
	idProfessor int primary key not null auto_increment,
    Pnome varchar(45),
    FNome varchar(45),
    prontuario varchar(45),
    email_constitucional varchar(50),
    data_nascimento DATE,
    constraint unique_idProfessor unique(idProfessor)
);

-- criação da table sala

create table if not exists sala (
	idSala int primary key not null,
	tipo varchar(45),
    computadores tinyint,
    projetor tinyint,
    lousa_digital tinyint,
    bloco char(2),
    andar varchar(45)
);

-- criação da table turma

create table if not exists turma(
	idTurma int not null,
    nome char(2),
    idDisciplina int,
    idArea int,
    primary key (idturma,idDisciplina,idArea),
    constraint foreign_key_idDisciplina foreign key(idDisciplina) references disciplina(idDisciplina),
    constraint foreign_key_idArea_turma foreign key(idArea) references area(idArea)
);




-- criação das tabelas has


create table if not exists aluno_has_curso (
	idAluno int,
	idCurso int,
    situacao varchar(45),
    data_matricula datetime,
	primary key(idAluno,IdCurso),
    constraint foreign_key_Aluno_has_curso foreign key (idAluno) references aluno(idAluno),
    constraint foreign_key_Curso_has_curso foreign key (idCurso) references curso(idCurso)
);

create table if not exists aluno_has_disciplina (
	idAluno int, 
    idDisciplina int,
	idArea int,
    primary key(idAluno,idDisciplina,idArea),
	constraint foreign_key_Aluno_disc foreign key (idAluno) references aluno(idAluno),
    constraint foreign_key_Disc foreign key (idDisciplina) references disciplina(idDisciplina),
	constraint foreign_key_Area_has_disc foreign key (idArea) references area(idArea)
);


create table if not exists professor_has_turma(
	idProfessor int,
    idTurma int,
    idDisciplina int, 
    idArea int,
    primary key(idProfessor,idTurma,idDisciplina,idArea),
    constraint foreign_key_professor foreign key(idProfessor) references professor(idProfessor),
    constraint foreign_key_turma foreign key (idTurma) references turma(idTurma),
    constraint foreign_key_Disc_P_has_turma foreign key (idDisciplina) references disciplina(idDisciplina),
	constraint foreign_key_Area_P_has_turma foreign key (idArea) references area(idArea)
    
);

create table if not exists sala_has_turma(
	idProfessor int,
    idTurma int,
    idDisciplina int, 
    idArea int,
    primary key(idProfessor,idTurma,idDisciplina,idArea),
    constraint foreign_key_S_has_turma_professor foreign key(idProfessor) references professor(idProfessor),
    constraint foreign_key_S_has_turma_turma foreign key (idTurma) references turma(idTurma),
    constraint foreign_key_Disc_S_has_turma foreign key (idDisciplina) references disciplina(idDisciplina),
	constraint foreign_key_Area_S_has_turma foreign key (idArea) references area(idArea)

);