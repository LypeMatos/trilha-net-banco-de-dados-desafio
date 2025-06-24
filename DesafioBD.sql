-- 1� Passo
select nome, ano from Filmes

-- 2� Passo
select nome, ano from Filmes order by ano asc

-- 3� Passo
select * from Filmes where nome = 'de volta para o futuro'

-- 4� Passo
select * from Filmes where ano = 1997

-- 5� Passo
select * from Filmes where ano > 2000

-- 6� Passo
select * from Filmes where duracao > 100 and duracao < 150 order by duracao asc

-- 7� Passo
select ano,Count(*) as quantidade from Filmes group by ano order by quantidade desc

-- 8� Passo
select * from atores where genero = 'M'

-- 9� Passo
select * from atores where genero = 'F' order by PrimeiroNome

-- 10� Passo
select f.Nome, g.Genero from filmes f 
inner join FilmesGenero fg on (f.Id = fg.IdFilme)
inner join Generos g on (g.Id = fg.IdGenero)

-- 11� Passo
select f.Nome, g.Genero from filmes f 
inner join FilmesGenero fg on (f.Id = fg.IdFilme)
inner join Generos g on (g.Id = fg.IdGenero)
where g.Genero = 'Mist�rio'

-- 12� Passo
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from filmes f 
inner join ElencoFilme ef on (f.Id = ef.IdFilme)
inner join Atores a on (a.Id = ef.IdAtor)