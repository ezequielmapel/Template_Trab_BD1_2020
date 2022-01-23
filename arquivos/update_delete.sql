--UPDATES

update contato
set desc_contato = 'alvaroMartins@msn.com.br'
where cod_contato = 4

update endereco 
set nome_logradouro = 'Rua Carlos A. Rosa'
where cod_endereco = 1

update especialidade 
set nome = 'Especialista Geral'
where cod_especialiade = 5


--DELETES

delete from contato where cod_contato = 4

delete from pessoa_endereco where fk_pessoa_num_cadastro = 1 and fk_endereco_cod_endereco = 1

delete from montador_especialidade where fk_especialidade_cod_especialiade = 1 and fk_montador_fk_pessoa_num_cadastro = 3
