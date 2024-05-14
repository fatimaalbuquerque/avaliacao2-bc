use avaliacao_22c;

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values
('As Crônicas de Nárnia', 'CS Lewis', 1950, true, 'Fantasia', '978-0064471190', 'HarperCollins', '768', 'Francês');

update Livros
set disponivel = false
where ano_publicacao < 1900;

update Livros
set editora = 'Plume Books'
where titulo = '1984';

delete from Livros
where idioma = 'Francês' and ano_publicacao < 2000;

select * from Livros
where quantidade_paginas > 600;

select categoria, count(categoria)
from Livros
group by categoria;

select id, titulo from Livros
order by id desc
limit 5;

select disponivel, avg(quantidade_paginas) from Livros
where disponivel = true
group by disponivel;

select * from Livros
order by ano_publicacao desc;

select * from Livros
where titulo like 'S%' and ano_publicacao between 1970 and 1990;