CREATE TABLE `Bibliotecario` (
	`id_matricula` INTEGER NOT NULL UNIQUE,
	`nome` VARCHAR(50),
	`cpf` VARCHAR(20),
	`telefone` VARCHAR(20),
	`endereco` VARCHAR(30),
	PRIMARY KEY(`id_matricula`)
);


CREATE INDEX `Biblioteca_index_0`
ON `Bibliotecario` ();
CREATE TABLE `Cliente` (
	`id_cpf` INTEGER NOT NULL UNIQUE,
	`nome` VARCHAR(50),
	`endereco` VARCHAR(30),
	`telefone` VARCHAR(20),
	PRIMARY KEY(`id_cpf`)
);


CREATE TABLE `Emprestimo` (
	`id_emprestimo` INTEGER NOT NULL UNIQUE,
	`cpf` VARCHAR(20),
	`livro` VARCHAR(10),
	`funcionario` INTEGER,
	`valor` VARCHAR(10),
	`devolucao` DATE
);


CREATE TABLE `Vender` (
	`id_venda` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`cpf` VARCHAR(20),
	`livro` VARCHAR(10),
	`funcionario` INTEGER,
	`valor` VARCHAR(10)
);


CREATE TABLE `Livro` (
	`id_livro` INTEGER NOT NULL UNIQUE,
	`nome` VARCHAR(10),
	`editora` VARCHAR(10),
	`genero` VARCHAR(255),
	`autor` VARCHAR(20)
);


ALTER TABLE `Bibliotecario`
ADD FOREIGN KEY(`id_matricula`) REFERENCES `Cliente`(`id_cpf`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Vender`
ADD FOREIGN KEY(`id_venda`) REFERENCES `Cliente`(`id_cpf`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Vender`
ADD FOREIGN KEY(`id_venda`) REFERENCES `Bibliotecario`(`id_matricula`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Bibliotecario`
ADD FOREIGN KEY(`id_matricula`) REFERENCES `Livro`(`id_livro`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Bibliotecario`
ADD FOREIGN KEY(`id_matricula`) REFERENCES `Emprestimo`(`id_emprestimo`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Cliente`
ADD FOREIGN KEY(`id_cpf`) REFERENCES `Emprestimo`(`id_emprestimo`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Cliente`
ADD FOREIGN KEY(`id_cpf`) REFERENCES `Livro`(`id_livro`)
ON UPDATE NO ACTION ON DELETE NO ACTION;