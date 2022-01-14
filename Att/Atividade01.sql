										  ---   Atividade 01 ---	
                                          -- Criando / Usando DB --
create database db_RH;
use db_RH;

									 -- Criando a Tabela de Funcionarios--
create table tb_fun(
	id_fun bigint auto_increment,
    nome varchar (20) not null,
    sobrenome varchar (40) not null,
    salario decimal (10,2),
	cargo varchar (50),
	idade bigint,

	primary key (id_fun)
);
		    
                                            -- Populando a tabela --

	insert into tb_fun (nome, sobrenome , salario , cargo , idade)
	values ("Castiel" , "Veilmont", 920.00, "Estagiario" , 18);
	insert into tb_fun (nome, sobrenome , salario , cargo , idade)
	values ("Nathaniel" , "Decour", 2500.00, "Engenheiro jr." , 22);                           
	insert into tb_fun (nome, sobrenome , salario , cargo , idade)
	values ("Arthur" , "Phanthomhive", 9000.00, "Engenheiro Pleno" , 27);          
    insert into tb_fun (nome, sobrenome , salario , cargo , idade)
	values ("Aerion" , "Velmorty", 3000.00, "Residente" , 24);
    insert into tb_fun (nome, sobrenome , salario , cargo , idade)
	values ("Serena" , "Tulle", 1200.00, "Estagiaria" , 19);
    

											-- Selecionando Tabela --
	select * from tb_fun;

	select * from tb_fun where salario > 2000.00;

	select * from tb_fun where salario < 2000.00;


										-- Update na tabela --
	update tb_fun set salario = 1000.00 where (id_fun= 1);