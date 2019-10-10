/*
03/10/2019

Forward Engineer - Engenharia direta
Tradução dos modelos relacionais para AQL

Mini Mundo livraria
*/

-- DDL - Data Defintion Language
create database livraria;
use livraria;
###########################################################################################################################################
create table edicao 
(
Isbn int(10) unsigned zerofill not null primary key ,
Ano_De_Publicacao year(4),
Quandiadade_De_Paginas int unsigned,
Quandiadade_Em_Estoque int not null,
Preco_De_Venda decimal(5,2) not null
);

insert into edicao (Isbn ,Ano_De_Publicacao, Quandiadade_De_Paginas, Quandiadade_Em_Estoque, Preco_De_Venda, fk_nome_editora, livro_Codigo)
values 
(7894512, 1990, 200, 25, 79.69, "Alemã", 1),
(2565845, 2000, 180, 90, 100.78, "Actual", 2),
(4644368, 2015, 50, 180, 56.00, "AD Santos" , 3),
(383653, 2017, 75, 300, 35.85, "BG books", 4),
(859632, 1989, 500, 90, 250, "Cultura Cristã AM", 5);


###########################################################################################################################################
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

###########################################################################################################################################
create table livro
(
Codigo_Do_Livro int not null primary key auto_increment,
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


/*update livro set Ano_Lancamento_Livro = 1910 where Codigo_Do_Livro = 1;

-- Comando para alterar uma coluna da tabela
alter table livro change column Codigo_Do_Livro
Codigo_Do_Livro int not null auto_increment;

-- Comandos para mostarar as colunas da tabela 
desc livro;
show columns from editora;	
*/
		
# Criar e link a chave estrangeira nas tabelas
-- link entre a tabela edição e a tabela livro
alter table edicao 
add column livro_Codigo int not null,
add foreign key(livro_Codigo) references livro(Codigo_Do_Livro);
-- link entre a tabela edição e a tabela editora
alter table edicao
add column fk_nome_editora varchar(100) not null collate utf8mb4_bin,
add foreign key (fk_nome_editora) references editora(Nome_Da_Editora);
###########################################################################################################################################
create table telefone
(
id_telefone int unsigned not null auto_increment,
numero varchar(16),
editora_nome varchar(100) not null collate utf8mb4_bin,
primary key(id_telefone),
foreign key (editora_nome) references editora(Nome_Da_Editora)
);

insert into telefone (editora_nome, numero)
values 
("Alemã", "7895-6325"),
("Actual", "7956-3262"),
("AD Santos", "4561-5637"),
("BG books", "4569-7845"),
("Cultura Cristã AM", "1326-4529");

/*
PARA ATUALIZAR DADOS ESPECÍFICOS NA TABELA
update telefone set numero = "7895-6325" where id_telefone = 1;
update telefone set numero = "7956-3262" where id_telefone = 2;
update telefone set numero = "4561-5637" where id_telefone = 3;
update telefone set numero = "4569-7845" where id_telefone = 4;
update telefone set numero = "1326-4529" where id_telefone = 5;
*/

######################################################################################################################TABELA AUTOR
create table autor 
(
pseudonimo varchar(45) not null primary key,
nome_de_nascimento varchar(45) not null,
ano_de_nascimento year(4),
nota_bibliografica tinytext,
pais_de_origem varchar(45)
);

insert into autor values
("Amaraldo de sá", "Amaral", 1950, "As Referências Bibliográficas conforme Normas ABNT para Tese, TCC, Monografia, Artigo Científico,
 qualquer trabalho acadêmico precisam seguir um padrão único para que seja facilitado futuras pesquisas.", "Brasil"),
("João de Barro", "João", 1960, "Normas da ABNT trazem uma exigência um tanto complexa quanto às referências bibliográficas.
 A dificuldade que muitas vezes ocorre em aplicá-las é devido ao fato de existirem formas específicas para cada tipo de referência
 feita, seja ela de Livros ou de Sites.", "Espanha"),
("Marta Maira", "Marta", 1970, " Nosso objetivo é fazer com que você entenda os pontos principais destas normas e passe a aplicá-las
 com facilidade. Ao final terá compreendido como fazer o registro das produções que embasaram seu trabalho.", "Holanda"),
("Garara", "Gabriel", 1980, "No artigo Normas ABNT  você teve a oportunidade de conhecer todas as partes que precisa elaborar. 
Agora, resta descobrir como citar ou fazer referências bibliográficas obras e autores pesquisados.", "Portugula"),
("Jacinto de Lapís", "Jasinto", 1990, "Referências Bibliográficas é uma seção considerada como parte dos Elementos pós-textuais,
 em um trabalho acadêmico.", "Brasil"),
("Parananauá", "Pará", 1940, "rata-se de apontar tudo que foi consultado. Saiba que não é proibido investigar, pesquisar e tomar 
como base um trabalho já pronto e de autoria reconhecida. É natural que busquemos embasar nosso projeto.", "Brasil"),
("Bolota", "Batata", 1930, "Referenciar e citar não consiste em copiar o pensamento alheio, mas sim em dar valor ao 
conhecimento científico já existente. ", "Brasil");
select * from autor;
 
###########################################################################################################################################
create table autor_escreve_livro
(
livro_codigo int not null,
autor_pseudonimo varchar(45) not null ,
-- chave primária dupla
primary key (livro_codigo,autor_pseudonimo),
foreign key (livro_codigo) references livro(Codigo_Do_Livro),
foreign key (autor_pseudonimo) references autor(pseudonimo)
);

insert into autor_escreve_livro values
(1, "Amaraldo de sá"),
(2, "João de Barro"),
(3, "Marta Maira"),
(4, "Garara"),
(5, "Jacinto de Lapís"),
(1, "Parananauá"),
(2, "Bolota");

# Mostre quantos autores há na tabela:
select count(pseudonimo) as "Quantidade de autores" 
from autor;


# Mostre quantos autore hà, por pais:
select count(pseudonimo) as "Quantidade de autores" 
from autor
group by pais_de_origem;

# Juntando dois ou mais selects de mesma estrutura  
select pais_de_origem,count(pseudonimo) as "Quantidade de autores" 
from autor
group by pais_de_origem
union -- comando que faz a união de dois ou mais select.
select 'Total',count(pseudonimo) as "Quantidade de autores" 
from autor;

# Mostre o nome dos países, sem repetição
select distinct pais_de_origem as Países from autor;

# Mostre quantos países a na tabela, sem repetição.
select distinct count(distinct pais_de_origem) as Países from autor;

# Popular a tabela autor descreve livro

desc autor_escreve_livro;
select * from autor;
select * from livro;

# Faça uma busca e mostre o nome completo do autor 
# o nome do livro e o país do autor, idioma e ano de lançamento do livro
# nesta ordem.

select nome_de_nascimento, Titulo_Livro, pais_de_origem, Idioma, Ano_Lancamento_Livro
from autor_escreve_livro
inner join autor on autor_pseudonimo = pseudonimo 
inner join livro on livro_codigo = Codigo_Do_Livro ;

desc edicao;
select * from livro; 
select * from editora;
insert into edicao values
(123654, 2010, 323, 20, 150.00, 2, 'AD Santos');