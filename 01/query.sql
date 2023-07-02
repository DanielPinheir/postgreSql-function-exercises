-- 1 - Faça uma query que retorna a quantidade de medicamentos da tabela farmacia.
select count(distinct medicamento) from farmacia;

-- 2 - Faça uma query que retorna apenas a idade do usuario mais novo cadastrado 
-- na tabela usuarios.
select min(idade) from usuarios;

-- 3 - Faça uma query que retorna apenas a idade do usuario mais velho cadastrado
-- na tabela usuarios.
select max(idade) from usuarios;

-- 4 - Faça uma query que retorna a média de idade entre os usuários cadastrados 
-- na tabela usuarios com idade maior ou igual a 18 anos.
select round(avg(idade), 2) 
from usuarios 
where idade >= 18;

-- 5 - Faça uma query que retorna a soma total do estoque de todos os medicamentos 
-- das categorias blue e black na tabela farmacia.
select sum(estoque) as "Sum blue and yellow kind"
from farmacia
where categoria ilike 'blue' or categoria ilike 'black';

-- 6 - Faça uma query que retorna todas as categorias não nulas e a soma do estoque 
-- de todos os medicamentos de cada categoria na tabela farmacia.
select categoria as category, sum(estoque) as stock_sum
from farmacia
where categoria is not null
group by categoria;

