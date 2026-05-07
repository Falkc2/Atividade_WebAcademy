create database hospital;
use hospital;

CREATE TABLE especialidade (

	especialidade_id BIGINT PRIMARY KEY,
    especialidade_nome VARCHAR(255)
    
);

CREATE TABLE medico (

    medico_id BIGINT PRIMARY KEY,
    medico_nome VARCHAR(255),
    medico_crm VARCHAR(255),
    medico_especialidade_fk BIGINT         
    
);

CREATE TABLE consulta (

    consulta_id BIGINT PRIMARY KEY,
    consulta_horario TIME,
    consulta_data DATE,
    consulta_medico_id_fk BIGINT,
    consulta_paciente_id_fk BIGINT
    
);

CREATE TABLE tipo_exame (

    tipo_exame_id BIGINT PRIMARY KEY,
    tipo_exame_nome VARCHAR(255),
    tipo_exame_especialidade_fk BIGINT

);

CREATE TABLE receita (
    receita_id BIGINT PRIMARY KEY,
    receita_medicamento_fk BIGINT,
    receita_dosagem VARCHAR(255),
    receita_consulta_fk BIGINT
    
);

CREATE TABLE medicamento (

    medicamento_id BIGINT PRIMARY KEY,
    medicamento_nome VARCHAR(255)
    
);

CREATE TABLE exame (
	
    exame_id BIGINT PRIMARY KEY,
    exame_consulta_fK BIGINT,
    exame_tipo VARCHAR(255),
    exame_resultado_file BIGINT
    
);

CREATE TABLE paciente (

	paciente_id BIGINT PRIMARY KEY,
    paciente_nome VARCHAR(255),
    paciente_planodesaude_fk BIGINT,
    paciente_status TINYINT
    
);