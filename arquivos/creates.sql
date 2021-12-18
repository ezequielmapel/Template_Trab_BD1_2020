/* Lógico_1: */

CREATE TABLE PESSOA (
    num_cadastro serial PRIMARY KEY,
    nome varchar(50),
    data_nasc date,
    score int,
    cpf varchar(11)
);

CREATE TABLE MONTADOR (
    forma_pag varchar(25),
    cnpj varchar(14),
    FK_PESSOA_num_cadastro serial PRIMARY KEY
);

CREATE TABLE CONTATO (
    cod_contato serial PRIMARY KEY,
    tipo_contato varchar(25),
    desc_contato varchar(75),
    FK_PESSOA_num_cadastro serial
);

CREATE TABLE OBJETO (
    cod_objeto serial PRIMARY KEY,
    desc_objeto varchar(100),
    possui_manual char,
    FK_TIPO_OBJETO_cod_tipo_objeto serial,
    FK_MARCA_OBJETO_cod_marca serial
);

CREATE TABLE Chamado (
    data_horario timestamp,
    tipo_chamado varchar(25),
    preco float,
    cod_chamado serial PRIMARY KEY,
    data_agendamento timestamp,
    fk_MONTADOR_FK_PESSOA_num_cadastro serial,
    fk_OBJETO_cod_objeto serial,
    fk_PESSOA_num_cadastro serial,
    fk_STATUS_cod_estado serial
);

CREATE TABLE PORTFOLIO (
    foto bytea,
    tempo_servico time,
    desc_portifolio varchar(300),
    FK_MONTADOR_FK_PESSOA_num_cadastro serial
);

CREATE TABLE TIPO_OBJETO (
    cod_tipo_objeto serial PRIMARY KEY,
    nome varchar(75)
);

CREATE TABLE STATUS (
    cod_estado serial PRIMARY KEY,
    nome varchar(25)
);

CREATE TABLE ESPECIALIDADE (
    cod_especialiade serial PRIMARY KEY,
    nome varchar(75)
);

CREATE TABLE ENDERECO (
    nome_logradouro varchar(75),
    numero int,
    bairro varchar(50),
    municipio varchar(50),
    estado varchar(2),
    cod_endereco serial PRIMARY KEY,
    tipo_logradouro varchar(25)
);

CREATE TABLE MARCA_OBJETO (
    cod_marca serial PRIMARY KEY,
    desc_marca varchar(50)
);

CREATE TABLE AutoRel_1 (
    fk_PESSOA_num_cadastro serial,
    fk_PESSOA_num_cadastro_ serial,
    avaliacao int,
    cod_avaliacao serial PRIMARY KEY,
    data_avaliacao timestamp
);

CREATE TABLE Montador_Especialidade (
    fk_ESPECIALIDADE_cod_especialiade serial,
    fk_MONTADOR_FK_PESSOA_num_cadastro serial
);

CREATE TABLE Pessoa_Endereco (
    fk_PESSOA_num_cadastro serial,
    fk_ENDERECO_cod_endereco serial
);
 
ALTER TABLE MONTADOR ADD CONSTRAINT FK_MONTADOR_2
    FOREIGN KEY (FK_PESSOA_num_cadastro)
    REFERENCES PESSOA (num_cadastro)
    ON DELETE CASCADE;
 
ALTER TABLE CONTATO ADD CONSTRAINT FK_CONTATO_2
    FOREIGN KEY (FK_PESSOA_num_cadastro)
    REFERENCES PESSOA (num_cadastro)
    ON DELETE RESTRICT;
 
ALTER TABLE OBJETO ADD CONSTRAINT FK_OBJETO_2
    FOREIGN KEY (FK_TIPO_OBJETO_cod_tipo_objeto)
    REFERENCES TIPO_OBJETO (cod_tipo_objeto)
    ON DELETE RESTRICT;
 
ALTER TABLE OBJETO ADD CONSTRAINT FK_OBJETO_3
    FOREIGN KEY (FK_MARCA_OBJETO_cod_marca)
    REFERENCES MARCA_OBJETO (cod_marca)
    ON DELETE CASCADE;
 
ALTER TABLE Chamado ADD CONSTRAINT FK_Chamado_2
    FOREIGN KEY (fk_MONTADOR_FK_PESSOA_num_cadastro)
    REFERENCES MONTADOR (FK_PESSOA_num_cadastro);
 
ALTER TABLE Chamado ADD CONSTRAINT FK_Chamado_3
    FOREIGN KEY (fk_OBJETO_cod_objeto)
    REFERENCES OBJETO (cod_objeto);
 
ALTER TABLE Chamado ADD CONSTRAINT FK_Chamado_4
    FOREIGN KEY (fk_PESSOA_num_cadastro)
    REFERENCES PESSOA (num_cadastro);
 
ALTER TABLE Chamado ADD CONSTRAINT FK_Chamado_5
    FOREIGN KEY (fk_STATUS_cod_estado)
    REFERENCES STATUS (cod_estado);
 
ALTER TABLE PORTFOLIO ADD CONSTRAINT FK_PORTFOLIO_1
    FOREIGN KEY (FK_MONTADOR_FK_PESSOA_num_cadastro)
    REFERENCES MONTADOR (FK_PESSOA_num_cadastro)
    ON DELETE CASCADE;
 
ALTER TABLE AutoRel_1 ADD CONSTRAINT FK_AutoRel_1_2
    FOREIGN KEY (fk_PESSOA_num_cadastro)
    REFERENCES PESSOA (num_cadastro)
    ON DELETE RESTRICT;
 
ALTER TABLE AutoRel_1 ADD CONSTRAINT FK_AutoRel_1_3
    FOREIGN KEY (fk_PESSOA_num_cadastro_)
    REFERENCES PESSOA (num_cadastro)
    ON DELETE RESTRICT;
 
ALTER TABLE Montador_Especialidade ADD CONSTRAINT FK_Montador_Especialidade_1
    FOREIGN KEY (fk_ESPECIALIDADE_cod_especialiade)
    REFERENCES ESPECIALIDADE (cod_especialiade)
    ON DELETE RESTRICT;
 
ALTER TABLE Montador_Especialidade ADD CONSTRAINT FK_Montador_Especialidade_2
    FOREIGN KEY (fk_MONTADOR_FK_PESSOA_num_cadastro)
    REFERENCES MONTADOR (FK_PESSOA_num_cadastro)
    ON DELETE SET NULL;
 
ALTER TABLE Pessoa_Endereco ADD CONSTRAINT FK_Pessoa_Endereco_1
    FOREIGN KEY (fk_PESSOA_num_cadastro)
    REFERENCES PESSOA (num_cadastro)
    ON DELETE RESTRICT;
 
ALTER TABLE Pessoa_Endereco ADD CONSTRAINT FK_Pessoa_Endereco_2
    FOREIGN KEY (fk_ENDERECO_cod_endereco)
    REFERENCES ENDERECO (cod_endereco)
    ON DELETE RESTRICT;





