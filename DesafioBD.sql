-- 1º Passo
select nome, ano from Filmes

-- 2º Passo
select nome, ano from Filmes order by ano asc

-- 3º Passo
select * from Filmes where nome = 'de volta para o futuro'

-- 4º Passo
select * from Filmes where ano = 1997

-- 5º Passo
select * from Filmes where ano > 2000

-- 6º Passo
select * from Filmes where duracao > 100 and duracao < 150 order by duracao asc

-- 7º Passo
select ano,Count(*) as quantidade from Filmes group by ano order by quantidade desc

-- 8º Passo
select * from atores where genero = 'M'

-- 9º Passo
select * from atores where genero = 'F' order by PrimeiroNome

-- 10º Passo
select f.Nome, g.Genero from filmes f 
inner join FilmesGenero fg on (f.Id = fg.IdFilme)
inner join Generos g on (g.Id = fg.IdGenero)

-- 11º Passo
select f.Nome, g.Genero from filmes f 
inner join FilmesGenero fg on (f.Id = fg.IdFilme)
inner join Generos g on (g.Id = fg.IdGenero)
where g.Genero = 'Mistério'

-- 12º Passo
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from filmes f 
inner join ElencoFilme ef on (f.Id = ef.IdFilme)
inner join Atores a on (a.Id = ef.IdAtor)