-- 1

SELECT Nome, Ano FROM Filmes;

-- 2

SELECT Nome, Ano FROM Filmes ORDER BY Ano;

-- 3

SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4

SELECT * FROM Filmes WHERE Ano = 1997;

-- 5

SELECT * FROM Filmes WHERE Ano > 2000;

-- 6

SELECT * FROM Filmes WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao;

-- 7

SELECT Ano, COUNT(Ano) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

-- 9

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10

SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	FilmesGenero
INNER JOIN Generos ON Generos.Id = IdGenero
INNER JOIN Filmes ON Filmes.Id = IdFilme;

-- 11

SELECT
	Filmes.Nome,
	Generos.Genero
FROM
	FilmesGenero
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
WHERE Generos.Genero = 'Mistério';

-- 12

SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;
