
create database bd_exercicio;

use bd_exercicio;
create table `bd_exercicio`.`tb_funcionario`(
`func_codigo` int not null primary key,
`func_nome` varchar(60) null,
`func_cpf` varchar(11) null,
`forn_end` varchar(90) null,
`forn_salario` numeric,
`ger_depto_cod` int,
`trab_depto_cod` int,
`proj_cod` int
);
create table `bd_exercicio`.`tb_departamento`(
`depto_codigo` int not null primary key,
`depto_nome` varchar(60) null,
`local_cod` int
);
create table `bd_exercicio`.`tb_projeto`(
`proj_codigo` int not null primary key,
`proj_numero` int,
`depto_cod` int,
`local_cod` int
);
create table `bd_exercicio`.`tb_local`(
`local_codigo` int not null primary key,
`local_desc` varchar(60) null
);
alter table `bd_exercicio`.`tb_funcionario`
add index `fk_ger_depto_cod_idx` (`ger_depto_cod` asc);

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_ger_depto_cod`
foreign key (`ger_depto_cod`)
references `bd_exercicio`.`tb_funcionario` (`depto_codigo`);


alter table `bd_exercicio`.`tb_funcionario`
add index `fk_trab_depto_cod_idx` (`trab_depto_cod` asc);

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_trab_depto_cod`
foreign key (`trab_depto_cod`)
references `bd_exercicio`.`tb_departamento` (`depto_codigo`);



alter table `bd_exercicio`.`tb_funcionario`
add index `fk_proj_cod_idx` (`proj_cod` asc);

alter table `bd_exercicio`.`tb_funcionario`
add constraint `fk_proj_cod`
foreign key (`proj_cod`)
references `bd_exercicio`.`tb_projeto` (`proj_codigo`);



alter table `bd_exercicio`.`tb_departamento`
add index `fk_local_depto_cod_idx` (`local_cod` asc);

alter table `bd_exercicio`.`tb_departamento`
add constraint `fk_depto_local_cod`
foreign key (`local_cod`)
references `bd_exercicio`.`tb_local` (`local_codigo`);



alter table `bd_exercicio`.`tb_projeto`
add index `fk_local_proj_cod_idx` (`local_cod` asc);

alter table `bd_exercicio`.`tb_projeto`
add constraint `fk_proj_local_cod`
foreign key (`local_cod`)
references `bd_exercicio`.`tb_local` (`local_codigo`);
insert into `bd_exercicio`.`tb_local`(local_codigo, local_desc) values (1, 'Sao paulo');
insert into `bd_exercicio`.`tb_local`(local_codigo, local_desc) values (2, 'Minas Gerais');
insert into `bd_exercicio`.`tb_local`(local_codigo, local_desc) values (3, 'Rio de Janeiro');

insert into `bd_exercicio`.`tb_departamento`(depto_codigo, depto_nome, local_cod)
    values (1,'TI',1);
    
insert into `bd_exercicio`.`tb_departamento`(depto_codigo, depto_nome, local_cod)
    values (2,'RH',2);
    
insert into `bd_exercicio`.`tb_departamento`(depto_codigo, depto_nome, local_cod)
    values (3,'ADM',3);
    
insert into `bd_exercicio`.`tb_projeto`(proj_codigo, proj_numero, depto_cod, local_cod)
    values (1,11,1,1);
    
insert into `bd_exercicio`.`tb_projeto`(proj_codigo, proj_numero, depto_cod, local_cod)
    values (2,22,2,2);
    
    insert into `bd_exercicio`.`tb_projeto`(proj_codigo, proj_numero, depto_cod, local_cod)
    values (2,22,2,2);
    
insert into `bd_exercicio`.`tb_funcionario`(func_codigo, func_nome, func_cpf, forn_end, forn_salario, ger_depto_cod, trab_depto_cod, proj_cod)
    values (1, 'Jose Silva', '12312312344', 'Endereço', 2000, null, 1, 1);
    
insert into bd_exercicio.tb_funcionario(func_codigo, func_nome, func_cpf, forn_end, forn_salario, ger_depto_cod, trab_depto_cod, proj_cod)
values (2, 'Ana Silva', '12345678944', 'Endereço', 3000, 2, 2, 2);
select func_nome, depto_nome, proj_numero
from bd_exercicio.tb_funcionario
inner join bd_exercicio.tb_departamento on depto_codigo = trab_depto_cod
inner join bd_exercicio.tb_projeto on proj_codigo = proj_cod;