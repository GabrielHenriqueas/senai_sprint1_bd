--DDL - Data Definition Language

--CRIAR UM BANCO
CREATE DATABASE Exercicio_1_3;

--USAR O BANCO CRIADO
USE Exercicio_1_3;

--CRIAR TABELAS
CREATE TABLE Clinica
(
	IdClinica INT PRIMARY KEY IDENTITY,
	Endereco VARCHAR(20) NOT NULL,
)

CREATE TABLE Dono
(
	IdDono INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20) NOT NULL,
)

CREATE TABLE TipoPet
(
	IdTipoPet INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(20) NOT NULL,
)

CREATE TABLE Raca
(
	IdRaca INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(20) NOT NULL,
)

CREATE TABLE Veterinario
(
	IdVeterinario INT PRIMARY KEY IDENTITY,
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica) NOT NULL,
	Nome VARCHAR(20) NOT NULL,
	CRMV VARCHAR(20) NOT NULL UNIQUE
)

CREATE TABLE Pet
(
	IdPet INT PRIMARY KEY IDENTITY,
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet) NOT NULL,
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca) NOT NULL,
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono) NOT NULL,
	Nome VARCHAR(20) NOT NULL,
	DataNascimento VARCHAR(20) NOT NULL
)

CREATE TABLE Atendimentos
(
	IdAtendimento INT PRIMARY KEY IDENTITY,
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario) NOT NULL,
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet) NOT NULL,
	Descricao VARCHAR(30) NOT NULL,
	[Data] VARCHAR(30) NOT NULL
)

SELECT * FROM Clinica
SELECT * FROM Veterinario
SELECT * FROM Atendimentos
SELECT * FROM Pet
SELECT * FROM Dono
SELECT * FROM TipoPet
SELECT * FROM Raca