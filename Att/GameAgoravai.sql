-- Welcome to the Game--
	create database db_generation_game_online;	
    use db_generation_game_online;	
    
    -- Criando Tabela Classe--
    create table tb_classe(
    id bigint auto_increment,
	Classes enum ("Guerreiro", "Paladino", "Ladino", "Hunter", "Sarcedote", "Mago" , "Druida", "Monge", "Cavaleiro ", "Bruxo") not null,
    Horda_ou_Aliança enum ("Pela Horda" , "Pela Aliança") not null,
    Tipo_de_Dano enum("Dano Ap", "Tanque" , "Letalidade" , "Curandeiro", "Dano AD", "Corpo-a-Corpo", "A distancia" ) not null,
    Arma enum ("Necromicon", "Excalibur", "Blade Of Chaos", "Mjolnir" , "Rebellion"),
    id_classe bigint,
    
    primary key  (id)
    );
    
    
    -- Criando Tabela Personagem --
    create table tb_personagem(
	id_per bigint auto_increment,
	id_classe bigint(10) ,
	Nome_do_Heroi varchar(30) not null,	
	Defesa bigint(20) not null,
	Ataque bigint(20) not null,
	Raça varchar(30) ,
	primary key(id_per),
	
    foreign key (id_classe) references tb_classe(id)
);
	
    
    -- Populando Tabela Classe --
    	insert into tb_classe (Classes ,Horda_ou_Aliança ,Tipo_de_dano, Arma )
        values("Ladino", "Pela Horda", "Tanque", "Excalibur");
		insert into tb_classe (Classes ,Horda_ou_Aliança ,Tipo_de_dano, Arma )
        values("Mago", "Pela Aliança", "Dano AP", "Necromicon");
        insert into tb_classe (Classes ,Horda_ou_Aliança ,Tipo_de_dano, Arma )
        values("Sarcedote", "Pela Horda", "Dano AD", "Excalibur");
        insert into tb_classe (Classes ,Horda_ou_Aliança ,Tipo_de_dano, Arma )
        values("Monge", "Pela Horda", "Curandeiro", "Blade of Chaos");
        insert into tb_classe (Classes ,Horda_ou_Aliança ,Tipo_de_dano, Arma )
        values("Cavaleiro", "Pela Aliança", "Tanque", "Rebellion");
        
        
        -- Populando Personagen --
        
        insert into tb_personagem (Nome_do_Heroi, Defesa, Ataque, Raça )
        values(2500.00, 3600.00, "Elfo Sangrento", "Rivyan");
         insert into tb_personagem (Ataque, Defesa, Raça, Nome_do_Heroi )
        values(8000.00, 6600.00, "Filho da Noite", "Yennefer");
         insert into tb_personagem  (Ataque, Defesa, Raça, Nome_do_Heroi )
        values(2500.00, 3600.00, "Orc", "Willa");
         insert into tb_personagem  (Ataque, Defesa, Raça, Nome_do_Heroi )
        values(2000.00, 1000.00, "Morto Vivo", "Sith");
         insert into tb_personagem  (Ataque, Defesa, Raça, Nome_do_Heroi )
        values(9900.00, 8900.00, "Dragão", "Draktar");
         insert into tb_personagem  (Ataque, Defesa, Raça, Nome_do_Heroi )
        values(5900.00, 6600.00, "Anão de Ferro", "Kayn");
         insert into tb_personagem  (Ataque, Defesa, Raça, Nome_do_Heroi )
        values(6500.00, 8600.00, "Filho da Noite", "Undertaker");
         insert into tb_personagem  (Ataque, Defesa, Raça, Nome_do_Heroi )
        values(21500.00, 31600.00, "Elfo Sagrado", "Galadriel");
        
	
    -- Selects --
    
	select * from tb_classe;
	select * from tb_personagem;
	select * from tb_personagem where Ataque > 2000;
	select * from tb_personagem where Ataque and Defesa  between 1000 and 2000;
	select * from tb_personagem where Nome_do_Heroi like "G%";          -- Eu alterei a letra pois não criei nenhum com C o.O ---
   
    select * from tb_personagem inner join tb_classe on  tb_classe.id = id_per = true;
    
    select * from tb_classe where Classes like "Ladino%";          