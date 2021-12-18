-- INSERT DAS TABELAS
set datestyle to dmy;

-- insert 10 people

INSERT INTO pessoa
(nome, data_nasc, score, cpf)
values
('Alvaro', '07/07/2000', 100, '17751190760'),
('Ezequiel', '12/02/1998', 100, '16588229780'),
('Maria', '30/09/1995', 80, '12345678911'),
('Carlos', '05/07/1999', 75, '98765432122'),
('Maria', '01/01/2000', 25, '96385274133'),
('Joana', '02/02/2000', 50, '74185296344'),
('Jimin', '04/09/1973', 100, '32165498755'),
('Quico', '30/12/1998', 0, '98745632166'),
('Caleb', '25/08/1993', 100, '25896314777'),
('Marcela', '10/12/1998', 99, '65478932188');

-- insert 10 address

INSERT INTO endereco
(nome_logradouro, numero, bairro, municipio, estado, tipo_logradouro)
values
('Barão de Itapemirim', 304, 'Vista Dourada', 'Cariacica', 'ES',  'Rua'),
('Able', 1, 'Cidade Continental - Setor América', 'Serra', 'ES',  'Alameda'),
('Bravo', 2, 'Cidade Continental - Setor Europa', 'Serra', 'ES',  'Estrada'),
('Charlie', 3, 'Cidade Continental - Setor Ásia', 'Serra', 'ES',  'Conjunto'),
('Delta', 4, 'Cidade Continental - Setor Oceania', 'Serra', 'ES',  'Distrito'),
('Echo', 5, 'Cidade Continental - Setor África', 'Serra', 'ES',  'Chácara'),
('Filipe Smith', 6, 'Búzios', 'Guarapari', 'ES',  'Arte'),
('Golf', 7, 'Camburi', 'Vitória', 'ES',  'Jardim'),
('Hotel', 8, 'Glória', 'Vila Velha', 'ES',  'Área'),
('Jabulani', 9, 'Glória Maria', 'Vila Velha', 'ES',  'Área');

-- Insert 10 contato

INSERT INTO contato
(tipo_contato, desc_contato, fk_pessoa_num_cadastro)
values
('email', 'ezequiel@yahoo.com ', 2),
('celular', '999999999', 3),
('telefone', '33181514', 4),
('email', 'alvaro@msn.com.br', 1),
('celular', '955555555', 5),
('telefone', '32411528',6),
('email', 'jimin@pinscher.com',7),
('celular', '997994040', 8),
('telefone', '40028922', 9),
('email', 'marcela@chihuahua.com', 10);

-- insert pessoa_endereço

INSERT INTO pessoa_endereco
(fk_pessoa_num_cadastro,fk_endereco_cod_endereco)
values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

-- insert montadores

INSERT INTO montador
(forma_pag, cnpj, fk_pessoa_num_cadastro)
values
('pix', '11111111111111', 3),
('picpay', '22222222222222', 5),
('boleto bancário', '33333333333333', 6),
('cartão de crédito', '44444444444444', 7),
('cartão de débito', '55555555555555', 8);

-- insert especialidade

INSERT INTO especialidade
(nome)
VALUES('Montador'),
('Eletricista'),
('Mecânico'),
('Encanador'),
('Técnico Geral');


-- insert montador_especialidade

INSERT INTO montador_especialidade
(fk_especialidade_cod_especialiade, fk_montador_fk_pessoa_num_cadastro)
values
(1,3),
(2,5),
(3,6),
(4,7),
(5,8);

-- insert tipo objeto

INSERT INTO tipo_objeto
(nome)
VALUES('Móvel'),
('Aquário'),
('Eletrodoméstico');

-- insert marca

INSERT INTO marca_objeto
(desc_marca)
values
('eletrodom'),
('Aquaglass'),
('Italiaia');

-- insert Objeto

INSERT INTO objeto
(desc_objeto, possui_manual, fk_tipo_objeto_cod_tipo_objeto, fk_marca_objeto_cod_marca)
values
('Microondas M1', 'S',3, 1),
('Torradeira M4', 'N',3, 1),
('Molhado A3', 'S',2, 2),
('Guarda-Roupa Foucault', 'S',1, 3),
('Armário Grasmci', 'N',1, 3);

-- Insert Status

INSERT INTO status
(nome)
values
('Aceita'),
('Em Espera'),
('Em Andamento'),
('Concluído'),
('Cancelado');

-- insert  Chamado

INSERT INTO chamado
(data_horario, tipo_chamado, preco, data_agendamento, fk_montador_fk_pessoa_num_cadastro, fk_objeto_cod_objeto, fk_pessoa_num_cadastro, fk_status_cod_estado)
values
('18/12/2021 18:05:06', 'Reparo', 1, '18/12/2021 18:05:06',7,3,1,4),
('1/12/2021 00:05:06', 'Instalação', 20, '1/12/2021 10:45:06',3,4,2,3),
('13/07/2022 10:45:06', 'Reparo', 75, '14/07/2022 13:00:00',3,5,10,3),
('18/09/2021 16:00:00', 'Auxílio à Recall', 100, '19/09/2021 16:00:00',5,1,4,5),
('23/11/2021 21:00:00', 'Instalação', 250, '23/11/2021 14:30:00',5,2,9,4);

-- Insert Portfolio

INSERT INTO portfolio
(tempo_servico, desc_portifolio, fk_montador_fk_pessoa_num_cadastro)
values
('00:05:00', 'Muito bom, Não recomendo', 3),
('00:06:00', 'Que Satisfação Aspira', 5),
('00:05:00', 'Adorei, nota 3', 6),
('00:05:00', 'Excelente', 7),
('00:05:00', 'Muito bom, que Deus te elimine', 8);

-- Insert score

INSERT INTO autorel_1
(avaliacao, data_avaliacao, fk_pessoa_num_cadastro, fk_pessoa_num_cadastro_)
values
(1, '01/01/2021',1,10),
(2, '01/02/2021',2,9),
(3, '01/03/2021',3,8),
(4, '01/04/2021',4,7),
(5, '01/05/2021',5,6),
(1, '01/06/2021',6,5),
(2, '01/07/2021',7,4),
(3, '01/08/2021',8,3),
(4, '01/09/2021',9,2),
(5, '01/10/2021',10,1);
