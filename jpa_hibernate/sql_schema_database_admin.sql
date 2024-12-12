-- Schema for SQLite database: database_admin.db

-- Table: Pessoa
CREATE TABLE Pessoa (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL,
    idade INTEGER,
    cpf TEXT UNIQUE,
    data_nascimento DATE
);

-- Table: Produto
CREATE TABLE Produto (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    quantidade INTEGER NOT NULL,
    preco REAL NOT NULL,
    status INTEGER NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX idx_pessoa_cpf ON Pessoa (cpf);

-- Additional constraints or triggers can be added here if needed.
