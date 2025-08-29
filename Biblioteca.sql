CREATE DATABASE Biblioteca;

CREATE TABLE Bibliotecario (
	id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(20) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(30) NOT NULL);

CREATE TABLE Cliente (
	id_cpf VARCHAR(20) PRIMARY KEY,
    nome VARCHAR (50) NOT NULL, 
    endereco VARCHAR(30) NOT NULL,
    telefone VARCHAR(20) NOT NULL);
    
CREATE TABLE Emprestimo (
	id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
	cpf VARCHAR(20) NOT NULL,
    livro VARCHAR(10) NOT NULL,
    funcionario INT NOT NULL,
    valor VARCHAR(10) NOT NULL,
    devolucao DATE NOT NULL,
    FOREIGN KEY (cpf) REFERENCES Cliente(id_cpf),
    FOREIGN KEY (funcionario) REFERENCES Bibliotecario(id_matricula),
	FOREIGN KEY (livro) REFERENCES Livro(id_livro));
    
CREATE TABLE Vender (
	id_venda INT PRIMARY KEY AUTO_INCREMENT,
	cpf VARCHAR(20) NOT NULL,
    livro VARCHAR(10) NOT NULL,
    funcionario INT NOT NULL,
    valor VARCHAR(10) NOT NULL,
    FOREIGN KEY (cpf) REFERENCES Cliente(id_cpf),
    FOREIGN KEY (funcionario) REFERENCES Bibliotecario(id_matricula),
	FOREIGN KEY (livro) REFERENCES Livro(id_livro));
    
CREATE TABLE Livro (
	id_livro INT PRIMARY KEY,
    nome VARCHAR(10) NOT NULL,
    editora VARCHAR(10) NOT NULL,
    genero VARCHAR(10) NOT NULL,
    autor VARCHAR (20) NOT NULL);

    
SHOW TABLES FROM Biblioteca
    
    
    
    


    
    
    


	
    