CREATE DATABASE EconoGest;
USE EconoGest;
--
/* MÓDULO DE USUÁRIOS
 *
 */
CREATE TABLE permissao (
    id 			INT AUTO_INCREMENT NOT NULL,
    nome 		VARCHAR(50) NOT NULL,
    descricao 	VARCHAR(100),
	-- Chave Primária abaixo
    PRIMARY KEY (id)
);
--
CREATE TABLE grupo (
    id 			INT AUTO_INCREMENT NOT NULL,
    nome 		VARCHAR(50) NOT NULL,
    descricao 	VARCHAR(100),
    -- PK e FK
    PRIMARY KEY (id)
);
--
CREATE TABLE usuario (
    id 				INT AUTO_INCREMENT NOT NULL,
    nome 			VARCHAR(50) NOT NULL,
    sobrenome 		VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf_cnpj 		VARCHAR(14) UNIQUE NOT NULL,
    rg 				VARCHAR(9) UNIQUE NOT NULL,
    sexo 			CHAR(1),
    cep 			VARCHAR(20),
    endereco 		VARCHAR(100),
    endereco_numero VARCHAR(10),
    complemento 	VARCHAR(50),
    bairro 			VARCHAR(100),
    cidade 			VARCHAR(100),
    estado 			VARCHAR(100),
    pais 			VARCHAR(100),
    email 			VARCHAR(100) UNIQUE,
    telefone 		VARCHAR(20),
    celular 		VARCHAR(20) UNIQUE,
    grupo_id 		INT NOT NULL,
    -- PK E FK
    PRIMARY KEY (id),
    CONSTRAINT fk_grupo FOREIGN KEY (grupo_id)
        REFERENCES grupo (id)
);
--
CREATE TABLE grupo_permissao (
	id 					INT AUTO_increment NOT NULL,
	grupo_permissao_id 	INT NOT NULL,
    permissao_grupo_id 	INT NOT NULL,
    -- PK e FK abaixo
    PRIMARY KEY 		(id),
    CONSTRAINT 			fk_grupo_permissao
		FOREIGN KEY 	(grupo_permissao_id)
        REFERENCES 		permissao(id),
	CONSTRAINT 			fk_permissao_grupo
		FOREIGN KEY 	(permissao_grupo_id)
        REFERENCES 		grupo(id)
    );
--
/* MÓDULO DE CARTEIRAS E COFRES
 *
 */
CREATE TABLE carteira (
	id 			INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome 		VARCHAR(50) NOT NULL,
    descricao 	VARCHAR(100),
    categoria 	ENUM('especime','conta') NOT NULL
	);
--
CREATE TABLE carteira_usuario (
	id 					INT AUTO_INCREMENT NOT NULL,
    carteira_usuario_id INT NOT NULL,
    usuario_carteira_id INT NOT NULL,
    -- PK e FK abaixo
    PRIMARY KEY (id),
    CONSTRAINT fk_carteira_usuario
		FOREIGN KEY (carteira_usuario_id)
        REFERENCES usuario(id),
	CONSTRAINT fk_usuario_carteira
		FOREIGN KEY (usuario_carteira_id)
		REFERENCES carteira(id)
	);	
--
CREATE TABLE cofre (
	id 			INT AUTO_INCREMENT NOT NULL,
    nome 		VARCHAR(50) NOT NULL,
    descricao 	VARCHAR(100),
    -- PK abaixo
    PRIMARY KEY (id)
    );
--
CREATE TABLE cofre_carteira (
	id 					INT AUTO_INCREMENT NOT NULL,
    valor 				DECIMAL(7,2) NOT NULL,
    cofre_carteira_id 	INT NOT NULL,
    carteira_cofre_id 	INT NOT NULL,
    -- PK e FK abaixo
    PRIMARY KEY (id),
    CONSTRAINT fk_cofre_carteira
		FOREIGN KEY (cofre_carteira_id)
		REFERENCES carteira(id),
	CONSTRAINT fk_carteira_cofre
		FOREIGN KEY (carteira_cofre_id)
		REFERENCES cofre(id)
    );
--
/* MÓDULO DE SAÍDAS E FORMAS DE PAGAMENTO
 *
 */
