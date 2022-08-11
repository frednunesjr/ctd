CREATE DATABASE consultorio_dh;
USE consultorio_dh;
CREATE TABLE pacientes (
	paciente_id INT(11) NOT NULL,
    paciente_idsaude INT(11) NOT NULL UNIQUE,
    paciente_nome VARCHAR(50) NOT NULL,
    paciente_sobrenome VARCHAR(100) NOT NULL,
    PRIMARY KEY (paciente_id)
    );
CREATE TABLE especialidades (
	especialidade_id INT(11) NOT NULL PRIMARY KEY,
    especialidade_nome VARCHAR(100) NOT NULL
    );

CREATE TABLE medicos (
	medico_id INT(11) NOT NULL,
    medico_nome VARCHAR(40) NOT NULL,
    medico_sobrenome VARCHAR(100) NOT NULL,
    medico_especialidade INT(11),
    PRIMARY KEY (medico_id),
    FOREIGN KEY (medico_especialidade)
		REFERENCES especialidades(especialidade_id)
	);

CREATE TABLE consultas (
	consulta_id INT(11) PRIMARY KEY,
    paciente INT(11) NOT NULL,
    medico INT(11) NOT NULL,
    data_consulta DATE NOT NULL,
    hora_consulta TIME NOT NULL,
    
    FOREIGN KEY (paciente) REFERENCES pacientes(paciente_id),
    FOREIGN KEY (medico) REFERENCES medicos(medico_id)
    );