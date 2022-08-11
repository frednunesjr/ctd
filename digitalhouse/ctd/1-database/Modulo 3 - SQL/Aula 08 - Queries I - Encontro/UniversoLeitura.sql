CREATE DATABASE UniversoLeitura;
USE UniversoLeitura;

CREATE TABLE autores (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE editoras (
    id INT(11) NOT NULL AUTO_INCREMENT,
    razao_social VARCHAR(150) NOT NULL,
    telefone VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE associados (
    id INT(11) NOT NULL AUTO_INCREMENT,
    rg CHAR(7) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    endereco VARCHAR(150) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE telefones (
    id INT(11) NOT NULL AUTO_INCREMENT,
    telefone VARCHAR(100),
    id_associado INT(11),
    PRIMARY KEY (id),
    CONSTRAINT fk_id_associado_1 FOREIGN KEY (id_associado)
        REFERENCES associados(id)
);

CREATE TABLE livros (
    id INT(11) NOT NULL AUTO_INCREMENT,
    isbn VARCHAR(13),
    titulo VARCHAR(200),
    id_autor INT(11),
    ano_criacao DATE,
    ano_publicacao DATE,
    id_editora INT(11),
    PRIMARY KEY (id),
    CONSTRAINT fk_id_autor_1 FOREIGN KEY (id_autor)
        REFERENCES autores(id),
    CONSTRAINT fk_id_editora_1 FOREIGN KEY (id_editora)
        REFERENCES editoras(id)
);

CREATE TABLE emprestimos (
    id INT(11) NOT NULL AUTO_INCREMENT,
    id_associado INT(11),
    data_emprestimo DATE,
    data_devolucao DATE,
    PRIMARY KEY (id),
    CONSTRAINT fk_id_associado_2 FOREIGN KEY (id_associado)
        REFERENCES associados(id)
);
    
CREATE TABLE exemplares (
    id INT(11) NOT NULL AUTO_INCREMENT,
    id_livro INT(11),
    sinistro INT(1),
    PRIMARY KEY (id),
    CONSTRAINT fk_id_livro_1 FOREIGN KEY (id_livro)
        REFERENCES livros(id)
);

CREATE TABLE emprestimos_exemplares (
    id INT(11) NOT NULL AUTO_INCREMENT,
    id_emprestimo INT(11),
    id_exemplar INT(11),
    PRIMARY KEY (id),
    CONSTRAINT fk_id_emprestimo_1 FOREIGN KEY (id_emprestimo)
        REFERENCES emprestimos(id),
    CONSTRAINT fk_id_exemplar_1 FOREIGN KEY (id_exemplar)
        REFERENCES exemplares(id)
);
    
    