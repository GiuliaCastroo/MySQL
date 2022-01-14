                                            -- Atividade 02 --
	create database db_ec;
    use db_ec;
    
									 -- Criando a Tabela de Produtos--
		create table tb_produtos(
        id_p bigint auto_increment,
        nome varchar (50),
        preco decimal (10,2),
        cor varchar (50),
        estoque boolean,
        marca varchar(50),
        
        primary key (id_p)
        );
        
        
												-- Populando a tabela --
		insert into tb_produtos (nome, preco, cor, estoque , marca)
        values ("Camiseta", 22.00 ,"Preta", true , "Nike");
        insert into tb_produtos (nome, preco, cor, estoque , marca)
        values ("Air-Force", 500.99 ,"Branco", true , "Nike");
        insert into tb_produtos (nome, preco, cor, estoque , marca)
        values ("Cinto", 220.00 ,"Preto e Dourado", true , "Gucci");
        insert into tb_produtos (nome, preco, cor, estoque , marca)
        values ("Cinto", 600.00 ,"Amarela", true , "Off-White");
        insert into tb_produtos (nome, preco, cor, estoque , marca)
        values ("Air-Jordan", 699.00 ,"Preto e Branco", true , "Nike");
        insert into tb_produtos (nome, preco, cor, estoque , marca)
        values ("Camiseta", 300.00 ,"verde", true , "Lacoste");
        insert into tb_produtos (nome, preco, cor, estoque , marca)
        values ("Tênis", 298.00 ,"Branco", true , "Adidas");
        insert into tb_produtos (nome, preco, cor, estoque , marca)
        values ("Corta-vento", 229.00 ,"Azul-Marinho", true , "Oakley");
                                                
															
                                                -- Selecionando Tabela --
	select * from tb_produtos;

	select * from tb_produtos where preco > 500;
    
    select * from tb_produtos where preco < 500;
    
                                           -- Update na tabela --
	update tb_produtos set preco = 1000.00 where (id_p= 1);
                                                