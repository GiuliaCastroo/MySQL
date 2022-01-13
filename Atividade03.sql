												-- Atividade 03 --
	
    create database db_escola;
    use db_escola;                                          
    
											-- Criando a Tabela de Produtos--
	
			create table tb_escola(
			id_esc bigint auto_increment,
			nome varchar (50),
			sobrenome varchar (50),
            nota decimal (10,02),
            sala bigint,
            idade bigint,
            
            primary key (id_esc)
            );
            
            
								        -- Populando a tabela --
                                        
		insert into tb_escola (nome, sobrenome , nota, sala, idade)
		values ("Hanna", "Montanna", 9.0 , 2 , 12 );
		insert into tb_escola (nome, sobrenome , nota, sala, idade)
		values ("Wiiliam", "Rafael", 9.5 , 1 , 11 );
		insert into tb_escola (nome, sobrenome , nota, sala, idade)
		values ("Julio", "Cáligula", 5.0 , 3 , 12 );
		insert into tb_escola (nome, sobrenome , nota, sala, idade)
		values ("Julio", "César", 8.5 , 1 , 11 );
		insert into tb_escola (nome, sobrenome , nota, sala, idade)
		values ("Marco", "Pollo", 8.0 , 3 , 12 );
		insert into tb_escola (nome, sobrenome , nota, sala, idade)
		values ("Venti", "Montreal", 6.0 , 3 , 13 );
		insert into tb_escola (nome, sobrenome , nota, sala, idade)
		values ("Jaskier", "Enn", 3.0 , 1 , 11 );
		insert into tb_escola (nome, sobrenome , nota, sala, idade)
		values ("Yennefer", "Vengerberg", 10.0 , 3 , 13 );
                             
                                      
                                      			
                                                -- Selecionando Tabela --
	select * from tb_escola;

	select * from tb_escola where nota > 7;
    
    select * from tb_escola where nota < 7;
    
                                           -- Update na tabela --
	update tb_escola set nota = 10 where (id_esc= 2);
	