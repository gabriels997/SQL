--É a forma de organizar as tabelas do banco para evitar 
--dados repetidos e erros, separando as informações em tabelas 
--menores que se relacionam entre si. Isso deixa o banco mais 
--organizado, fácil de mante



-- Adicionar colunas de endereço à tabela "usuarios"
ALTER TABLE usuarios
ADD rua VARCHAR(100),
ADD numero VARCHAR(10),
ADD cidade VARCHAR(50),
ADD estado VARCHAR(50);



-- Copia os dados da tabela original para a nova tabela
-- fazer a divisão com base de um texto com base no indice dele, de 0 até -1
UPDATE usuarios
SET rua = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 1), ',', -1),
    numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 2), ',', -1),
    cidade = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 3), ',', -1),
    estado = SUBSTRING_INDEX(endereco, ',', -1);



-- Exclusão da coluna "endereco" da tabela original
ALTER TABLE usuarios
DROP COLUMN endereco;


-- 1FN (Primeira Forma Normal)
-- Cada coluna guarda apenas um tipo de informação e não existem listas ou vários valores na mesma coluna.
-- Se eu posso dividir a minha informação em varias partes, ela nao esta de acordo com a 1FN


-- 2FN (Segunda Forma Normal)
-- Os dados da tabela dependem da linha inteira, não só de parte dela. Informações que não fazem sentido sozinhas são separadas.


-- 3FN (Terceira Forma Normal)
-- Os dados dependem apenas do identificador principal da tabela. Informações que pertencem a outra coisa ficam em outra tabela.