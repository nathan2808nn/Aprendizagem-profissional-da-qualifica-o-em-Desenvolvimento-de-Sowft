/* Implementação de Banco de dados usando MySQL */
/*01. Criando Arquivo/Banco de Dados*/
create database funcionario;
/*02.criando arquivo*/
use funcionario;
/*03.criando tabela*/
create table funcionario(
	codigo varchar(4),
    nome varchar(50),
    telefone varchar(12)
);
/*04.detalha/exibe a estrutura da tabela*/
describe funcionario;
/*05.consulta todos os registros da tabela*/
select * from funcionario