
-- Tabela de Produtos
CREATE TABLE Produtos (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    NomeProduto VARCHAR(100) NOT NULL,
    Quantidade INT NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL
);

-- Tabela de Fornecedores
CREATE TABLE Fornecedores (
    FornecedorID INT AUTO_INCREMENT PRIMARY KEY,
    NomeFornecedor VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20)
);

-- Tabela de Estoque
CREATE TABLE Estoque (
    EstoqueID INT AUTO_INCREMENT PRIMARY KEY,
    ProdutoID INT NOT NULL,
    FornecedorID INT NOT NULL,
    Quantidade INT NOT NULL,
    DataEntrada DATE NOT NULL,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID),
    FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
);

-- Inserção de dados em Produtos
INSERT INTO Produtos (NomeProduto, Quantidade, Preco) VALUES
    ('Notebook Dell', 10, 3500.00),
    ('Mouse Gamer', 50, 120.99),
    ('Teclado Mecânico', 30, 250.49);

-- Inserção de dados em Fornecedores
INSERT INTO Fornecedores (NomeFornecedor, Telefone) VALUES
    ('Tech Distribuidora', '1133224455'),
    ('Gamer Import', '11988776655');

-- Inserção de dados em Estoque
INSERT INTO Estoque (ProdutoID, FornecedorID, Quantidade, DataEntrada) VALUES
    (1, 1, 5, '2025-07-10'),
    (2, 2, 20, '2025-07-12'),
    (3, 1, 10, '2025-07-15');

-- Consulta com JOIN para visualizar os dados completos do estoque
SELECT e.EstoqueID, p.NomeProduto, f.NomeFornecedor, e.Quantidade, e.DataEntrada
FROM Estoque e
JOIN Produtos p ON e.ProdutoID = p.ProdutoID
JOIN Fornecedores f ON e.FornecedorID = f.FornecedorID;
