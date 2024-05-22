insert into Livros  (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("As Crônicas de Nárnia", " C.S. Lewis", 1950, true, "Ficção", '978-0064471190',  "HarperCollins", 768, "Inglês");

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("Cem anos de Solidão", "Gabriel garcia marquez", 1967, TRUE, "Ficção", "978-0241968581", "Penguin Books", 422, "Espanhol"),
("Harry potter e a Pedra Filosofal", "J.K. Rowling", 1997, TRUE, "Fantasia", "978-0439708180", "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, TRUE, "Fantasia", "978-0618640157", "HarperCollins", 423, "Inglês");

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES
("História Fictícia", "Autor Fictício", 2022, TRUE, "História", "978-1234567890", "Editora Fictícia", 256, "Inglês");

UPDATE Livros SET disponivel = FALSE 
WHERE ano_publicacao < 2000;

UPDATE Livros SET editora = "Plume Books"
WHERE titulo = "1984";

UPDATE Livros SET idioma = "Ingles" WHERE editora = "Penguin Books";

UPDATE Livros SET titulo = "Harny Potter e a Pedra Filosofal (Edição Especial)" WHERE isbn = "978-0439708130";

DELETE FROM Livros WHERE categoria = "Terror";

DELETE FROM Livros WHERE idioma = "Francês"
AND ano_publicacao < 1970;

DELETE FROM Livros WHERE titulo = "As Crônicas de Nárnia";

DELETE FROM Livros WHERE editora = "Penguin Books";

SELECT * FROM Livros WHERE quantidade_paginas > 500;

SELECT categoria, COUNT(*) as total FROM Livros GROUP BY categoria;

SELECT * FROM Livros LIMIT 5;

SELECT SUM(quantidade_paginas) as total_paginas, AVG(quantidade_paginas) as media_paginas FROM Livros WHERE categoria = "Drama";

SELECT AVG(ano_publicacao) as media_ano FROM Livros WHERE disponivel - TRUE;

SELECT MAX(ano_publicacao) as ultimo_livro, MIN(ano_publicacao);

SELECT * FROM Livros ORDER BY ano_publicacao DESC;

(SELECT titulo FROM Livros WHERE idioma = "Inglês")
UNION
(SELECT titulo FROM Livros WHERE
idioma = "Português");

SELECT * FROM Livros WHERE autor = "George Orwell" ;
