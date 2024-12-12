-- Generated by SQLite
-- Schema for database: database_admin_jpa

CREATE TABLE IF NOT EXISTS Professor (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCompleto TEXT NOT NULL,
    matricula TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Aluno (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCompleto TEXT NOT NULL,
    matricula TEXT NOT NULL UNIQUE,
    nascimento DATE NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Endereco (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    logradouro TEXT NOT NULL,
    endereco TEXT NOT NULL,
    numero TEXT NOT NULL,
    bairro TEXT NOT NULL,
    cidade TEXT NOT NULL,
    estado TEXT NOT NULL,
    cep INTEGER NOT NULL,
    aluno_id INTEGER,
    FOREIGN KEY (aluno_id) REFERENCES Aluno(id)
);

CREATE TABLE IF NOT EXISTS Telefone (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    DDD TEXT NOT NULL,
    numero TEXT NOT NULL,
    aluno_id INTEGER,
    FOREIGN KEY (aluno_id) REFERENCES Aluno(id)
);

CREATE TABLE IF NOT EXISTS Curso (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    sigla TEXT NOT NULL,
    professor_id INTEGER,
    FOREIGN KEY (professor_id) REFERENCES Professor(id)
);

CREATE TABLE IF NOT EXISTS MaterialCurso (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    url TEXT NOT NULL,
    curso_id INTEGER,
    FOREIGN KEY (curso_id) REFERENCES Curso(id)
);

CREATE TABLE IF NOT EXISTS Curso_Aluno (
    curso_id INTEGER,
    aluno_id INTEGER,
    PRIMARY KEY (curso_id, aluno_id),
    FOREIGN KEY (curso_id) REFERENCES Curso(id),
    FOREIGN KEY (aluno_id) REFERENCES Aluno(id)
);

-- Additional Constraints
PRAGMA foreign_keys = ON;