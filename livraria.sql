/*
02/10/2019

Forward Engineer - Engenharia direta
Tradução dos modelos relacionais para AQL

Mini Mundo livraria
*/

-- DDL - Data Defintion Language
create database livraria;
use livraria;

create table edicao 
(
Isbn int(10) unsigned zerofill not null primary key ,
Ano_De_Publicacao year(4),
Quandiadade_De_Paginas int unsigned,
Quandiadade_Em_Estoque int not null,
Preco_De_Venda decimal(5,2) not null
);

create table editora
(
-- collate utf8mb4_bin = é para destinguir as letras Maiúsculas de Minúsculas
Nome_Da_Editora varchar(100) not null primary key collate utf8mb4_bin,
Razao_Social varchar(100) not null,
Endereco tinytext 
);

create table livro
(
Codigo_Do_Livro int unique not null primary key auto_increment,
Titulo_Livro varchar(100) unique null, 
Idioma varchar(100),
Ano_Lancamento_Livro year(4) not null
);

alter table livro change column Codigo_Do_Livro
Codigo_Do_Livro int not null auto_increment;

desc livro;

-- Comandos para mostarar as colunas da tabela 
desc livro;
show columns from editora;

# Criar e link a chave estrangeira nas tabelas

alter table edicao 
add column livro_Codigo int not null,
add foreign key(livro_Codigo) references livro(Codigo_Do_Livro);

alter table edicao
add column fk_nome_editora varchar(100) not null collate utf8mb4_bin,
add foreign key (fk_nome_editora) references editora(Nome_Da_Editora);

create table telefone
(
id_telefone int unsigned not null auto_increment,
numero varchar(16),
editora_nome varchar(100) not null collate utf8mb4_bin,
primary key(id_telefone),
foreign key (editora_nome) references editora(Nome_Da_Editora)
);

create table autor 
(
pseudonimo varchar(45) not null primary key,
nome_de_nascimento varchar(45) not null,
ano_de_nascimento year(4),
nota_bibliografica tinytext,
pais_de_origem varchar(45)
);

create table autor_escreve_livro
(
livro_codigo int unsigned not null primary key,
foreign key (livro_codigo)  references livro(Codigo_Do_Livro),
autor_pseudonimo varchar(45) not null primary key,
foreign key (autor_pseudonimo) references autor(pseudonimo)
);



