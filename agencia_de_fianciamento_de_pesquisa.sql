-- Criação do Banco de dados 
create database agencia_de_fianciamento_de_pesquisa;
use agencia_de_fianciamento_de_pesquisa;

###########################################################################################################################
-- Criação da tabela área de pesquisa 

create table area_de_pesquisa
(codigo int unsigned zerofill primary key auto_increment not null,
nome varchar(100),
descrição mediumtext not null,
indice_relevancia_economica decimal not null);

###########################################################################################################################
-- Criação da tabela projeto

create table projeto 
(codigo_do_projeto_interno int unsigned zerofill primary key  auto_increment not null,
titulo varchar(100) not null unique,
duracai int unsigned,
instituicao_onde_sera_realizado varchar(100) not null);