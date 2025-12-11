--                           Terceira operação do CRUD - UPDATE
--  !!Atenção no WHERE!!


-- Comando UPDATE:
-- Update --
UPDATE usuarios SET endereco = 'Nova Rua, 123' 
WHERE email = 'joao@example.com';

UPDATE usuarios
SET id = 4 -- mais de 1 usuario estava com o ID 1, fiz a alteração
WHERE email = "teste@teste.com";


--                           Quarta operação do CRUD - DELETE
--  !!Atenção no WHERE!!


-- Comando DELETE
-- delete --
DELETE FROM reservas 
WHERE status = 'cancelada';