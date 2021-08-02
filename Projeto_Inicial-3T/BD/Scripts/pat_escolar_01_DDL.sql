-- DDL

-- Cria um banco de dados nomeado Pat_Escolar
CREATE DATABASE Pat_Escolar;
GO

-- Define o banco de dados que será utilizado
USE Pat_Escolar;
GO

-- Cria a tabela Escola
CREATE TABLE Escola
(
	idEscola		INT PRIMARY KEY IDENTITY,
	nomeEscola		VARCHAR(200) UNIQUE NOT NULL
);
GO

-- Cria a tabela Sala
CREATE TABLE Sala
(
	idSala			INT PRIMARY KEY IDENTITY,
	idEscola		INT FOREIGN KEY REFERENCES Escola(idEscola),
	andar			CHAR(2) NOT NULL,
	nomeDaSala		VARCHAR(255) NOT NULL,
	metragem		VARCHAR(255) NOT NULL
);
GO

-- Cria a tabela Equipamentos
CREATE TABLE Equipamentos
(
	idEquipamento		INT PRIMARY KEY IDENTITY,
	idSala				INT FOREIGN KEY REFERENCES Sala(idSala),
	marca				VARCHAR(255) NOT NULL,
	tipoEquipamento		VARCHAR(255) NOT NULL,
	numeroDeSerie		INT NOT NULL,
	descricao			CHAR(400) NOT NULL,
	situacao			VARCHAR(255) NOT NULL,
);
GO 