CREATE TABLE forma_pgto_categoria (
    id 			INT AUTO_INCREMENT NOT NULL,
    nome 		VARCHAR(50) NOT NULL,
    descricao 	VARCHAR(100),
    -- Chave Primária abaixo
    PRIMARY KEY (id)
);
--
CREATE TABLE forma_pgto (
    id 						INT AUTO_INCREMENT NOT NULL,
    nome 					VARCHAR(50) NOT NULL,
    descricao 				VARCHAR(100),
    forma_pgto_categoria_id	INT NOT NULL,
    -- Chaves Primária e Estrangeira abaixo
    PRIMARY KEY (id),
    CONSTRAINT fk_forma_pgto_categoria
		FOREIGN KEY (forma_pgto_categoria_id)
		REFERENCES forma_pgto_categoria(id)
);
--
CREATE TABLE saida_categoria (
    id 			INT AUTO_INCREMENT NOT NULL,
    nome 		VARCHAR(50) NOT NULL,
    descricao 	VARCHAR(100),
    -- Chave Primária abaixo
    PRIMARY KEY (id)
);	
--
CREATE TABLE saida (
    id 					INT AUTO_INCREMENT NOT NULL,
    descricao 			VARCHAR(100) NOT NULL,
    saida_categoria_id 	INT NOT NULL,
    -- Chaves Primária e Estrangeira abaixo
    PRIMARY KEY (id),
    CONSTRAINT fk_saida_categoria
		FOREIGN KEY (saida_categoria_id)
        REFERENCES saida_categoria(id)
	);
--
CREATE TABLE parcela (
	id 						INT AUTO_INCREMENT NOT NULL,
    numero 					INT NOT NULL,
    valor 					DECIMAL(7,2) NOT NULL,
    vencimento 				DATE NOT NULL,
    saida_id 				INT NOT NULL,
    parcela_forma_pgto_id 	INT NOT NULL,
    parcela_carteira_id 	INT NOT NULL,
    -- PK e FK abaixo
    PRIMARY KEY (id),
    CONSTRAINT fk_saida
		FOREIGN KEY (saida_id)
        REFERENCES saida(id),
    CONSTRAINT fk_parcela_forma_pgto
		FOREIGN KEY (parcela_forma_pgto_id)
        REFERENCES	forma_pgto(id),
	CONSTRAINT fk_parcela_carteira
		FOREIGN KEY (parcela_carteira_id)
		REFERENCES carteira(id)
);
-- 
/* MÓDULO DE ENTRADAS E CONTAS BANCÁRIAS
 *
 */
CREATE TABLE entrada_categoria (
	id 			INT AUTO_INCREMENT NOT NULL,
    nome 		VARCHAR(50) NOT NULL,
    descricao 	VARCHAR(100),
    -- PK
    PRIMARY KEY (id)
    );
-- 
CREATE TABLE entrada (
	id 						INT AUTO_INCREMENT NOT NULL,
    descricao 				VARCHAR(100) NOT NULL,
    valor 					DECIMAL(7,2) NOT NULL,
    data_entrada 			DATE NOT NULL,
    entrada_categoria_id 	INT NOT NULL,
	entrada_carteira_id 	INT NOT NULL,
    -- PK e FKs
    PRIMARY KEY (id),
    CONSTRAINT fk_entrada_categoria
		FOREIGN KEY (entrada_categoria_id)
        REFERENCES entrada_categoria(id),
	CONSTRAINT fk_entrada_carteira
		FOREIGN KEY (entrada_carteira_id)
        REFERENCES carteira(id)
	);
-- 
CREATE TABLE banco (
	id 				INT NOT NULL,
    razao_social 	VARCHAR(200) NOT NULL,
    fantasia 		VARCHAR(100) NOT NULL,
    cnpj 			CHAR(14) NOT NULL
    );
--
CREATE TABLE conta_categoria (
	id 			INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome 		VARCHAR(50),
    descricao 	VARCHAR(100)
    );
--
CREATE TABLE conta (
	id 					INT AUTO_INCREMENT NOT NULL,
    agencia 			VARCHAR(20),
    numero_conta 		VARCHAR(20),
    banco_id 			INT NOT NULL,
    conta_categoria_id	INT NOT NULL,
    conta_carteira_id 	INT NOT NULL,
    -- FK
    PRIMARY KEY (id),
    CONSTRAINT fk_banco
		FOREIGN KEY (banco_id)
		REFERENCES banco(id),
    CONSTRAINT fk_conta_categoria
		FOREIGN KEY (conta_categoria_id)
        REFERENCES conta_categoria(id),
	CONSTRAINT fk_conta_carteira
		FOREIGN KEY (conta_carteira_id)
        REFERENCES carteira(id)
	);