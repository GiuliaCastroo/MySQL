CREATE TABLE `tb_temas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`Descrição` varchar(255) NOT NULL,
	`Descrição` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_postagens` (
	`Id` bigint NOT NULL AUTO_INCREMENT,
	`Título` varchar(100) NOT NULL AUTO_INCREMENT,
	`Texto` varchar(100) NOT NULL AUTO_INCREMENT,
	`Data` DATE NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Id`)
);

CREATE TABLE `tb_usuarios` (
	`Id` bigint NOT NULL AUTO_INCREMENT,
	`Nome` varchar(255) NOT NULL AUTO_INCREMENT,
	`Usuario` varchar(255) NOT NULL AUTO_INCREMENT,
	`Senha` varchar(255) NOT NULL AUTO_INCREMENT,
	`Foto` varchar(255) NOT NULL AUTO_INCREMENT,
	`Foto` varchar(255) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Id`)
);

ALTER TABLE `tb_temas` ADD CONSTRAINT `tb_temas_fk0` FOREIGN KEY (`Descrição`) REFERENCES `tb_postagens`(`Título`);

ALTER TABLE `tb_postagens` ADD CONSTRAINT `tb_postagens_fk0` FOREIGN KEY (`Id`) REFERENCES `tb_temas`(`id`);

ALTER TABLE `tb_usuarios` ADD CONSTRAINT `tb_usuarios_fk0` FOREIGN KEY (`Id`) REFERENCES `tb_postagens`(`Id`);

ALTER TABLE `tb_usuarios` ADD CONSTRAINT `tb_usuarios_fk1` FOREIGN KEY (`Nome`) REFERENCES `tb_postagens`(`Id`);

ALTER TABLE `tb_usuarios` ADD CONSTRAINT `tb_usuarios_fk2` FOREIGN KEY (`Usuario`) REFERENCES `tb_postagens`(`Id`);

ALTER TABLE `tb_usuarios` ADD CONSTRAINT `tb_usuarios_fk3` FOREIGN KEY (`Senha`) REFERENCES `tb_postagens`(`Id`);

ALTER TABLE `tb_usuarios` ADD CONSTRAINT `tb_usuarios_fk4` FOREIGN KEY (`Foto`) REFERENCES `tb_postagens`(`Id`);

ALTER TABLE `tb_usuarios` ADD CONSTRAINT `tb_usuarios_fk5` FOREIGN KEY (`Foto`) REFERENCES `tb_postagens`(`Id`);




