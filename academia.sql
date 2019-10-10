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
rg int not null,
titulacao tinytext not null);

insert into instrutor (rg, titulacao)
values
(123456, "Ginástica, Treinamento Desportivo"),
(456789, "Ginástica Laboral, Nutrição Esportiva"),
(789123, "Condicionamento Físico no Envelhecimento"),
(321654, "Ergonomia, Gestão do Esporte, Gestão Estratégica da Saúde"),
(789654, "Condicionamento Físico no Envelhecimento, Dança e Consciência Corporal, Docência Superior");


###########################################################################################################
-- Tabela Informações Comum

create table informacao_aluno
(nome varchar(50) not null,
data_de_nascimento date not null,
endereco tinytext not null,
fk_codigo_da_matricula int unsigned zerofill not null,
primary key(fk_codigo_da_matricula),
foreign key(fk_codigo_da_matricula) references aluno(codigo_da_matricula));

insert into informacao_aluno (nome, data_de_nascimento, endereco, fk_codigo_da_matricula)
values
("Maria Vermelha", '2000-02-13', "Rua Alameda, Bairro Cabeçudos, nº 89", 0000000001),
("Jose Amarelo", '1999-10-10', "Rua Amazona, Bairro Floresta, nº 75",0000000005 ),
("Beta Maria", '1998-07-20', "Rua Amapa, Bairro Cidade, nº 42", 0000000004),
("Ana Prado", '1997-02-28', "Rua Macapa, Bairro Pais Novo, nº 12",0000000002 ),
("Marta Bola", '1980-04-15', "Rua Tocantins, Bairro Violão, nº 56", 0000000003);

create table informacao_instrutor
(nome varchar(50) not null,
data_de_nascimento date not null,
endereco tinytext not null,
fk_codigo_do_instrutor int unsigned zerofill not null,
primary key(fk_codigo_do_instrutor),
foreign key(fk_codigo_do_instrutor) references instrutor(codigo_do_instrutor));

insert into informacao_instrutor (nome, data_de_nascimento, endereco, fk_codigo_do_instrutor)
values
("Anderson Pedra", '1985-08-13' "Rua Berilo, Bairro Pedra, nº 78", 0000000002),
( "Silva", '1982-11-19', "Rua Ametista, Bairro Precioso, nº 45",0000000003 ),
("Valter Roxo", '2001-09-08', "Rua Ouro, Bairro Valioso, nº 58",0000000001 ),
("Mateus Preto",'2002-12-06', "Rua Prata, Bairro Brilho, nº 269", 0000000004),
("Gilberto Verde", '1990-10-13', "Rua Ferro, Bairro Ferrugem, nº 36", 0000000005);


###########################################################################################################
-- Tabela atividade

create table atividade
(codigo_da_atividade int primary key not null);

insert into atividade values
(369),
(741),
(456),
(852),
(963),
(753),
(325),
(951);

###########################################################################################################
-- Tabela turma

create table turma 
(codigo_da_turma int unsigned zerofill not null,
horario time not null,
quantidade_de_aluno int not null,
duracao time not null,
data_inicial date not null,
data_final date not null,
fk_codigo_da_atividade int not null,
fk_codigo_do_instrutor int unsigned zerofill not null,
primary key (codigo_da_turma,fk_codigo_da_atividade, fk_codigo_do_instrutor),
foreign key(fk_codigo_da_atividade) references atividade(codigo_da_atividade),
foreign key(fk_codigo_do_instrutor) references instrutor(codigo_do_instrutor)
);

insert into turma values 
(10, '19:00',27, '02:00', '2019-10-05','2019-12-10', 325, 0000000004 ),
(15, '18:00',18, '01:00', '2019-11-23','2019-10-12', 456, 0000000001),
(20, '21:00',16, '01:30', '2019-12-19','2019-12-19', 741, 0000000005),
(25, '17:00',22, '01:00', '2019-10-20','2019-11-13', 753, 0000000003),
(30, '22:00',30, '02:00', '2019-11-06','2019-10-26', 852, 0000000002);


select * from turma;
select * from instrutor;