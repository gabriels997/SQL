-- INSERT INTO viagens.usuarios (id, nome, email, data_nascimento, endereco) VALUES 
-- (1, 'João Silva', 'joao@example.com', '1990-05-15', 'Rua A, 123, Cidade X, Estado Y'),
-- (2, 'Maria Santos', 'maria@example.com', '1985-08-22', 'Rua B, 456, Cidade Y, Estado Z'),
-- (3, 'Pedro Souza', 'pedro@example.com', '1998-02-10', 'Avenida C, 789, Cidade X, Estado Y');

-- INSERT INTO viagens.destinos (id, nome, descricao) VALUES 
-- (1, 'Praia das Tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
-- (2, 'Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
-- (3, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');

-- INSERT INTO viagens.reservas (id, id_usuario, id_destino, data, status) VALUES 
-- (1, 1, 2, '2023-07-10', 'confirmada'),
-- (2, 2, 1, '2023-08-05', 'pendente'),
-- (3, 3, 3, '2023-09-20', 'cancelada');



--                           Primeira operação do CRUD - CREATE


--INSERT
-- Preenchendo a coluna usuarios
INSERT INTO usuarios (id, nome, email, data_nascimento, endereco) VALUES (1, "Gabriel Santana", "teste@teste.com", "1997-08-08", "Rua do teste, 100 - Bairro testando/SP");

-- Preenchendo a coluna destino
INSERT INTO destino (id, nome, descricao) VALUES (1, "Praia do Teste", "Linda praia");

-- Preenchendo a coluna reservas
INSERT INTO reservas (id, id_usuario, id_destino, status, data) VALUES (1, 1,1, "pendente", "2025-11-11");

-----------------------------------------------------------------------------------------------------------------
-- Segunda operação do CRUD - READ


--SELECT
-- Selecionar todos os registros da tabela "usuarios"
SELECT * FROM usuarios;

-- Selecionar apenas o nome e o email dos usuários
SELECT nome, email FROM usuarios;

-- Selecionar os usuários que possuem o nome "João Silva"
SELECT * FROM usuarios WHERE nome = 'João Silva';

-- Selecionar os usuários que nasceram antes de uma determinada data
SELECT * FROM usuarios WHERE data_nascimento < '1990-01-01';

-- Like
SELECT * FROM usuarios 
WHERE nome LIKE '%Silva%';

SELECT * FROM usuarios 
WHERE nome LIKE 'Jo_o%';

SELECT * FROM usuarios 
WHERE id = 1 AND nome LIKE "%Gabriel%"; --tenha o id e o nome especifico