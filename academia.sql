-- Criação do banco de dados academia 

Create database academia;
use academia;

###########################################################################################################
-- Tabela aluno

create table aluno
(codigo_da_matricula int unsigned zerofill primary key auto_increment not null,
data_da_matricula date not null,
altura int unsigned not null,
peso int unsigned not null, 
massa_corporal double unsigned not null);

insert into aluno (data_da_matricula, altura, peso, massa_corporal)
values
(2019/12/09, 178, 100, 31.6),
(2019/03/08, 160, 50, 19.5),
(2019/04/09, 159, 65, 25.7),
(2019/05/08, 136, 45, 23.4),
(2019/06/07, 192, 115, 31.2);

###########################################################################################################
-- Tabela Instrutor 

create table instrutor 
(codigo_do_instrutor int unsigned zerofill primary key auto_increment not null,
rg tinytext not null,
titulacao int not null);

###########################################################################################################
-- Tabela Informações Comum

create table informacao_comum
(nome varchar(50) not null,
data_de_nascimento date not null,
endereco tinytext not null,
fk_codigo_da_matricula int unsigned zerofill not null,
fk_codigo_do_instrutor int unsigned zerofill not null,
primary key(fk_codigo_da_matricula, fk_codigo_do_instrutor),
foreign key(fk_codigo_da_matricula) references aluno(codigo_da_matricula),
foreign key(fk_codigo_do_instrutor) references instrutor(codigo_do_instrutor));

###########################################################################################################
-- Tabela atividade

create table atividade
(codigo_da_atividade int primary key not null);

###########################################################################################################
-- Tabela turma

create table turma 
(codigo_da_turma int unsigned zerofill not null,
horario datetime not null,
quantidade_de_aluno int not null,
duracao datetime not null,
data_inicial date not null,
data_final date not null,
fk_codigo_da_atividade int not null,
fk_codigo_do_instrutor int unsigned zerofill not null,
primary key (codigo_da_turma,fk_codigo_da_atividade, fk_codigo_do_instrutor),
foreign key(fk_codigo_da_atividade) references atividade(codigo_da_atividade),
foreign key(fk_codigo_do_instrutor) references instrutor(codigo_do_instrutor)
);
