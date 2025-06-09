----- ESTRUTURA SQL PARA A CAFETERIA -----

-- ## tabela de "Pordutos"

-- 1. Criar a tabela:
CREATE TABLE Produtos (
    idProduto INT PRIMARY KEY AUTO_INCREMENT, -- PK
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

-- 2. Inserção na tabela:
INSERT INTO Produtos (nome, descricao, preco, estoque) VALUES
('French Vanilla', 'Cevada, leite e toques suaves de baunilha e canela',3.00, 20),
('Chocolate quente', 'Achocolato, leite vaporizado e raspas de chocolate.', 6.00, 10),
('Pão de queijo', 'Clássica receita brasileira', 6, 50),
('Torta de Morango', 'Deliciosa torta com recheio de morango e cobertura de chantilly.', 15.00, 30);


-------------------------

-- ## tabela de "Pedidos"
-- 1. Criar a tabela:
CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATETIME NOT NULL,
    cliente_nome VARCHAR(100) NOT NULL,
    status VARCHAR(50) NOT NULL,
    total_pedido DECIMAL(10, 2) NOT NULL,
    idProduto INT, -- FK Chave estrangeira para a tabela Produtos
    FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);

-- 2. Inserção na tabela:
INSERT INTO Pedidos (data_pedido, cliente_nome, status, total_pedido, produto_id) VALUES
('2025-06-07 10:30:00', 'Ana Silva', 'Concluído', 6.00, 1), -- 2 French Vanilla
('2025-06-07 11:00:00', 'Bruno Costa', 'Pendente', 18.00, 2), -- 1 Chocolate quente
('2025-06-07 11:45:00', 'Carla Dias', 'Concluído', 6, 3), -- 1 Pão de queijo'
('2025-06-07 12:15:00', 'Daniel Mendes', 'Cancelado', 15.00, 4); -- 1 Torta de Morango