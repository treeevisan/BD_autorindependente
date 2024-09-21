-- CREATE DATABASE autorindependent;

-- | DESPESAS PRODUÇÃO |

DROP TABLE IF EXISTS despesas;

CREATE TABLE despesas (
    id_custos SERIAL PRIMARY KEY,
    nome_despesa VARCHAR(100),
    categoria VARCHAR(50),
    custo DECIMAL(10, 2),
    data DATE
);

INSERT INTO despesas (nome_despesa, categoria, custo, data) VALUES
('Sinal Revisão Iza', 'Revisão', 200.00, '2022-05-30'),
('Encerramento Iza', 'Revisão', 800.00, '2022-06-19'),
('Sinal Bella (capa + arte)', 'Design', 220.00, '2023-03-09'),
('Encerramento Bella', 'Design', 880.00, '2023-09-11'),
('ISBN + Código de barras (Físico)', 'ISBN', 61.00, '2023-09-12'),
('ISBN Digital', 'ISBN', 25.00, '2023-09-12'),
('Lançamento digital 12/06', 'Marketing', 150.90, '2024-06-01'),
('Review Influenciadora', 'Marketing', 90.00, '2024-07-20'),
('Marca-páginas', 'Brindes', 140.90, '2024-07-25'),
('Ficha catalográfica', 'CBL', 62.80, '2024-07-31'),
('Teste físico', 'Livro Fisico', 127.29, '2024-08-05'),
('Camisetas', 'Acessórios', 195.00, '2024-08-08'),
('1° lote de impressão do físico', 'Livro Fisico', 1208.43, '2024-08-12'),
('Microfones', 'Acessórios', 31.09, '2024-08-12'),
('Plástico dos brindes', 'Brindes', 59.62, '2024-08-15'),
('Sorteio Bienal', 'Marketing', 122.48, '2024-08-19'),
('2° lote de impressão do físico', 'Livro Fisico', 1262.56, '2024-08-25'),
('Bottons personalizados', 'Brindes', 83.90, '2024-08-28'),
('Balas dos brindes (no vale)', 'Brindes', 67.00, '2024-08-29'),
('Sacolinhas', 'Brindes', 20.76, '2024-08-29'),
('Fita', 'Brindes', 29.60, '2024-08-30'),
('Metrô + Uber Bienal', 'Trasporte', 118.63, '2024-09-15'),
('Kit brinde aquarela', 'Brindes', 94.68, '2024-09-18');


-- | TABELA DE VENDAS COM CATEGORIA |

DROP TABLE IF EXISTS vendas_brindes;

CREATE TABLE vendas_brindes (
    id_venda SERIAL PRIMARY KEY,
    valor DECIMAL(10, 2),
    quantidade INTEGER,
    livro_fisico INTEGER CHECK (livro_fisico IN (0, 1)),
    kit_brinde INTEGER CHECK (kit_brinde IN (0, 1)),
    bottom INTEGER CHECK (bottom IN (0, 1)),
    comentario VARCHAR(50),
    data DATE
);

INSERT INTO vendas_brindes (valor, quantidade, livro_fisico, kit_brinde, bottom, comentario, data) VALUES
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'dinheiro', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'dinheiro', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'dinheiro', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'dinheiro', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-07'),
(-0.30, 147, 0, 1, 1, 'brinde', '2024-09-07'),
(5.00, 1, 0, 1, 1, 'dinheiro', '2024-09-07'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-08'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-08'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-08'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-08'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-08'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-08'),
(39.90, 1, 1, 1, 1, 'dinheiro', '2024-09-08'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-08'),
(-0.30, 172, 0, 1, 0, 'brinde', '2024-09-08'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-09'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-09'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-09'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-09'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-09'),
(-0.30, 36, 0, 1, 0, 'brinde', '2024-09-09'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-11'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-11'),
(39.90, 1, 1, 1, 1, 'dinheiro', '2024-09-11'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-11'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-11'),
(-0.30, 28, 0, 1, 0, 'brinde', '2024-09-11'),
(39.90, 1, 1, 1, 1, 'dinheiro', '2024-09-12'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-12'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-12'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-12'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-12'),
(-0.30, 33, 0, 1, 0, 'brinde', '2024-09-12'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-14'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-14'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-14'),
(-0.30, 150, 0, 1, 0, 'brinde', '2024-09-14'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-15'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-15'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-15'),
(39.90, 1, 1, 1, 1, 'pix', '2024-09-15'),
(-0.30, 128, 0, 1, 0, 'brinde', '2024-09-15');

-- | CUSTOS BIENAL POR CATEGORIA |

DROP TABLE IF EXISTS custos_bienal;

CREATE TABLE custos_bienal (
    id_custo_venda SERIAL PRIMARY KEY,
	categoria VARCHAR(50),
    custo DECIMAL(10, 2)
);

INSERT INTO custos_bienal (categoria, custo) VALUES
('livro_fisico', 25.40),
('kit brinde', 0.30),
('bottom', 0.60);

