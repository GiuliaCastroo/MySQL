											      -- Welcome to the La Plaza Pizzaria --
	
    create database db_pizzaria_legal;
	use db_pizzaria_legal;
    
    -- Tabela Categoria --
    
    create table tb_categoria(
	id bigint auto_increment,
    tamanho enum ("Pequena", "Média", "Grande"),
    borda enum ("Recheada", "Sem recheio", "Sem Bordas"),
    Tipo enum ("Especial", "Tradicional"),
    id_pizza bigint,
     
    Primary key (id)
    );
    

    -- Tabela Pizza --
    create table tb_pizza(
	id_pizza bigint auto_increment,
    sabor varchar(50) not null,
    preco decimal(10,2) check (preco > 0),
    frete decimal (10,2),
    Entrega_ou_Retirada boolean,       -- Entrega = True , Retirada = False --
	id_categoria bigint,
	primary key (id_pizza),
    foreign key(id_categoria) references tb_categoria(id)
);

		-- Populando tabelas :D ---
		insert into tb_categoria (tamanho , borda , tipo)
        values ("Média", "Sem Bordas", "Tradicional");
        insert into tb_categoria (tamanho , borda , tipo)
        values ("Pequena", "Recheada", "Especial");
        insert into tb_categoria (tamanho , borda , tipo)
        values ("Grande", "Sem recheio", "Especial");
        insert into tb_categoria (tamanho , borda , tipo)
        values ("Grande", "Sem Bordas", "Especial");
        insert into tb_categoria (tamanho , borda , tipo)
        values ("Média", "Recheada", "Tradicional");


		-- pizza --
        insert into  tb_pizza (sabor, preco , frete ,  Entrega_ou_Retirada)
		values ("Cheedar" , 25.56, 3.0, true );
        insert into  tb_pizza (sabor, preco , frete ,  Entrega_ou_Retirada)
		values ("Peperoni" , 28.56, 5.0, true );
        insert into  tb_pizza (sabor, preco , frete ,  Entrega_ou_Retirada)
		values ("Catupiry" , 22.56, 6.0, true );
        insert into  tb_pizza (sabor, preco , frete ,  Entrega_ou_Retirada)
		values ("Calabresa" , 20.00, 2.0, true );
        insert into  tb_pizza (sabor, preco , frete ,  Entrega_ou_Retirada)
		values ("4 Queijos" , 28.56, 0.0, false );
        insert into  tb_pizza (sabor, preco , frete ,  Entrega_ou_Retirada)
		values ("Portuguesa" , 28.56, 3.0, true );
        insert into  tb_pizza (sabor, preco , frete ,  Entrega_ou_Retirada)
		values ("Margarita" , 25.00, 0.0, false);
        insert into  tb_pizza (sabor, preco , frete ,  Entrega_ou_Retirada)
		values ("Palmito" , 25.56, 0.0, false );
        



	-- Selects --
	select * from tb_categoria;
	select * from tb_pizza; 
	select * from tb_pizza where preco < 45.00;
    select * from tb_pizza where preco between 29.00 and 60.00;
    select * from tb_pizza where sabor like "C%";
	
    select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria = true;
    
    select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria 
	and tb_categoria.tipo = "Tradicional";

