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
-- Cração da tabela informações comum

create table informacao_comum
(nome varchar(50) not null,
rg int unsigned zerofill not null unique,
cpf varchar(45) primary key not null,
data_de_nascimento date,
sexo varchar(45) not null,
grau_cientifico varchar(50));

###########################################################################################################################
-- Criação da tabela projeto

create table projeto 
(codigo_do_projeto_interno int unsigned zerofill auto_increment not null,
titulo varchar(100) not null unique,
duracai int unsigned,
instituicao_onde_sera_realizado varchar(100) not null,
fk_codigo_area_de_pesquisa int unsigned zerofill not null,
primary key (codigo_do_projeto_interno, fk_codigo_area_de_pesquisa),
foreign key (fk_codigo_area_de_pesquisa) references area_de_pesquisa(codigo));

###########################################################################################################################
-- Criação da tabela avaliador 

create table avaliador 
(id_avaliador int unsigned zerofill auto_increment not null,
fk_codigo_area_de_pesquisa int unsigned zerofill not null,
fk_cpf varchar(45) not null,
primary key (id_avaliador, fk_codigo_area_de_pesquisa,fk_cpf ),
foreign key (fk_codigo_area_de_pesquisa) references area_de_pesquisa(codigo),
foreign key (fk_cpf) references informacao_comum(cpf)
);

###########################################################################################################################
-- Criação da tabela pesquisador 

create table pesquisador
(id_pesquisador int unsigned zerofill auto_increment not null,
instituicao_onde_esta_titulo varchar(50) not null,
fk_cpf varchar(45) not null,
fk_codigo_do_projeto_interno int unsigned zerofill  not null,
primary key(id_pesquisador, fk_cpf, fk_codigo_do_projeto_interno),
foreign key (fk_cpf) references informacao_comum(cpf),
foreign key (fk_codigo_do_projeto_interno) references projeto(codigo_do_projeto_interno)
);
