CREATE DATABASE  IF NOT EXISTS `residentialbd` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `residentialbd`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: residentialbd
-- ------------------------------------------------------
-- Server version	5.5.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `my_aspnet_applications`
--

DROP TABLE IF EXISTS `my_aspnet_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_applications`
--

LOCK TABLES `my_aspnet_applications` WRITE;
/*!40000 ALTER TABLE `my_aspnet_applications` DISABLE KEYS */;
INSERT INTO `my_aspnet_applications` VALUES (1,'/','MySQLSession');
/*!40000 ALTER TABLE `my_aspnet_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_membership`
--

DROP TABLE IF EXISTS `my_aspnet_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_membership` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `Email` varchar(128) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `Password` varchar(128) NOT NULL,
  `PasswordKey` char(32) DEFAULT NULL,
  `PasswordFormat` tinyint(4) DEFAULT NULL,
  `PasswordQuestion` varchar(255) DEFAULT NULL,
  `PasswordAnswer` varchar(255) DEFAULT NULL,
  `IsApproved` tinyint(1) DEFAULT NULL,
  `LastActivityDate` datetime DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `LastPasswordChangedDate` datetime DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `IsLockedOut` tinyint(1) DEFAULT NULL,
  `LastLockedOutDate` datetime DEFAULT NULL,
  `FailedPasswordAttemptCount` int(10) unsigned DEFAULT NULL,
  `FailedPasswordAttemptWindowStart` datetime DEFAULT NULL,
  `FailedPasswordAnswerAttemptCount` int(10) unsigned DEFAULT NULL,
  `FailedPasswordAnswerAttemptWindowStart` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_membership`
--

LOCK TABLES `my_aspnet_membership` WRITE;
/*!40000 ALTER TABLE `my_aspnet_membership` DISABLE KEYS */;
INSERT INTO `my_aspnet_membership` VALUES (5,'kekeu@kekeu.com','','1234567@','6I/7eYszRWohRxet0c4jOw==',0,'teste1','teste2',1,'2014-08-09 00:29:55','2014-08-09 00:29:55','2014-08-03 10:18:35','2014-08-03 10:18:35',0,'2014-08-03 10:18:35',0,'2014-08-03 10:18:35',0,'2014-08-03 10:18:35'),(6,'ceceu@ceceu.com','','1234567@','+aF5TTRp/JJzDzT52RGg9Q==',0,'teste1','teste2',1,'2014-08-04 07:48:05','2014-08-04 07:47:48','2014-08-03 20:07:55','2014-08-03 20:07:55',0,'2014-08-03 20:07:55',0,'2014-08-03 20:07:55',0,'2014-08-03 20:07:55');
/*!40000 ALTER TABLE `my_aspnet_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_profiles`
--

DROP TABLE IF EXISTS `my_aspnet_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_profiles` (
  `userId` int(11) NOT NULL,
  `valueindex` longtext,
  `stringdata` longtext,
  `binarydata` longblob,
  `lastUpdatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_profiles`
--

LOCK TABLES `my_aspnet_profiles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_roles`
--

DROP TABLE IF EXISTS `my_aspnet_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_roles`
--

LOCK TABLES `my_aspnet_roles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_roles` DISABLE KEYS */;
INSERT INTO `my_aspnet_roles` VALUES (1,1,'Morador'),(2,1,'Sindico'),(3,1,'Visitante'),(4,1,'Administradora'),(5,1,'Proprietario'),(6,1,'Funcionario'),(7,1,'Responsavel'),(8,1,'Profissional'),(9,1,'AdministradorSistema');
/*!40000 ALTER TABLE `my_aspnet_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_schemaversion`
--

DROP TABLE IF EXISTS `my_aspnet_schemaversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_schemaversion` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_schemaversion`
--

LOCK TABLES `my_aspnet_schemaversion` WRITE;
/*!40000 ALTER TABLE `my_aspnet_schemaversion` DISABLE KEYS */;
INSERT INTO `my_aspnet_schemaversion` VALUES (8);
/*!40000 ALTER TABLE `my_aspnet_schemaversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sessioncleanup`
--

DROP TABLE IF EXISTS `my_aspnet_sessioncleanup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_sessioncleanup` (
  `LastRun` datetime NOT NULL,
  `IntervalMinutes` int(11) NOT NULL,
  `ApplicationId` int(11) NOT NULL,
  PRIMARY KEY (`ApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sessioncleanup`
--

LOCK TABLES `my_aspnet_sessioncleanup` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sessioncleanup` DISABLE KEYS */;
INSERT INTO `my_aspnet_sessioncleanup` VALUES ('2014-08-09 22:46:40',10,1);
/*!40000 ALTER TABLE `my_aspnet_sessioncleanup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_sessions`
--

DROP TABLE IF EXISTS `my_aspnet_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_sessions` (
  `SessionId` varchar(191) NOT NULL,
  `ApplicationId` int(11) NOT NULL,
  `Created` datetime NOT NULL,
  `Expires` datetime NOT NULL,
  `LockDate` datetime NOT NULL,
  `LockId` int(11) NOT NULL,
  `Timeout` int(11) NOT NULL,
  `Locked` tinyint(1) NOT NULL,
  `SessionItems` longblob,
  `Flags` int(11) NOT NULL,
  PRIMARY KEY (`SessionId`,`ApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_sessions`
--

LOCK TABLES `my_aspnet_sessions` WRITE;
/*!40000 ALTER TABLE `my_aspnet_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_users`
--

DROP TABLE IF EXISTS `my_aspnet_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationId` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `isAnonymous` tinyint(1) NOT NULL DEFAULT '1',
  `lastActivityDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_users`
--

LOCK TABLES `my_aspnet_users` WRITE;
/*!40000 ALTER TABLE `my_aspnet_users` DISABLE KEYS */;
INSERT INTO `my_aspnet_users` VALUES (5,1,'kekeu',0,'2014-08-09 00:29:55'),(6,1,'ceceu',0,'2014-08-04 07:48:05');
/*!40000 ALTER TABLE `my_aspnet_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_aspnet_usersinroles`
--

DROP TABLE IF EXISTS `my_aspnet_usersinroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_aspnet_usersinroles` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_aspnet_usersinroles`
--

LOCK TABLES `my_aspnet_usersinroles` WRITE;
/*!40000 ALTER TABLE `my_aspnet_usersinroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_aspnet_usersinroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_acessocondominio`
--

DROP TABLE IF EXISTS `tb_acessocondominio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_acessocondominio` (
  `IdPessoa` int(11) NOT NULL,
  `IdCondominio` int(11) NOT NULL,
  `DataHora` datetime NOT NULL,
  `Tipo` enum('Morador','Funcionario','Sindico') NOT NULL DEFAULT 'Morador',
  PRIMARY KEY (`IdPessoa`,`IdCondominio`),
  KEY `tb_acessocondominio_tb_condominio1_idx` (`IdCondominio`),
  CONSTRAINT `tb_acessocondominio_tb_condominio1` FOREIGN KEY (`IdCondominio`) REFERENCES `tb_condominio` (`IdCondominio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_acessocondominio_tb_pessoa1` FOREIGN KEY (`IdPessoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_acessocondominio`
--

LOCK TABLES `tb_acessocondominio` WRITE;
/*!40000 ALTER TABLE `tb_acessocondominio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_acessocondominio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_acessoveiculo`
--

DROP TABLE IF EXISTS `tb_acessoveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_acessoveiculo` (
  `DataHora` datetime NOT NULL,
  `IdVeiculo` int(11) NOT NULL,
  KEY `tb_acessoveiculo_tb_veiculo1_idx` (`IdVeiculo`),
  CONSTRAINT `tb_acessoveiculo_tb_veiculo1` FOREIGN KEY (`IdVeiculo`) REFERENCES `tb_veiculo` (`IdVeiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_acessoveiculo`
--

LOCK TABLES `tb_acessoveiculo` WRITE;
/*!40000 ALTER TABLE `tb_acessoveiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_acessoveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_administradora`
--

DROP TABLE IF EXISTS `tb_administradora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_administradora` (
  `IdAdministradora` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL,
  `Login` varchar(16) NOT NULL,
  `Senha` varchar(16) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`IdAdministradora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_administradora`
--

LOCK TABLES `tb_administradora` WRITE;
/*!40000 ALTER TABLE `tb_administradora` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_administradora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_areapublica`
--

DROP TABLE IF EXISTS `tb_areapublica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_areapublica` (
  `IdAreaPublica` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(60) NOT NULL,
  `Local` varchar(60) NOT NULL,
  `Tamanho` varchar(15) NOT NULL,
  `ValorReserva` decimal(10,0) NOT NULL,
  `IdCondominio` int(11) NOT NULL,
  `StatusAreaPublica` enum('Disponivel','Reservado','Indisponivel') NOT NULL DEFAULT 'Disponivel',
  PRIMARY KEY (`IdAreaPublica`),
  KEY `TB_Espaco_TB_Condominio1_idx` (`IdCondominio`),
  CONSTRAINT `TB_Espaco_TB_Condominio1` FOREIGN KEY (`IdCondominio`) REFERENCES `tb_condominio` (`IdCondominio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_areapublica`
--

LOCK TABLES `tb_areapublica` WRITE;
/*!40000 ALTER TABLE `tb_areapublica` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_areapublica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_atendimento`
--

DROP TABLE IF EXISTS `tb_atendimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_atendimento` (
  `IdAtendimento` int(11) NOT NULL AUTO_INCREMENT,
  `IdPesssoa` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Descricao` varchar(1000) NOT NULL,
  `StatusAtendimento` enum('Resolvido','EmAnalise') NOT NULL DEFAULT 'EmAnalise',
  PRIMARY KEY (`IdAtendimento`),
  KEY `TB_Atendimento_TB_Pessoa1_idx` (`IdPesssoa`),
  CONSTRAINT `TB_Atendimento_TB_Pessoa1` FOREIGN KEY (`IdPesssoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_atendimento`
--

LOCK TABLES `tb_atendimento` WRITE;
/*!40000 ALTER TABLE `tb_atendimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_atendimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_bloco`
--

DROP TABLE IF EXISTS `tb_bloco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_bloco` (
  `IdBloco` int(11) NOT NULL AUTO_INCREMENT,
  `IdCondominio` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `QuantidadeAndares` int(11) NOT NULL,
  `QuantidadeMoradias` int(11) NOT NULL,
  PRIMARY KEY (`IdBloco`),
  KEY `TB_Bloco_TB_Condominio1_idx` (`IdCondominio`),
  CONSTRAINT `TB_Bloco_TB_Condominio1` FOREIGN KEY (`IdCondominio`) REFERENCES `tb_condominio` (`IdCondominio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bloco`
--

LOCK TABLES `tb_bloco` WRITE;
/*!40000 ALTER TABLE `tb_bloco` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_bloco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comentario`
--

DROP TABLE IF EXISTS `tb_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comentario` (
  `IdComentario` int(11) NOT NULL AUTO_INCREMENT,
  `IdPostagem` int(11) NOT NULL,
  `IdPessoa` int(11) NOT NULL,
  `Comentario` varchar(500) NOT NULL,
  `Data` datetime NOT NULL,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`IdComentario`),
  KEY `TB_Comentario_TB_Postagem1_idx` (`IdPostagem`),
  KEY `TB_Comentario_TB_Pessoa1_idx` (`IdPessoa`),
  CONSTRAINT `TB_Comentario_TB_Pessoa1` FOREIGN KEY (`IdPessoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TB_Comentario_TB_Postagem1` FOREIGN KEY (`IdPostagem`) REFERENCES `tb_postagem` (`IdPostagem`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comentario`
--

LOCK TABLES `tb_comentario` WRITE;
/*!40000 ALTER TABLE `tb_comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_condominio`
--

DROP TABLE IF EXISTS `tb_condominio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_condominio` (
  `IdCondominio` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Rua` varchar(100) NOT NULL,
  `Numero` varchar(10) NOT NULL,
  `Bairro` varchar(50) NOT NULL,
  `Complemento` varchar(100) DEFAULT NULL,
  `CEP` varchar(8) NOT NULL,
  `Cidade` varchar(50) NOT NULL,
  `Estado` char(2) NOT NULL,
  `IdAdministradora` int(11) NOT NULL,
  PRIMARY KEY (`IdCondominio`),
  KEY `tb_condominio_tb_administradora1_idx` (`IdAdministradora`),
  CONSTRAINT `tb_condominio_tb_administradora1` FOREIGN KEY (`IdAdministradora`) REFERENCES `tb_administradora` (`IdAdministradora`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_condominio`
--

LOCK TABLES `tb_condominio` WRITE;
/*!40000 ALTER TABLE `tb_condominio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_condominio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_enquete`
--

DROP TABLE IF EXISTS `tb_enquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_enquete` (
  `IdEnquete` int(11) NOT NULL AUTO_INCREMENT,
  `IdPesssoa` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Descricao` varchar(500) NOT NULL,
  `DataInicio` datetime NOT NULL,
  `DataFim` datetime NOT NULL,
  `StatusEnquete` enum('EmVotacao','Pausada','Finalizada') NOT NULL DEFAULT 'EmVotacao',
  PRIMARY KEY (`IdEnquete`),
  KEY `TB_Enquete_TB_Pessoa1_idx` (`IdPesssoa`),
  CONSTRAINT `TB_Enquete_TB_Pessoa1` FOREIGN KEY (`IdPesssoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_enquete`
--

LOCK TABLES `tb_enquete` WRITE;
/*!40000 ALTER TABLE `tb_enquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_enquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_grupoplanocontas`
--

DROP TABLE IF EXISTS `tb_grupoplanocontas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_grupoplanocontas` (
  `IdGrupoPlanoDeConta` int(11) NOT NULL AUTO_INCREMENT,
  `TipoPlanoDeConta` enum('Receita','Despesa') NOT NULL,
  `Descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`IdGrupoPlanoDeConta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_grupoplanocontas`
--

LOCK TABLES `tb_grupoplanocontas` WRITE;
/*!40000 ALTER TABLE `tb_grupoplanocontas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_grupoplanocontas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_moradia`
--

DROP TABLE IF EXISTS `tb_moradia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_moradia` (
  `IdMoradia` int(11) NOT NULL AUTO_INCREMENT,
  `IdBloco` int(11) NOT NULL,
  `Andar` varchar(15) NOT NULL,
  `Numero` varchar(10) NOT NULL,
  `TipoMoradia` enum('Cobertura','Padrao','Duplex','Triplex','Casa') NOT NULL DEFAULT 'Padrao',
  PRIMARY KEY (`IdMoradia`),
  KEY `TB_Moradia_TB_Bloco1_idx` (`IdBloco`),
  CONSTRAINT `TB_Moradia_TB_Bloco1` FOREIGN KEY (`IdBloco`) REFERENCES `tb_bloco` (`IdBloco`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_moradia`
--

LOCK TABLES `tb_moradia` WRITE;
/*!40000 ALTER TABLE `tb_moradia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_moradia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movimentacaofinanceira`
--

DROP TABLE IF EXISTS `tb_movimentacaofinanceira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_movimentacaofinanceira` (
  `IdMovimentacaoFinanceira` int(11) NOT NULL AUTO_INCREMENT,
  `IdAdministradora` int(11) NOT NULL,
  `Valor` decimal(10,2) NOT NULL,
  `DataRegistro` datetime NOT NULL,
  `NotaFiscal` varchar(50) NOT NULL,
  `Descricao` varchar(200) DEFAULT NULL,
  `IdPlanoDeConta` int(11) NOT NULL,
  `StatusMovimentacao` enum('EmAnalise','Autorizada','NaoAutorizada','Registrada','Finalizada') NOT NULL DEFAULT 'EmAnalise',
  `Baixa` tinyint(1) NOT NULL DEFAULT '0',
  `IdFuncionario` int(11) NOT NULL,
  `IdMoradia` int(11) NOT NULL,
  `IdReservaAmbiente` int(11) NOT NULL,
  PRIMARY KEY (`IdMovimentacaoFinanceira`),
  KEY `TB_MovimentacaoFinanceira_TB_Administradora1_idx` (`IdAdministradora`),
  KEY `TB_MovimentacaoFinanceira_TB_PlanoDeConta1_idx` (`IdPlanoDeConta`),
  KEY `tb_movimentacaofinanceira_tb_moradia1_idx` (`IdMoradia`),
  KEY `tb_movimentacaofinanceira_tb_reservaambiente1_idx` (`IdReservaAmbiente`),
  CONSTRAINT `TB_MovimentacaoFinanceira_TB_Administradora1` FOREIGN KEY (`IdAdministradora`) REFERENCES `tb_administradora` (`IdAdministradora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_movimentacaofinanceira_tb_moradia1` FOREIGN KEY (`IdMoradia`) REFERENCES `tb_moradia` (`IdMoradia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TB_MovimentacaoFinanceira_TB_PlanoDeConta1` FOREIGN KEY (`IdPlanoDeConta`) REFERENCES `tb_planodeconta` (`IdPlanoDeConta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_movimentacaofinanceira_tb_reservaambiente1` FOREIGN KEY (`IdReservaAmbiente`) REFERENCES `tb_reservaambiente` (`IdReservaAmbiente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimentacaofinanceira`
--

LOCK TABLES `tb_movimentacaofinanceira` WRITE;
/*!40000 ALTER TABLE `tb_movimentacaofinanceira` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_movimentacaofinanceira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ocorrencia`
--

DROP TABLE IF EXISTS `tb_ocorrencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ocorrencia` (
  `IdOcorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `IdPessoa` int(11) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Descricao` varchar(500) NOT NULL,
  `DataCriacao` datetime NOT NULL,
  `TipoOcorrencia` enum('Barulho','Roubo','DanoAoPatrimonio','Outros') NOT NULL DEFAULT 'Barulho',
  `StatusOcorrencia` enum('EmAnalise','EmExecucao','Rresolvida','Finalizada') NOT NULL DEFAULT 'EmAnalise',
  `OutrosTiposOcorrencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdOcorrencia`),
  KEY `TB_Ocorrencia_TB_Pessoa1_idx` (`IdPessoa`),
  CONSTRAINT `TB_Ocorrencia_TB_Pessoa1` FOREIGN KEY (`IdPessoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ocorrencia`
--

LOCK TABLES `tb_ocorrencia` WRITE;
/*!40000 ALTER TABLE `tb_ocorrencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_opcoesenquete`
--

DROP TABLE IF EXISTS `tb_opcoesenquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_opcoesenquete` (
  `IdOpcao` int(11) NOT NULL AUTO_INCREMENT,
  `IdEnquete` int(11) NOT NULL,
  `Descricao` varchar(50) NOT NULL,
  PRIMARY KEY (`IdOpcao`),
  KEY `TB_OpcoesEnquete_TB_Enquete1_idx` (`IdEnquete`),
  CONSTRAINT `TB_OpcoesEnquete_TB_Enquete1` FOREIGN KEY (`IdEnquete`) REFERENCES `tb_enquete` (`IdEnquete`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_opcoesenquete`
--

LOCK TABLES `tb_opcoesenquete` WRITE;
/*!40000 ALTER TABLE `tb_opcoesenquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_opcoesenquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_perfilpessoa`
--

DROP TABLE IF EXISTS `tb_perfilpessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perfilpessoa` (
  `IdPerfil` int(11) NOT NULL,
  `IdPessoa` int(11) NOT NULL,
  `Ativo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`IdPerfil`,`IdPessoa`),
  KEY `fk_tb_perfilpessoa_tb_pessoa1_idx` (`IdPessoa`),
  CONSTRAINT `fk_tb_perfilpessoa_my_aspnet_roles1` FOREIGN KEY (`IdPerfil`) REFERENCES `my_aspnet_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_perfilpessoa_tb_pessoa1` FOREIGN KEY (`IdPessoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_perfilpessoa`
--

LOCK TABLES `tb_perfilpessoa` WRITE;
/*!40000 ALTER TABLE `tb_perfilpessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_perfilpessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pessoa`
--

DROP TABLE IF EXISTS `tb_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pessoa` (
  `IdPessoa` int(11) NOT NULL AUTO_INCREMENT,
  `CPF` varchar(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `RG` varchar(15) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `TelefoneFixo` varchar(12) DEFAULT NULL,
  `TelefoneCelular` varchar(12) DEFAULT NULL,
  `Rua` varchar(100) NOT NULL,
  `Numero` varchar(10) NOT NULL,
  `Complemento` varchar(100) DEFAULT NULL,
  `Bairro` varchar(50) NOT NULL,
  `CEP` varchar(8) NOT NULL,
  `Cidade` varchar(50) NOT NULL,
  `Estado` char(2) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdSetor` int(11) NOT NULL,
  PRIMARY KEY (`IdPessoa`),
  KEY `fk_tb_pessoa_my_aspnet_users1_idx` (`IdUser`),
  KEY `fk_tb_pessoa_tb_setor1_idx` (`IdSetor`),
  CONSTRAINT `fk_tb_pessoa_my_aspnet_users1` FOREIGN KEY (`IdUser`) REFERENCES `my_aspnet_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_pessoa_tb_setor1` FOREIGN KEY (`IdSetor`) REFERENCES `tb_setor` (`IdSetor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoa`
--

LOCK TABLES `tb_pessoa` WRITE;
/*!40000 ALTER TABLE `tb_pessoa` DISABLE KEYS */;
INSERT INTO `tb_pessoa` VALUES (7,'12345678','kekeu','12345678','M',NULL,'7999283155','José Alves dos Santos','1003',NULL,'Queimadas','49500000','Itabaiana','SE',5,1),(8,'87654321','ceceu','87654321','M','99283155','7999283155','José Alves dos Santos','1003',NULL,'Queimadas','49500000','Itabaiana','SE',6,1);
/*!40000 ALTER TABLE `tb_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pessoamoradia`
--

DROP TABLE IF EXISTS `tb_pessoamoradia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pessoamoradia` (
  `IdPessoa` int(11) NOT NULL,
  `IdMoradia` int(11) NOT NULL,
  `Tipo` enum('Morador','Proprietario') NOT NULL DEFAULT 'Morador',
  PRIMARY KEY (`IdPessoa`,`IdMoradia`),
  KEY `TB_Pessoa1_TB_Moradia1_idx` (`IdMoradia`),
  KEY `TB_Pessoa1_TB_Pessoa1_idx` (`IdPessoa`),
  CONSTRAINT `TB_Pessoa1_TB_Moradia1` FOREIGN KEY (`IdMoradia`) REFERENCES `tb_moradia` (`IdMoradia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TB_Pessoa1_TB_Pessoa1` FOREIGN KEY (`IdPessoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pessoamoradia`
--

LOCK TABLES `tb_pessoamoradia` WRITE;
/*!40000 ALTER TABLE `tb_pessoamoradia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pessoamoradia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_planodeconta`
--

DROP TABLE IF EXISTS `tb_planodeconta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_planodeconta` (
  `IdPlanoDeConta` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(150) NOT NULL,
  `IdTipoPlanoDeConta` int(11) NOT NULL,
  PRIMARY KEY (`IdPlanoDeConta`),
  KEY `fk_tb_planodeconta_tb_grupoplanocontas1_idx` (`IdTipoPlanoDeConta`),
  CONSTRAINT `fk_tb_planodeconta_tb_grupoplanocontas1` FOREIGN KEY (`IdTipoPlanoDeConta`) REFERENCES `tb_grupoplanocontas` (`IdGrupoPlanoDeConta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_planodeconta`
--

LOCK TABLES `tb_planodeconta` WRITE;
/*!40000 ALTER TABLE `tb_planodeconta` DISABLE KEYS */;
INSERT INTO `tb_planodeconta` VALUES (1,'Taxa de Condomínio',0),(2,'Taxa Extra',0);
/*!40000 ALTER TABLE `tb_planodeconta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pontuacao`
--

DROP TABLE IF EXISTS `tb_pontuacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pontuacao` (
  `IdPontuacao` int(11) NOT NULL AUTO_INCREMENT,
  `Pontuacao` enum('Zero','Um','Dois','Tres','Quatro','Cinco','Seis','Sete','Oito','Nove','Dez') NOT NULL,
  PRIMARY KEY (`IdPontuacao`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pontuacao`
--

LOCK TABLES `tb_pontuacao` WRITE;
/*!40000 ALTER TABLE `tb_pontuacao` DISABLE KEYS */;
INSERT INTO `tb_pontuacao` VALUES (4,'Zero');
/*!40000 ALTER TABLE `tb_pontuacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pontuacaopessoa`
--

DROP TABLE IF EXISTS `tb_pontuacaopessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pontuacaopessoa` (
  `IdPontuacao` int(11) NOT NULL,
  `IdPessoa` int(11) NOT NULL,
  `Comentario` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IdPontuacao`,`IdPessoa`),
  KEY `fk_tb_pontuacao_has_tb_pessoa_tb_pessoa1_idx` (`IdPessoa`),
  KEY `fk_tb_pontuacao_has_tb_pessoa_tb_pontuacao1_idx` (`IdPontuacao`),
  CONSTRAINT `fk_tb_pontuacao_has_tb_pessoa_tb_pessoa1` FOREIGN KEY (`IdPessoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_pontuacao_has_tb_pessoa_tb_pontuacao1` FOREIGN KEY (`IdPontuacao`) REFERENCES `tb_pontuacao` (`IdPontuacao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pontuacaopessoa`
--

LOCK TABLES `tb_pontuacaopessoa` WRITE;
/*!40000 ALTER TABLE `tb_pontuacaopessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pontuacaopessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_postagem`
--

DROP TABLE IF EXISTS `tb_postagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_postagem` (
  `IdPostagem` int(11) NOT NULL AUTO_INCREMENT,
  `IdPessoa` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `Descricao` varchar(500) NOT NULL,
  `DataCriacao` datetime NOT NULL,
  `DataEncerramento` datetime DEFAULT NULL,
  PRIMARY KEY (`IdPostagem`),
  KEY `TB_Postagem_TB_Pessoa1_idx` (`IdPessoa`),
  CONSTRAINT `TB_Postagem_TB_Pessoa1` FOREIGN KEY (`IdPessoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_postagem`
--

LOCK TABLES `tb_postagem` WRITE;
/*!40000 ALTER TABLE `tb_postagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_postagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_reservaambiente`
--

DROP TABLE IF EXISTS `tb_reservaambiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_reservaambiente` (
  `IdReservaAmbiente` int(11) NOT NULL AUTO_INCREMENT,
  `IdPesssoa` int(11) NOT NULL,
  `DataInicio` datetime NOT NULL,
  `DataFim` datetime NOT NULL,
  `IdAreaPublica` int(11) NOT NULL,
  PRIMARY KEY (`IdReservaAmbiente`),
  KEY `TB_ReservaAmbiente_TB_Pessoa1_idx` (`IdPesssoa`),
  KEY `tb_reservaambiente_tb_areapublica1_idx` (`IdAreaPublica`),
  CONSTRAINT `tb_reservaambiente_tb_areapublica1` FOREIGN KEY (`IdAreaPublica`) REFERENCES `tb_areapublica` (`IdAreaPublica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TB_ReservaAmbiente_TB_Pessoa1` FOREIGN KEY (`IdPesssoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_reservaambiente`
--

LOCK TABLES `tb_reservaambiente` WRITE;
/*!40000 ALTER TABLE `tb_reservaambiente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_reservaambiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_restricaoacesso`
--

DROP TABLE IF EXISTS `tb_restricaoacesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_restricaoacesso` (
  `IdPessoa` int(11) NOT NULL,
  `IdCondominio` int(11) NOT NULL,
  `Restrito` tinyint(1) NOT NULL DEFAULT '0',
  `Dia` datetime NOT NULL,
  `HoraEntrada` enum('00:00','01:00','02:00','03:00','04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00','22:00','23:00','24:00') DEFAULT NULL,
  `HoraSaida` enum('00:00','01:00','02:00','03:00','04:00','05:00','06:00','07:00','08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00','22:00','23:00','24:00') DEFAULT NULL,
  PRIMARY KEY (`IdPessoa`,`IdCondominio`),
  KEY `tb_pessoa1_tb_condominio2_idx` (`IdCondominio`),
  KEY `tb_pessoa1_tb_pessoa2_idx` (`IdPessoa`),
  CONSTRAINT `tb_pessoa1_tb_condominio2` FOREIGN KEY (`IdCondominio`) REFERENCES `tb_condominio` (`IdCondominio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tb_pessoa1_tb_pessoa2` FOREIGN KEY (`IdPessoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_restricaoacesso`
--

LOCK TABLES `tb_restricaoacesso` WRITE;
/*!40000 ALTER TABLE `tb_restricaoacesso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_restricaoacesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_setor`
--

DROP TABLE IF EXISTS `tb_setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_setor` (
  `IdSetor` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`IdSetor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_setor`
--

LOCK TABLES `tb_setor` WRITE;
/*!40000 ALTER TABLE `tb_setor` DISABLE KEYS */;
INSERT INTO `tb_setor` VALUES (1,'Não selecionado','Setor padrão para cadastro de pessoa');
/*!40000 ALTER TABLE `tb_setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_veiculo`
--

DROP TABLE IF EXISTS `tb_veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_veiculo` (
  `IdVeiculo` int(11) NOT NULL AUTO_INCREMENT,
  `IdPesssoa` int(11) NOT NULL,
  `Placa` varchar(7) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Cor` varchar(20) NOT NULL,
  `TipoVeiculo` enum('Carro','Motocicleta') NOT NULL DEFAULT 'Carro',
  `IdMoradia` int(11) NOT NULL,
  PRIMARY KEY (`IdVeiculo`),
  KEY `TB_Veiculo_TB_Pessoa1_idx` (`IdPesssoa`),
  KEY `tb_veiculo_tb_moradia1_idx` (`IdMoradia`),
  CONSTRAINT `tb_veiculo_tb_moradia1` FOREIGN KEY (`IdMoradia`) REFERENCES `tb_moradia` (`IdMoradia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TB_Veiculo_TB_Pessoa1` FOREIGN KEY (`IdPesssoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_veiculo`
--

LOCK TABLES `tb_veiculo` WRITE;
/*!40000 ALTER TABLE `tb_veiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_votoenquete`
--

DROP TABLE IF EXISTS `tb_votoenquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_votoenquete` (
  `IdVoto` int(11) NOT NULL AUTO_INCREMENT,
  `IdPessoa` int(11) NOT NULL,
  `IdEnquete` int(11) NOT NULL,
  `IdOpcao` int(11) NOT NULL,
  `DataVoto` datetime NOT NULL,
  PRIMARY KEY (`IdVoto`),
  KEY `TB_VotoEnquete_TB_OpcoesEnquete1_idx` (`IdOpcao`),
  KEY `TB_VotoEnquete_TB_Pessoa1_idx` (`IdPessoa`),
  KEY `tb_votoenquete_tb_enquete1_idx` (`IdEnquete`),
  CONSTRAINT `tb_votoenquete_tb_enquete1` FOREIGN KEY (`IdEnquete`) REFERENCES `tb_enquete` (`IdEnquete`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TB_VotoEnquete_TB_OpcoesEnquete1` FOREIGN KEY (`IdOpcao`) REFERENCES `tb_opcoesenquete` (`IdOpcao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TB_VotoEnquete_TB_Pessoa1` FOREIGN KEY (`IdPessoa`) REFERENCES `tb_pessoa` (`IdPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_votoenquete`
--

LOCK TABLES `tb_votoenquete` WRITE;
/*!40000 ALTER TABLE `tb_votoenquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_votoenquete` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-09 22:57:01
