create table`bd_caso_estudo_vendas`.`tb_depto`(
`depto_cod`int not null primary key,
`depto_desc` varchar(60) null
);
create table`bd_caso_estudo_vendas`.`tb_func`(
`fun_cod` int not null primary key,
`func_depto` int not null,
`func_nome` varchar(60)null,
`func_cpf` varchar(11)null
);
create table `bd_caso_estudo_vendas`.`tb_compra`(
	`compra_cod` int not null primary key,
	 `compra_cli_cod` int not null,
     `compra_func_cod` int not null, 
	`compra_qtd_cod` int not null
);
create table `bd_caso_estudo_vendas`.`tb_cli`(
	`cli_cod` int not null primary key,
	`cli_nome` varchar (60) not null,
    `cli_cpf` varchar (11) not null,
     `cli_end_rua` varchar (40) not null,
     `cli_end_num` varchar (5) not null,
     `cli_end_bairro` varchar (30) not null,
     `cli_end_cep` varchar (9) not null
     );
     create table `bd_caso_estudo_vendas`.`tb_prod_comp`(
	`prod_cod` int not null,
    `compra_cod` int not null
);