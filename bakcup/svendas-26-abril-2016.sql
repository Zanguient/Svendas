--
-- Script was generated by Devart dbForge Studio for MySQL, Version 6.3.358.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 26/4/2016 10:48:00
-- Server version: 5.5.45
-- Client version: 4.1
--


-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Set default database
--
USE svendas;

--
-- Definition for table acesso
--
DROP TABLE IF EXISTS acesso;
CREATE TABLE acesso (
  ac_id INT(11) NOT NULL AUTO_INCREMENT,
  ac_user INT(11) DEFAULT NULL,
  ac_tela INT(11) DEFAULT NULL,
  PRIMARY KEY (ac_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 22
AVG_ROW_LENGTH = 16384
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table caixa
--
DROP TABLE IF EXISTS caixa;
CREATE TABLE caixa (
  caixa_id INT(11) NOT NULL AUTO_INCREMENT,
  caixa_data_abre DATE DEFAULT NULL,
  caixa_valor DOUBLE(9, 2) DEFAULT 0.00,
  caixa_data_fecha DATE DEFAULT NULL,
  caixa_inicial DOUBLE(9, 2) DEFAULT 0.00,
  caixa_usuario INT(11) DEFAULT NULL,
  PRIMARY KEY (caixa_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 9
AVG_ROW_LENGTH = 5461
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table clientes
--
DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes (
  cli_id INT(11) NOT NULL AUTO_INCREMENT,
  cli_nome VARCHAR(50) DEFAULT NULL,
  cli_endereco VARCHAR(100) DEFAULT NULL,
  cli_numero VARCHAR(20) DEFAULT NULL,
  cli_bairro VARCHAR(50) DEFAULT NULL,
  cli_cidade VARCHAR(50) DEFAULT NULL,
  cli_fone VARCHAR(20) DEFAULT NULL,
  cli_celular VARCHAR(20) DEFAULT NULL,
  cli_rg VARCHAR(20) DEFAULT NULL,
  cli_cpf VARCHAR(20) DEFAULT NULL,
  cli_profissao VARCHAR(50) DEFAULT NULL,
  cli_data_nasc DATE DEFAULT NULL,
  PRIMARY KEY (cli_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 4
AVG_ROW_LENGTH = 5461
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table empresa
--
DROP TABLE IF EXISTS empresa;
CREATE TABLE empresa (
  emp_id INT(11) NOT NULL AUTO_INCREMENT,
  emp_nome VARCHAR(40) DEFAULT NULL,
  emp_endereco VARCHAR(50) DEFAULT NULL,
  emp_fone VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (emp_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 2
AVG_ROW_LENGTH = 16384
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table etiquetas
--
DROP TABLE IF EXISTS etiquetas;
CREATE TABLE etiquetas (
  eti_id INT(11) NOT NULL AUTO_INCREMENT,
  eti_produto INT(11) DEFAULT NULL,
  PRIMARY KEY (eti_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table forma
--
DROP TABLE IF EXISTS forma;
CREATE TABLE forma (
  forma_id INT(11) NOT NULL AUTO_INCREMENT,
  forma_nome VARCHAR(40) DEFAULT NULL,
  PRIMARY KEY (forma_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 4096
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table forms
--
DROP TABLE IF EXISTS forms;
CREATE TABLE forms (
  form_id INT(11) NOT NULL AUTO_INCREMENT,
  form_nome VARCHAR(40) DEFAULT NULL,
  form_desc VARCHAR(40) DEFAULT NULL,
  PRIMARY KEY (form_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 13
AVG_ROW_LENGTH = 1365
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table parcelas
--
DROP TABLE IF EXISTS parcelas;
CREATE TABLE parcelas (
  parc_id INT(11) NOT NULL AUTO_INCREMENT,
  parc_cod_carne VARCHAR(20) DEFAULT NULL,
  parc_numero INT(11) DEFAULT NULL,
  parc_valor DOUBLE(15, 2) DEFAULT 0.00,
  parc_vence DATE DEFAULT NULL,
  parc_pago ENUM('SIM','NAO') DEFAULT NULL,
  parc_data_pago DATE DEFAULT NULL,
  PRIMARY KEY (parc_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table produtos
--
DROP TABLE IF EXISTS produtos;
CREATE TABLE produtos (
  pro_id INT(11) NOT NULL AUTO_INCREMENT,
  pro_nome VARCHAR(100) DEFAULT NULL,
  pro_barras VARCHAR(20) DEFAULT NULL,
  pro_ref VARCHAR(20) DEFAULT NULL,
  pro_custo DOUBLE(9, 2) NOT NULL DEFAULT 0.00,
  pro_preco DOUBLE(9, 2) DEFAULT 0.00,
  pro_preco_prazo DOUBLE(9, 2) DEFAULT 0.00,
  pro_estoque INT(11) DEFAULT NULL,
  PRIMARY KEY (pro_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 6
AVG_ROW_LENGTH = 4096
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table usuarios
--
DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios (
  user_id INT(11) NOT NULL AUTO_INCREMENT,
  user_nome VARCHAR(50) DEFAULT NULL,
  user_nome_completo VARCHAR(80) DEFAULT NULL,
  user_senha VARCHAR(40) DEFAULT NULL,
  PRIMARY KEY (user_id)
)
ENGINE = INNODB
AUTO_INCREMENT = 5
AVG_ROW_LENGTH = 5461
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table itens
--
DROP TABLE IF EXISTS itens;
CREATE TABLE itens (
  iten_id INT(11) NOT NULL AUTO_INCREMENT,
  iten_produto INT(11) DEFAULT NULL,
  iten_qtd INT(11) DEFAULT NULL,
  iten_pedido VARCHAR(20) DEFAULT NULL,
  iten_preco DOUBLE(9, 2) DEFAULT 0.00,
  iten_preco_prazo DOUBLE(9, 2) DEFAULT NULL,
  PRIMARY KEY (iten_id),
  CONSTRAINT FK_itens_produtos_pro_id FOREIGN KEY (iten_produto)
    REFERENCES produtos(pro_id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ENGINE = INNODB
AUTO_INCREMENT = 27
AVG_ROW_LENGTH = 2340
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for table pedidos
--
DROP TABLE IF EXISTS pedidos;
CREATE TABLE pedidos (
  ped_id INT(11) NOT NULL AUTO_INCREMENT,
  ped_data DATE DEFAULT NULL,
  ped_codigo VARCHAR(20) DEFAULT NULL,
  ped_cliente INT(11) DEFAULT NULL,
  ped_usuario INT(11) DEFAULT NULL,
  ped_forma_pag INT(11) DEFAULT NULL,
  ped_fechado ENUM('SIM','NAO') DEFAULT NULL,
  ped_faturado ENUM('SIM','NAO') DEFAULT NULL,
  PRIMARY KEY (ped_id),
  INDEX FK_pedidos_forma_forma_id (ped_forma_pag),
  CONSTRAINT FK_pedidos_clientes_cli_id FOREIGN KEY (ped_cliente)
    REFERENCES clientes(cli_id) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_pedidos_usuarios_user_id FOREIGN KEY (ped_usuario)
    REFERENCES usuarios(user_id) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ENGINE = INNODB
AUTO_INCREMENT = 24
AVG_ROW_LENGTH = 1638
CHARACTER SET latin1
COLLATE latin1_swedish_ci;

--
-- Definition for view view_baixar_parcelas
--
DROP VIEW IF EXISTS view_baixar_parcelas CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW view_baixar_parcelas
AS
	select `c`.`cli_id` AS `cli_id`,`c`.`cli_nome` AS `cli_nome`,`c`.`cli_endereco` AS `cli_endereco`,`c`.`cli_numero` AS `cli_numero`,`c`.`cli_bairro` AS `cli_bairro`,`c`.`cli_cidade` AS `cli_cidade`,`c`.`cli_fone` AS `cli_fone`,`c`.`cli_celular` AS `cli_celular`,`c`.`cli_rg` AS `cli_rg`,`c`.`cli_cpf` AS `cli_cpf`,`c`.`cli_profissao` AS `cli_profissao`,`c`.`cli_data_nasc` AS `cli_data_nasc`,`d`.`ped_id` AS `ped_id`,`d`.`ped_data` AS `ped_data`,`d`.`ped_codigo` AS `ped_codigo`,`d`.`ped_cliente` AS `ped_cliente`,`d`.`ped_usuario` AS `ped_usuario`,`d`.`ped_forma_pag` AS `ped_forma_pag`,`d`.`ped_fechado` AS `ped_fechado`,`d`.`ped_faturado` AS `ped_faturado`,`p`.`parc_id` AS `parc_id`,`p`.`parc_cod_carne` AS `parc_cod_carne`,`p`.`parc_numero` AS `parc_numero`,`p`.`parc_valor` AS `parc_valor`,`p`.`parc_vence` AS `parc_vence`,`p`.`parc_pago` AS `parc_pago`,`p`.`parc_data_pago` AS `parc_data_pago` from ((`clientes` `c` join `pedidos` `d`) join `parcelas` `p`) where ((`c`.`cli_id` = `d`.`ped_cliente`) and (`d`.`ped_codigo` = `p`.`parc_cod_carne`)) group by `d`.`ped_codigo`;

--
-- Definition for view view_caixa
--
DROP VIEW IF EXISTS view_caixa CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW view_caixa
AS
	select `c`.`caixa_id` AS `caixa_id`,`c`.`caixa_data_abre` AS `caixa_data_abre`,`c`.`caixa_valor` AS `caixa_valor`,`c`.`caixa_data_fecha` AS `caixa_data_fecha`,`c`.`caixa_inicial` AS `caixa_inicial`,`c`.`caixa_usuario` AS `caixa_usuario`,`u`.`user_id` AS `user_id`,`u`.`user_nome` AS `user_nome`,`u`.`user_nome_completo` AS `user_nome_completo`,`u`.`user_senha` AS `user_senha` from (`caixa` `c` join `usuarios` `u`) where (`c`.`caixa_usuario` = `u`.`user_id`);

--
-- Definition for view view_etiquetas
--
DROP VIEW IF EXISTS view_etiquetas CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW view_etiquetas
AS
	select `e`.`eti_id` AS `eti_id`,`e`.`eti_produto` AS `eti_produto`,`p`.`pro_id` AS `pro_id`,`p`.`pro_nome` AS `pro_nome`,`p`.`pro_barras` AS `pro_barras`,`p`.`pro_ref` AS `pro_ref`,`p`.`pro_custo` AS `pro_custo`,`p`.`pro_preco` AS `pro_preco`,`p`.`pro_preco_prazo` AS `pro_preco_prazo`,`p`.`pro_estoque` AS `pro_estoque` from (`etiquetas` `e` join `produtos` `p`) where (`e`.`eti_produto` = `p`.`pro_id`);

--
-- Definition for view view_listar_pedido
--
DROP VIEW IF EXISTS view_listar_pedido CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW view_listar_pedido
AS
	select `d`.`ped_id` AS `ped_id`,`d`.`ped_data` AS `ped_data`,`d`.`ped_codigo` AS `ped_codigo`,`d`.`ped_cliente` AS `ped_cliente`,`d`.`ped_usuario` AS `ped_usuario`,`d`.`ped_forma_pag` AS `ped_forma_pag`,`d`.`ped_fechado` AS `ped_fechado`,`d`.`ped_faturado` AS `ped_faturado`,`i`.`iten_id` AS `iten_id`,`i`.`iten_produto` AS `iten_produto`,`i`.`iten_qtd` AS `iten_qtd`,`i`.`iten_pedido` AS `iten_pedido`,`i`.`iten_preco` AS `iten_preco`,`i`.`iten_preco_prazo` AS `iten_preco_prazo`,`p`.`pro_id` AS `pro_id`,`p`.`pro_nome` AS `pro_nome`,`p`.`pro_barras` AS `pro_barras`,`p`.`pro_ref` AS `pro_ref`,`p`.`pro_custo` AS `pro_custo`,`p`.`pro_preco` AS `pro_preco`,`p`.`pro_preco_prazo` AS `pro_preco_prazo`,`p`.`pro_estoque` AS `pro_estoque`,`c`.`cli_id` AS `cli_id`,`c`.`cli_nome` AS `cli_nome`,`c`.`cli_endereco` AS `cli_endereco`,`c`.`cli_numero` AS `cli_numero`,`c`.`cli_bairro` AS `cli_bairro`,`c`.`cli_cidade` AS `cli_cidade`,`c`.`cli_fone` AS `cli_fone`,`c`.`cli_celular` AS `cli_celular`,`c`.`cli_rg` AS `cli_rg`,`c`.`cli_cpf` AS `cli_cpf`,`c`.`cli_profissao` AS `cli_profissao`,`c`.`cli_data_nasc` AS `cli_data_nasc`,`f`.`forma_id` AS `forma_id`,`f`.`forma_nome` AS `forma_nome`,`u`.`user_id` AS `user_id`,`u`.`user_nome` AS `user_nome`,`u`.`user_nome_completo` AS `user_nome_completo`,`u`.`user_senha` AS `user_senha` from (((((`pedidos` `d` join `itens` `i`) join `produtos` `p`) join `clientes` `c`) join `forma` `f`) join `usuarios` `u`) where ((`c`.`cli_id` = `d`.`ped_cliente`) and (`i`.`iten_pedido` = `d`.`ped_codigo`) and (`d`.`ped_forma_pag` = `f`.`forma_id`) and (`i`.`iten_produto` = `p`.`pro_id`) and (`d`.`ped_usuario` = `u`.`user_id`)) order by `d`.`ped_id` desc;

--
-- Definition for view view_parcelas_prontas
--
DROP VIEW IF EXISTS view_parcelas_prontas CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW view_parcelas_prontas
AS
	select `parcelas`.`parc_id` AS `parc_id`,`parcelas`.`parc_cod_carne` AS `parc_cod_carne`,`parcelas`.`parc_numero` AS `parc_numero`,`parcelas`.`parc_valor` AS `parc_valor`,`parcelas`.`parc_vence` AS `parc_vence`,`parcelas`.`parc_pago` AS `parc_pago`,`parcelas`.`parc_data_pago` AS `parc_data_pago` from `parcelas`;

--
-- Definition for view view_testar_permissao
--
DROP VIEW IF EXISTS view_testar_permissao CASCADE;
CREATE OR REPLACE 
	DEFINER = 'root'@'localhost'
VIEW view_testar_permissao
AS
	select `a`.`ac_id` AS `ac_id`,`a`.`ac_user` AS `ac_user`,`a`.`ac_tela` AS `ac_tela`,`f`.`form_id` AS `form_id`,`f`.`form_nome` AS `form_nome`,`f`.`form_desc` AS `form_desc` from (`acesso` `a` join `forms` `f`) where (`f`.`form_id` = `a`.`ac_tela`);

-- 
-- Dumping data for table acesso
--
INSERT INTO acesso VALUES
(21, 2, 12);

-- 
-- Dumping data for table caixa
--
INSERT INTO caixa VALUES
(6, '2016-04-21', 0.00, NULL, 20.00, 1),
(7, '2016-04-25', 0.00, NULL, 10.00, 1),
(8, '2016-04-26', 0.00, NULL, 20.00, 1);

-- 
-- Dumping data for table clientes
--
INSERT INTO clientes VALUES
(1, 'CONSUMIDOR', 'TESTE', NULL, NULL, 'teste cidade', NULL, NULL, NULL, NULL, NULL, '2016-03-21'),
(2, 'KELSILVA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-22'),
(3, 'ADRIANO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- 
-- Dumping data for table empresa
--
INSERT INTO empresa VALUES
(1, 'MINHA LOHA TESTE', 'RUA TESTE N 30', '(81)8888-8888');

-- 
-- Dumping data for table etiquetas
--

-- Table svendas.etiquetas does not contain any data (it is empty)

-- 
-- Dumping data for table forma
--
INSERT INTO forma VALUES
(1, 'DINHEIRO'),
(2, 'CREDIARIO'),
(4, 'CARTAO'),
(5, 'CHEQUE');

-- 
-- Dumping data for table forms
--
INSERT INTO forms VALUES
(1, 'F_clientes', 'Tela de Clientes'),
(2, 'F_etiquetas', 'Tela de etiquetas'),
(3, 'F_baixarParcelas', 'Tela de baixar Parcelas'),
(4, 'F_gerarParcelas', 'Tela de gerar parcelas'),
(5, 'F_lancamento', 'Tela de lancamentos'),
(6, 'F_produtos', 'Tela de produtos'),
(7, 'F_vendasMovimentos', 'Tela de vendas movimentos'),
(8, 'F_pdv', 'Tela de pvd'),
(9, 'F_usuarios', 'Tela de usuarios'),
(10, 'F_caixa', 'Caixa'),
(11, 'F_usuarios', 'Tela de usuarios'),
(12, 'F_caixa', 'Tela de caixa');

-- 
-- Dumping data for table parcelas
--

-- Table svendas.parcelas does not contain any data (it is empty)

-- 
-- Dumping data for table produtos
--
INSERT INTO produtos VALUES
(1, 'MOUSE USB', '1452103217412', 'M001', 10.00, 18.00, 22.00, 10),
(2, 'TECLADO', '0000000000478', 'TEC002', 15.00, 25.00, 30.00, 10),
(3, 'CAMISETA', '0000000000471', 'CAM01', 10.00, 15.00, 25.00, 10),
(5, 'CAMISA MANGA CURTA', '00000000088471', 'CAMC', 20.00, 35.00, 40.00, 10);

-- 
-- Dumping data for table usuarios
--
INSERT INTO usuarios VALUES
(1, 'ADM', 'KELSILVA', '123'),
(2, 'KEL', 'TESTE', '123'),
(4, 'TESTE', 'KEL EM TESTE', '123');

-- 
-- Dumping data for table itens
--
INSERT INTO itens VALUES
(15, 2, 1, '160421010821', 25.00, 30.00),
(16, 5, 1, '160421010821', 35.00, 40.00),
(17, 2, 1, '160421011054', 25.00, 30.00),
(18, 2, 1, '160421011546', 25.00, 30.00),
(19, 3, 1, '160421011733', 15.00, 25.00),
(20, 5, 1, '160425011735', 35.00, 40.00),
(21, 3, 3, '160426010441', 15.00, 25.00);

-- 
-- Dumping data for table pedidos
--
INSERT INTO pedidos VALUES
(11, '2016-04-20', '160420164114', 3, 1, 1, 'SIM', 'SIM'),
(12, '2016-04-21', '160421005610', 1, 1, 1, 'NAO', 'NAO'),
(13, '2016-04-21', '160421005709', 1, 1, 1, 'NAO', 'NAO'),
(15, '2016-04-21', '160421010821', 1, 1, 1, 'SIM', 'SIM'),
(16, '2016-04-21', '160421011054', 3, 1, 1, 'SIM', 'SIM'),
(17, '2016-04-21', '160421011546', 2, 1, 2, 'SIM', 'SIM'),
(18, '2016-04-21', '160421011733', 2, 1, 2, 'SIM', 'SIM'),
(19, '2016-04-25', '160425011735', 1, 1, 2, 'SIM', 'SIM'),
(20, '2016-04-26', '160426010441', 1, 1, 2, 'SIM', 'NAO'),
(22, '2016-04-26', '160426032007', 1, 1, 1, 'NAO', 'NAO');

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;