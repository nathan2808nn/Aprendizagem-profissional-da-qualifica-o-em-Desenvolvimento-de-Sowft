/* Implementação de Banco de dados usando MySQL */
/*01. Criando Arquivo/Banco de Dados*/
create database empresa;
/*02.criando arquivo*/
use empresa;
/*03.criando tabela*/
create table fornecedor(
	codigo varchar(4),
	nome varchar (100),
    telefone varchar (12)
);
/*04.detalha/exibe a estrutura da tabela*/
describe fornecedor;
/*05.consulta todos os registros da tabela*/
select * from fornecedor