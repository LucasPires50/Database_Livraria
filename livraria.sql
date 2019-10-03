/*
03/10/2019

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

insert into edicao (Isbn, Ano_De_Publicacao, Quandiadade_De_Paginas, Quandiadade_Em_Estoque, Preco_De_Venda, fk_nome_editora, livro_Codigo)
values 
(789-45-12, 1990, 200, 25, 79.69, "Alemã", 1),
(45698-45, 2000, 180, 90, 100.78, "Actual", 2),
(46-44368, 2015, 50, 180, 56.00, "AD Santos" , 3),
(7853-653, 2017, 75, 300, 35.85, "BG books", 4),
(85-96-32, 1989, 500, 90, 250, "Cultura Cristã AM", 5);
select * from edicao;edicao

create table editora
(
-- collate utf8mb4_bin = é para destinguir as letras Maiúsculas de Minúsculas
Nome_Da_Editora varchar(100) not null primary key collate utf8mb4_bin,
Razao_Social varchar(100) not null,
Endereco tinytext 
);

insert into editora values 
("Alemã","Alemã Branco", "Rua Alameda, nº30, bairro Luiza, São Paulo-SP"),
("Actual", "Actual Marte", "Rua Ângelo Romano, 186 - Presidente Dutra"),
("AD Santos", "Adinominal Santos", "Rua Itu, 1.120 - Vila Carvalho"),
("BG books", "Big books", " Pedro Colino, nº 271 - Res. Léo Gomes de Moraes"),
("Cultura Cristã AM", "Cultura Cristã Amém", "Rua Cruz e Souza, 3.100 - Parque Ribeirão Preto");

create table livro
(
Codigo_Do_Livro int unique not null primary key auto_increment,
Titulo_Livro varchar(100) unique null, 
Idioma varchar(100),
Ano_Lancamento_Livro year(4) not null
);

insert into livro (Titulo_Livro, Idioma, Ano_Lancamento_Livro)
values 
( "Mais esperto que o diabo", "Português", 1910),
( "As aventuras de Mike", "Francês", 1994),
( "Seja foda!", "Espanhol", 2015),
( "Mindset", "Português", 2019),
( "Se Foda", "Português", 2017);

update livro set Ano_Lancamento_Livro = 1910 where Codigo_Do_Livro = 1;

-- Comando para alterar uma coluna da tabela
alter table livro change column Codigo_Do_Livro
Codigo_Do_Livro int not null auto_increment;

-- Comandos para mostarar as colunas da tabela 
desc livro;
show columns from editora;

# Criar e link a chave estrangeira nas tabelas
-- link entre a tabela edição e a tabela livro
alter table edicao 
add column livro_Codigo int not null,
add foreign key(livro_Codigo) references livro(Codigo_Do_Livro);
-- link entre a tabela edição e a tabela editora
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
livro_codigo int not null,
autor_pseudonimo varchar(45) not null ,
-- chave primária dupla
primary key (livro_codigo,autor_pseudonimo),
foreign key (livro_codigo) references livro(Codigo_Do_Livro),
foreign key (autor_pseudonimo) references autor(pseudonimo)
);



