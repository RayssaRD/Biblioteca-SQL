INSERT INTO Bibliotecario(id_matricula, nome, cpf, telefone, endereco) VALUES
(4567, 'Thais', '111.252.333.00', '(24)88889-8999', 'Morada da Colina');

SELECT * FROM Bibliotecario;

INSERT INTO Cliente(id_cpf, nome, endereco, telefone) VALUES
('11112222', 'Agatha', 'Rua Jucelino Kubtchek', '(24)88888-2999');

SELECT * FROM Cliente;

INSERT INTO Emprestimo(valor, devolucao) VALUES
('R$ 20,00', '2025-08-29');

SELECT * FROM Emprestimo;

INSERT INTO Vender(valor) VALUES
('R$ 30,00');

SELECT * FROM Vender;

INSERT INTO Livro(id_livro, nome, editora, genero, autor) VALUES
('33443', 'Verity', 'Galera', 'Suspense', 'Coolen Hoover');

SELECT * FROM Livro;

