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

insert into area_de_pesquisa (nome, descrição, indice_relevancia_economica)
values 
("SÉRGIO EITI PEREIRA SUZUKI", "No Brasil, vem crescendo cada vez mais o número de pessoas idosas, se
tornando muito semelhante aos países desenvolvidos decorrente do aumento da
expectativa de vida da população. Já é fato que, a medida que a idade avança,
maior é a probabilidade de doenças neurodegenerativas, sendo as mais
prevalentes Alzheimer e Parkinson, estas caracterizadas pela perda progressiva de
neurônios com alterações secundárias associadas nos tratos de substância branca,
causando deterioração irreversível no tecido nervoso. O presente trabalho surgiu
através de estudos bibliográficos e tem como objetivo juntar os conhecimentos de
Engenharia Elétrica com o conhecimento da saúde e oferecer um tratamento
acessível, não invasivo e eficiente a aplicação do laser de baixa potência no auxilio
ao paciente portador. Incluindo um protótipo de capacete para a aplicação do laser,
realizados no laboratório da UFPR.", 2000.00),
("LUCAS DE OLIVEIRA TRINDADE", "A conectividade já é realidade na sociedade contemporânea. A forma como se
trabalha, se locomove e se comunica está cada vez mais conectada. Na indústria
não poderia ser diferente. O conceito de fábricas inteligentes e conectadas tem sido
tema cada vez mais recorrente nos últimos anos. Vive-se, atualmente, a quarta
revolução industrial, também conhecida como “Indústria 4.0”, que tem como objetivo
conectar toda cadeia produtiva a fim de reduzir desperdícios, otimizar processos e
auxiliar tomada de decisões. Sabe-se, porém, que a indústria brasileira ainda é
composta por uma base industrial de máquinas antigas, com idade média de 17
anos. Dessa forma entende-se que, a conexão desses equipamentos é uma tarefa
complexa, uma vez que quando construídas não existia demandas para conexão e
coleta de dados. Esse trabalho apresenta um sistema conector de máquinas (SCM),
capaz de conectar, coletar, armazenar e transmitir variáveis de máquinas CNC para
um ambiente de Big Data. A arquitetura do SCM atende os diversos protocolos de
comunicação existentes para conexão com máquinas CNC. Uma versão de teste foi
desenvolvida e implementada em um estudo de caso, a fim de validar os conceitos
da arquitetura do SCM. Os resultados obtidos foram satisfatórios. As principais
variáveis, relativas ao funcionamento da máquina, foram coletadas, enviadas para
um ambiente de Big Data e monitoradas. Ao final desse trabalho, conclui-se que
grande parte das máquinas utilizadas na indústria podem ser conectadas, através do
conceito do SCM, sendo necessário apenas o desenvolvimento de um novo
conector para o novo protocolo de comunicação a ser utilizado.", 5000.00),
("FERNANDO MIRA MACHUCA","Com a finalidade de avaliar o desempenho de sistemas de comunicação sem fio na faixa
de ondas milimétricas utilizando o software de simulação NYUSIM, foram desenvolvidos
dois métodos para, a partir dos valores de saída simulados pelo software NYUSIM, obter
a curva de probabilidade de outage em função da relação sinal ruído média.", 1599.99),
("VICTOR SOARES SISMOTTO", "Sobre sistemas elétricos de distribuição de energia elétrica, existe um
desenvolvimento contínuo de tecnologias novas, aprimoramentos de operação do
sistema e novas ferramentas para buscar uma melhor eficiência para prover energia
elétrica e sua comercialização através de redes inteligentes. O trabalho proposto
possui um modelo de um alimentador em um sistema de 13 barras de energia
simulado em um software chamado GridLAB-D. O desenvolvimento do trabalho feito
gira em torno da simulação de uma rede elétrica inteligente real com aplicação de
sistemas de armazenamento de energia para fins comerciais de transação de
energia elétrica. A proposta é a avaliação de como um sistema de comercialização
de energia feita de forma livre pode ser registrada e contabilizada com o auxílio do
blockchain. O trabalho apresentou cenários de simulação que são comparados entre
si para mostrar os benefícios da inserção de baterias na rede para comercialização
de energia e posteriormente, mostrou que o blockchain cria um cenário de uma
energia mais barata que não registrará momentos que a qualidade da energia
transmitida pelo sistema, com uma eficiência de armazenamento dos pagamentos
que ocorreram de forma transparente. Com as análises obtidas nas simulações foi
possível verificar que o sistema realizado para a comercialização foi implementado
com o uso do blockchain e adaptado conforme as limitações do software. Verificouse também que os impactos que as baterias poderiam causar de forma negativa na
operação rede, principalmente em momentos de carga e descarga. Foram sugeridas
ações para melhorar assim a qualidade de transmissão da energia, tendo em vista
do resultado positivo na parte comercial e de armazenamento descentralizado dos
dados.
", 369.85),
("LUISA GASPARI DIAS", "DIAS, Luisa. CONTROLE DA TENSAO EL ˜ ETRICA DO BARRAMENTO CC DE UMA MI- ´
CRORREDE. 2019. 74 f. Trabalho de Conclus˜ao de Curso – , Universidade Federal do Paran´a.
CURITIBA, 2019.
O presente trabalho avaliou por meio de simula¸c˜oes no MATLAB/SIMULINK a opera¸c˜ao de
um barramento CC de 725V da microrrede que esta em fase de implementa¸c˜ao no pr´edio do
Departamento de Engenharia El´etrica (DELT) na Universidade Federal do Paran´a (UFPR).
Este barramento CC ´e composto por um conversor CC/CC de 30kW e, conectado a este, uma
bateria de n´ıquel-s´odio com capacidade de 45kWh. Para efeito de simula¸c˜ao, acrescentou `a
microrrede CC, pain´eis fotovolt´aicos de 10,171kWp, um inversor com uma fonte de tens˜ao
para simular uma fonte CA e cargas ativas para representar os equipamentos conectados ao
barramento CC. O controle dessa microrrede CC se d´a pelo controle Droop que, a partir
de uma tens˜ao de referˆencia, um K e a tens˜ao CC do barramento CC, regula a corrente de
referˆencia utilizada pelo compensador de corrente dos conversores est´aticos (conversor CC/CC
e o inversor CC/CA) para ajustar a tens˜ao da microrrede CC. Realizou trˆes ensaios para analisar
o comportamento da microrrede CC diante de diferentes situa¸c˜oes de opera¸c˜ao. O primeiro
ensaio realizado foi para verificar a distribui¸c˜ao da potˆencia no conversor e inversor. Para tanto,
fez-se o circuito sem carga conectada ao barramento CC variando os valores de K. A partir dos
resultados obtidos, verificou que a distribui¸c˜ao da potˆencia no conversor e inversor ´e atendida
mesmo para diferentes K e, quanto maior a soma dos K do inversor e do conversor, menor
era oscila¸c˜ao do barramento CC. O seguinte ensaio teve como objetivo verificar a atua¸c˜ao do
controle Droop na carga e descarga da bateria. Realizou as simula¸c˜oes com diferentes tens˜oes
de referˆencia para o inversor e o conversor da microrrede CC. Ap´os o ensaio, constatou que
controle Droop atuou devidamente na carga e descarga da bateria, e a varia¸c˜ao do K e das
tens˜oes de referˆencia n˜ao comprometeram a atua¸c˜ao do controle na microrrede CC. Por fim,
para verificar a dinˆamica da carga de forma adequada, fez os ensaios com uma carga vari´avel
conectada ao barramento cc da microrrede CC. Os resultados obtidos oara o inversor e o
conversor atenderam a dinˆamica da carga de forma adequada e, mesmo com diferentes K, a
dinˆamica da microrrede CC n˜ao foi comprometida.
", 7439.45);


###########################################################################################################################
-- Cração da tabela informações comum

create table informacao_comum
(nome varchar(50) not null,
rg int unsigned zerofill not null unique,
cpf varchar(45) primary key not null,
data_de_nascimento varchar(45),
sexo varchar(45) not null,
grau_cientifico varchar(50));

insert into informacao_comum values 
-- pesquisadores
("SÉRGIO EITI PEREIRA SUZUKI", 236598, "456.632.658-63", "2001/02/12", "Masculino", "Ensino Superior"),
("LUCAS DE OLIVEIRA TRINDADE", 458963, "248.678.123-78", "2000/09/10", "Masculino", "Doutorado"),
("FERNANDO MIRA MACHUCA", 789632, "324.456.159-32", "2001/12/07", "Masculino", "Mestrado"),
("VICTOR SOARES SISMOTTO", 235689, "125.753.951-56", "2000/01/15", "Masculino", "Ensino Superior"),
("LUISA GASPARI DIAS", 125987, "951.753.456-95", "2001/06/16", "Feminino", "Mestrado"),
-- Avaliadores
("Edson José Pacheco", 4569873, "236.987.412-36", "2000/01/03", "Masculino", "Mestrado"),
("Alexandre Rasi Aoki", 852369, "789.963.321-47", "2001/01/19", "Masculino", "Doutorado"),
("João Américo Vilela Junior", 456133, "246.759.571-59", "2000/08/18", "Masculino", "Doutorado");


###########################################################################################################################
-- Criação da tabela projeto

create table projeto 
(codigo_do_projeto_interno int unsigned zerofill auto_increment not null,
titulo varchar(100) not null unique,
duracao int unsigned,
instituicao_onde_sera_realizado varchar(100) not null,
fk_codigo_area_de_pesquisa int unsigned zerofill not null,
primary key (codigo_do_projeto_interno, fk_codigo_area_de_pesquisa),
foreign key (fk_codigo_area_de_pesquisa) references area_de_pesquisa(codigo));

insert into projeto (titulo, duracao, instituicao_onde_sera_realizado, fk_codigo_area_de_pesquisa)
values
("CONTROLE DA TENSÃO ELÉTRICA DO BARRAMENTO CC DE UMA MICRORREDE", 3, "UNIVERSIDADE FEDERAL DO PARANÁ", 0000000005),
("AVALIAÇÃO DE DESEMPENHO DE SISTEMAS DE COMUNICAÇÃO SEM FIO NA FAIXA DE ONDAS MILIMÉTRICAS", 3, "UNIVERSIDADE FEDERAL DO PARANÁ", 0000000003),
("SISTEMA CONECTOR DE MÁQUINAS PARA USO EM PROJETOS DE INDÚSTRIA 4.0", 1, "UNIVERSIDADE FEDERAL DO PARANÁ", 0000000002),
("TERAPIA TRANSCRANIAL DE LASER DE NÍVEL BAIXO PARA NEUROREABILITAÇÃO", 2, "UNIVERSIDADE FEDERAL DO PARANÁ", 0000000001),
("DESENVOLVIMENTO DE BLOCKCHAIN PARA ARMAZENAMENTO DE ENERGIA EM BATERIAS EM REDES ATIVAS DE DISTRIBUIÇÃO", 1, "UNIVERSIDADE FEDERAL DO PARANÁ",0000000004);
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

insert into avaliador (fk_codigo_area_de_pesquisa, fk_cpf)
values
(0000000003, "236.987.412-36"),
(0000000001, "789.963.321-47"),
(0000000002, "246.759.571-59");


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

insert into pesquisador (instituicao_onde_esta_titulo, fk_cpf, fk_codigo_do_projeto_interno)
values
("UNIVERSIDADE FEDERAL DO PARANÁ", "125.753.951-56", 0000000004),
("UNIVERSIDADE FEDERAL DE FORTALEZA ", "236.987.412-36", 0000000002),
("UNIVERSIDADE FEDERAL DO AMAZONAS", "246.759.571-59", 0000000005),
("UNIVERSIDADE FEDERAL DE SANTA CATARINA", "248.678.123-78", 0000000001),
("UNIVERSIDADE FEDERAL DE RONDÔNIA", "324.456.159-32", 0000000003);

