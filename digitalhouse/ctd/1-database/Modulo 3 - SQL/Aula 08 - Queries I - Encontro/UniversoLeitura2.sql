INSERT INTO associados VALUES (
	DEFAULT,
	"1234567",
    "Alice",
    "Nunes",
    "ABCD",
    "A",
    "SP"
    );
    
INSERT INTO telefones VALUES (
	DEFAULT,
    "11951658944",
    4
    );
    
INSERT INTO autores VALUES (
	default,
    "J.K",
    "Rowling"
    );
    
INSERT INTO editoras VALUES (
	DEFAULT,
    "Saraiva",
    "1100000000"
    );
    
INSERT INTO livros VALUES (
	DEFAULT,
    "9780050666319",
    "harry potter a l'ecole des sorciers",
    1,
    19970626,
    19970626,
    3
    );
    
    
DELETE FROM telefones
WHERE id = 1;