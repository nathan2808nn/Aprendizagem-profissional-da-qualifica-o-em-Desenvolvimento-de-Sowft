/*implementação de Banco de Dados com MySQL*/
/*01.Criando Auivo_Bancos De Dados*/
create database `bd_caso_estudo_vendas`
/*02.criando tabela*/
create table`bd_caso_estudo_vendas`.`tb_forn`(
`forn_cod` int not null,
`forn_nome` varchar(60) null,
`forn_tel` varchar(13)null,
primary key(`forn_cod`)
);
