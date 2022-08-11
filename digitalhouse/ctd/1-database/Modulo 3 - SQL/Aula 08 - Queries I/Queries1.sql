-- CRIANDO UMA BASE DE DADOS
create database minhadb;

-- CRIANDO UMA TABELA
-- nome_da_coulna TIPO_DE_DADO CONSTRAINT
CREATE TABLE usuario (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50),
    email VARCHAR(100) NOT NULL UNIQUE,
    data_nascimento DATE
);

-- FOREIGN KEY
CREATE TABLE ordens (
	ordem_id INT NOT NULL,
    ordem_numero INT NOT NULL,
    cliente_id int,
    PRIMARY KEY (ordem_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- EXCLUINDO UMA TABELA
DROP TABLE IF EXISTS usuario;

-- ADICIONANDO UMA COLUNA À UMA TABELA
-- MODIFICANDO UMA COLUNA EM UMA TABELA
-- EXCCLUINDO UMA COLUNA NUMA TABELA
ALTER TABLE usuario
ADD telefone VARCHAR(50);

ALTER TABLE usuario
MODIFY telefone VARCHAR(10);

alter table usuario
drop rating;

-- INSERINDO UM NOVO DADO NUMA TABELA
INSERT INTO usuario (
	nome,
    sobrenome,
    email,
    data_nascimento,
    telefone
) VALUES (
	'Fredson',
    'Nunes',
    'fred@portalbereana.com.br',
    '19980521',
    948579247
);

-- SELECIONANDO DADOS
SELECT * FROM usuario;

-- ATUALIZANDO UM REGISTRO NUMA TABELA
UPDATE usuario SET
nome = 'Fredson',
sobrenome = 'Trinci'
WHERE id = 1;

-- DELETANDO UM REGISTRADO DUMA TABELA
DELETE FROM usuario
WHERE id = 1;

