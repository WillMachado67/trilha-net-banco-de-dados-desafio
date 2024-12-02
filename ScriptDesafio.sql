-- 1
SELECT Nome, Ano FROM Filmes

-- 2

SELECT Nome, Ano, Duracao From Filmes
ORDER BY Ano

-- 3

SELECT Nome, Ano, Duracao From Filmes
WHERE Nome = 'de volta para o futuro'

-- 4

SELECT Nome, Ano, Duracao From Filmes
WHERE Ano = 1997

-- 5

SELECT Nome, Ano, Duracao From Filmes
WHERE Ano >= 2000

-- 6

SELECT Nome, Ano, Duracao From Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7

SELECT Ano, Count(*) Quantidade From Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8

SELECT * FROM Atores
WHERE Genero = 'M'

-- 9

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


-- 10

SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero On Filmes.id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.id = FilmesGenero.IdGenero

-- 11

SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero On Filmes.id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

-- 12

SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme On Filmes.id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.id = ElencoFilme.IdAtor