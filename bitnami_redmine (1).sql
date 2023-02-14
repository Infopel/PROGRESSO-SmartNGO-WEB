-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 21-Ago-2018 às 06:20
-- Versão do servidor: 5.6.38
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitnami_redmine`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `container_id` int(11) DEFAULT NULL,
  `container_type` varchar(30) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `disk_filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` bigint(20) NOT NULL DEFAULT '0',
  `content_type` varchar(255) DEFAULT '',
  `digest` varchar(64) NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `disk_directory` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `attachments`
--

INSERT INTO `attachments` (`id`, `container_id`, `container_type`, `filename`, `disk_filename`, `filesize`, `content_type`, `digest`, `downloads`, `author_id`, `created_on`, `description`, `disk_directory`) VALUES
(1, 1, 'Project', 'Anuncio adjudicacao Link COmputer 2.pdf', '180205193041_4048834b22f73ae5deb977a3feecb083.pdf', 19486, 'application/pdf', '397e6456d351a6d646675d219427869353109b61e8394a022f5610f6b077a5c0', 0, 4, '2018-02-05 19:30:41', '', '2018/02'),
(2, 1, 'Project', 'Anuncio adjudicacao Khyane.pdf', '180205193042_0e5b5fbb1451f47e8c3b0674e7c173c5.pdf', 19489, 'application/pdf', '8eb9c3fb7f6142ab1505ebb4424c38e8ea828769b77fd20892fd28b1e2282e1a', 0, 4, '2018-02-05 19:30:42', '', '2018/02'),
(3, 1, 'Project', 'PTF_Sistema Monitoria de Projectos.pdf', '180205193042_73ec908883230763cfd321ce890f7feb.pdf', 432989, 'application/pdf', 'c74f36c8177c4e527c4b1e03c22e80d875767815325088a4606baf31fb127b02', 0, 4, '2018-02-05 19:30:42', '', '2018/02'),
(4, 1, 'Document', 'PTF_Sistema Monitoria de Projectos.pdf', '180205193042_73ec908883230763cfd321ce890f7feb.pdf', 432989, 'application/pdf', 'c74f36c8177c4e527c4b1e03c22e80d875767815325088a4606baf31fb127b02', 0, 4, '2018-02-05 19:34:05', '', '2018/02'),
(5, 2, 'Document', 'Anuncio adjudicacao Link COmputer 2.pdf', '180205193041_4048834b22f73ae5deb977a3feecb083.pdf', 19486, 'application/pdf', '397e6456d351a6d646675d219427869353109b61e8394a022f5610f6b077a5c0', 0, 4, '2018-02-05 19:34:30', '', '2018/02'),
(6, 2, 'Document', 'exec-assistant-SFO.JPG', '180205193431_exec-assistant-SFO.JPG', 1343747, 'image/jpeg', 'af41a7f32a19a3e3a2350468c53412ca592579a8a69e97fc8fa58544eaeccdc6', 0, 4, '2018-02-05 19:34:31', '', '2018/02'),
(10, NULL, NULL, 'Notas CI e administração 1.pdf', '180322012620_436f7e6ef81a651aac5f0291a8a4a739.pdf', 511724, 'application/pdf', '548546f7629704dbec609a1aba773018d3f7ea5d5d9bc5f68c2491a1e6c92a16', 0, 25, '2018-03-22 01:26:20', NULL, '2018/03'),
(15, NULL, NULL, 'graficosProgresso.xlsx', '180430004504_graficosProgresso.xlsx', 50581, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'ad6dbcc5a4f6a74f542603b652bf8f46bbb7d25c08c7925ec7852fe8d361910a', 0, 4, '2018-04-30 00:45:04', NULL, '2018/04'),
(19, NULL, NULL, 'logoIPEME.PNG', '180430095605_logoIPEME.PNG', 15357, 'image/png', '2c419ca30f67e9a6c0920187c1fa581b9870262061dad3e6e5b33e2a10fa2e7b', 0, 4, '2018-04-30 09:56:05', NULL, '2018/04'),
(20, NULL, NULL, 'Relatorio final 2017 MUVA AprenderHM.doc', '180522100216_967afa4a7d0febc317192620e90c2297.doc', 846336, 'application/msword', 'ee6c1bc1f7689cac6d70fa8b2e569e44dd4047c670c0ce03e80d575c461625e5', 0, 5, '2018-05-22 10:02:16', NULL, '2018/05'),
(21, 338, 'Issue', 'Capacitaçao Artesanato e Negocios - INEFP.docx', '180522130733_82633d6a580917790d5b852ee7d693f2.docx', 69505, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '3646172c2879213a7e30b726aa78eb5109358919fa1d33f94b4febb77ef6c104', 0, 24, '2018-05-22 13:07:33', 'Relatorio da capacitaçao', '2018/05'),
(32, 504, 'Issue', 'Detailed BETTER Monitoring Plan - CORRIGIDO.docx', '180530115136_e72505dd897096fa3cef49253b80d0bf.docx', 95141, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '9d3ea102b4ad4560ccb57f3491774469a7f1d463072fb6189eb9e167c3c0db26', 0, 25, '2018-05-30 11:51:36', '', '2018/05'),
(33, 3, 'Document', 'IMG_20170630_104844.jpg', '180531134802_IMG_20170630_104844.jpg', 473462, 'image/jpeg', 'c8e2a2d9b591154cbe2d803942dea80b68a8cf31ea3eb9289e962da7214e2977', 0, 7, '2018-05-31 13:48:02', '', '2018/05'),
(34, 4, 'Document', 'ILDA Daimone Foto.JPG', '180531135606_8732703504b70aa92b5f19e4e9293bb7.JPG', 5953047, 'image/jpeg', '222a8e63e0668ac478af9a1d435c81a0242c27f41e58696ba095e93249f5c19e', 0, 7, '2018-05-31 13:56:06', 'Ilda Daimone', '2018/05'),
(35, 5, 'Document', 'Lurdes Simao Foto.JPG', '180531135924_f95758c53bbe116453801766b8cc316a.JPG', 5548448, 'image/jpeg', 'd004ef55707f0a70b708bb43c8b94549e19b982126aa44216e80b4aa867916aa', 0, 7, '2018-05-31 13:59:24', 'Lurdes Simao', '2018/05'),
(38, 7, 'Document', 'Ilda Daimone pt.jpg', '180531140723_516c51a3799bf91c15e6047def45af92.jpg', 309438, 'image/jpeg', '12a3b6e6e239bdfbfee7434bf5364bd8f0072998e6ec9f277f9b0f6b515d6df0', 0, 7, '2018-05-31 14:07:23', '', '2018/05'),
(39, 7, 'Document', 'Lurdes Simao pt.jpg', '180531140724_a1b91f7d0a1269cb201c10651b7d9909.jpg', 326940, 'image/jpeg', 'c622081f85b26a6b164ce3ff66d33922fbd01d28a6c1a86e10f616327581197f', 0, 7, '2018-05-31 14:07:24', '', '2018/05'),
(40, 8, 'Document', 'Foto Rajabo Estudo.jpg', '180531141202_1b00f8e0e9b2ac4bf491240d5793453c.jpg', 3770380, 'image/jpeg', '872b9772ce536df5e932379b5171d4e75a55595ca1a20b011d9fd92344a22a3e', 0, 7, '2018-05-31 14:12:02', '', '2018/05'),
(41, 9, 'Document', 'Ilda Daimone- Consert form.pdf', '180531141421_98700c6679f93021eff28b25b79fab1b.pdf', 832748, 'application/pdf', 'f90a46c78977437c658a24473eee68cb9337e05f8afb5d1d22eb25d7933d31dc', 0, 7, '2018-05-31 14:14:21', '', '2018/05'),
(42, 9, 'Document', 'consentimento Rajabo.jpg', '180531141424_c189b70dcf028db8429a0b423f65ee21.jpg', 1394670, 'image/jpeg', 'fd5f6cbc42b2a81c65bca0bd1a13a956e283028f73d15dba379e31de8f1f4190', 0, 7, '2018-05-31 14:14:24', '', '2018/05'),
(43, 9, 'Document', 'Lurdes Simao- Consert form.pdf', '180531141424_2dda4a7bd5f39ae85518e89c53fa2203.pdf', 841551, 'application/pdf', '0cb1f041fc152025d47838636f5da6a300a432379593e491d02e3028a38e4982', 0, 7, '2018-05-31 14:14:24', '', '2018/05'),
(44, 9, 'Document', 'Consent Form for 1 to 1 Midterm Session (1).docx', '180531141823_c4aa8796c96835a5e5dda0641691b039.docx', 64549, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '1e7821b0443e88f911414c01aff94902add68d035e125ea89ae1a875ee571e3e', 0, 7, '2018-05-31 14:18:23', '', '2018/05'),
(45, 9, 'Document', 'Consent Form- Edson Rufai.jpg', '180531141827_0e1f7ff915cae51f9e5f719df79f7f98.jpg', 3099165, 'image/jpeg', '6275e965f7e02d459bf19f5262801c4f8b20122bc022b25acf816dae8d1763be', 0, 7, '2018-05-31 14:18:27', '', '2018/05'),
(46, 9, 'Document', 'consent form Lucia.jpg', '180531142011_bd7156481932c763fe6049707e4ba393.jpg', 1261645, 'image/jpeg', 'fa08dec724328081d82c52f064ad1d49c565a956c41fd416b5036d5e7070f9ce', 0, 7, '2018-05-31 14:20:11', '', '2018/05'),
(47, 10, 'Document', 'Foto Lucia.PNG', '180531142440_26bf36bb0a58695c5e58be62d212da81.PNG', 688379, 'image/png', '122083598ae9625d6145ff81045f5a85fdbcd5e3ba05fd689acf60b837a7c96d', 0, 7, '2018-05-31 14:24:40', '', '2018/05'),
(48, 11, 'Document', 'Girls inspire cartazes.pdf', '180531145337_ba88b218f3e64945a2043c5789a7cd8a.pdf', 145210, 'application/pdf', '78d911f20d312fa04cf80d1a2d4e12b055339e656a44eaf8484f420d0b41f906', 0, 7, '2018-05-31 14:53:37', '', '2018/05'),
(49, 12, 'Document', 'Video Dayofgirl 2.wmv', '180531150017_49f1872a554320728251d01d9eb40444.wmv', 14237858, 'video/x-ms-wmv', '7b9f83c98852bafa3b9c355d0e8dfcefbe2ef012bddd6d968385c4a918d6fabc', 0, 7, '2018-05-31 15:00:17', '', '2018/05'),
(50, 13, 'Document', '16 dias de activismo (1).jpg', '180531150901_0b52d0c0992488baebf48948184affb4.jpg', 570803, 'image/jpeg', '8eeed4095bdeb0c27847cee430d714a78c97b6b94e96042ce20d1d8eb2ab7635', 0, 7, '2018-05-31 15:09:01', '', '2018/05'),
(51, 14, 'Document', 'Helvia IDW18.jpg', '180531151148_00934578fad5435fd61ee5f7100a4234.jpg', 4565183, 'image/jpeg', '622491b17ed9d2efda43d8e71e1ce5053214b592e390c8f54bf523ab9da2e61c', 0, 7, '2018-05-31 15:11:48', '', '2018/05'),
(52, 14, 'Document', 'Felicia IDW 1.JPG', '180531151159_4f1a1348bcee2d4a8e3e271cea5db247.JPG', 7243785, 'image/jpeg', 'e7b35fc8999db74a0730ee6f4e600147e884e15dfdfa2ac912661b10f04250aa', 0, 7, '2018-05-31 15:11:59', '', '2018/05'),
(53, 14, 'Document', 'Arlindo e Felicia IDW18.jpg', '180531151220_28be47917921d594fd644b53ddb2947f.jpg', 5695667, 'image/jpeg', '2e2e026626f69f9a751186aad126b8e3dc6b6e5c6da7b6083303cbf46d61d545', 0, 7, '2018-05-31 15:12:20', '', '2018/05'),
(54, 14, 'Document', 'Claudina IDW 1.JPG', '180531151222_4634e5952d5be2d5b47f403f9e841910.JPG', 3810952, 'image/jpeg', '7c5684ee7c6c59f26f9992ddf5346349641b0ee67fcc255c55bb14874b15830f', 0, 7, '2018-05-31 15:12:22', '', '2018/05'),
(55, 1, 'WikiPage', '20180402_112027.jpg', '180531151414_20180402_112027.jpg', 4718192, 'image/jpeg', 'b5461381310c73c319babf5127a729f8b778ea23d2aa3eb4c69d7eb7f79d035d', 0, 7, '2018-05-31 15:14:14', '', '2018/05'),
(65, 628, 'Issue', '04_07_2016_REC_Cuco_Relatório_Capacitação_Produção_Livrinhos_NPL.doc', '180621142739_c2da7be43ef16605b00bf51f75c18059.doc', 6660608, 'application/msword', '5c9a0e0026c11a6a4e1cdaa89ae392b33b1244b5e7323b6d511bf9d1b6710b8a', 0, 21, '2018-06-21 14:27:39', 'Relatório de seminário em Zambézia', '2018/06'),
(66, 628, 'Issue', '03_07_2016_REC_Cuco_Relatório_Capacitaão_Prodição_Livrinhos_ZBZ.doc', '180621142745_ce94dc3f8bf6ee6d6af110db689446b7.doc', 6748672, 'application/msword', 'c080db983b89002d427c46027d69c87f76f23a50ff6e7cf27a6d2a22a0aed680', 0, 21, '2018-06-21 14:27:45', 'Relatório do seminário em Nampula', '2018/06'),
(67, 638, 'Issue', '3A_20_06_2016_Programa_Capacit_TELC_PLM_NPL_ZBZ.pdf', '180621152814_cb3d3217ef55801941665bd1a4e548d0.pdf', 126747, 'application/pdf', '8d41c880fc15b8048afb1978b669c8c2fe09996582925540a795fa3a97a3ab79', 0, 21, '2018-06-21 15:28:14', 'Programa de capacitação', '2018/06'),
(68, 638, 'Issue', '5A_17_06_2016_Critérios_Elaboração_Histórias_Infantis.pdf', '180621152820_3cb86fe65dd83f7a3bb4377825f0aec6.pdf', 2339788, 'application/pdf', 'b3eeb0994fc7650083bca04a3f3cc7620d1cbfb2ffe813f5ffe5dc4675bf49cf', 0, 21, '2018-06-21 15:28:20', 'Guião com critérios', '2018/06'),
(69, 638, 'Issue', '1A_TdR_Facilitadores_Escrita_Capacitação_TELC.docx', '180621153039_36698dbe30fe4d7cc01ba9f3211833fd.docx', 84158, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '9c849a4f8457768e80173fcf82dae53fd522b03f0d8b03f6ca6f03f7619062d3', 0, 21, '2018-06-21 15:30:39', 'TdR contratação de consultor Pedagógico', '2018/06'),
(70, 638, 'Issue', '1B_TdR_Facilitadores_Ilustração_Layout_Capacitação_TELC.docx', '180621153039_c5e235cf4960eae0a474c94d08699c7e.docx', 83334, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '07afc4cb7965ea8314d9182435242dac27783602f7954254bf0f3e4f43dde8b8', 0, 21, '2018-06-21 15:30:39', 'TdR contratação do consultor ilustrador', '2018/06'),
(71, 659, 'Issue', 'Lista de materiais para produção de livrinhos.xlsx', '180621171502_e459b39dd33c7a714a87c6482543da08.xlsx', 11451, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', '66ef2b86a106f0360adad98092e87f5eafa78d3749b4cc7bf087ba172e1958ed', 0, 21, '2018-06-21 17:15:02', '', '2018/06'),
(72, 677, 'Issue', 'Bibliotecas móveis - proj Eu Leio.doc', '180621182539_9cddb1cb77e4ac4581250c03e6ca28f7.doc', 9618432, 'application/msword', '3c1b52081254fe078450f2b330ad533a978a5a3fa60385410d85edb8d86d0dd8', 0, 21, '2018-06-21 18:25:39', 'Imagem de estantes e baús como bibliotecas escolares', '2018/06'),
(73, 678, 'Issue', 'Mapa_Distrib_Livros_Escola_2018.xls', '180621185356_Mapa_Distrib_Livros_Escola_2018.xls', 51200, 'application/vnd.ms-excel', 'f175943a8e05943a8135ce6e53b0c634490754d74947acbe607aa4734e630e51', 0, 21, '2018-06-21 18:53:56', '', '2018/06'),
(74, 679, 'Issue', 'ENV_Draft_Regulamento_Biblioteca_Escolar.docx', '180621190958_ENV_Draft_Regulamento_Biblioteca_Escolar.docx', 21735, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'b7018b4e93124a7f98a7638aa230d390b05780d6de49a6ae2bfba9b0aedee51e', 0, 21, '2018-06-21 19:09:58', '', '2018/06'),
(75, 679, 'Issue', 'RELATÓRIO DO SEMINÁRIO DE NAMPULA - 2016.doc', '180621191032_d347b4165313974e730dd0c5009aafb6.doc', 2348544, 'application/msword', '4a06c0c291f43d8931fde382e559ad7ae4538ef3aaefb5a6e05b1103f5ca56a2', 0, 21, '2018-06-21 19:10:32', '', '2018/06'),
(76, 681, 'Issue', 'Bibliotecas móveis - proj Eu Leio.doc', '180621182539_9cddb1cb77e4ac4581250c03e6ca28f7.doc', 9618432, 'application/msword', '3c1b52081254fe078450f2b330ad533a978a5a3fa60385410d85edb8d86d0dd8', 0, 21, '2018-06-21 19:26:14', '', '2018/06'),
(77, 682, 'Issue', 'Mapa_Distrib_Livros_Escola_2018.xls', '180621193524_Mapa_Distrib_Livros_Escola_2018.xls', 51200, 'application/vnd.ms-excel', 'af7b40d487e2359bb81c6d6c20ca58fc25607beb886076005609dbf911b4c06a', 0, 21, '2018-06-21 19:35:24', '', '2018/06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_sources`
--

CREATE TABLE `auth_sources` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `host` varchar(60) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_password` varchar(255) DEFAULT '',
  `base_dn` varchar(255) DEFAULT NULL,
  `attr_login` varchar(30) DEFAULT NULL,
  `attr_firstname` varchar(30) DEFAULT NULL,
  `attr_lastname` varchar(30) DEFAULT NULL,
  `attr_mail` varchar(30) DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  `filter` text,
  `timeout` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `boards`
--

CREATE TABLE `boards` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `messages_count` int(11) NOT NULL DEFAULT '0',
  `last_message_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `changes`
--

CREATE TABLE `changes` (
  `id` int(11) NOT NULL,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `from_path` text,
  `from_revision` varchar(255) DEFAULT NULL,
  `revision` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `changesets`
--

CREATE TABLE `changesets` (
  `id` int(11) NOT NULL,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) NOT NULL,
  `committer` varchar(255) DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` longtext,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `changesets_issues`
--

CREATE TABLE `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `changeset_parents`
--

CREATE TABLE `changeset_parents` (
  `changeset_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `commented_type` varchar(30) NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `field_format` varchar(30) NOT NULL DEFAULT '',
  `possible_values` text,
  `regexp` varchar(255) DEFAULT '',
  `min_length` int(11) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '0',
  `format_store` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `type`, `name`, `field_format`, `possible_values`, `regexp`, `min_length`, `max_length`, `is_required`, `is_for_all`, `is_filter`, `position`, `searchable`, `default_value`, `editable`, `visible`, `multiple`, `format_store`, `description`) VALUES
(1, 'UserCustomField', 'Distrito onde trabalha', 'string', NULL, '', NULL, NULL, 0, 0, 0, 4, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(2, 'UserCustomField', 'Telefone', 'string', NULL, '', NULL, NULL, 0, 0, 0, 5, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(3, 'UserCustomField', 'Província onde trabalha', 'list', '---\n- Maputo-Cidade\n- Maputo-Província\n- Gaza\n- Inhambane\n- Manica\n- Sofala\n- Zambézia\n- Tete\n- Cabo Delgado\n- Niassa\n', '', NULL, NULL, 0, 0, 0, 3, 0, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: check_box\n', ''),
(4, 'GroupCustomField', 'Descrição ', 'string', NULL, '', NULL, NULL, 0, 0, 0, 1, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(5, 'ProjectCustomField', 'Codigo do contracto', 'string', NULL, '', NULL, NULL, 0, 0, 0, 5, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(6, 'UserCustomField', 'Pais de Origem', 'list', '---\n- Internacional\n- Afeganistão\n- África do Sul\n- Albânia\n- Alemanha\n- Andorra\n- Angola\n- Antiga e Barbuda\n- Arábia Saudita\n- Argélia\n- Argentina\n- Arménia\n- Austrália\n- Áustria\n- Azerbaijão\n- Bahamas\n- Bangladexe\n- Barbados\n- Barém\n- Bélgica\n- Belize\n- Benim\n- Bielorrússia\n- Bolívia\n- Bósnia e Herzegovina\n- Botsuana\n- Brasil\n- Brunei\n- Bulgária\n- Burquina Faso\n- Burúndi\n- Butão\n- Cabo Verde\n- Camarões\n- Camboja\n- Canadá\n- Catar\n- Cazaquistão\n- Chade\n- Chile\n- China\n- Chipre\n- Colômbia\n- Comores\n- Congo-Brazzaville\n- Coreia do Norte\n- Coreia do Sul\n- Cosovo\n- Costa do Marfim\n- Costa Rica\n- Croácia\n- Cuaite\n- Cuba\n- Dinamarca\n- Dominica\n- Egito\n- Emirados Árabes Unidos\n- Equador\n- Eritreia\n- Eslováquia\n- Eslovénia\n- Espanha\n- Estado da Palestina\n- Estados Unidos\n- Estónia\n- Etiópia\n- Fiji\n- Filipinas\n- Finlândia\n- França\n- Gabão\n- Gâmbia\n- Gana\n- Geórgia\n- Granada\n- Grécia\n- Guatemala\n- Guiana\n- Guiné\n- Guiné Equatorial\n- Guiné-Bissau\n- Haiti\n- Honduras\n- Hungria\n- Iémen\n- Ilhas Marechal\n- Índia\n- Indonésia\n- Irão\n- Iraque\n- Irlanda\n- Islândia\n- Israel\n- Itália\n- Jamaica\n- Japão\n- Jibuti\n- Jordânia\n- Laus\n- Lesoto\n- Letónia\n- Líbano\n- Libéria\n- Líbia\n- Listenstaine\n- Lituânia\n- Luxemburgo\n- Macedónia\n- Madagáscar\n- Malásia\n- Maláui\n- Maldivas\n- Mali\n- Malta\n- Marrocos\n- Maurícia\n- Mauritânia\n- México\n- Mianmar\n- Micronésia\n- Moçambique\n- Moldávia\n- Mónaco\n- Mongólia\n- Montenegro\n- Namíbia\n- Nauru\n- Nepal\n- Nicarágua\n- Níger\n- Nigéria\n- Noruega\n- Nova Zelândia\n- Omã\n- Países Baixos\n- Palau\n- Panamá\n- Papua Nova Guiné\n- Paquistão\n- Paraguai\n- Peru\n- Polónia\n- Portugal\n- Quénia\n- Quirguistão\n- Quiribáti\n- Reino Unido\n- República Centro-Africana\n- República Checa\n- República Democrática do Congo\n- República Dominicana\n- Roménia\n- Ruanda\n- Rússia\n- Salomão\n- Salvador\n- Samoa\n- Santa Lúcia\n- São Cristóvão e Neves\n- São Marinho\n- São Tomé e Príncipe\n- São Vicente e Granadinas\n- Seicheles\n- Senegal\n- Serra Leoa\n- Sérvia\n- Singapura\n- Síria\n- Somália\n- Sri Lanca\n- Suazilândia\n- Sudão\n- Sudão do Sul\n- Suécia\n- Suíça\n- Suriname\n- Tailândia\n- Taiuã\n- Tajiquistão\n- Tanzânia\n- Timor-Leste\n- Togo\n- Tonga\n- Trindade e Tobago\n- Tunísia\n- Turcomenistão\n- Turquia\n- Tuvalu\n- Ucrânia\n- Uganda\n- Uruguai\n- Usbequistão\n- Vanuatu\n- Vaticano\n- Venezuela\n- Vietname\n- Zâmbia\n- Zimbábue\n', '', NULL, NULL, 0, 0, 1, 2, 0, 'Moçambique', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: \'\'\n', ''),
(7, 'UserCustomField', 'Programa(s) que apoia', 'list', '---\n- Educação\n- Saúde\n- Cidadania\n- Desenvolvimento Institucional\n- Outro\n', '', NULL, NULL, 0, 0, 1, 6, 0, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: check_box\n', ''),
(8, 'UserCustomField', 'Tipo', 'list', '---\n- Colaborador\n- Parceiro/Stakeholder\n- Outro\n', '', NULL, NULL, 0, 0, 1, 7, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: \'\'\n', ''),
(9, 'UserCustomField', 'Pagina Web', 'link', NULL, '', NULL, NULL, 0, 0, 0, 8, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(10, 'UserCustomField', 'Cargo', 'string', NULL, '', NULL, NULL, 0, 0, 0, 9, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(11, 'UserCustomField', 'Endereço ', 'string', NULL, '', NULL, NULL, 0, 0, 0, 10, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(14, 'ProjectCustomField', 'Província (s)', 'list', '---\n- Maputo-Cidade\n- Maputo-Província\n- Gaza\n- Inhambane\n- Manica\n- Sofala\n- Tete\n- Cabo Delgado\n- Niassa\n- Nampula\n- Zambézia\n', '', NULL, NULL, 1, 0, 1, 6, 1, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: check_box\n', ''),
(17, 'ProjectCustomField', 'Objectivo Geral', 'string', NULL, '', NULL, NULL, 1, 0, 0, 14, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(19, 'ProjectCustomField', 'Resultados esperados', 'text', NULL, '', NULL, NULL, 0, 0, 0, 16, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\n', ''),
(22, 'ProjectCustomField', 'Grupo-Alvo', 'string', NULL, '', NULL, NULL, 1, 0, 0, 9, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(23, 'ProjectCustomField', 'Orçamento (em MTN)', 'float', NULL, '', NULL, NULL, 0, 0, 1, 18, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(24, 'ProjectCustomField', 'Objectivos especificos', 'text', NULL, '', NULL, NULL, 0, 0, 0, 15, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\n', ''),
(29, 'IssueCustomField', 'Orçamento (em Mzn)', 'float', NULL, '', NULL, NULL, 0, 1, 1, 16, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(31, 'IssueCustomField', 'Meios de Verificação ', 'list', '---\n- Entrevista\n- Inquérito\n- Observação\n', '', NULL, NULL, 0, 1, 1, 18, 1, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: \'\'\n', ''),
(32, 'IssueCustomField', 'Responsabilidade', 'user', NULL, '', NULL, NULL, 0, 1, 1, 19, 0, NULL, 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nuser_role: []\nedit_tag_style: \'\'\n', ''),
(33, 'IssueCustomField', 'Frequencia', 'list', '---\n- Semanal\n- Mensal\n- Trimestral\n- Semestral\n- Anual\n- Outro\n', '', NULL, NULL, 1, 1, 1, 20, 1, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: \'\'\n', ''),
(34, 'ProjectCustomField', 'Racional do Projecto', 'text', NULL, '', NULL, NULL, 0, 0, 0, 17, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\n', ''),
(35, 'ProjectCustomField', 'Duração (em anos)', 'string', NULL, '', NULL, NULL, 0, 0, 1, 3, 1, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(37, 'IssueCustomField', 'Programa', 'list', '---\n- Saúde\n- Educação\n- Cidadania\n- Desenvolvimento Institucional\n', '', NULL, NULL, 0, 0, 0, 2, 1, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: \'\'\n', ''),
(38, 'ProjectCustomField', 'Nr.de Beneficiários(Homens)', 'int', NULL, '', NULL, NULL, 0, 0, 1, 11, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(39, 'ProjectCustomField', 'Nr.de Beneficiarios (Mulheres)', 'int', NULL, '', NULL, NULL, 0, 0, 1, 10, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(40, 'ProjectCustomField', 'Código da Contabilidade', 'string', NULL, '', NULL, NULL, 0, 0, 1, 8, 1, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(42, 'ProjectCustomField', 'Duração (em meses)', 'int', NULL, '', NULL, NULL, 0, 0, 0, 4, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(43, 'ProjectCustomField', 'Distrito (s)', 'list', '---\n- ALTO MOLOCUE\n- ANCUABE\n- ANGOCHE\n- ANGONIA\n- BALAMA\n- BÁRUÈ\n- BILENE MACIA\n- BOANE\n- BUZI\n- C. DE CHIMOIO\n- C. DE XAI-XAI\n- C. ILHA DE MOCAMBIQUE\n- CAHORA-BASSA\n- CAIA\n- CHANGARA\n- CHEMBA\n- CHERINGOMA\n- CHIBABAVA\n- CHIBUTO\n- CHICUALACUALA\n- CHIGUBO\n- CHIMBUNILA\n- CHINDE\n- CHIPUNDE\n- CHIURE\n- CHIUTA\n- CHÓKWE\n- CIDADE DA BEIRA\n- CIDADE DE LICHINGA\n- CIDADE DE MATOLA\n- CIDADE DE NAMPULA\n- CIDADE DE PEMBA\n- CIDADE DE QUELIMANE\n- CIDADE DE TETE\n- CUAMBA\n- DISTRITO MUNICIPAL KaMavota\n- DISTRITO MUNICIPAL KaMaxaqueni\n- DISTRITO MUNICIPAL KaMpfumo\n- DISTRITO MUNICIPAL KaMubukwana\n- DISTRITO MUNICIPAL KaNyaka\n- DISTRITO MUNICIPAL KaTembe\n- DISTRITO MUNICIPAL Nhlamankulo\n- DONDO\n- FUNHALOURO\n- GILE\n- GONDOLA\n- GORONGOSA\n- GOVURO\n- GUIJÁ\n- GURO\n- GURUE\n- HOMOINE\n- IBO\n- ILE\n- INHARRIME\n- INHASSORO\n- INHASSUNGE\n- JANGAMO\n- Kampfumo\n- LAGO\n- LALAUA\n- LICHINGA\n- LUGELA\n- MABALANE\n- MABOTE\n- MACANGA\n- MACHANGA\n- MACHAZE\n- MACOMIA\n- MACOSSA\n- MAGANJA DA COSTA\n- MAGOE\n- MAGUDE\n- MAJUNE\n- MALEMA\n- MANDIMBA\n- MANDLCAZE\n- MANHIÇA\n- MARAVIA\n- MARÍNGUE\n- MARRACUENE\n- MARROMEU\n- MARRUPA\n- MASSANGENA\n- MASSINGA\n- MASSINGIR\n- MATUTUINE\n- MAUA\n- MAVAGO\n- MECANHELAS\n- MECONTA\n- MECUBURI\n- MECUFI\n- MECULA\n- MECULO\n- MELUCO\n- MEMBA\n- MILANGE\n- MOAMBA\n- MOATIZE\n- MOCIMBOA DA PRAIA\n- MOCUBA\n- MOGINCUAL\n- MOGOVOLAS\n- MOMA\n- MONAPO\n- MONTEPUEZ\n- MOPEIA\n- MORRUMBALA\n- MORRUMBENE\n- MOSSURIL\n- MOSSURIZE\n- MUANZA\n- MUECATE\n- MUEDA\n- MUEMBE\n- MUIDUMBE\n- MUNIC. DE INHAMBANE\n- MUNICÍPIO DE MAXIXE\n- MURRUPULA\n- MUTARARA\n- NACALA-PORTO\n- NACALA-VELHA\n- NACAROA\n- NAMAACHA\n- NAMACURRA\n- NAMAPA-ERAT\n- NAMARRÓI\n- NAMUNO\n- NANGADE\n- NGAUMA\n- NHAMATANDA\n- NICUADALA\n- NIPEPE\n- PALMA\n- PANDA\n- PEBANE\n- PEMBA-METUGE\n- QUISSANGA\n- RAPALE\n- RIBAUE\n- SANGA\n- SUSSUNDENGA\n- TAMBARA\n- TSANGANO\n- VILANKULO\n- XAI-XAI\n- ZAVALA\n- ZUMBO\n', '', NULL, NULL, 1, 0, 1, 7, 1, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: check_box\n', ''),
(44, 'IssueCustomField', 'Nr.Beneficiários(0-5,mulher)', 'int', NULL, '', NULL, NULL, 0, 1, 0, 5, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', 'Indique a meta'),
(45, 'IssueCustomField', 'Categoria', 'list', '---\n- Orçamentação\n- Formação\n- Seminários\n', '', NULL, NULL, 0, 0, 0, 1, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: \'\'\n', ''),
(46, 'IssueCustomField', 'Fonte de verificação ', 'string', NULL, '', NULL, NULL, 0, 1, 0, 47, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(49, 'IssueCustomField', 'Base de Referencia ', 'string', NULL, '', NULL, NULL, 0, 1, 0, 21, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(51, 'IssueCustomField', 'Observações ', 'text', NULL, '', NULL, NULL, 0, 1, 0, 51, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: full\nfull_width_layout: \'0\'\n', ''),
(53, 'IssueCustomField', 'Percentagem actual (Homens)', 'float', NULL, '', NULL, NULL, 0, 1, 0, 27, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(54, 'IssueCustomField', 'Percentagem a alcançar(homens)', 'float', NULL, '', NULL, NULL, 0, 1, 0, 28, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(55, 'IssueCustomField', 'Total da população ', 'float', NULL, '', NULL, NULL, 0, 1, 0, 22, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(56, 'IssueCustomField', 'Percentagem actual (mulheres)', 'float', NULL, '', NULL, NULL, 0, 1, 0, 29, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(57, 'IssueCustomField', 'Percentagem alcancar(mulheres)', 'float', NULL, '', NULL, NULL, 0, 1, 0, 30, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(58, 'IssueCustomField', 'Percentagem actual (total)', 'float', NULL, '', NULL, NULL, 0, 1, 0, 25, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(59, 'IssueCustomField', 'Percentagem alcançar (total)', 'float', NULL, '', NULL, NULL, 0, 1, 0, 26, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(60, 'IssueCustomField', 'Provincia', 'list', '---\n- Maputo-Cidade\n- Maputo-Província\n- Gaza\n- Inhambane\n- Manica\n- Sofala\n- Tete\n- Cabo Delgado\n- Niassa\n- Nampula\n- Zambézia\n', '', NULL, NULL, 0, 1, 1, 23, 1, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: check_box\n', ''),
(61, 'IssueCustomField', 'Percentagem  (Maputo)', 'float', NULL, '', NULL, NULL, 0, 1, 0, 31, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(62, 'IssueCustomField', 'Percentagem  (Maputo Cidade)', 'float', NULL, '', NULL, NULL, 0, 1, 1, 32, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(63, 'IssueCustomField', 'Percentagem  (Inhambane)', 'float', NULL, '', NULL, NULL, 0, 1, 1, 33, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(64, 'IssueCustomField', 'Percentagem  (Gaza)', 'float', NULL, '', NULL, NULL, 0, 1, 1, 34, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(65, 'IssueCustomField', 'Percentagem  (Manica)', 'float', NULL, '', NULL, NULL, 0, 1, 1, 35, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(66, 'IssueCustomField', 'Percentagem  (Sofala)', 'float', NULL, '', NULL, NULL, 0, 1, 1, 36, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(67, 'IssueCustomField', 'Percentagem  (Tete)', 'float', NULL, '', NULL, NULL, 0, 1, 1, 37, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(68, 'IssueCustomField', 'Percentagem  (Zambézia)', 'float', NULL, '', NULL, NULL, 0, 1, 1, 38, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(69, 'IssueCustomField', 'Percentagem (Niassa)', 'float', NULL, '', NULL, NULL, 0, 1, 1, 40, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(70, 'IssueCustomField', 'Percentagem  (Cabo-Delgado)', 'float', NULL, '', NULL, NULL, 0, 1, 1, 39, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(71, 'ProjectCustomField', 'Orçamento (outra moeda)', 'string', NULL, '', NULL, NULL, 0, 0, 0, 19, 0, '0 USD', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(72, 'ProjectCustomField', 'Ano de Início', 'int', NULL, '', NULL, NULL, 1, 0, 1, 1, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(74, 'ProjectCustomField', 'Ano de Fim', 'int', NULL, '', NULL, NULL, 1, 0, 1, 2, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(75, 'UserCustomField', 'Nacionalidade', 'list', '---\n- Moçambicana\n- Estrangeira\n- Outro\n', '', NULL, NULL, 0, 0, 1, 1, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: \'\'\n', ''),
(76, 'IssueCustomField', 'Distrito', 'list', '---\n- ALTO MOLOCUE\n- ANCUABE\n- ANGOCHE\n- ANGONIA\n- BALAMA\n- BÁRUÈ\n- BILENE MACIA\n- BOANE\n- BUZI\n- C. DE CHIMOIO\n- C. DE XAI-XAI\n- C. ILHA DE MOCAMBIQUE\n- CAHORA-BASSA\n- CAIA\n- CHANGARA\n- CHEMBA\n- CHERINGOMA\n- CHIBABAVA\n- CHIBUTO\n- CHICUALACUALA\n- CHIGUBO\n- CHIMBUNILA\n- CHINDE\n- CHIPUNDE\n- CHIURE\n- CHIUTA\n- CHÓKWE\n- CIDADE DA BEIRA\n- CIDADE DE LICHINGA\n- CIDADE DE MATOLA\n- CIDADE DE NAMPULA\n- CIDADE DE PEMBA\n- CIDADE DE QUELIMANE\n- CIDADE DE TETE\n- CUAMBA\n- DISTRITO MUNICIAL KaMavota\n- DISTRITO MUNICIAL KaMaxaqueni\n- DISTRITO MUNICIAL KaMpfumo\n- DISTRITO MUNICIAL KaMubukwana\n- DISTRITO MUNICIAL KaNyaka\n- DISTRITO MUNICIAL KaTembe\n- DISTRITO MUNICIAL Nhlamankulo\n- DONDO\n- FUNHALOURO\n- GILE\n- GONDOLA\n- GORONGOSA\n- GOVURO\n- GUIJÁ\n- GURO\n- GURUE\n- HOMOINE\n- IBO\n- ILE\n- Indefinido\n- Indefinido_Cabo-Delgado\n- Indefinido_Gaza\n- Indefinido_Inhambane\n- Indefinido_Manica\n- Indefinido_Maputo-Provincia\n- Indefinido_Nampula\n- Indefinido_Niassa\n- Indefinido_Sofala\n- Indefinido_Tete\n- Indefinido_Zambezia\n- INHARRIME\n- INHASSORO\n- INHASSUNGE\n- JANGAMO\n- Kampfumo\n- LAGO\n- LALAUA\n- LICHINGA\n- LUGELA\n- MABALANE\n- MABOTE\n- MACANGA\n- MACHANGA\n- MACHAZE\n- MACOMIA\n- MACOSSA\n- MAGANJA DA COSTA\n- MAGOE\n- MAGUDE\n- MAJUNE\n- MALEMA\n- MANDIMBA\n- MANDLCAZE\n- MANHIÇA\n- MARAVIA\n- MARÍNGUE\n- MARRACUENE\n- MARROMEU\n- MARRUPA\n- MASSANGENA\n- MASSINGA\n- MASSINGIR\n- MATUTUINE\n- MAUA\n- MAVAGO\n- MECANHELAS\n- MECONTA\n- MECUBURI\n- MECUFI\n- MECULA\n- MECULO\n- MELUCO\n- MEMBA\n- MILANGE\n- MOAMBA\n- MOATIZE\n- MOCIMBOA DA PRAIA\n- MOCUBA\n- MOGINCUAL\n- MOGOVOLAS\n- MOMA\n- MONAPO\n- MONTEPUEZ\n- MOPEIA\n- MORRUMBALA\n- MORRUMBENE\n- MOSSURIL\n- MOSSURIZE\n- MUANZA\n- MUECATE\n- MUEDA\n- MUEMBE\n- MUIDUMBE\n- MUNIC. DE INHAMBANE\n- MUNICÍPIO DE MAXIXE\n- MURRUPULA\n- MUTARARA\n- NACALA-PORTO\n- NACALA-VELHA\n- NACAROA\n- NAMAACHA\n- NAMACURRA\n- NAMAPA-ERAT\n- NAMARRÓI\n- NAMUNO\n- NANGADE\n- NGAUMA\n- NHAMATANDA\n- NICUADALA\n- NIPEPE\n- PALMA\n- PANDA\n- PEBANE\n- PEMBA-METUGE\n- QUISSANGA\n- RAPALE\n- RIBAUE\n- SANGA\n- SUSSUNDENGA\n- TAMBARA\n- TSANGANO\n- VILANKULO\n- XAI-XAI\n- ZAVALA\n- ZUMBO\n', '', NULL, NULL, 0, 1, 1, 24, 1, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: check_box\n', ''),
(80, 'IssueCustomField', 'Quantidade', 'int', NULL, '', NULL, NULL, 0, 1, 0, 14, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(81, 'IssueCustomField', 'Orçamento (em USD)', 'float', NULL, '', NULL, NULL, 0, 0, 0, 17, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(82, 'IssueCustomField', 'Item', 'list', '---\n- livro\n- equipamento\n- mobiliário\n- outro\n', '', NULL, NULL, 0, 1, 1, 15, 1, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: \'\'\n', ''),
(83, 'IssueCustomField', 'Nr.beneficiarios(6-14,homem)', 'int', NULL, '', NULL, NULL, 0, 1, 0, 6, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', 'Indique a meta'),
(84, 'IssueCustomField', 'Nr.beneficiarios(6-14,mulher)', 'int', NULL, '', NULL, NULL, 0, 1, 0, 7, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', 'Indique a meta'),
(85, 'IssueCustomField', 'Nr.beneficiarios(15-24,homem)', 'int', NULL, '', NULL, NULL, 0, 1, 0, 8, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', 'Indique a meta'),
(86, 'IssueCustomField', 'Nr.beneficiarios(15-24,mulher)', 'int', NULL, '', NULL, NULL, 0, 1, 0, 9, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', 'Indique a meta'),
(87, 'IssueCustomField', 'Nr.beneficiarios(25-49,homem)', 'int', NULL, '', NULL, NULL, 0, 1, 0, 10, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', 'Indique a meta'),
(88, 'IssueCustomField', 'Nr.beneficiarios(25-49,mulher)', 'int', NULL, '', NULL, NULL, 0, 1, 0, 11, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', 'Indique a meta'),
(89, 'IssueCustomField', 'Nr.beneficiarios(>50,homem)', 'int', NULL, '', NULL, NULL, 0, 1, 0, 12, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', 'Indique a meta'),
(90, 'IssueCustomField', 'Nr.beneficiarios(>50,mulher)', 'int', NULL, '', NULL, NULL, 0, 1, 0, 13, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', 'Indique a meta'),
(91, 'IssueCustomField', 'Nr.deficientes (visual)', 'int', NULL, '', NULL, NULL, 0, 0, 0, 41, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(92, 'IssueCustomField', 'Nr.deficientes (auditiva)', 'int', NULL, '', NULL, NULL, 0, 0, 0, 42, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(93, 'IssueCustomField', 'Nr.deficientes (motora)', 'int', NULL, '', NULL, NULL, 0, 0, 0, 43, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(94, 'IssueCustomField', 'Nr.deficientes (mental)', 'int', NULL, '', NULL, NULL, 0, 0, 0, 44, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(95, 'IssueCustomField', 'Nr.Beneficiários (0-5,homem)', 'int', NULL, '', NULL, NULL, 0, 1, 1, 4, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', 'Indique a meta'),
(96, 'ProjectCustomField', 'Objectivo no PD', 'list', '---\n- Melhorar o acesso a educação básica de qualidade pelas comunidades locais, especialmente\n  a escolarização de crianças e alfabetização de jovens e mulheres, em particular\n  nas províncias de Cabo Delgado e Niassa.\n- Promover a saúde comunitária preventiva através da educação e práticas, particularmente\n  em:Nutrição, Agricultura e meio ambiente.\n- Promover a cidadania activa e reforçar as capacidades das comunidades locais e das\n  suas capacidades através da provisão de conhecimento básico e desenvolvimento de\n  rede que favoreçam a defesa dos direitos das comunidades locais.\n- Reforçar a capacidade institucional da PROGRESSO através da profissionalização da\n  própria organização\n', '', NULL, NULL, 0, 0, 0, 13, 0, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: check_box\n', 'Objectivo que responde ao programa de desenvolvimento da Progresso'),
(97, 'IssueCustomField', 'Nome do Indicador', 'string', NULL, '', NULL, NULL, 0, 0, 0, 3, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(99, 'IssueCustomField', 'Variável ', 'list', '---\n- Nr.Beneficiários (0-5,homem)\n- Nr.Beneficiários (0-5,mulher)\n- Nr.Beneficiários (6-14,homem)\n- Nr.Beneficiários (6-14,mulher)\n- Nr.Beneficiários (15-24,homem)\n- Nr.Beneficiários (15-24,mulher)\n- Nr.Beneficiários (25-49,homem)\n- Nr.Beneficiários (25-49,mulher)\n- Nr.Beneficiários (>50,homem)\n- Nr.Beneficiários (>50,mulher)\n- Nr.Deficientes (visual)\n- Nr.Deficientes (auditivo)\n- Nr.Deficientes (motor)\n- Nr.Deficientes (mental)\n- Quantidade de livros\n- Quantidade de equipamento\n- Quantidade de mobiliario\n- Numero de Curriculos\n', '', NULL, NULL, 0, 1, 1, 45, 1, '', 1, 1, 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: check_box\n', ''),
(100, 'IssueCustomField', 'Meta', 'int', NULL, '', NULL, NULL, 0, 1, 1, 46, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(101, 'TimeEntryCustomField', 'Realizado', 'int', NULL, '', NULL, NULL, 0, 0, 1, 1, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(102, 'IssueCustomField', 'Unidade de medida da meta', 'list', '---\n- Unidade\n- Percentual\n', '', NULL, NULL, 0, 1, 0, 48, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: \'\'\n', ''),
(103, 'IssueCustomField', 'Meta (descritiva)', 'string', NULL, '', NULL, NULL, 0, 1, 0, 49, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(105, 'IssueCustomField', 'Alcançado', 'string', NULL, '', NULL, NULL, 0, 1, 0, 50, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n', ''),
(107, 'ProjectCustomField', 'Nr. beneficiarios (crianças)', 'int', NULL, '', NULL, NULL, 0, 0, 0, 12, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', ''),
(108, 'IssueCustomField', 'Valor gasto (MZN)', 'float', NULL, '', NULL, NULL, 0, 1, 0, 52, 0, '', 1, 1, 0, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\n', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_fields_projects`
--

CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `custom_fields_projects`
--

INSERT INTO `custom_fields_projects` (`custom_field_id`, `project_id`) VALUES
(37, 6),
(37, 13),
(37, 14),
(37, 15),
(37, 16),
(44, 6),
(44, 13),
(44, 15),
(44, 16),
(45, 13),
(45, 14),
(45, 15),
(45, 16),
(81, 1),
(81, 2),
(81, 4),
(81, 6),
(81, 7),
(81, 12),
(81, 13),
(81, 14),
(81, 15),
(81, 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_fields_roles`
--

CREATE TABLE `custom_fields_roles` (
  `custom_field_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_fields_trackers`
--

CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `custom_fields_trackers`
--

INSERT INTO `custom_fields_trackers` (`custom_field_id`, `tracker_id`) VALUES
(29, 11),
(29, 13),
(29, 16),
(44, 16),
(45, 11),
(46, 12),
(51, 12),
(53, 15),
(56, 15),
(58, 15),
(60, 11),
(61, 15),
(62, 15),
(63, 15),
(64, 15),
(65, 15),
(66, 15),
(67, 15),
(68, 15),
(69, 15),
(70, 15),
(76, 11),
(81, 11),
(81, 13),
(81, 15),
(81, 16),
(91, 11),
(92, 11),
(93, 11),
(94, 11),
(97, 11),
(99, 12),
(100, 12),
(102, 12),
(103, 12),
(105, 12),
(108, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_field_enumerations`
--

CREATE TABLE `custom_field_enumerations` (
  `id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_reports`
--

CREATE TABLE `custom_reports` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `group_by` varchar(255) NOT NULL DEFAULT '',
  `chart_type` varchar(255) DEFAULT NULL,
  `null_text` varchar(255) NOT NULL DEFAULT 'Null',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `custom_reports`
--

INSERT INTO `custom_reports` (`id`, `project_id`, `user_id`, `is_public`, `name`, `description`, `group_by`, `chart_type`, `null_text`, `created_at`, `updated_at`) VALUES
(1, 17, 67, 1, 'Relatório de Actividades por Colaborador', '', 'assigned_to', 'pie', 'Null', '2018-06-24 20:48:19', '2018-06-28 12:24:16'),
(2, 12, 67, 1, 'Actividades por Tipo', '', 'tracker', 'pie', 'nenhum', '2018-06-24 20:57:20', '2018-07-01 20:18:19'),
(3, 24, 67, 1, 'Orçamento / Valor Gasto', '', 'category', 'bar', 'Null', '2018-06-25 12:51:51', '2018-07-01 20:47:02'),
(4, 24, 67, 1, 'Numero de Beneficiários por género ', '', 'project', 'pie', 'Null', '2018-06-25 12:52:30', '2018-07-01 20:46:52'),
(5, 24, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'project', 'undev_pie', 'Null', '2018-06-25 12:54:11', '2018-07-01 20:46:20'),
(6, 24, 67, 1, 'Alocação de actividades por colaborador', '', 'assigned_to', 'pie', 'Nenhum', '2018-06-25 12:55:30', '2018-07-01 20:46:09'),
(7, 1, 67, 0, 'Projectos por provincia', '', 'tracker', 'pie', 'Null', '2018-06-25 12:57:04', '2018-06-25 12:57:54'),
(8, 12, 67, 1, 'Beneficiários por Género ', '', 'assigned_to', 'pie', 'Null', '2018-06-25 12:58:37', '2018-07-01 20:36:15'),
(9, 12, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'tracker', 'pie', 'Null', '2018-06-25 12:59:24', '2018-07-01 20:36:26'),
(10, 12, 67, 1, 'Orçamento / Valor Gasto', '', 'tracker', 'bar', 'Nenhum', '2018-06-25 13:00:54', '2018-07-01 20:36:38'),
(11, 21, 67, 1, 'Alocação de actividades por colaborador', '', 'assigned_to', 'pie', 'Nenhum', '2018-06-28 11:52:00', '2018-07-01 20:41:28'),
(12, 18, 67, 1, 'Alocação de actividades por colaborador', '', 'assigned_to', 'pie', 'Nenhum', '2018-06-28 11:52:31', '2018-07-01 20:44:14'),
(13, 23, 67, 1, 'Alocação de actividades por colaborador', '', 'assigned_to', 'pie', 'Nenhum', '2018-06-28 11:52:59', '2018-07-01 20:50:40'),
(14, 19, 67, 1, 'Alocação de actividades por colaborador', '', 'assigned_to', 'pie', 'Nenhum', '2018-06-28 11:53:13', '2018-07-01 20:53:34'),
(15, 22, 67, 1, 'Alocação de actividades por colaborador', '', 'assigned_to', 'pie', 'Nenhum', '2018-06-28 11:53:33', '2018-07-01 20:30:06'),
(16, 26, 67, 1, 'Alocação de actividades por colaborador', '', 'assigned_to', 'pie', 'Nenhum', '2018-06-28 11:53:49', '2018-07-01 20:31:45'),
(17, 20, 67, 1, 'Alocação de actividades por colaborador', '', 'assigned_to', 'pie', 'Nenhum', '2018-06-28 11:54:05', '2018-07-01 20:33:13'),
(18, 25, 67, 1, 'Alocação de actividades por colaborador', '', 'assigned_to', 'pie', 'Nenhum', '2018-06-28 11:54:17', '2018-07-01 20:35:33'),
(19, 21, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'project', 'pie', 'Nenhum', '2018-06-28 11:54:54', '2018-07-02 09:55:44'),
(20, 18, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'project', 'undev_pie', 'Nenhum', '2018-06-28 11:55:09', '2018-07-01 20:44:30'),
(21, 17, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'project', 'undev_pie', 'Nenhum', '2018-06-28 11:55:22', '2018-07-01 20:47:56'),
(22, 23, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'project', 'undev_pie', 'Nenhum', '2018-06-28 11:55:33', '2018-07-01 20:50:46'),
(23, 19, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'project', 'undev_pie', 'Nenhum', '2018-06-28 11:55:46', '2018-07-01 20:54:16'),
(24, 22, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'project', 'undev_pie', 'Nenhum', '2018-06-28 11:55:57', '2018-07-01 20:30:39'),
(25, 26, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'project', 'undev_pie', 'Nenhum', '2018-06-28 11:56:12', '2018-07-01 20:32:02'),
(26, 20, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'project', 'undev_pie', 'Nenhum', '2018-06-28 11:57:31', '2018-07-01 20:34:43'),
(27, 25, 67, 1, 'Numero de Beneficiários por Faixa Etária ', '', 'project', 'undev_pie', 'Nenhum', '2018-06-28 11:57:43', '2018-07-01 20:35:35'),
(28, 21, 67, 1, 'Numero de Beneficiários por género ', '', 'project', 'pie', 'Null', '2018-06-28 11:58:08', '2018-07-01 20:41:44'),
(29, 18, 67, 1, 'Numero de Beneficiários por género ', '', 'project', 'pie', 'Nenhum', '2018-06-28 11:58:21', '2018-07-01 20:44:41'),
(30, 17, 67, 1, 'Numero de Beneficiários por género ', '', 'project', 'pie', 'Nenhum', '2018-06-28 11:58:33', '2018-07-01 20:48:40'),
(31, 23, 67, 1, 'Numero de Beneficiários por género ', '', 'project', 'pie', 'Nenhum', '2018-06-28 11:58:44', '2018-07-01 20:51:02'),
(32, 19, 67, 1, 'Numero de Beneficiários por género ', '', 'project', 'pie', 'Nenhum', '2018-06-28 11:59:19', '2018-07-01 20:55:08'),
(33, 22, 67, 1, 'Numero de Beneficiários por género ', '', 'project', 'pie', 'Nenhum', '2018-06-28 11:59:27', '2018-07-01 20:30:49'),
(34, 26, 67, 1, 'Numero de Beneficiários por género ', '', 'project', 'pie', 'Nenhum', '2018-06-28 11:59:39', '2018-07-01 20:32:14'),
(35, 20, 67, 1, 'Numero de Beneficiários por género ', '', 'project', 'pie', 'Nenhum', '2018-06-28 11:59:51', '2018-07-01 20:33:51'),
(36, 25, 67, 1, 'Numero de Beneficiários por género ', '', 'project', 'pie', 'Nenhum', '2018-06-28 12:00:18', '2018-07-01 20:35:38'),
(37, 21, 67, 1, 'Orçamento / Valor Gasto', '', 'category', 'pie', 'Nenhum', '2018-06-28 12:01:02', '2018-07-02 09:54:47'),
(38, 18, 67, 1, 'Orçamento / Valor Gasto', '', 'category', 'bar', 'Nenhum', '2018-06-28 12:01:16', '2018-07-01 20:44:47'),
(39, 17, 67, 1, 'Orçamento / Valor Gasto', '', 'category', 'bar', 'Nenhum', '2018-06-28 12:01:31', '2018-07-01 20:49:10'),
(40, 23, 67, 1, 'Orçamento / Valor Gasto', '', 'category', 'bar', 'Nenhum', '2018-06-28 12:01:48', '2018-07-01 20:51:11'),
(41, 19, 67, 1, 'Orçamento / Valor Gasto', '', 'category', 'bar', 'Nenhum', '2018-06-28 12:02:01', '2018-07-01 20:55:15'),
(42, 22, 67, 1, 'Orçamento / Valor Gasto', '', 'category', 'bar', 'Nenhum', '2018-06-28 12:02:15', '2018-07-01 20:31:09'),
(43, 26, 67, 1, 'Orçamento / Valor Gasto', '', 'category', 'bar', 'Nenhum', '2018-06-28 12:02:56', '2018-07-01 20:32:27'),
(44, 20, 67, 1, 'Orçamento / Valor Gasto', '', 'category', 'bar', 'Nenhum', '2018-06-28 12:03:09', '2018-07-01 20:33:57'),
(45, 25, 67, 1, 'Orçamento / Valor Gasto', '', 'category', 'bar', 'Nenhum', '2018-06-28 12:03:40', '2018-07-01 20:35:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_report_series`
--

CREATE TABLE `custom_report_series` (
  `id` int(11) NOT NULL,
  `custom_report_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `filters` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `custom_report_series`
--

INSERT INTO `custom_report_series` (`id`, `custom_report_id`, `name`, `filters`, `created_at`, `updated_at`) VALUES
(1, 1, 'Colaborador', '---\ntracker_id:\n  :operator: \"=\"\n  :values:\n  - \'11\'\n', '2018-06-24 20:48:19', '2018-06-24 20:50:12'),
(3, 2, 'Tipo', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-24 20:57:20', '2018-06-25 20:33:13'),
(5, 3, 'Orcamento', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\ntracker_id:\n  :operator: \"=\"\n  :values:\n  - \'11\'\n', '2018-06-25 12:51:51', '2018-06-25 12:51:51'),
(6, 4, 'Nr. Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-25 12:52:30', '2018-06-25 20:29:17'),
(7, 5, 'Nr. Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-25 12:54:11', '2018-06-25 12:54:11'),
(8, 6, 'Colaborador', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-25 12:55:30', '2018-06-25 12:55:30'),
(9, 7, 'Provincia', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-25 12:57:04', '2018-06-25 12:57:04'),
(10, 8, 'Nr. Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-25 12:58:37', '2018-06-25 12:58:37'),
(11, 9, 'Faixa etária ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-25 12:59:24', '2018-06-25 20:35:31'),
(12, 10, 'Orçamento ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-25 13:00:54', '2018-06-25 20:33:53'),
(13, 11, 'Colaborador', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:52:00', '2018-06-28 11:52:00'),
(14, 12, 'Colaborador', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:52:31', '2018-06-28 11:52:31'),
(15, 13, 'Colaborador', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:52:59', '2018-06-28 11:52:59'),
(16, 14, 'Colaborador', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:53:13', '2018-06-28 11:53:13'),
(17, 15, 'Colaborador', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:53:33', '2018-06-28 11:53:33'),
(18, 16, 'Colaborador', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:53:49', '2018-06-28 11:53:49'),
(19, 17, 'Colaborador', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:54:05', '2018-06-28 11:54:05'),
(20, 18, 'Colaborador', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:54:17', '2018-06-28 11:54:17'),
(21, 19, 'Numero de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:54:54', '2018-06-28 11:54:54'),
(22, 20, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:55:09', '2018-06-28 11:55:09'),
(23, 21, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:55:22', '2018-06-28 11:55:22'),
(24, 22, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:55:33', '2018-06-28 11:55:33'),
(25, 23, 'Nr. de Beneficiarios', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:55:46', '2018-06-28 11:55:46'),
(26, 24, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:55:57', '2018-06-28 11:55:57'),
(27, 25, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:56:12', '2018-06-28 11:56:12'),
(28, 26, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:57:31', '2018-06-28 11:57:31'),
(29, 27, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:57:43', '2018-06-28 11:57:43'),
(30, 28, 'Nr. Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:58:08', '2018-06-28 11:58:08'),
(31, 29, 'Nr. de Beneficiarios ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:58:21', '2018-06-28 11:58:21'),
(32, 30, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:58:33', '2018-06-28 11:58:33'),
(33, 31, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:58:44', '2018-06-28 11:58:44'),
(34, 32, 'Nr, de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:59:19', '2018-06-28 11:59:19'),
(35, 33, 'Numero de Beneficiários por género ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:59:27', '2018-06-28 11:59:27'),
(36, 34, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:59:39', '2018-06-28 11:59:39'),
(37, 35, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 11:59:51', '2018-06-28 11:59:51'),
(38, 36, 'Nr. de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 12:00:18', '2018-06-28 12:00:18'),
(39, 37, 'Orçamento ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 12:01:02', '2018-06-28 12:01:02'),
(40, 38, 'Orçamento ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 12:01:16', '2018-06-28 12:01:16'),
(41, 39, 'Orçamento ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 12:01:31', '2018-06-28 12:01:31'),
(42, 40, 'Orçamento ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 12:01:48', '2018-06-28 12:01:48'),
(43, 41, 'Orçamento ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 12:02:01', '2018-06-28 12:02:01'),
(44, 42, 'Orçamento ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 12:02:15', '2018-06-28 12:02:15'),
(45, 43, 'Orçamento ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 12:02:56', '2018-06-28 12:02:56'),
(46, 44, 'Orçamento ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 12:03:09', '2018-06-28 12:03:09'),
(47, 45, 'Orçamento / Valor Gasto', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', '2018-06-28 12:03:40', '2018-06-28 12:03:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_values`
--

CREATE TABLE `custom_values` (
  `id` int(11) NOT NULL,
  `customized_type` varchar(30) NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT '0',
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `custom_values`
--

INSERT INTO `custom_values` (`id`, `customized_type`, `customized_id`, `custom_field_id`, `value`) VALUES
(1, 'Project', 1, 5, ''),
(2, 'Project', 2, 5, ''),
(4, 'Project', 4, 5, ''),
(22, 'Project', 6, 5, ''),
(23, 'Project', 6, 14, ''),
(28, 'Project', 6, 17, ''),
(29, 'Project', 6, 24, ''),
(30, 'Project', 6, 19, ''),
(33, 'Project', 6, 22, ''),
(34, 'Project', 6, 23, ''),
(40, 'Project', 7, 5, ''),
(41, 'Project', 7, 14, ''),
(46, 'Project', 7, 17, ''),
(47, 'Project', 7, 24, ''),
(48, 'Project', 7, 19, ''),
(51, 'Project', 7, 22, ''),
(52, 'Project', 7, 23, ''),
(57, 'Principal', 5, 1, 'Ku mfumu'),
(58, 'Principal', 5, 2, '822735070'),
(59, 'Principal', 5, 6, 'Moçambique'),
(61, 'Principal', 5, 8, 'Outro'),
(62, 'Principal', 5, 9, ''),
(63, 'Principal', 5, 10, 'Gestor de projecto'),
(64, 'Principal', 5, 11, ''),
(75, 'Principal', 7, 1, ''),
(76, 'Principal', 7, 2, ''),
(77, 'Principal', 7, 6, 'Moçambique'),
(78, 'Principal', 7, 7, ''),
(79, 'Principal', 7, 8, ''),
(80, 'Principal', 7, 9, ''),
(81, 'Principal', 7, 10, 'Assistente de Comunicaçao'),
(82, 'Principal', 7, 11, ''),
(146, 'Principal', 13, 4, ''),
(147, 'Principal', 14, 4, ''),
(148, 'Principal', 15, 4, ''),
(149, 'Principal', 16, 4, ''),
(150, 'Principal', 17, 4, ''),
(152, 'Principal', 19, 4, ''),
(175, 'Project', 4, 14, ''),
(179, 'Project', 4, 22, ''),
(181, 'Project', 4, 17, ''),
(182, 'Project', 4, 24, ''),
(183, 'Project', 4, 19, ''),
(184, 'Project', 4, 34, ''),
(185, 'Project', 4, 23, ''),
(186, 'Project', 4, 35, ''),
(189, 'Project', 1, 14, ''),
(193, 'Project', 1, 22, ''),
(195, 'Project', 1, 17, ''),
(196, 'Project', 1, 24, ''),
(197, 'Project', 1, 19, ''),
(198, 'Project', 1, 34, ''),
(199, 'Project', 1, 23, ''),
(200, 'Project', 1, 35, ''),
(203, 'Project', 2, 14, ''),
(207, 'Project', 2, 22, ''),
(209, 'Project', 2, 17, ''),
(210, 'Project', 2, 24, ''),
(211, 'Project', 2, 19, ''),
(212, 'Project', 2, 34, ''),
(213, 'Project', 2, 23, ''),
(214, 'Project', 2, 35, ''),
(347, 'Principal', 21, 1, 'Ka-Mpfumu'),
(348, 'Principal', 21, 2, '+25821430485/6'),
(349, 'Principal', 21, 6, 'Moçambique'),
(351, 'Principal', 21, 8, 'Colaborador'),
(352, 'Principal', 21, 9, ''),
(353, 'Principal', 21, 10, 'Gestor de Projectos'),
(354, 'Principal', 21, 11, ''),
(355, 'Principal', 21, 3, 'Maputo-Cidade'),
(414, 'Project', 12, 5, ''),
(415, 'Project', 12, 40, ''),
(420, 'Project', 12, 22, 'a'),
(421, 'Project', 12, 38, ''),
(423, 'Project', 12, 39, ''),
(424, 'Project', 12, 17, 'a'),
(425, 'Project', 12, 24, ''),
(426, 'Project', 12, 19, ''),
(427, 'Project', 12, 34, ''),
(428, 'Project', 12, 23, ''),
(430, 'Project', 12, 35, ''),
(431, 'Project', 12, 42, ''),
(483, 'Project', 13, 5, ''),
(484, 'Project', 13, 40, ''),
(485, 'Project', 13, 14, ''),
(486, 'Project', 13, 43, ''),
(489, 'Project', 13, 22, ''),
(490, 'Project', 13, 38, ''),
(492, 'Project', 13, 39, ''),
(493, 'Project', 13, 17, ''),
(494, 'Project', 13, 24, ''),
(495, 'Project', 13, 19, ''),
(496, 'Project', 13, 34, ''),
(497, 'Project', 13, 23, ''),
(499, 'Project', 13, 35, ''),
(500, 'Project', 13, 42, ''),
(522, 'Project', 14, 5, ''),
(523, 'Project', 14, 40, ''),
(528, 'Project', 14, 22, 'Homens, Mulheres e Crianças'),
(529, 'Project', 14, 38, ''),
(531, 'Project', 14, 39, ''),
(532, 'Project', 14, 17, '•	Incremento de oportunidades de modo a que os membros das comunidades de base, especialmente mulheres, jovens e crianças, com prioridade para as províncias de Cabo Delgado e Niassa, desenvolvam a sua capacidade de intervenção com vista a melhorar as suas condições de vida'),
(533, 'Project', 14, 24, ''),
(534, 'Project', 14, 19, ''),
(535, 'Project', 14, 34, ''),
(536, 'Project', 14, 23, ''),
(538, 'Project', 14, 35, ''),
(539, 'Project', 14, 42, ''),
(542, 'Project', 15, 5, ''),
(543, 'Project', 15, 40, ''),
(544, 'Project', 15, 14, ''),
(545, 'Project', 15, 43, ''),
(548, 'Project', 15, 22, ''),
(549, 'Project', 15, 38, ''),
(551, 'Project', 15, 39, ''),
(552, 'Project', 15, 17, ''),
(553, 'Project', 15, 24, ''),
(554, 'Project', 15, 19, ''),
(555, 'Project', 15, 34, ''),
(556, 'Project', 15, 23, ''),
(558, 'Project', 15, 35, ''),
(559, 'Project', 15, 42, ''),
(562, 'Project', 16, 5, ''),
(563, 'Project', 16, 40, ''),
(564, 'Project', 16, 14, ''),
(565, 'Project', 16, 43, ''),
(568, 'Project', 16, 22, ''),
(569, 'Project', 16, 38, ''),
(571, 'Project', 16, 39, ''),
(572, 'Project', 16, 17, ''),
(573, 'Project', 16, 24, ''),
(574, 'Project', 16, 19, ''),
(575, 'Project', 16, 34, ''),
(576, 'Project', 16, 23, ''),
(578, 'Project', 16, 35, ''),
(579, 'Project', 16, 42, ''),
(633, 'Project', 4, 40, ''),
(634, 'Project', 4, 43, ''),
(635, 'Project', 4, 38, ''),
(636, 'Project', 4, 39, ''),
(638, 'Project', 4, 42, ''),
(639, 'Project', 1, 40, ''),
(640, 'Project', 1, 43, ''),
(641, 'Project', 1, 38, ''),
(642, 'Project', 1, 39, ''),
(644, 'Project', 1, 42, ''),
(645, 'Project', 2, 40, ''),
(646, 'Project', 2, 43, ''),
(647, 'Project', 2, 38, ''),
(648, 'Project', 2, 39, ''),
(650, 'Project', 2, 42, ''),
(816, 'Principal', 24, 1, ''),
(817, 'Principal', 24, 2, ''),
(818, 'Principal', 24, 6, 'Moçambique'),
(820, 'Principal', 24, 8, 'Colaborador'),
(821, 'Principal', 24, 9, 'www.progresso.co.mz'),
(822, 'Principal', 24, 10, 'Assistente de Monitoria e Avaliaçao'),
(823, 'Principal', 24, 11, 'Ahmed Sekou Toure nº 1957'),
(825, 'Principal', 25, 1, ''),
(826, 'Principal', 25, 2, ''),
(827, 'Principal', 25, 6, 'Moçambique'),
(829, 'Principal', 25, 8, 'Colaborador'),
(830, 'Principal', 25, 9, ''),
(831, 'Principal', 25, 10, 'Assistente de Monitoria e Avaliaçao'),
(832, 'Principal', 25, 11, ''),
(843, 'Principal', 27, 1, ''),
(844, 'Principal', 27, 2, ''),
(845, 'Principal', 27, 6, 'Moçambique'),
(847, 'Principal', 27, 8, ''),
(848, 'Principal', 27, 9, ''),
(849, 'Principal', 27, 10, 'Coordenadora Geral'),
(850, 'Principal', 27, 11, ''),
(852, 'Principal', 28, 1, ''),
(853, 'Principal', 28, 2, ''),
(854, 'Principal', 28, 6, 'Moçambique'),
(856, 'Principal', 28, 8, 'Colaborador'),
(857, 'Principal', 28, 9, ''),
(858, 'Principal', 28, 10, 'Assistente de Programas'),
(859, 'Principal', 28, 11, ''),
(897, 'Principal', 33, 1, ''),
(898, 'Principal', 33, 2, ''),
(899, 'Principal', 33, 6, 'Moçambique'),
(900, 'Principal', 33, 7, ''),
(901, 'Principal', 33, 8, ''),
(902, 'Principal', 33, 9, ''),
(903, 'Principal', 33, 10, ''),
(904, 'Principal', 33, 11, ''),
(906, 'Principal', 34, 1, ''),
(907, 'Principal', 34, 2, ''),
(908, 'Principal', 34, 6, 'Moçambique'),
(910, 'Principal', 34, 8, ''),
(911, 'Principal', 34, 9, ''),
(912, 'Principal', 34, 10, ''),
(913, 'Principal', 34, 11, ''),
(924, 'Principal', 36, 1, ''),
(925, 'Principal', 36, 2, ''),
(926, 'Principal', 36, 6, 'Moçambique'),
(927, 'Principal', 36, 7, ''),
(928, 'Principal', 36, 8, ''),
(929, 'Principal', 36, 9, ''),
(930, 'Principal', 36, 10, ''),
(931, 'Principal', 36, 11, ''),
(933, 'Principal', 37, 1, 'KaNpfumo'),
(934, 'Principal', 37, 2, '828673960'),
(935, 'Principal', 37, 6, 'Moçambique'),
(937, 'Principal', 37, 8, 'Colaborador'),
(938, 'Principal', 37, 9, ''),
(939, 'Principal', 37, 10, 'Consultora - Angariação de Fundos'),
(940, 'Principal', 37, 11, 'Rua Herois de Dadra 74'),
(941, 'Principal', 37, 3, 'Maputo-Cidade'),
(942, 'Principal', 37, 7, 'Cidadania'),
(954, 'Principal', 39, 1, 'Kapfumo'),
(955, 'Principal', 39, 2, '21430485'),
(956, 'Principal', 39, 6, 'Moçambique'),
(958, 'Principal', 39, 8, 'Colaborador'),
(959, 'Principal', 39, 9, ''),
(960, 'Principal', 39, 10, 'Assistente de Recursos Humanos'),
(961, 'Principal', 39, 11, 'Av. Ahmed Sekou Toure,'),
(962, 'Principal', 39, 3, 'Maputo-Cidade'),
(963, 'Principal', 39, 7, 'Outro'),
(1228, 'Project', 12, 72, '2016'),
(1229, 'Project', 12, 74, '2020'),
(1230, 'Project', 12, 71, 'Ex: 10 EUR'),
(1272, 'Principal', 46, 4, ''),
(1407, 'Principal', 7, 75, 'Moçambicana'),
(1487, 'Issue', 64, 29, ''),
(1495, 'Issue', 151, 29, ''),
(1496, 'Issue', 151, 81, ''),
(1498, 'Issue', 152, 29, ''),
(1499, 'Issue', 152, 81, ''),
(1501, 'Issue', 153, 29, ''),
(1502, 'Issue', 153, 81, ''),
(1504, 'Issue', 154, 29, ''),
(1505, 'Issue', 154, 81, ''),
(1515, 'Issue', 156, 29, ''),
(1516, 'Issue', 156, 81, ''),
(1517, 'Issue', 156, 60, ''),
(1518, 'Issue', 156, 76, ''),
(1520, 'Issue', 157, 46, 'Relatórios/minutas dos encontros de “lobbying” e advocacia onde a Associação participou.'),
(1525, 'Issue', 158, 29, ''),
(1526, 'Issue', 158, 81, ''),
(1527, 'Issue', 158, 60, ''),
(1528, 'Issue', 158, 76, ''),
(1537, 'Issue', 161, 29, ''),
(1538, 'Issue', 161, 81, ''),
(1539, 'Issue', 161, 60, ''),
(1540, 'Issue', 161, 76, ''),
(1548, 'Issue', 164, 29, ''),
(1549, 'Issue', 164, 81, ''),
(1551, 'Issue', 164, 60, ''),
(1552, 'Issue', 164, 76, ''),
(1559, 'Issue', 166, 29, ''),
(1560, 'Issue', 166, 81, ''),
(1561, 'Issue', 166, 60, ''),
(1562, 'Issue', 166, 76, ''),
(1574, 'Issue', 169, 29, ''),
(1575, 'Issue', 169, 81, ''),
(1576, 'Issue', 169, 60, ''),
(1577, 'Issue', 169, 76, ''),
(1584, 'Issue', 171, 29, ''),
(1585, 'Issue', 171, 81, ''),
(1586, 'Issue', 171, 60, ''),
(1587, 'Issue', 171, 76, ''),
(1594, 'Issue', 173, 29, ''),
(1595, 'Issue', 173, 81, ''),
(1596, 'Issue', 173, 60, ''),
(1597, 'Issue', 173, 76, ''),
(1604, 'Issue', 175, 29, ''),
(1605, 'Issue', 175, 81, ''),
(1606, 'Issue', 175, 60, ''),
(1607, 'Issue', 175, 76, ''),
(1619, 'Issue', 178, 29, ''),
(1620, 'Issue', 178, 81, ''),
(1621, 'Issue', 178, 60, ''),
(1622, 'Issue', 178, 76, ''),
(1627, 'Issue', 180, 44, ''),
(1628, 'Issue', 180, 80, ''),
(1629, 'Issue', 180, 29, ''),
(1630, 'Issue', 180, 81, ''),
(1631, 'Issue', 180, 60, ''),
(1632, 'Issue', 180, 76, ''),
(1633, 'Issue', 181, 81, ''),
(1634, 'Issue', 181, 46, 'Relatórios trimestrais e anuais Relatórios de M&A  Propostas de projectos conjuntos'),
(1644, 'Issue', 183, 29, ''),
(1645, 'Issue', 183, 81, ''),
(1646, 'Issue', 183, 60, ''),
(1647, 'Issue', 183, 76, ''),
(1649, 'Issue', 184, 46, 'Relatório de formação  Lista dos participantes Relatórios trimestrais e anuais  Relatórios de M&A '),
(1654, 'Issue', 185, 29, ''),
(1655, 'Issue', 185, 81, ''),
(1656, 'Issue', 185, 60, ''),
(1657, 'Issue', 185, 76, ''),
(1659, 'Issue', 186, 46, 'Relatório de formação  Lista dos participantes Relatórios trimestrais e anuais  Relatórios de M&A'),
(1669, 'Issue', 188, 29, ''),
(1670, 'Issue', 188, 81, ''),
(1671, 'Issue', 188, 60, ''),
(1672, 'Issue', 188, 76, ''),
(1674, 'Issue', 189, 46, 'Relatórios de formação  Lista de participação  Relatórios trimestrais e anuais Relatórios de M&A'),
(1679, 'Issue', 190, 29, ''),
(1680, 'Issue', 190, 81, ''),
(1681, 'Issue', 190, 60, ''),
(1682, 'Issue', 190, 76, ''),
(1684, 'Issue', 191, 46, 'Manuais e panfletos produzidos Fotos de feiras alimentares '),
(1688, 'Issue', 192, 29, ''),
(1689, 'Issue', 192, 81, ''),
(1690, 'Issue', 192, 60, ''),
(1691, 'Issue', 192, 76, ''),
(1693, 'Issue', 193, 46, 'Programas de alfabetização de adultos integrando questões de saúde como sessão Relatórios de M&A'),
(1697, 'Issue', 194, 29, ''),
(1698, 'Issue', 194, 81, ''),
(1699, 'Issue', 194, 60, ''),
(1700, 'Issue', 194, 76, ''),
(1702, 'Issue', 195, 46, 'Relatórios/minutas dos encontros de “lobbying” e advocacia em que a Associação PROGRESSO participou.'),
(1706, 'Issue', 196, 29, ''),
(1707, 'Issue', 196, 81, ''),
(1708, 'Issue', 196, 60, ''),
(1709, 'Issue', 196, 76, ''),
(1711, 'Issue', 197, 46, 'Relatório de formação  Lista de participação  Relatórios de M&A'),
(1720, 'Issue', 199, 29, ''),
(1721, 'Issue', 199, 81, ''),
(1722, 'Issue', 199, 60, ''),
(1723, 'Issue', 199, 76, ''),
(1725, 'Issue', 200, 46, 'Os manuais Relatórios trimestrais e anuais Relatórios de M&A'),
(1734, 'Issue', 202, 29, ''),
(1735, 'Issue', 202, 81, ''),
(1736, 'Issue', 202, 60, ''),
(1737, 'Issue', 202, 76, ''),
(1739, 'Issue', 203, 46, 'Relatórios trimestrais e anuais Relatórios de M&A '),
(1748, 'Issue', 205, 29, ''),
(1749, 'Issue', 205, 81, ''),
(1750, 'Issue', 205, 60, ''),
(1751, 'Issue', 205, 76, ''),
(1762, 'Issue', 208, 29, ''),
(1763, 'Issue', 208, 81, ''),
(1764, 'Issue', 208, 60, ''),
(1765, 'Issue', 208, 76, ''),
(1767, 'Issue', 209, 46, 'Relatórios trimestrais e anuais Relatórios de M&A'),
(1771, 'Issue', 210, 29, ''),
(1772, 'Issue', 210, 81, ''),
(1773, 'Issue', 210, 60, ''),
(1774, 'Issue', 210, 76, ''),
(1776, 'Issue', 211, 46, 'Relatórios de formação e anuais  Relatórios de M&A Listas de presença '),
(1780, 'Issue', 212, 29, ''),
(1781, 'Issue', 212, 81, ''),
(1782, 'Issue', 212, 60, ''),
(1783, 'Issue', 212, 76, ''),
(1785, 'Issue', 213, 46, 'Relatórios de M&A (qualitativa)'),
(1789, 'Issue', 214, 29, ''),
(1790, 'Issue', 214, 81, ''),
(1791, 'Issue', 214, 60, ''),
(1792, 'Issue', 214, 76, ''),
(1794, 'Issue', 215, 46, 'Relatórios trimestrais e anuais Materiais que foram produzidos para a advocacia Relatórios M&A '),
(1798, 'Issue', 216, 29, ''),
(1799, 'Issue', 216, 81, ''),
(1800, 'Issue', 216, 60, ''),
(1801, 'Issue', 216, 76, ''),
(1803, 'Issue', 217, 46, 'Relatórios trimestrais e anuais Relatórios de M&A  Propostas de projectos conjuntos'),
(1812, 'Issue', 219, 29, ''),
(1813, 'Issue', 219, 81, ''),
(1814, 'Issue', 219, 60, ''),
(1815, 'Issue', 219, 76, ''),
(1819, 'Issue', 220, 29, ''),
(1820, 'Issue', 220, 81, ''),
(1821, 'Issue', 220, 60, ''),
(1822, 'Issue', 220, 76, ''),
(1826, 'Issue', 221, 29, ''),
(1827, 'Issue', 221, 81, ''),
(1828, 'Issue', 221, 60, ''),
(1829, 'Issue', 221, 76, ''),
(1831, 'Issue', 222, 44, ''),
(1832, 'Issue', 222, 80, ''),
(1833, 'Issue', 222, 29, ''),
(1834, 'Issue', 222, 81, ''),
(1835, 'Issue', 222, 60, ''),
(1836, 'Issue', 222, 76, ''),
(1840, 'Issue', 223, 29, ''),
(1841, 'Issue', 223, 81, ''),
(1842, 'Issue', 223, 60, ''),
(1843, 'Issue', 223, 76, ''),
(1847, 'Issue', 224, 29, ''),
(1848, 'Issue', 224, 81, ''),
(1849, 'Issue', 224, 60, ''),
(1850, 'Issue', 224, 76, ''),
(1861, 'Issue', 227, 29, ''),
(1862, 'Issue', 227, 81, ''),
(1863, 'Issue', 227, 60, ''),
(1864, 'Issue', 227, 76, ''),
(1870, 'Issue', 229, 29, ''),
(1871, 'Issue', 229, 81, ''),
(1872, 'Issue', 229, 60, ''),
(1873, 'Issue', 229, 76, ''),
(1875, 'Issue', 230, 46, 'Relatórios trimestrais e anuais Relatórios financeiros anuais'),
(1879, 'Issue', 231, 29, ''),
(1880, 'Issue', 231, 81, ''),
(1881, 'Issue', 231, 60, ''),
(1882, 'Issue', 231, 76, ''),
(1883, 'Issue', 232, 81, ''),
(1884, 'Issue', 232, 46, 'Listas de participação  Relatórios trimestrais e anuais'),
(1888, 'Issue', 233, 29, ''),
(1889, 'Issue', 233, 81, ''),
(1890, 'Issue', 233, 60, ''),
(1891, 'Issue', 233, 76, ''),
(1902, 'Issue', 237, 44, ''),
(1903, 'Issue', 237, 80, ''),
(1904, 'Issue', 237, 29, ''),
(1905, 'Issue', 237, 81, ''),
(1906, 'Issue', 237, 60, ''),
(1907, 'Issue', 237, 76, ''),
(1908, 'Issue', 238, 81, ''),
(1909, 'Issue', 238, 46, 'A estratégia de GC'),
(1913, 'Issue', 239, 29, ''),
(1914, 'Issue', 239, 81, ''),
(1915, 'Issue', 239, 60, ''),
(1916, 'Issue', 239, 76, ''),
(1918, 'Issue', 240, 46, 'Brochuras e “website” actualizados e funcionais '),
(1920, 'Issue', 241, 44, ''),
(1921, 'Issue', 241, 80, ''),
(1922, 'Issue', 241, 29, ''),
(1923, 'Issue', 241, 81, ''),
(1924, 'Issue', 241, 60, ''),
(1925, 'Issue', 241, 76, ''),
(1926, 'Issue', 242, 81, ''),
(1927, 'Issue', 242, 46, 'As ferramentas usadas de TIC'),
(1931, 'Issue', 243, 29, ''),
(1932, 'Issue', 243, 81, ''),
(1933, 'Issue', 243, 60, ''),
(1934, 'Issue', 243, 76, ''),
(1936, 'Issue', 244, 46, 'Todo o pessoal participa em pelo menos um seminário de GC sobre um tópico relevante'),
(1940, 'Issue', 245, 29, ''),
(1941, 'Issue', 245, 81, ''),
(1942, 'Issue', 245, 60, ''),
(1943, 'Issue', 245, 76, ''),
(1945, 'Issue', 246, 46, 'Existência de um sistema viável de M&A, e instrumentos respectivos para alimentar o principal sistema de M&A desenvolvidos e em uso'),
(1949, 'Issue', 247, 29, ''),
(1950, 'Issue', 247, 81, ''),
(1951, 'Issue', 247, 60, ''),
(1952, 'Issue', 247, 76, ''),
(1954, 'Issue', 248, 46, 'Relatórios de formação/”workshop” Lista de participação '),
(1956, 'Issue', 249, 44, ''),
(1957, 'Issue', 249, 80, ''),
(1958, 'Issue', 249, 29, ''),
(1959, 'Issue', 249, 81, ''),
(1960, 'Issue', 249, 60, ''),
(1961, 'Issue', 249, 76, ''),
(1962, 'Issue', 250, 81, ''),
(1963, 'Issue', 250, 46, 'Dados em tempo real obtidos a partir do sistema de M&A sobre o trabalho da PROGRESSO'),
(1967, 'Issue', 251, 29, ''),
(1968, 'Issue', 251, 81, ''),
(1969, 'Issue', 251, 60, ''),
(1970, 'Issue', 251, 76, ''),
(1973, 'Principal', 48, 4, ''),
(1975, 'Issue', 255, 29, ''),
(1976, 'Issue', 255, 81, ''),
(1978, 'Issue', 154, 44, ''),
(1980, 'Issue', 153, 44, ''),
(1982, 'Issue', 152, 44, ''),
(1984, 'Issue', 151, 44, ''),
(1995, 'Principal', 50, 75, 'Moçambicana'),
(1996, 'Principal', 50, 6, 'Moçambique'),
(1998, 'Principal', 50, 1, ''),
(1999, 'Principal', 50, 2, ''),
(2001, 'Principal', 50, 8, 'Colaborador'),
(2002, 'Principal', 50, 9, ''),
(2003, 'Principal', 50, 10, 'Gestora do projecto BETTER'),
(2004, 'Principal', 50, 11, ''),
(2006, 'Principal', 21, 75, 'Moçambicana'),
(2213, 'Principal', 51, 75, 'Moçambicana'),
(2214, 'Principal', 51, 6, 'Moçambique'),
(2216, 'Principal', 51, 1, ''),
(2217, 'Principal', 51, 2, ''),
(2219, 'Principal', 51, 8, 'Colaborador'),
(2220, 'Principal', 51, 9, ''),
(2221, 'Principal', 51, 10, 'Oficial de Educaçao'),
(2222, 'Principal', 51, 11, ''),
(2225, 'Principal', 33, 75, 'Moçambicana'),
(2226, 'Principal', 34, 75, 'Moçambicana'),
(2238, 'Principal', 53, 75, 'Moçambicana'),
(2239, 'Principal', 53, 6, 'Moçambique'),
(2241, 'Principal', 53, 1, ''),
(2242, 'Principal', 53, 2, ''),
(2243, 'Principal', 53, 7, ''),
(2244, 'Principal', 53, 8, ''),
(2245, 'Principal', 53, 9, ''),
(2246, 'Principal', 53, 10, 'Oficial de Contabilidade'),
(2247, 'Principal', 53, 11, ''),
(2249, 'Principal', 36, 75, 'Moçambicana'),
(2250, 'Principal', 54, 75, 'Moçambicana'),
(2251, 'Principal', 54, 6, 'Moçambique'),
(2253, 'Principal', 54, 1, ''),
(2254, 'Principal', 54, 2, '844836390'),
(2256, 'Principal', 54, 8, ''),
(2257, 'Principal', 54, 9, ''),
(2258, 'Principal', 54, 10, 'Assistente de Genero'),
(2259, 'Principal', 54, 11, ''),
(2365, 'Principal', 5, 75, 'Moçambicana'),
(2366, 'Principal', 5, 3, 'Maputo-Cidade'),
(2367, 'Principal', 5, 7, 'Educação'),
(2613, 'Principal', 28, 75, 'Moçambicana'),
(2614, 'Principal', 24, 75, 'Moçambicana'),
(2615, 'Principal', 24, 7, 'Educação'),
(2616, 'Principal', 24, 7, 'Saúde'),
(2617, 'Principal', 24, 7, 'Cidadania'),
(2618, 'Principal', 24, 3, 'Maputo-Cidade'),
(2619, 'Principal', 24, 7, 'Desenvolvimento Institucional'),
(2620, 'Principal', 56, 4, ''),
(2621, 'Principal', 57, 4, ''),
(2622, 'Principal', 58, 4, ''),
(2623, 'Principal', 59, 4, ''),
(2624, 'Principal', 60, 4, ''),
(2651, 'Principal', 27, 75, 'Moçambicana'),
(2653, 'Principal', 50, 3, 'Maputo-Cidade'),
(2654, 'Principal', 50, 7, 'Educação'),
(2655, 'Principal', 28, 3, 'Maputo-Cidade'),
(2656, 'Principal', 28, 7, 'Educação'),
(2657, 'Principal', 28, 7, 'Saúde'),
(2658, 'Principal', 28, 7, 'Cidadania'),
(2659, 'Principal', 28, 7, 'Desenvolvimento Institucional'),
(2660, 'Principal', 21, 7, 'Educação'),
(2661, 'Principal', 54, 3, 'Maputo-Cidade'),
(2662, 'Principal', 54, 7, 'Educação'),
(2664, 'Principal', 36, 3, 'Maputo-Cidade'),
(2665, 'Principal', 33, 3, 'Maputo-Cidade'),
(2666, 'Principal', 53, 3, 'Maputo-Cidade'),
(2667, 'Principal', 7, 3, 'Maputo-Cidade'),
(2668, 'Principal', 27, 3, 'Maputo-Cidade'),
(2669, 'Principal', 34, 3, 'Maputo-Cidade'),
(2670, 'Principal', 34, 7, 'Educação'),
(2671, 'Principal', 51, 3, 'Maputo-Cidade'),
(2672, 'Principal', 51, 7, 'Educação'),
(2673, 'Principal', 39, 75, 'Moçambicana'),
(2674, 'Principal', 25, 75, 'Moçambicana'),
(2675, 'Principal', 25, 3, 'Maputo-Cidade'),
(2676, 'Principal', 25, 7, 'Educação'),
(2677, 'Principal', 37, 75, ''),
(2678, 'Principal', 61, 75, 'Moçambicana'),
(2679, 'Principal', 61, 6, 'Moçambique'),
(2681, 'Principal', 61, 1, ''),
(2682, 'Principal', 61, 2, ''),
(2684, 'Principal', 61, 8, 'Colaborador'),
(2685, 'Principal', 61, 9, ''),
(2686, 'Principal', 61, 10, 'Responsavel de Programas'),
(2687, 'Principal', 61, 11, ''),
(2689, 'Principal', 61, 7, 'Educação'),
(2690, 'Principal', 61, 7, 'Saúde'),
(2691, 'Principal', 61, 7, 'Cidadania'),
(2692, 'Principal', 61, 7, 'Desenvolvimento Institucional'),
(2693, 'Principal', 62, 75, ''),
(2694, 'Principal', 62, 6, 'Moçambique'),
(2696, 'Principal', 62, 1, ''),
(2697, 'Principal', 62, 2, ''),
(2699, 'Principal', 62, 8, 'Colaborador'),
(2700, 'Principal', 62, 9, ''),
(2701, 'Principal', 62, 10, 'Presidente do conselho de Direcçao'),
(2702, 'Principal', 62, 11, ''),
(2703, 'Principal', 62, 3, 'Maputo-Cidade'),
(2704, 'Principal', 62, 7, 'Educação'),
(2705, 'Principal', 62, 7, 'Saúde'),
(2706, 'Principal', 62, 7, 'Cidadania'),
(2707, 'Principal', 62, 7, 'Desenvolvimento Institucional'),
(2708, 'Principal', 27, 7, 'Educação'),
(2709, 'Principal', 27, 7, 'Saúde'),
(2710, 'Principal', 27, 7, 'Cidadania'),
(2711, 'Principal', 27, 7, 'Desenvolvimento Institucional'),
(2712, 'Principal', 63, 75, 'Moçambicana'),
(2713, 'Principal', 63, 6, 'Moçambique'),
(2715, 'Principal', 63, 1, ''),
(2716, 'Principal', 63, 2, ''),
(2718, 'Principal', 63, 8, 'Colaborador'),
(2719, 'Principal', 63, 9, ''),
(2720, 'Principal', 63, 10, ''),
(2721, 'Principal', 63, 11, ''),
(2722, 'Principal', 63, 3, 'Maputo-Cidade'),
(2723, 'Principal', 63, 7, 'Educação'),
(2724, 'Principal', 63, 7, 'Saúde'),
(2725, 'Principal', 63, 7, 'Cidadania'),
(2726, 'Principal', 63, 7, 'Desenvolvimento Institucional'),
(2727, 'Principal', 64, 75, 'Moçambicana'),
(2728, 'Principal', 64, 6, 'Moçambique'),
(2730, 'Principal', 64, 1, ''),
(2731, 'Principal', 64, 2, ''),
(2733, 'Principal', 64, 8, 'Colaborador'),
(2734, 'Principal', 64, 9, ''),
(2735, 'Principal', 64, 10, 'Assistente Administrativo'),
(2736, 'Principal', 64, 11, ''),
(2737, 'Principal', 64, 3, 'Maputo-Cidade'),
(2738, 'Principal', 64, 7, 'Educação'),
(2739, 'Principal', 64, 7, 'Saúde'),
(2740, 'Principal', 64, 7, 'Cidadania'),
(2741, 'Principal', 64, 7, 'Desenvolvimento Institucional'),
(2742, 'Principal', 62, 3, 'Maputo-Província'),
(2743, 'Principal', 65, 75, 'Moçambicana'),
(2744, 'Principal', 65, 6, 'Moçambique'),
(2746, 'Principal', 65, 1, ''),
(2747, 'Principal', 65, 2, ''),
(2749, 'Principal', 65, 8, 'Colaborador'),
(2750, 'Principal', 65, 9, ''),
(2751, 'Principal', 65, 10, 'Coordenadora Editorial'),
(2752, 'Principal', 65, 11, ''),
(2753, 'Principal', 65, 3, 'Maputo-Cidade'),
(2754, 'Principal', 65, 7, 'Educação'),
(2755, 'Principal', 65, 7, 'Saúde'),
(2756, 'Principal', 65, 7, 'Cidadania'),
(2757, 'Principal', 65, 7, 'Desenvolvimento Institucional'),
(2758, 'Principal', 66, 75, 'Moçambicana'),
(2759, 'Principal', 66, 6, 'Moçambique'),
(2761, 'Principal', 66, 1, ''),
(2762, 'Principal', 66, 2, ''),
(2764, 'Principal', 66, 8, ''),
(2765, 'Principal', 66, 9, ''),
(2766, 'Principal', 66, 10, ''),
(2767, 'Principal', 66, 11, ''),
(2768, 'Principal', 66, 3, 'Maputo-Cidade'),
(2769, 'Principal', 66, 7, 'Educação'),
(2770, 'Principal', 66, 7, 'Saúde'),
(2771, 'Principal', 66, 7, 'Cidadania'),
(2772, 'Principal', 66, 7, 'Desenvolvimento Institucional'),
(2773, 'Principal', 37, 7, 'Educação'),
(2774, 'Principal', 37, 7, 'Saúde'),
(2775, 'Principal', 37, 7, 'Desenvolvimento Institucional'),
(2776, 'Principal', 37, 7, 'Outro'),
(2815, 'Project', 14, 74, '2020'),
(2816, 'Project', 14, 72, '2017'),
(2817, 'Project', 14, 71, '0 USD'),
(2818, 'Project', 14, 14, 'Maputo-Cidade'),
(2819, 'Project', 14, 14, 'Maputo-Província'),
(2820, 'Project', 14, 14, 'Cabo Delgado'),
(2821, 'Project', 14, 14, 'Niassa'),
(2822, 'Project', 14, 14, 'Nampula'),
(2823, 'Project', 14, 14, 'Zambézia'),
(2824, 'Project', 14, 43, 'CHIMBUNILA'),
(2825, 'Project', 14, 43, 'CIDADE DE LICHINGA'),
(2826, 'Project', 14, 43, 'CIDADE DE PEMBA'),
(2827, 'Project', 14, 43, 'CUAMBA'),
(2828, 'Project', 14, 43, 'DISTRITO MUNICIPAL KaMpfumo'),
(2829, 'Project', 14, 43, 'MACOMIA'),
(2830, 'Project', 14, 43, 'MANHIÇA'),
(2831, 'Project', 14, 43, 'MELUCO'),
(2832, 'Project', 14, 43, 'MOCIMBOA DA PRAIA'),
(2833, 'Project', 14, 43, 'PALMA'),
(2834, 'Project', 14, 43, 'RAPALE'),
(2835, 'Principal', 67, 75, ''),
(2836, 'Principal', 67, 6, 'Moçambique'),
(2837, 'Principal', 67, 3, ''),
(2838, 'Principal', 67, 1, ''),
(2839, 'Principal', 67, 2, ''),
(2840, 'Principal', 67, 7, ''),
(2841, 'Principal', 67, 8, ''),
(2842, 'Principal', 67, 9, ''),
(2843, 'Principal', 67, 10, ''),
(2844, 'Principal', 67, 11, ''),
(2845, 'Principal', 68, 75, ''),
(2846, 'Principal', 68, 6, 'Moçambique'),
(2847, 'Principal', 68, 3, ''),
(2848, 'Principal', 68, 1, ''),
(2849, 'Principal', 68, 2, ''),
(2850, 'Principal', 68, 7, ''),
(2851, 'Principal', 68, 8, ''),
(2852, 'Principal', 68, 9, ''),
(2853, 'Principal', 68, 10, ''),
(2854, 'Principal', 68, 11, ''),
(2855, 'Project', 17, 74, '2018'),
(2856, 'Project', 17, 72, '2016'),
(2857, 'Project', 17, 35, '2'),
(2858, 'Project', 17, 42, '25'),
(2859, 'Project', 17, 5, 'C18-029'),
(2862, 'Project', 17, 40, ''),
(2863, 'Project', 17, 22, 'Mulheres e Raparigas'),
(2864, 'Project', 17, 39, '2500'),
(2865, 'Project', 17, 38, ''),
(2867, 'Project', 17, 17, 'Prevenir casamentos prematuros e forçados de crianças através de educação e formação aberta, à distância e baseada na technologia'),
(2868, 'Project', 17, 24, ''),
(2869, 'Project', 17, 19, 'a)	Consciencializados pais e líderes comunitários sobre as consequências negativas dos casamentos prematuros sobre o desenvolvimento das raparigas  e sobre os benefícios da educação, e o uso da Educação Aberta e à Distancia(EAD);\r\nb)	Aumentado conhecimento entre as raparigas sobre a sua saúde, os direitos sociais e as consequências dos casamentos prematuros;\r\nc)	Aumentada a consciência e as aspirações de oportunidades de emprego entre as mulheres e raparigas.\r\n'),
(2870, 'Project', 17, 34, 'Nos países subdesenvolvidos ¼ das mulheres na faixa etária dos 15-24 anos não completaram o ensino primário ou não se inscreveram no ensino secundário. Uma das barreiras para as raparigas não completarem o ensino secundário ou primário é o casamento prematuro e forçado; custo da escolaridade bem como a distância entre os locais de ensino e as residências das raparigas pelo que, com o presente projecto, pretende-se garantir que por via da criação de condições de educação segura garantindo o retorno da rapariga à escola.'),
(2871, 'Project', 17, 23, '9775477.20'),
(2872, 'Project', 17, 71, '220019.74'),
(2873, 'Project', 17, 14, 'Niassa'),
(2874, 'Project', 17, 43, 'CHIMBUNILA'),
(2875, 'Project', 17, 43, 'CUAMBA'),
(2876, 'Project', 17, 43, 'MANDIMBA'),
(2930, 'Principal', 69, 75, ''),
(2931, 'Principal', 69, 6, 'Moçambique'),
(2932, 'Principal', 69, 3, ''),
(2933, 'Principal', 69, 1, ''),
(2934, 'Principal', 69, 2, ''),
(2935, 'Principal', 69, 7, ''),
(2936, 'Principal', 69, 8, ''),
(2937, 'Principal', 69, 9, ''),
(2938, 'Principal', 69, 10, ''),
(2939, 'Principal', 69, 11, ''),
(2960, 'Principal', 70, 75, 'Moçambicana'),
(2961, 'Principal', 70, 6, 'Moçambique'),
(2963, 'Principal', 70, 1, ''),
(2964, 'Principal', 70, 2, ''),
(2966, 'Principal', 70, 8, ''),
(2967, 'Principal', 70, 9, ''),
(2968, 'Principal', 70, 10, ''),
(2969, 'Principal', 70, 11, ''),
(2970, 'Principal', 70, 3, 'Niassa'),
(2971, 'Principal', 70, 7, 'Educação'),
(2972, 'Principal', 71, 4, ''),
(2973, 'Principal', 72, 4, ''),
(2974, 'Principal', 73, 4, ''),
(2975, 'Principal', 74, 4, ''),
(2976, 'Principal', 75, 4, ''),
(2977, 'Principal', 76, 4, ''),
(2978, 'Principal', 77, 4, ''),
(2979, 'Principal', 78, 4, ''),
(2980, 'Project', 18, 72, '2016'),
(2981, 'Project', 18, 74, '2018'),
(2982, 'Project', 18, 35, '2 '),
(2983, 'Project', 18, 42, '24'),
(2984, 'Project', 18, 5, '81201049'),
(2987, 'Project', 18, 40, ''),
(2988, 'Project', 18, 22, 'Mulheres, Homens'),
(2989, 'Project', 18, 39, '2500'),
(2990, 'Project', 18, 38, '2500'),
(2992, 'Project', 18, 17, 'Dotar - em dois anos - 5.000 jovens, mulheres e homens, com competências básicas de literacia, numeracia e habilidades pre-profissionais, para que estejam preparados para o treinamento preparatório para o emprego'),
(2993, 'Project', 18, 24, 'i. Capacitar formadores de alfabetizadores, supervisores e alfabetizadores/educadores 	de adultos no ensino na lingua local (L1), Português (L2) e habilidades para a 	vida/pre-profissionais,\r\nii. Providenciar material de ensino (manuais), de estudo (livros do aluno) e brochuras 	sobre Habilidades para a Vida/pre-profissionais,\r\niii. Criar condições materiais para o funcionamento,  em regime intensivo, de 140 turmas 	de alfabetiação/pós-alfabetização.\r\n'),
(2994, 'Project', 18, 19, 'Ref O.E. i :\r\n- Treinados 18 formadores de alfabetizadores, supervisores e 	alfabetizadores/educadores de adultos,\r\n- 15 supervisores treinados no ensino em língua local (L1), Português(L2) e ensino 	\r\nde habilidades pré-profissionais e em metodologias de supervisão,\r\n- 160 alfabetizadores/educadores de adultos treinados no ensino na língua local (L1), Português(L2) e ensino de habilidades pré-profissionais.\r\n\r\n Ref O.E. ii:\r\n- Re-impressos e distribuidos nas turmas de alfabetização:\r\no	2000 livros de aluno para literacia em língua local\r\no	2000 livros de aluno para numeracia em língua local\r\no	1500 livros de aluno para o ensino de Português \r\n- Publicados, impressos e distribuidos nas turmas de alfabetização:\r\no	2500 brochuras de 5 títulos sobre habilidades pré-profissionais\r\n\r\nRef O.E. iii:\r\n	- 140 espaços de ensino identificados e preparados para o ensino 	\r\n(reabilitações de pequena escala  feitas, quadros pretos fornecidos caso necessários, condições sanitárias garantidos)\r\n- Energia solar instalados em 70 espaços de ensino (estimativa)\r\n- Material de funcionamento para 140  turmas alfabetização e pós- alfabetização\r\n\r\n'),
(2995, 'Project', 18, 34, 'A província de Cabo Delgado no norte de Moçambique está a mudar rapidamente. A descoberta de grandes reservas de petróleo e gás, juntamente com a produção de minerais altamente valorizados e de pedras semi-preciosas, afecta sobremaneira a economia tradicional baseada na agricultura de subsistência e da pesca. Mais atenção vai para o distrito de Palma, no extremo norte, na fronteira com a Tanzânia , onde uma fábrica de  GNL será construído no pensinsel Afungi. A preparação do local e a construção do estaleiro para facilitar a instalação da fábrica, a própria construção da fábrica de GNL e de centenas de casas para os trabalhadores e pessoal administrativo, vai gerar uma grande demanda por trabalhadores moçambicanos . O projeto promove e organiza formação para jovens em Cabo Delgado, a fim de facilitar o emprego desses trabalhadores moçambicanos nos postos de trabalho criados pelo sector do gás e sua cadeia de valor .\r\nA formação para o emprego não deve incidir  apenas no ensino de habilidades técnicas; ele deve também incluir saúde e segurança no local de trabalho,  educação financeira,  saúde e nutrição e algumas noções básicas da língua Inglês, entre outros assuntos .\r\n\r\nA alta taxa de analfabetismo de Cabo Delgado, especialmente entre as mulheres (total 66,6% , mulheres 75%)  constitui um  grande obstáculo para a formação profissional. Algumas dessas pessoas analfabetas já estivem na  escola primária ou participaram em aulas de alfabetização. Mas muito provavelmente eles desistiram antes de adquirir as competências que lhes permitam aprender de forma autónoma através da leitura . E aqueles alunos que  conseguiram terminar  a escola primária,  podem ter perdido suas habilidades de leitura devido à falta de oportunidades para a prática de leitura. Assim, a menos que os jovens aprendem a ler e escrever, a população de Cabo Delgado não vai beneficiar plenamente das oportunidades de emprego que estão a vir.\r\n\r\n\r\n\r\n'),
(2996, 'Project', 18, 23, ''),
(2997, 'Project', 18, 71, '0 USD'),
(2998, 'Project', 18, 14, 'Cabo Delgado'),
(2999, 'Project', 18, 43, 'CIDADE DE PEMBA'),
(3000, 'Project', 18, 43, 'MACOMIA'),
(3001, 'Project', 18, 43, 'MECULO'),
(3002, 'Project', 18, 43, 'MOCIMBOA DA PRAIA'),
(3003, 'Project', 18, 43, 'PALMA'),
(3004, 'Project', 18, 96, 'Melhorar o acesso a educação básica de qualidade pelas comunidades locais, especialmente a escolarização de crianças e alfabetização de jovens e mulheres, em particular nas províncias de Cabo Delgado e Niassa.'),
(3006, 'Project', 17, 96, 'Melhorar o acesso a educação básica de qualidade pelas comunidades locais, especialmente a escolarização de crianças e alfabetização de jovens e mulheres, em particular nas províncias de Cabo Delgado e Niassa.'),
(3007, 'Project', 19, 72, '2016'),
(3008, 'Project', 19, 74, '2021'),
(3009, 'Project', 19, 35, '5'),
(3010, 'Project', 19, 42, '60'),
(3011, 'Project', 19, 5, '00/MOZ/CTR18'),
(3014, 'Project', 19, 40, ''),
(3015, 'Project', 19, 22, 'Estudantes do ensino secundário '),
(3016, 'Project', 19, 39, '400'),
(3017, 'Project', 19, 38, '200'),
(3019, 'Project', 19, 17, 'Testar se um programa de ensino secundário complementar, que consiste em ferramentas auxiliares elaboradas com base no currículo nacional e adoptando metodologias participativas que desenvolvam habilidades cognitivas e não-cognitivas, pode contribuir para a empregabilidade do aluno'),
(3020, 'Project', 19, 24, '1. Seleccionar estudantes da UP e facilitadores \r\n2. Induzir estudantes e facilitadores, ao projecto\r\n3. Capacitar estudantes e facilitadores em métodos cooperativos\r\n4. Elaborar ferramentas \r\n5. Testar as ferramentas \r\n6. Avaliar o nível de mudanças  '),
(3021, 'Project', 19, 19, 'Alunos com habilidades para o emprego desenvolvidas '),
(3022, 'Project', 19, 34, 'Moçambique tem apresentado índices de crescimento económico significativos nas últimas décadas. No entanto, este crescimento não foi acompanhado por um igual crescimento de oportunidades de emprego. Ao mesmo tempo os empregadores relatam que os jovens que saem do ensino secundário (bem como do  técnico e universitário) não estão devidamente preparados para o mercado de trabalho, tanto em termos da habilidades cognitivas como não-cognitivos (com ênfase nas últimas). O programa MUVA pretende, num período de 5 anos, testar soluções para a resolução dessas dificuldades.'),
(3023, 'Project', 19, 23, '5043095'),
(3024, 'Project', 19, 71, '0 USD'),
(3025, 'Project', 19, 14, 'Maputo-Cidade'),
(3026, 'Project', 19, 43, 'DISTRITO MUNICIPAL KaMaxaqueni'),
(3027, 'Project', 19, 43, 'DISTRITO MUNICIPAL KaMubukwana'),
(3028, 'Project', 19, 43, 'DISTRITO MUNICIPAL Nhlamankulo'),
(3029, 'Project', 19, 96, 'Melhorar o acesso a educação básica de qualidade pelas comunidades locais, especialmente a escolarização de crianças e alfabetização de jovens e mulheres, em particular nas províncias de Cabo Delgado e Niassa.'),
(3030, 'Project', 20, 72, '2017'),
(3031, 'Project', 20, 74, '2018'),
(3032, 'Project', 20, 35, ''),
(3033, 'Project', 20, 42, ''),
(3034, 'Project', 20, 5, '11130041'),
(3037, 'Project', 20, 40, ''),
(3038, 'Project', 20, 22, 'crianças órfãs e vulneráveis e suas famílias'),
(3039, 'Project', 20, 39, ''),
(3040, 'Project', 20, 38, ''),
(3042, 'Project', 20, 17, 'Melhorar a saúde, o estado nutricional e o bem-estar das crianças órfas e vulneráveis (COVs) e suas famílias.'),
(3043, 'Project', 20, 24, 'Maior utilização dos serviços sociais, saúde e nutricionais de qualidade;\r\nRedução da vulnerabilidade económica das famílias de COVs.'),
(3044, 'Project', 20, 19, '1. Maior utilização dos serviços sociais, saúde e nutricionais de qualidade;\r\n2. Reduzida a vulnerabilidade económica das famílias de COVs, preparando-as para melhor ultrapassar o impacto causado pelo HIV/SIDA.\r\n'),
(3045, 'Project', 20, 34, 'Através do programa de subvenções do COVida, preve-se o melhormanto  da saúde, do estado nutricional e do bem-estar das crianças órfãs e vulneráveis (COVs) que vivem nos distritos prioritários definidos pelo PEPFAR, para o controlo da epidemia, contribuindo para a estratégia 90-90-90 do PEPFAR. O programa visa apoiar as actividades de COVs apenas nos distritos seleccionados que demonstram alta prevalência do HIV na cidade de Maputo e em todas as província do País.'),
(3046, 'Project', 20, 23, '4779570.00 '),
(3047, 'Project', 20, 71, '0 USD'),
(3048, 'Project', 20, 14, 'Cabo Delgado'),
(3050, 'Project', 20, 43, 'MACOMIA'),
(3051, 'Project', 20, 43, 'MUEDA'),
(3052, 'Project', 20, 43, 'MUIDUMBE'),
(3053, 'Project', 20, 96, 'Promover a saúde comunitária preventiva através da educação e práticas, particularmente em:Nutrição, Agricultura e meio ambiente.'),
(3054, 'Issue', 157, 99, 'Numero de Curriculos'),
(3055, 'Issue', 157, 100, '1'),
(3056, 'Issue', 288, 99, ''),
(3057, 'Issue', 288, 100, '32'),
(3058, 'Issue', 288, 46, ''),
(3059, 'Issue', 289, 99, ''),
(3060, 'Issue', 289, 100, '16'),
(3061, 'Issue', 289, 46, ''),
(3062, 'Issue', 290, 99, ''),
(3063, 'Issue', 290, 100, '10'),
(3064, 'Issue', 290, 46, ''),
(3065, 'Issue', 291, 99, ''),
(3066, 'Issue', 291, 100, '32'),
(3067, 'Issue', 291, 46, ''),
(3068, 'Issue', 292, 99, ''),
(3069, 'Issue', 292, 100, '20000'),
(3070, 'Issue', 292, 46, ''),
(3071, 'Issue', 293, 99, ''),
(3072, 'Issue', 293, 100, '100'),
(3073, 'Issue', 293, 46, ''),
(3074, 'Issue', 294, 99, ''),
(3075, 'Issue', 294, 100, '200000'),
(3076, 'Issue', 294, 46, ''),
(3077, 'Issue', 295, 99, ''),
(3078, 'Issue', 295, 100, '16'),
(3079, 'Issue', 295, 46, ''),
(3080, 'Issue', 296, 99, ''),
(3081, 'Issue', 296, 100, '10'),
(3082, 'Issue', 296, 46, ''),
(3083, 'Issue', 297, 99, ''),
(3084, 'Issue', 297, 100, '1000'),
(3085, 'Issue', 297, 46, ''),
(3086, 'Issue', 298, 99, ''),
(3087, 'Issue', 298, 100, '10000'),
(3088, 'Issue', 298, 46, ''),
(3089, 'Issue', 299, 99, ''),
(3090, 'Issue', 299, 100, '100'),
(3091, 'Issue', 299, 46, ''),
(3092, 'Issue', 300, 99, ''),
(3093, 'Issue', 300, 100, '10'),
(3094, 'Issue', 300, 46, ''),
(3095, 'Issue', 301, 99, ''),
(3096, 'Issue', 301, 100, '500'),
(3097, 'Issue', 301, 46, ''),
(3098, 'Issue', 302, 99, ''),
(3099, 'Issue', 302, 100, '3'),
(3100, 'Issue', 302, 46, ''),
(3101, 'Issue', 303, 99, ''),
(3102, 'Issue', 303, 100, '1'),
(3103, 'Issue', 303, 46, ''),
(3104, 'Issue', 304, 99, ''),
(3105, 'Issue', 304, 100, ''),
(3106, 'Issue', 304, 46, ''),
(3107, 'Issue', 305, 99, ''),
(3108, 'Issue', 305, 100, '10'),
(3109, 'Issue', 305, 46, ''),
(3110, 'Issue', 306, 99, ''),
(3111, 'Issue', 306, 100, '10'),
(3112, 'Issue', 306, 46, ''),
(3113, 'Issue', 307, 99, ''),
(3114, 'Issue', 307, 100, '1'),
(3115, 'Issue', 307, 46, ''),
(3116, 'Issue', 184, 99, ''),
(3117, 'Issue', 184, 100, '1'),
(3118, 'Issue', 186, 99, ''),
(3119, 'Issue', 186, 100, '1'),
(3120, 'Issue', 189, 99, ''),
(3121, 'Issue', 189, 100, '200'),
(3122, 'Issue', 191, 99, ''),
(3123, 'Issue', 191, 100, '1'),
(3124, 'Issue', 193, 99, ''),
(3125, 'Issue', 193, 100, '5000'),
(3126, 'Issue', 195, 99, ''),
(3127, 'Issue', 195, 100, '1'),
(3128, 'Issue', 197, 99, ''),
(3129, 'Issue', 197, 100, '20'),
(3130, 'Issue', 200, 99, ''),
(3131, 'Issue', 200, 100, '1'),
(3132, 'Issue', 203, 99, ''),
(3133, 'Issue', 203, 100, '1'),
(3134, 'Issue', 308, 99, ''),
(3135, 'Issue', 308, 100, '10000'),
(3136, 'Issue', 308, 46, ''),
(3137, 'Issue', 309, 99, ''),
(3138, 'Issue', 309, 100, '2'),
(3139, 'Issue', 309, 46, ''),
(3140, 'Issue', 209, 99, ''),
(3141, 'Issue', 209, 100, '50'),
(3142, 'Issue', 211, 99, ''),
(3143, 'Issue', 211, 100, '2'),
(3147, 'Issue', 215, 99, ''),
(3148, 'Issue', 215, 100, '1'),
(3149, 'Issue', 217, 99, ''),
(3150, 'Issue', 217, 100, ''),
(3151, 'Issue', 313, 99, ''),
(3152, 'Issue', 313, 100, '100'),
(3153, 'Issue', 313, 46, ''),
(3154, 'Issue', 314, 99, ''),
(3155, 'Issue', 314, 100, '100'),
(3156, 'Issue', 314, 46, ''),
(3157, 'Issue', 315, 99, ''),
(3158, 'Issue', 315, 100, '100'),
(3159, 'Issue', 315, 46, ''),
(3160, 'Issue', 316, 99, ''),
(3161, 'Issue', 316, 100, '100'),
(3162, 'Issue', 316, 46, ''),
(3163, 'Issue', 317, 99, ''),
(3164, 'Issue', 317, 100, ''),
(3165, 'Issue', 317, 46, ''),
(3166, 'Issue', 318, 99, ''),
(3167, 'Issue', 318, 100, ''),
(3168, 'Issue', 318, 46, ''),
(3169, 'Issue', 320, 99, ''),
(3170, 'Issue', 320, 100, ''),
(3171, 'Issue', 320, 46, ''),
(3172, 'Issue', 322, 29, ''),
(3173, 'Issue', 322, 81, ''),
(3174, 'Issue', 322, 60, ''),
(3175, 'Issue', 322, 76, ''),
(3176, 'Issue', 323, 99, ''),
(3177, 'Issue', 323, 100, ''),
(3178, 'Issue', 323, 46, ''),
(3179, 'Issue', 324, 99, ''),
(3180, 'Issue', 324, 100, ''),
(3181, 'Issue', 324, 46, ''),
(3182, 'Issue', 240, 99, ''),
(3183, 'Issue', 240, 100, '2'),
(3184, 'Issue', 325, 99, ''),
(3185, 'Issue', 325, 100, ''),
(3186, 'Issue', 325, 46, ''),
(3187, 'Issue', 326, 99, ''),
(3188, 'Issue', 326, 100, ''),
(3189, 'Issue', 326, 46, ''),
(3190, 'Issue', 327, 99, ''),
(3191, 'Issue', 327, 100, '1'),
(3192, 'Issue', 327, 46, ''),
(3193, 'Issue', 244, 99, ''),
(3194, 'Issue', 244, 100, ''),
(3195, 'Issue', 248, 99, ''),
(3196, 'Issue', 248, 100, '4'),
(3197, 'Issue', 328, 99, ''),
(3198, 'Issue', 328, 100, ''),
(3199, 'Issue', 328, 46, ''),
(3200, 'Issue', 329, 99, ''),
(3201, 'Issue', 329, 100, ''),
(3202, 'Issue', 329, 46, ''),
(3203, 'Issue', 330, 29, ''),
(3204, 'Issue', 330, 81, ''),
(3205, 'Issue', 330, 60, ''),
(3206, 'Issue', 330, 76, ''),
(3207, 'Issue', 331, 99, ''),
(3208, 'Issue', 331, 100, '1'),
(3209, 'Issue', 331, 46, ''),
(3210, 'Issue', 332, 29, ''),
(3211, 'Issue', 332, 81, ''),
(3212, 'Issue', 332, 60, ''),
(3213, 'Issue', 332, 76, ''),
(3214, 'Issue', 333, 99, ''),
(3215, 'Issue', 333, 100, '1'),
(3216, 'Issue', 333, 46, ''),
(3217, 'Issue', 309, 102, 'Percentual'),
(3218, 'Issue', 209, 102, 'Percentual'),
(3219, 'Issue', 317, 102, 'Percentual'),
(3220, 'Issue', 316, 102, 'Percentual'),
(3221, 'Issue', 315, 102, 'Percentual'),
(3222, 'Issue', 314, 102, 'Percentual'),
(3223, 'Issue', 313, 102, 'Percentual'),
(3224, 'Project', 21, 72, '2015'),
(3225, 'Project', 21, 74, '2019'),
(3226, 'Project', 21, 35, '5'),
(3227, 'Project', 21, 42, '40'),
(3228, 'Project', 21, 5, '01.SUB/CESC-AID-656-A-14-00011, '),
(3231, 'Project', 21, 40, ''),
(3232, 'Project', 21, 22, 'Alunos das 1ª e 2ª classes '),
(3233, 'Project', 21, 39, '37000'),
(3234, 'Project', 21, 38, '37000'),
(3236, 'Project', 21, 17, 'Melhorar os resultados da leitura das raparigas e rapazes no fim do 1º ciclo do ensino primário '),
(3237, 'Project', 21, 24, '1. Aumentar a capacidade local de produção e acesso a materiais educativos e de leitura nos 7 distritos das províncias de Nampula e da Zambézia; \r\n\r\n2. Melhorar a participação da comunidade na governação escolar em 7 distritos das províncias de Zambézia e Nampula \r\n\r\n'),
(3238, 'Project', 21, 19, '1.1.  Professores e membros de Organizações da Sociedade Civil / membros das comunidades de 7 distritos produzem materiais educativos e de leitura;\r\n1.2.  Criadas ou reabilitadas (pedagogicamente) as bibliotecas escolares  da comunidade;\r\n1.3.  Realizados concursos de Leitura e divulgadas obras de leitura para crianças e professores no seio da comunidade escolar e circunvizinha;\r\n1.4.  Melhorada a competência de leitura dos alunos no fim do 1.º Ciclo (avaliada nos anos 1, 3 e 5 do projecto);\r\n\r\n2.1.  Conselhos de Escolas (CE) em funcionamento e seguindo o seu regulamento;\r\n2.2.  Os Planos de Educação Distritais elaborados com base nas lacunas críticas identificadas pelos CE e OSC locais.\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(3239, 'Project', 21, 34, 'O projecto “Eu Leio” foi desenhado para responder às dificuldades constatadas no ensino primário em Moçambique, onde se verificou que grande parte das crianças terminam ou terminavam o 1º ciclo do ensino primário com níveis muito baixos de competência de leitura comprometendo o sucesso escolar e todos os processos de ensino e aprendizagem dos níveis subsequentes.'),
(3240, 'Project', 21, 23, ''),
(3241, 'Project', 21, 71, '782168.70 USD'),
(3242, 'Project', 21, 14, 'Nampula'),
(3243, 'Project', 21, 14, 'Zambézia'),
(3244, 'Project', 21, 43, 'ALTO MOLOCUE'),
(3245, 'Project', 21, 43, 'MAGANJA DA COSTA'),
(3246, 'Project', 21, 43, 'MECONTA'),
(3247, 'Project', 21, 43, 'MOGOVOLAS'),
(3248, 'Project', 21, 43, 'MOPEIA'),
(3249, 'Project', 21, 43, 'MORRUMBALA'),
(3250, 'Project', 21, 43, 'RAPALE'),
(3251, 'Project', 21, 96, 'Melhorar o acesso a educação básica de qualidade pelas comunidades locais, especialmente a escolarização de crianças e alfabetização de jovens e mulheres, em particular nas províncias de Cabo Delgado e Niassa.'),
(3252, 'Issue', 335, 29, ''),
(3253, 'Issue', 335, 60, 'Maputo-Cidade'),
(3254, 'Issue', 335, 76, 'Kampfumo'),
(3255, 'Issue', 336, 29, ''),
(3256, 'Issue', 336, 60, 'Maputo-Cidade'),
(3257, 'Issue', 336, 76, 'DISTRITO MUNICIAL KaMpfumo'),
(3258, 'Issue', 337, 29, ''),
(3259, 'Issue', 337, 60, 'Maputo-Cidade'),
(3260, 'Issue', 337, 76, 'DISTRITO MUNICIAL KaMpfumo'),
(3261, 'Issue', 338, 29, '185.000'),
(3262, 'Issue', 338, 60, 'Niassa'),
(3263, 'Issue', 338, 76, 'CHIMBUNILA'),
(3264, 'Project', 22, 72, '2017'),
(3265, 'Project', 22, 74, '2018'),
(3266, 'Project', 22, 35, ''),
(3267, 'Project', 22, 42, ''),
(3268, 'Project', 22, 5, '17MZ07'),
(3271, 'Project', 22, 40, ''),
(3272, 'Project', 22, 22, 'Mulheres e Raparigas'),
(3273, 'Project', 22, 39, '2500'),
(3274, 'Project', 22, 38, ''),
(3276, 'Project', 22, 17, 'Prevenir casamentos prematuros e forçados de crianças através de educação e formação aberta, a distância baseada na tecnologia.'),
(3277, 'Project', 22, 24, ''),
(3278, 'Project', 22, 19, 'a)	Consciencializados pais e líderes comunitários sobre as consequências negativas dos casamentos prematuros sobre o desenvolvimento das raparigas  e sobre os benefícios da educação, e o uso da Educação Aberta e a Distancia(EAD);\r\nb)	Aumentado conhecimento entre as raparigas sobre a sua saúde, os direitos sociais e as consequências dos casamentos prematuros;\r\nc)	Aumentada a consciência e as aspirações de oportunidades de emprego entre as mulheres e raparigas.\r\n'),
(3279, 'Project', 22, 34, 'Nos países subdesenvolvidos ¼ das mulheres na faixa etária dos 15-24 anos não completaram o ensino primário ou não se inscreveram no ensino secundário. Uma das barreiras para as raparigas não completarem o ensino secundário ou primário é o casamento prematuro e forçado; custo da escolaridade bem como a distância entre os locais de ensino e as residências das raparigas pelo que, com o presente projecto, pretende-se garantir que por via da criação de condições de educação segura garante o retorno da rapariga a escola.'),
(3280, 'Project', 22, 23, '986373.90'),
(3281, 'Project', 22, 71, '0 USD'),
(3282, 'Project', 22, 14, 'Niassa'),
(3283, 'Project', 22, 43, 'CHIMBUNILA'),
(3284, 'Project', 22, 43, 'CUAMBA'),
(3285, 'Project', 22, 43, 'MANDIMBA'),
(3286, 'Project', 22, 96, 'Melhorar o acesso a educação básica de qualidade pelas comunidades locais, especialmente a escolarização de crianças e alfabetização de jovens e mulheres, em particular nas províncias de Cabo Delgado e Niassa.'),
(3288, 'Issue', 339, 99, 'Nr.Beneficiários (15-24,mulher)'),
(3289, 'Issue', 339, 100, '30'),
(3290, 'Issue', 339, 46, 'Relatorio da capacitaçao'),
(3291, 'Issue', 339, 102, 'Unidade'),
(3292, 'Issue', 340, 99, ''),
(3293, 'Issue', 340, 100, '18'),
(3294, 'Issue', 340, 46, 'Contractos'),
(3295, 'Issue', 340, 102, 'Unidade'),
(3296, 'Issue', 341, 99, ''),
(3297, 'Issue', 341, 100, '654'),
(3298, 'Issue', 341, 46, 'Ferramentas '),
(3299, 'Issue', 341, 102, 'Unidade'),
(3301, 'Issue', 342, 100, '436'),
(3302, 'Issue', 342, 46, 'Ferramentas '),
(3303, 'Issue', 342, 102, 'Unidade'),
(3304, 'Project', 23, 72, '2014'),
(3305, 'Project', 23, 74, '2017'),
(3306, 'Project', 23, 35, '4'),
(3307, 'Project', 23, 42, '48'),
(3308, 'Project', 23, 5, '18/GRANT/13/MOZ'),
(3311, 'Project', 23, 40, ''),
(3312, 'Project', 23, 22, 'Alunos de 1ª a 7ª classe das 20 escolas e adultos das comunidades escolares assistidas pelo projecto'),
(3313, 'Project', 23, 39, '7750'),
(3314, 'Project', 23, 38, '7750'),
(3316, 'Project', 23, 17, 'Ensaiar numa ação piloto uma abordagem integrada para melhorar a qualidade do ensino   conferindo aos alunos (crianças e adultos) as competências básicas necessárias para continuar a aprender'),
(3317, 'Project', 23, 24, '1º) Melhorar a aprendizagem da oralidade, leitura  e escrita, Habilidades para a vida e  curriculum local de 14.000 crianças e 1500 adultos em 20 comunidades  em 2 distritos na província de Niassa;\r\n\r\n2º) Melhorar a Gestão das escolas primárias e centros de alfabetização; e\r\n\r\n3º) Promover  o acesso equitativo à Educação através do aumento da retenção de meninas e mulheres na escola e na alfabetização.\r\n'),
(3318, 'Project', 23, 19, '1)	Habilitados crianças e adultos em 20 comunidades com conhecimentos e habilidades que lhes permitam viver melhor,\r\n2)	Melhorados os serviços de educação prestados nas comunidades alvos\r\n3)	Melhorada a participação da comunidade na gestão das escolas\r\n4)	Taxa de graduação de meninas e mulheres no ensino primário e alfabetização aumentada em 10% anualmente \r\n\r\n'),
(3319, 'Project', 23, 34, 'Racional do projecto: O projecto “Melhorar a qualidade de ensino aplicando uma abordagem integrada” foi desenhado para responder a médio prazo às dificuldades constatadas na província de Niassa relacionadas com a baixa qualidade do ensino primário e os altos índices do analfabetismo o que, não só impede o desenvolvimento humano e social, mas tem também consequências directas para o crescimento económico.'),
(3320, 'Project', 23, 23, ''),
(3321, 'Project', 23, 71, '80360.00 Euros'),
(3322, 'Project', 23, 14, 'Niassa'),
(3323, 'Project', 23, 43, 'LAGO'),
(3324, 'Project', 23, 43, 'MANDIMBA'),
(3325, 'Project', 23, 96, 'Melhorar o acesso a educação básica de qualidade pelas comunidades locais, especialmente a escolarização de crianças e alfabetização de jovens e mulheres, em particular nas províncias de Cabo Delgado e Niassa.'),
(3326, 'Issue', 377, 99, 'Nr.Beneficiários (6-14,homem)'),
(3327, 'Issue', 377, 100, '60'),
(3328, 'Issue', 377, 46, 'Levantamentos anuais da DPEC e Progresso e Mined'),
(3329, 'Issue', 377, 102, 'Percentual'),
(3330, 'Issue', 377, 103, ''),
(3355, 'Issue', 246, 99, ''),
(3356, 'Issue', 246, 100, ''),
(3357, 'Issue', 246, 102, ''),
(3358, 'Issue', 246, 103, ''),
(3359, 'Issue', 244, 102, ''),
(3360, 'Issue', 244, 103, ''),
(3361, 'Issue', 398, 29, ''),
(3362, 'Issue', 398, 60, 'Cabo Delgado'),
(3363, 'Issue', 398, 76, 'MUEDA'),
(3364, 'Issue', 399, 29, ''),
(3365, 'Issue', 399, 60, 'Cabo Delgado'),
(3366, 'Issue', 399, 76, 'MACOMIA'),
(3367, 'Principal', 61, 3, ''),
(3377, 'Project', 24, 72, '2015'),
(3378, 'Project', 24, 74, '2022'),
(3379, 'Project', 24, 35, '7 '),
(3380, 'Project', 24, 42, ''),
(3381, 'Project', 24, 5, ''),
(3384, 'Project', 24, 40, ''),
(3385, 'Project', 24, 22, 'IFPs e escolas primarias'),
(3386, 'Project', 24, 39, '76644'),
(3387, 'Project', 24, 38, '73152'),
(3388, 'Project', 24, 96, ''),
(3389, 'Project', 24, 17, 'Melhorar a qualidade da educação transmitida pelos professores do ensino primário graduados pelos quatro Institutos de Formação de Professores'),
(3390, 'Project', 24, 24, ''),
(3391, 'Project', 24, 19, 'Melhorada a qualidade de educação para alunos (raparigas e rapazes) das escolas primarias pelos graduados dos 4 IFP das das províncias de Cabo Delgado, Tete, Maputo e Niassa  '),
(3392, 'Project', 24, 34, ''),
(3393, 'Project', 24, 23, ''),
(3394, 'Project', 24, 71, '16.662.489  Dolares Canadianos'),
(3395, 'Project', 24, 14, 'Maputo-Província'),
(3397, 'Project', 24, 14, 'Tete'),
(3398, 'Project', 24, 14, 'Cabo Delgado'),
(3399, 'Project', 24, 14, 'Niassa'),
(3400, 'Project', 24, 43, 'CAHORA-BASSA'),
(3401, 'Project', 24, 43, 'CUAMBA'),
(3402, 'Project', 24, 43, 'MANHIÇA'),
(3407, 'TimeEntry', 5, 101, '25'),
(3408, 'Issue', 339, 103, ''),
(3426, 'Issue', 501, 29, ''),
(3427, 'Issue', 501, 81, ''),
(3428, 'Issue', 501, 60, ''),
(3429, 'Issue', 501, 76, ''),
(3430, 'Issue', 502, 29, ''),
(3432, 'Issue', 502, 76, ''),
(3433, 'Issue', 502, 60, 'Maputo-Cidade'),
(3434, 'Issue', 504, 29, ''),
(3436, 'Issue', 504, 76, ''),
(3437, 'Issue', 504, 60, 'Maputo-Cidade'),
(3438, 'Issue', 505, 29, ''),
(3439, 'Issue', 505, 81, ''),
(3440, 'Issue', 505, 60, ''),
(3441, 'Issue', 505, 76, '');
INSERT INTO `custom_values` (`id`, `customized_type`, `customized_id`, `custom_field_id`, `value`) VALUES
(3442, 'Issue', 507, 29, ''),
(3443, 'Issue', 507, 81, ''),
(3444, 'Issue', 507, 60, ''),
(3445, 'Issue', 507, 76, ''),
(3446, 'Issue', 509, 29, ''),
(3447, 'Issue', 509, 81, ''),
(3448, 'Issue', 509, 60, ''),
(3449, 'Issue', 509, 76, ''),
(3450, 'Issue', 510, 29, ''),
(3453, 'Issue', 510, 60, 'Maputo-Província'),
(3454, 'Issue', 510, 60, 'Tete'),
(3455, 'Issue', 510, 60, 'Cabo Delgado'),
(3456, 'Issue', 510, 60, 'Niassa'),
(3457, 'Issue', 510, 76, 'CAHORA-BASSA'),
(3458, 'Issue', 510, 76, 'CUAMBA'),
(3459, 'Issue', 510, 76, 'MANHIÇA'),
(3482, 'Principal', 81, 4, ''),
(3483, 'Principal', 82, 75, 'Moçambicana'),
(3484, 'Principal', 82, 6, 'Moçambique'),
(3486, 'Principal', 82, 1, ''),
(3487, 'Principal', 82, 2, ''),
(3489, 'Principal', 82, 8, 'Colaborador'),
(3490, 'Principal', 82, 9, ''),
(3491, 'Principal', 82, 10, ''),
(3492, 'Principal', 82, 11, ''),
(3493, 'Principal', 82, 3, 'Niassa'),
(3494, 'Principal', 82, 7, 'Saúde'),
(3495, 'Issue', 512, 29, ''),
(3497, 'Issue', 512, 76, ''),
(3498, 'Issue', 512, 60, 'Maputo-Província'),
(3499, 'Issue', 512, 60, 'Tete'),
(3500, 'Issue', 512, 60, 'Cabo Delgado'),
(3501, 'Issue', 512, 60, 'Niassa'),
(3510, 'Issue', 515, 29, ''),
(3512, 'Issue', 515, 76, ''),
(3513, 'Issue', 515, 60, 'Maputo-Província'),
(3514, 'Issue', 515, 60, 'Tete'),
(3515, 'Issue', 515, 60, 'Cabo Delgado'),
(3516, 'Issue', 515, 60, 'Niassa'),
(3517, 'Issue', 516, 29, ''),
(3519, 'Issue', 516, 76, ''),
(3520, 'Issue', 516, 60, 'Maputo-Cidade'),
(3521, 'Issue', 517, 29, ''),
(3523, 'Issue', 517, 76, ''),
(3524, 'Issue', 517, 60, 'Maputo-Província'),
(3525, 'Issue', 517, 60, 'Tete'),
(3526, 'Issue', 517, 60, 'Cabo Delgado'),
(3527, 'Issue', 517, 60, 'Niassa'),
(3528, 'Issue', 518, 29, ''),
(3530, 'Issue', 518, 76, ''),
(3531, 'Issue', 518, 60, 'Maputo-Cidade'),
(3532, 'Issue', 518, 60, 'Sofala'),
(3533, 'Issue', 518, 60, 'Cabo Delgado'),
(3534, 'Issue', 518, 60, 'Niassa'),
(3535, 'Issue', 519, 29, ''),
(3537, 'Issue', 519, 76, ''),
(3538, 'Issue', 519, 60, 'Maputo-Província'),
(3539, 'Issue', 519, 60, 'Tete'),
(3540, 'Issue', 519, 60, 'Cabo Delgado'),
(3541, 'Issue', 519, 60, 'Niassa'),
(3542, 'Issue', 520, 29, ''),
(3543, 'Issue', 520, 60, ''),
(3544, 'Issue', 520, 76, ''),
(3545, 'Issue', 521, 29, ''),
(3547, 'Issue', 521, 76, ''),
(3548, 'Issue', 521, 60, 'Maputo-Província'),
(3549, 'Issue', 521, 60, 'Tete'),
(3550, 'Issue', 521, 60, 'Cabo Delgado'),
(3551, 'Issue', 521, 60, 'Niassa'),
(3552, 'Issue', 522, 29, ''),
(3554, 'Issue', 522, 76, ''),
(3555, 'Issue', 522, 60, 'Maputo-Província'),
(3556, 'Issue', 522, 60, 'Tete'),
(3557, 'Issue', 522, 60, 'Cabo Delgado'),
(3558, 'Issue', 522, 60, 'Niassa'),
(3559, 'Issue', 523, 29, ''),
(3561, 'Issue', 523, 76, ''),
(3562, 'Issue', 523, 60, 'Maputo-Cidade'),
(3563, 'Issue', 525, 29, ''),
(3565, 'Issue', 525, 76, ''),
(3566, 'Issue', 525, 60, 'Maputo-Cidade'),
(3567, 'Issue', 526, 29, ''),
(3568, 'Issue', 526, 60, ''),
(3569, 'Issue', 526, 76, ''),
(3570, 'Issue', 527, 29, ''),
(3572, 'Issue', 527, 76, ''),
(3573, 'Issue', 527, 60, 'Maputo-Província'),
(3574, 'Issue', 527, 60, 'Tete'),
(3575, 'Issue', 527, 60, 'Cabo Delgado'),
(3576, 'Issue', 527, 60, 'Niassa'),
(3577, 'Issue', 528, 29, ''),
(3579, 'Issue', 528, 76, ''),
(3580, 'Issue', 528, 60, 'Maputo-Cidade'),
(3637, 'Issue', 537, 29, ''),
(3639, 'Issue', 537, 76, ''),
(3640, 'Issue', 537, 60, 'Maputo-Província'),
(3641, 'Issue', 537, 60, 'Tete'),
(3642, 'Issue', 537, 60, 'Cabo Delgado'),
(3643, 'Issue', 537, 60, 'Niassa'),
(3644, 'Issue', 538, 29, ''),
(3645, 'Issue', 538, 60, ''),
(3646, 'Issue', 538, 76, ''),
(3647, 'Issue', 539, 29, ''),
(3649, 'Issue', 539, 76, ''),
(3650, 'Issue', 539, 60, 'Maputo-Cidade'),
(3651, 'Project', 25, 72, '2014'),
(3652, 'Project', 25, 74, '2017'),
(3653, 'Project', 25, 35, '3'),
(3654, 'Project', 25, 42, ''),
(3655, 'Project', 25, 5, ''),
(3658, 'Project', 25, 40, ''),
(3659, 'Project', 25, 22, 'Mulheres gravidas e lactantes, crianças menores de 2 anos e adolescentes do sexo feminino'),
(3660, 'Project', 25, 39, ''),
(3661, 'Project', 25, 38, ''),
(3663, 'Project', 25, 17, 'Contribuir para a redu8çao dos actuais niveis de desnutriçao cronica na provincia de Cabo Delgado, atraves da geraçao de resultados nutricionais melhorados em mais de 80% dos cerca de 233.209 beneficiarios directos em oito distritos-alvo do projecto'),
(3664, 'Project', 25, 24, 'a) Desenvolver o plano de expansao das actividades do projecto;\r\nb) Estabelecer as operaçoes para a implantaçao do projecto;\r\nc) Realizar treinamentos (iniciais e refrescamentos) dos membros do consorcio;\r\nd) Informar e mobilizar comunidades sobre os objectivos do projecto;\r\ne) Identificar, seleccionar e treinar os trabalhadores comunitarios de saude (APE\'s, Promotores e Voluntarios);\r\nf) Implementar o pacote de prestaçao dos serviços de nutriçao nas comunidades beneficiarias do projecto;\r\ng) Seleccionar, traduzir, reproduzir e distribuir materiais de Informaçao, Educaçao e Comunicaçao (IEC)/ Comunicaçao para Mudança de Comportamento (CMC);\r\nh) Realizar encontros de coordenaçao do projecto a todos os niveis envolvendo todos os parceiros interessados, quer organizaçoes do governo, quer nao governamentais;\r\ni) Desenvolver e implementar um sistema de monitoria e avaliaçao das actividades do projecto eficiente.'),
(3665, 'Project', 25, 19, 'a) Desenvolvido o plano de expansao;\r\nb) Iniciadas as principais operaçoes para a implementaçao das actividades do projecto;\r\nc) Realizado o treinamento dos membros do consorcio;\r\nd) Informadas as comunidades-alvo sobre os objectivos do projecto;\r\ne) Seleccionados e treinados todos os trabalhadores comunitarios e os promotores de saude;\r\nf) Implementados os pacotes de prestaçao de serviços de nutriçao nas comunidades beneficiadas pelo projecto;\r\ng) Seleccionados, traduzidos, reproduzidos e distribuidos materiais de Informaçao, Educaçao e Comunicaçao (IEC)/ Comunicaçao para Mudança de Comportamento (CMC);\r\nh) Realizados encontros de coordenaçao do projecto a todos os niveis envolvendo todos os parceiros interessados, quer organizaçoes do governo, quer nao-governamentais.'),
(3666, 'Project', 25, 34, 'Dados da provincia de Cabo Delgado indicam que esta província tem a taxa mais elevada (> 50%), 15% dos recém-nascidos têm BPN, indicador da saúde e nutrição materna e do recém-nascido. Cerca de 69% das crianças de 6-59 meses tem deficiência de vit.”A” e 14% das mulheres grávidas. Cerca de 75% das crianças dos 6-24 meses de idade e mais de metade das mulheres grávidas tem anemia. Os distritos do interior de Cabo Delgado, onde a ingestão de proteínas tende a ser comparativamente baixa devido a menores níveis de consumo de peixe, enfrentam problemas de desnutrição ainda mais aguda, fornecendo uma justificativa para implementação do projecto nesta provincia.'),
(3667, 'Project', 25, 23, ''),
(3668, 'Project', 25, 71, '0 USD'),
(3669, 'Project', 25, 14, 'Cabo Delgado'),
(3670, 'Project', 25, 43, 'MUEDA'),
(3671, 'Project', 25, 43, 'MUIDUMBE'),
(3672, 'Project', 25, 96, 'Promover a saúde comunitária preventiva através da educação e práticas, particularmente em:Nutrição, Agricultura e meio ambiente.'),
(3673, 'Issue', 540, 29, ''),
(3675, 'Issue', 540, 76, ''),
(3676, 'Issue', 540, 60, 'Maputo-Província'),
(3677, 'Issue', 540, 60, 'Tete'),
(3678, 'Issue', 540, 60, 'Cabo Delgado'),
(3679, 'Issue', 540, 60, 'Niassa'),
(3680, 'Issue', 541, 29, ''),
(3682, 'Issue', 541, 76, ''),
(3683, 'Issue', 541, 60, 'Maputo-Província'),
(3684, 'Issue', 541, 60, 'Tete'),
(3685, 'Issue', 541, 60, 'Cabo Delgado'),
(3686, 'Issue', 541, 60, 'Niassa'),
(3687, 'Issue', 542, 29, ''),
(3689, 'Issue', 542, 76, ''),
(3690, 'Issue', 542, 60, 'Maputo-Cidade'),
(3691, 'Issue', 544, 29, ''),
(3693, 'Issue', 544, 76, ''),
(3694, 'Issue', 544, 60, 'Maputo-Província'),
(3695, 'Issue', 544, 60, 'Tete'),
(3696, 'Issue', 544, 60, 'Cabo Delgado'),
(3697, 'Issue', 544, 60, 'Niassa'),
(3698, 'Issue', 545, 29, ''),
(3700, 'Issue', 545, 76, ''),
(3701, 'Issue', 545, 60, 'Maputo-Província'),
(3702, 'Issue', 545, 60, 'Tete'),
(3703, 'Issue', 545, 60, 'Cabo Delgado'),
(3704, 'Issue', 545, 60, 'Niassa'),
(3705, 'Issue', 554, 29, ''),
(3707, 'Issue', 554, 76, ''),
(3708, 'Issue', 554, 60, 'Maputo-Província'),
(3709, 'Issue', 554, 60, 'Tete'),
(3710, 'Issue', 554, 60, 'Cabo Delgado'),
(3711, 'Issue', 554, 60, 'Niassa'),
(3712, 'Issue', 555, 29, ''),
(3714, 'Issue', 555, 76, ''),
(3715, 'Issue', 555, 60, 'Maputo-Cidade'),
(3716, 'Issue', 571, 29, ''),
(3719, 'Issue', 571, 60, 'Cabo Delgado'),
(3720, 'Issue', 571, 76, 'MACOMIA'),
(3721, 'Issue', 571, 76, 'MUEDA'),
(3722, 'Issue', 571, 76, 'MUIDUMBE'),
(3723, 'Issue', 572, 29, ''),
(3726, 'Issue', 572, 60, 'Cabo Delgado'),
(3727, 'Issue', 572, 76, 'MACOMIA'),
(3728, 'Issue', 572, 76, 'MUEDA'),
(3729, 'Issue', 572, 76, 'MUIDUMBE'),
(3730, 'Issue', 573, 29, ''),
(3733, 'Issue', 573, 60, 'Cabo Delgado'),
(3734, 'Issue', 573, 76, 'MACOMIA'),
(3735, 'Issue', 573, 76, 'MUEDA'),
(3736, 'Issue', 573, 76, 'MUIDUMBE'),
(3737, 'Issue', 574, 29, ''),
(3740, 'Issue', 574, 60, 'Cabo Delgado'),
(3741, 'Issue', 574, 76, 'MACOMIA'),
(3742, 'Issue', 574, 76, 'MUEDA'),
(3743, 'Issue', 574, 76, 'MUIDUMBE'),
(3744, 'Issue', 575, 29, ''),
(3747, 'Issue', 575, 60, 'Cabo Delgado'),
(3748, 'Issue', 575, 76, 'MACOMIA'),
(3749, 'Issue', 575, 76, 'MUEDA'),
(3750, 'Issue', 575, 76, 'MUIDUMBE'),
(3751, 'Issue', 576, 29, ''),
(3754, 'Issue', 576, 60, 'Cabo Delgado'),
(3755, 'Issue', 576, 76, 'MACOMIA'),
(3756, 'Issue', 576, 76, 'MUEDA'),
(3757, 'Issue', 576, 76, 'MUIDUMBE'),
(3758, 'Issue', 577, 29, ''),
(3761, 'Issue', 577, 60, 'Cabo Delgado'),
(3762, 'Issue', 577, 76, 'MACOMIA'),
(3763, 'Issue', 577, 76, 'MUEDA'),
(3764, 'Issue', 577, 76, 'MUIDUMBE'),
(3765, 'Issue', 578, 29, ''),
(3768, 'Issue', 578, 60, 'Cabo Delgado'),
(3769, 'Issue', 578, 76, 'MACOMIA'),
(3770, 'Issue', 578, 76, 'MUEDA'),
(3771, 'Issue', 578, 76, 'MUIDUMBE'),
(3772, 'Issue', 579, 29, ''),
(3775, 'Issue', 579, 60, 'Cabo Delgado'),
(3776, 'Issue', 579, 76, 'MACOMIA'),
(3777, 'Issue', 579, 76, 'MUEDA'),
(3778, 'Issue', 579, 76, 'MUIDUMBE'),
(3779, 'Issue', 580, 29, ''),
(3782, 'Issue', 580, 60, 'Cabo Delgado'),
(3783, 'Issue', 580, 76, 'MACOMIA'),
(3784, 'Issue', 580, 76, 'MUEDA'),
(3785, 'Issue', 580, 76, 'MUIDUMBE'),
(3854, 'Issue', 335, 76, 'DISTRITO MUNICIAL KaMpfumo'),
(3855, 'TimeEntry', 10, 101, '218'),
(3856, 'Issue', 342, 103, ''),
(3857, 'Issue', 342, 105, '218'),
(3858, 'Issue', 341, 103, ''),
(3859, 'Issue', 341, 105, '739'),
(3860, 'Issue', 340, 103, ''),
(3861, 'Issue', 340, 105, '18'),
(3862, 'Project', 26, 72, '2017'),
(3863, 'Project', 26, 74, '2018'),
(3864, 'Project', 26, 35, ''),
(3865, 'Project', 26, 42, '15'),
(3866, 'Project', 26, 5, '11130047'),
(3869, 'Project', 26, 40, ''),
(3870, 'Project', 26, 22, 'Crianças Órfãs e Vulneráveis (COVs) e suas famílias'),
(3871, 'Project', 26, 39, ''),
(3872, 'Project', 26, 38, ''),
(3874, 'Project', 26, 17, 'Melhorar a saúde, o estado nutricional e o bem-estar das crianças órfas e vulneráveis (COVs) e suas famílias'),
(3875, 'Project', 26, 24, 'Objectivo 1: Maior utilização de serviços sociais, de saúde e nutricionais de qualidade\r\nObjectivo 2: Redução da vulnerabilidade económica das famílias de COVs'),
(3876, 'Project', 26, 19, '1. Maior utilização dos serviços sociais, saúde e nutricionais de qualidade;\r\n2. Reduzida a vulnerabilidade económica das famílias de COVs, preparando-as para melhor ultrapassar o impacto causado pelo HIV/SIDA.\r\n'),
(3877, 'Project', 26, 34, 'Através do programa de subvenções do COVida, preve-se o melhormanto  da saúde, do estado nutricional e do bem-estar das crianças órfãs e vulneráveis (COVs) que vivem nos distritos prioritários definidos pelo PEPFAR, para o controlo da epidemia, contribuindo para a estratégia 90-90-90 do PEPFAR. O programa visa apoiar as actividades de COVs apenas nos distritos seleccionados que demonstram alta prevalência do HIV na cidade de Maputo e em todas as província do País.'),
(3878, 'Project', 26, 23, '6218895.00'),
(3879, 'Project', 26, 71, '0 USD'),
(3880, 'Project', 26, 14, 'Niassa'),
(3881, 'Project', 26, 43, 'LICHINGA'),
(3882, 'Project', 26, 96, 'Promover a saúde comunitária preventiva através da educação e práticas, particularmente em:Nutrição, Agricultura e meio ambiente.'),
(3883, 'Issue', 593, 29, ''),
(3886, 'Issue', 593, 60, 'Niassa'),
(3887, 'Issue', 593, 76, 'LICHINGA'),
(3888, 'Issue', 594, 29, ''),
(3891, 'Issue', 594, 60, 'Niassa'),
(3892, 'Issue', 594, 76, 'LICHINGA'),
(3893, 'Issue', 595, 29, ''),
(3896, 'Issue', 595, 60, 'Niassa'),
(3897, 'Issue', 595, 76, 'LICHINGA'),
(3898, 'Issue', 293, 102, ''),
(3899, 'Issue', 293, 103, ''),
(3900, 'Issue', 293, 105, ''),
(3901, 'Issue', 596, 29, ''),
(3904, 'Issue', 596, 60, 'Niassa'),
(3905, 'Issue', 596, 76, 'LICHINGA'),
(3906, 'Issue', 597, 29, ''),
(3909, 'Issue', 597, 60, 'Niassa'),
(3910, 'Issue', 597, 76, 'LICHINGA'),
(3911, 'Issue', 598, 29, ''),
(3914, 'Issue', 598, 60, 'Niassa'),
(3915, 'Issue', 598, 76, 'LICHINGA'),
(3916, 'Issue', 304, 102, ''),
(3917, 'Issue', 304, 103, 'De acordo com as necessidades'),
(3918, 'Issue', 304, 105, ''),
(3919, 'Issue', 599, 29, ''),
(3922, 'Issue', 599, 60, 'Niassa'),
(3923, 'Issue', 599, 76, 'LICHINGA'),
(3924, 'Issue', 600, 29, ''),
(3927, 'Issue', 600, 60, 'Niassa'),
(3928, 'Issue', 600, 76, 'LICHINGA'),
(3929, 'Issue', 197, 102, ''),
(3930, 'Issue', 197, 103, ''),
(3931, 'Issue', 197, 105, ''),
(3932, 'Issue', 601, 29, ''),
(3935, 'Issue', 601, 60, 'Niassa'),
(3936, 'Issue', 601, 76, 'LICHINGA'),
(3937, 'Issue', 602, 29, ''),
(3940, 'Issue', 602, 60, 'Niassa'),
(3941, 'Issue', 602, 76, 'LICHINGA'),
(3942, 'Issue', 603, 29, ''),
(3945, 'Issue', 603, 60, 'Niassa'),
(3946, 'Issue', 603, 76, 'LICHINGA'),
(3947, 'Issue', 604, 29, ''),
(3950, 'Issue', 604, 60, 'Niassa'),
(3951, 'Issue', 604, 76, 'LICHINGA'),
(3968, 'Issue', 213, 99, ''),
(3969, 'Issue', 213, 100, ''),
(3970, 'Issue', 213, 102, ''),
(3971, 'Issue', 213, 103, 'Dados recolhidos, analisados, sintetizados e partilhados com os beneficiários.'),
(3972, 'Issue', 213, 105, ''),
(3973, 'Issue', 215, 102, ''),
(3974, 'Issue', 215, 103, ''),
(3975, 'Issue', 215, 105, ''),
(3988, 'Issue', 608, 29, ''),
(3989, 'Issue', 608, 81, ''),
(3990, 'Issue', 608, 60, ''),
(3991, 'Issue', 608, 76, ''),
(3992, 'Issue', 609, 99, ''),
(3993, 'Issue', 609, 100, ''),
(3994, 'Issue', 609, 46, ''),
(3995, 'Issue', 609, 102, ''),
(3996, 'Issue', 609, 103, ''),
(3997, 'Issue', 609, 105, ''),
(3998, 'Issue', 318, 102, ''),
(3999, 'Issue', 318, 103, 'Pelo menos a recuperaçao de todos os custos'),
(4000, 'Issue', 318, 105, ''),
(4001, 'Issue', 230, 99, ''),
(4002, 'Issue', 230, 100, '10'),
(4003, 'Issue', 230, 102, 'Percentual'),
(4004, 'Issue', 230, 103, ''),
(4005, 'Issue', 230, 105, ''),
(4030, 'Issue', 612, 29, ''),
(4033, 'Issue', 612, 60, 'Cabo Delgado'),
(4034, 'Issue', 612, 76, 'MACOMIA'),
(4035, 'Issue', 612, 76, 'MUEDA'),
(4036, 'Issue', 612, 76, 'MUIDUMBE'),
(4037, 'Issue', 613, 29, ''),
(4040, 'Issue', 613, 60, 'Cabo Delgado'),
(4041, 'Issue', 613, 76, 'MACOMIA'),
(4042, 'Issue', 613, 76, 'MUEDA'),
(4043, 'Issue', 613, 76, 'MUIDUMBE'),
(4044, 'Issue', 614, 29, ''),
(4047, 'Issue', 614, 60, 'Cabo Delgado'),
(4048, 'Issue', 614, 76, 'MACOMIA'),
(4049, 'Issue', 614, 76, 'MUEDA'),
(4050, 'Issue', 614, 76, 'MUIDUMBE'),
(4051, 'Issue', 615, 29, ''),
(4054, 'Issue', 615, 60, 'Cabo Delgado'),
(4055, 'Issue', 615, 76, 'MACOMIA'),
(4056, 'Issue', 615, 76, 'MUEDA'),
(4057, 'Issue', 615, 76, 'MUIDUMBE'),
(4058, 'Issue', 616, 29, ''),
(4061, 'Issue', 616, 60, 'Cabo Delgado'),
(4062, 'Issue', 616, 76, 'MACOMIA'),
(4063, 'Issue', 616, 76, 'MUEDA'),
(4064, 'Issue', 616, 76, 'MUIDUMBE'),
(4065, 'Issue', 617, 29, ''),
(4068, 'Issue', 617, 60, 'Cabo Delgado'),
(4069, 'Issue', 617, 76, 'MACOSSA'),
(4070, 'Issue', 617, 76, 'MUEDA'),
(4071, 'Issue', 617, 76, 'MUIDUMBE'),
(4072, 'Issue', 618, 29, ''),
(4075, 'Issue', 618, 60, 'Cabo Delgado'),
(4076, 'Issue', 618, 76, 'MACOMIA'),
(4077, 'Issue', 618, 76, 'MUEDA'),
(4078, 'Issue', 618, 76, 'MUIDUMBE'),
(4079, 'Issue', 620, 29, ''),
(4082, 'Issue', 620, 60, 'Cabo Delgado'),
(4083, 'Issue', 620, 76, 'MACOMIA'),
(4084, 'Issue', 620, 76, 'MUEDA'),
(4085, 'Issue', 620, 76, 'MUIDUMBE'),
(4086, 'Issue', 622, 29, ''),
(4089, 'Issue', 622, 60, 'Cabo Delgado'),
(4090, 'Issue', 622, 76, 'MACOMIA'),
(4091, 'Issue', 622, 76, 'MUEDA'),
(4092, 'Issue', 622, 76, 'MUIDUMBE'),
(4093, 'Issue', 623, 29, ''),
(4096, 'Issue', 623, 60, 'Cabo Delgado'),
(4097, 'Issue', 623, 76, 'MACOMIA'),
(4098, 'Issue', 623, 76, 'MUEDA'),
(4099, 'Issue', 623, 76, 'MUIDUMBE'),
(4100, 'Issue', 624, 29, ''),
(4103, 'Issue', 624, 60, 'Cabo Delgado'),
(4104, 'Issue', 624, 76, 'MACOMIA'),
(4105, 'Issue', 624, 76, 'MUEDA'),
(4106, 'Issue', 624, 76, 'MUIDUMBE'),
(4107, 'Issue', 625, 29, ''),
(4110, 'Issue', 625, 60, 'Cabo Delgado'),
(4111, 'Issue', 625, 76, 'MACOMIA'),
(4112, 'Issue', 625, 76, 'MUEDA'),
(4113, 'Issue', 625, 76, 'MUIDUMBE'),
(4114, 'Issue', 626, 29, ''),
(4117, 'Issue', 626, 60, 'Cabo Delgado'),
(4118, 'Issue', 626, 76, 'MACOMIA'),
(4119, 'Issue', 626, 76, 'MUEDA'),
(4120, 'Issue', 626, 76, 'MUIDUMBE'),
(4121, 'Issue', 627, 29, ''),
(4124, 'Issue', 627, 60, 'Cabo Delgado'),
(4125, 'Issue', 627, 76, 'MACOMIA'),
(4126, 'Issue', 627, 76, 'MUEDA'),
(4127, 'Issue', 627, 76, 'MUIDUMBE'),
(4128, 'Issue', 628, 29, '1200000'),
(4131, 'Issue', 628, 60, 'Manica'),
(4132, 'Issue', 628, 60, 'Nampula'),
(4133, 'Issue', 628, 60, 'Zambézia'),
(4134, 'Issue', 628, 76, 'ALTO MOLOCUE'),
(4135, 'Issue', 628, 76, 'MAGANJA DA COSTA'),
(4136, 'Issue', 628, 76, 'MOGOVOLAS'),
(4137, 'Issue', 628, 76, 'MOPEIA'),
(4138, 'Issue', 628, 76, 'MORRUMBALA'),
(4139, 'Issue', 628, 76, 'MUEMBE'),
(4140, 'Issue', 628, 76, 'RAPALE'),
(4141, 'Issue', 629, 29, ''),
(4144, 'Issue', 629, 60, 'Cabo Delgado'),
(4145, 'Issue', 629, 76, 'MACOMIA'),
(4146, 'Issue', 629, 76, 'MUEDA'),
(4147, 'Issue', 629, 76, 'MUIDUMBE'),
(4148, 'Issue', 630, 29, ''),
(4151, 'Issue', 630, 60, 'Cabo Delgado'),
(4152, 'Issue', 630, 76, 'MACOMIA'),
(4153, 'Issue', 630, 76, 'MUEDA'),
(4154, 'Issue', 630, 76, 'MUIDUMBE'),
(4155, 'Issue', 631, 29, ''),
(4158, 'Issue', 631, 60, 'Cabo Delgado'),
(4159, 'Issue', 631, 76, 'MACOMIA'),
(4160, 'Issue', 631, 76, 'MUEDA'),
(4161, 'Issue', 631, 76, 'MUIDUMBE'),
(4162, 'Issue', 632, 29, ''),
(4165, 'Issue', 632, 60, 'Cabo Delgado'),
(4166, 'Issue', 632, 76, 'MACOMIA'),
(4167, 'Issue', 632, 76, 'MUEDA'),
(4168, 'Issue', 632, 76, 'MUIDUMBE'),
(4169, 'Issue', 633, 29, ''),
(4172, 'Issue', 633, 60, 'Cabo Delgado'),
(4173, 'Issue', 633, 76, 'MACOMIA'),
(4174, 'Issue', 633, 76, 'MUEDA'),
(4175, 'Issue', 633, 76, 'MUIDUMBE'),
(4176, 'Issue', 634, 29, ''),
(4179, 'Issue', 634, 60, 'Cabo Delgado'),
(4180, 'Issue', 634, 76, 'MACOMIA'),
(4181, 'Issue', 634, 76, 'MUEDA'),
(4182, 'Issue', 634, 76, 'MUIDUMBE'),
(4183, 'Issue', 635, 29, ''),
(4186, 'Issue', 635, 60, 'Cabo Delgado'),
(4187, 'Issue', 635, 76, 'MACOMIA'),
(4188, 'Issue', 635, 76, 'MUEDA'),
(4189, 'Issue', 635, 76, 'MUIDUMBE'),
(4190, 'Issue', 636, 29, ''),
(4193, 'Issue', 636, 60, 'Cabo Delgado'),
(4194, 'Issue', 636, 76, 'MACOMIA'),
(4195, 'Issue', 636, 76, 'MUEDA'),
(4196, 'Issue', 636, 76, 'MUIDUMBE'),
(4197, 'Issue', 637, 29, ''),
(4200, 'Issue', 637, 60, 'Cabo Delgado'),
(4201, 'Issue', 637, 76, 'MACOMIA'),
(4202, 'Issue', 637, 76, 'MUEDA'),
(4203, 'Issue', 637, 76, 'MUIDUMBE'),
(4204, 'Issue', 638, 29, '65000'),
(4207, 'Issue', 638, 60, 'Nampula'),
(4208, 'Issue', 638, 60, 'Zambézia'),
(4209, 'Issue', 638, 76, 'CIDADE DE NAMPULA'),
(4210, 'Issue', 638, 76, 'CIDADE DE QUELIMANE'),
(4211, 'Issue', 639, 29, ''),
(4214, 'Issue', 639, 60, 'Cabo Delgado'),
(4215, 'Issue', 639, 76, 'MACOMIA'),
(4216, 'Issue', 639, 76, 'MUEDA'),
(4217, 'Issue', 639, 76, 'MUIDUMBE'),
(4218, 'Issue', 640, 29, ''),
(4221, 'Issue', 640, 60, 'Cabo Delgado'),
(4222, 'Issue', 640, 76, 'MACOMIA'),
(4223, 'Issue', 640, 76, 'MUEDA'),
(4224, 'Issue', 640, 76, 'MUIDUMBE'),
(4225, 'Issue', 641, 29, ''),
(4228, 'Issue', 641, 60, 'Cabo Delgado'),
(4229, 'Issue', 641, 76, 'MACOMIA'),
(4230, 'Issue', 641, 76, 'MUEDA'),
(4231, 'Issue', 641, 76, 'MUIDUMBE'),
(4232, 'Issue', 642, 29, ''),
(4235, 'Issue', 642, 60, 'Cabo Delgado'),
(4236, 'Issue', 642, 76, 'MACOMIA'),
(4237, 'Issue', 642, 76, 'MUEDA'),
(4238, 'Issue', 642, 76, 'MUIDUMBE'),
(4239, 'Issue', 643, 29, ''),
(4242, 'Issue', 643, 60, 'Cabo Delgado'),
(4243, 'Issue', 643, 76, 'MACOMIA'),
(4244, 'Issue', 643, 76, 'MUEDA'),
(4245, 'Issue', 643, 76, 'MUIDUMBE'),
(4246, 'Issue', 644, 29, ''),
(4249, 'Issue', 644, 60, 'Cabo Delgado'),
(4250, 'Issue', 644, 76, 'MACOMIA'),
(4251, 'Issue', 644, 76, 'MUEDA'),
(4252, 'Issue', 644, 76, 'MUIDUMBE'),
(4253, 'Issue', 645, 29, ''),
(4256, 'Issue', 645, 60, 'Cabo Delgado'),
(4257, 'Issue', 645, 76, 'MACOMIA'),
(4258, 'Issue', 645, 76, 'MUEDA'),
(4259, 'Issue', 645, 76, 'MUIDUMBE'),
(4260, 'Issue', 646, 29, ''),
(4263, 'Issue', 646, 60, 'Cabo Delgado'),
(4264, 'Issue', 646, 76, 'MACOMIA'),
(4265, 'Issue', 646, 76, 'MUEDA'),
(4266, 'Issue', 646, 76, 'MUIDUMBE'),
(4267, 'Issue', 647, 29, ''),
(4270, 'Issue', 647, 60, 'Cabo Delgado'),
(4271, 'Issue', 647, 76, 'MACOMIA'),
(4272, 'Issue', 647, 76, 'MUEDA'),
(4273, 'Issue', 647, 76, 'MUIDUMBE'),
(4274, 'Issue', 648, 29, ''),
(4277, 'Issue', 648, 60, 'Cabo Delgado'),
(4278, 'Issue', 648, 76, 'MACOMIA'),
(4279, 'Issue', 648, 76, 'MUEDA'),
(4280, 'Issue', 648, 76, 'MUIDUMBE'),
(4281, 'Issue', 649, 29, ''),
(4284, 'Issue', 649, 60, 'Cabo Delgado'),
(4285, 'Issue', 649, 76, 'MACOMIA'),
(4286, 'Issue', 649, 76, 'MUEDA'),
(4287, 'Issue', 649, 76, 'MUIDUMBE'),
(4288, 'Issue', 650, 29, ''),
(4291, 'Issue', 650, 60, 'Cabo Delgado'),
(4292, 'Issue', 650, 76, 'MACOMIA'),
(4293, 'Issue', 650, 76, 'MUEDA'),
(4294, 'Issue', 650, 76, 'MUIDUMBE'),
(4295, 'Issue', 651, 29, '650000'),
(4298, 'Issue', 651, 60, 'Nampula'),
(4299, 'Issue', 651, 60, 'Zambézia'),
(4300, 'Issue', 651, 76, 'ALTO MOLOCUE'),
(4301, 'Issue', 651, 76, 'MAGANJA DA COSTA'),
(4302, 'Issue', 651, 76, 'MECONTA'),
(4303, 'Issue', 651, 76, 'MOGOVOLAS'),
(4304, 'Issue', 651, 76, 'MOPEIA'),
(4305, 'Issue', 651, 76, 'MORRUMBALA'),
(4306, 'Issue', 651, 76, 'RAPALE'),
(4307, 'Issue', 652, 29, ''),
(4310, 'Issue', 652, 60, 'Cabo Delgado'),
(4311, 'Issue', 652, 76, 'MACOMIA'),
(4312, 'Issue', 652, 76, 'MUEDA'),
(4313, 'Issue', 652, 76, 'MUIDUMBE'),
(4314, 'Issue', 653, 29, ''),
(4317, 'Issue', 653, 60, 'Cabo Delgado'),
(4318, 'Issue', 653, 76, 'MACOMIA'),
(4319, 'Issue', 653, 76, 'MUEDA'),
(4320, 'Issue', 653, 76, 'MUIDUMBE'),
(4321, 'Issue', 654, 29, ''),
(4324, 'Issue', 654, 60, 'Cabo Delgado'),
(4325, 'Issue', 654, 76, 'MACOMIA'),
(4326, 'Issue', 654, 76, 'MUEDA'),
(4327, 'Issue', 654, 76, 'MUIDUMBE'),
(4328, 'Issue', 655, 29, ''),
(4331, 'Issue', 655, 60, 'Cabo Delgado'),
(4332, 'Issue', 655, 76, 'MACOMIA'),
(4333, 'Issue', 655, 76, 'MUEDA'),
(4334, 'Issue', 655, 76, 'MUIDUMBE'),
(4335, 'Issue', 656, 29, ''),
(4338, 'Issue', 656, 60, 'Cabo Delgado'),
(4339, 'Issue', 656, 76, 'MACOMIA'),
(4340, 'Issue', 656, 76, 'MUEDA'),
(4341, 'Issue', 656, 76, 'MUIDUMBE'),
(4342, 'Issue', 657, 29, ''),
(4345, 'Issue', 657, 60, 'Cabo Delgado'),
(4346, 'Issue', 657, 76, 'MACOMIA'),
(4347, 'Issue', 657, 76, 'MUEDA'),
(4348, 'Issue', 657, 76, 'MUIDUMBE'),
(4361, 'Issue', 659, 29, '320000'),
(4364, 'Issue', 659, 60, 'Nampula'),
(4365, 'Issue', 659, 60, 'Zambézia'),
(4366, 'Issue', 659, 76, 'CIDADE DE NAMPULA'),
(4367, 'Issue', 659, 76, 'CIDADE DE QUELIMANE'),
(4368, 'Issue', 660, 29, ''),
(4371, 'Issue', 660, 60, 'Cabo Delgado'),
(4372, 'Issue', 660, 76, 'MACOMIA'),
(4373, 'Issue', 660, 76, 'MUEDA'),
(4374, 'Issue', 660, 76, 'MUIDUMBE'),
(4375, 'Issue', 661, 29, ''),
(4378, 'Issue', 661, 60, 'Cabo Delgado'),
(4379, 'Issue', 661, 76, 'MACOMIA'),
(4380, 'Issue', 661, 76, 'MUEDA'),
(4381, 'Issue', 661, 76, 'MUIDUMBE'),
(4382, 'Issue', 662, 29, ''),
(4385, 'Issue', 662, 60, 'Cabo Delgado'),
(4386, 'Issue', 662, 76, 'MACOSSA'),
(4387, 'Issue', 662, 76, 'MUEDA'),
(4388, 'Issue', 662, 76, 'MUIDUMBE'),
(4389, 'Issue', 663, 29, '400000'),
(4392, 'Issue', 663, 60, 'Nampula'),
(4393, 'Issue', 663, 60, 'Zambézia'),
(4394, 'Issue', 663, 76, 'ALTO MOLOCUE'),
(4395, 'Issue', 663, 76, 'MAGANJA DA COSTA'),
(4396, 'Issue', 663, 76, 'MECONTA'),
(4397, 'Issue', 663, 76, 'MOGOVOLAS'),
(4398, 'Issue', 663, 76, 'MOPEIA'),
(4399, 'Issue', 663, 76, 'MORRUMBALA'),
(4400, 'Issue', 663, 76, 'RAPALE'),
(4401, 'Issue', 664, 29, ''),
(4404, 'Issue', 664, 60, 'Cabo Delgado'),
(4405, 'Issue', 664, 76, 'MACOMIA'),
(4406, 'Issue', 664, 76, 'MUEDA'),
(4407, 'Issue', 664, 76, 'MUIDUMBE'),
(4409, 'Issue', 665, 100, '26'),
(4410, 'Issue', 665, 46, 'Relatórios de capacitação em Nampula e Zambézia'),
(4411, 'Issue', 665, 102, 'Unidade'),
(4412, 'Issue', 665, 103, 'A meta provincial é de 14 Facilitadores para Zambézia e 12 para Nampula'),
(4413, 'Issue', 665, 105, 'Foram capacitados 21 pessoas em Nampula e 26 em Zambézia'),
(4414, 'Issue', 665, 99, 'Nr.Beneficiários (15-24,homem)'),
(4415, 'Issue', 665, 99, 'Nr.Beneficiários (15-24,mulher)'),
(4416, 'Issue', 665, 99, 'Nr.Beneficiários (25-49,homem)'),
(4417, 'Issue', 665, 99, 'Nr.Beneficiários (25-49,mulher)'),
(4418, 'Issue', 665, 99, 'Nr.Beneficiários (>50,homem)'),
(4419, 'Issue', 665, 99, 'Nr.Beneficiários (>50,mulher)'),
(4420, 'Issue', 666, 99, ''),
(4421, 'Issue', 666, 100, '1'),
(4422, 'Issue', 666, 46, 'Próprio manual'),
(4423, 'Issue', 666, 102, ''),
(4424, 'Issue', 666, 103, 'Manual para a escrita de livros para crianças enviado para as províncias para mais distribuição entre os autores'),
(4425, 'Issue', 666, 105, 'Manual produzido e publicado'),
(4426, 'Issue', 667, 29, ''),
(4429, 'Issue', 667, 60, 'Cabo Delgado'),
(4430, 'Issue', 667, 76, 'MACOMIA'),
(4431, 'Issue', 667, 76, 'MUEDA'),
(4432, 'Issue', 667, 76, 'MUIDUMBE'),
(4433, 'Issue', 668, 29, ''),
(4436, 'Issue', 668, 60, 'Cabo Delgado'),
(4437, 'Issue', 668, 76, 'MACOMIA'),
(4438, 'Issue', 668, 76, 'MUEDA'),
(4439, 'Issue', 668, 76, 'MUIDUMBE'),
(4441, 'Issue', 669, 100, '140'),
(4442, 'Issue', 669, 46, 'Relatório de capacitação '),
(4443, 'Issue', 669, 102, 'Unidade'),
(4444, 'Issue', 669, 103, 'A meta de capacitação é de 20 professores por cada um dos 7 distritos de intervenção do projecto'),
(4445, 'Issue', 669, 105, '256'),
(4446, 'Issue', 669, 99, 'Nr.Beneficiários (15-24,homem)'),
(4447, 'Issue', 669, 99, 'Nr.Beneficiários (15-24,mulher)'),
(4448, 'Issue', 669, 99, 'Nr.Beneficiários (25-49,homem)'),
(4449, 'Issue', 669, 99, 'Nr.Beneficiários (25-49,mulher)'),
(4450, 'Issue', 669, 99, 'Nr.Beneficiários (>50,homem)'),
(4451, 'Issue', 670, 29, ''),
(4454, 'Issue', 670, 60, 'Cabo Delgado'),
(4455, 'Issue', 670, 76, 'MACOMIA'),
(4456, 'Issue', 670, 76, 'MUEDA'),
(4457, 'Issue', 670, 76, 'MUIDUMBE'),
(4458, 'Issue', 671, 99, ''),
(4459, 'Issue', 671, 100, '1'),
(4460, 'Issue', 671, 46, 'Lista de material e lista de distribuição'),
(4461, 'Issue', 671, 102, ''),
(4462, 'Issue', 671, 103, 'Materiais providenciados em tempo devido aos participantes das capacitações a nível provincial e distrital'),
(4463, 'Issue', 671, 105, 'Lista de material e lista de distribuição'),
(4464, 'Issue', 672, 29, ''),
(4467, 'Issue', 672, 60, 'Cabo Delgado'),
(4468, 'Issue', 672, 76, 'MACOMIA'),
(4469, 'Issue', 672, 76, 'MUEDA'),
(4470, 'Issue', 672, 76, 'MUIDUMBE'),
(4471, 'Issue', 673, 29, '1000'),
(4474, 'Issue', 673, 60, 'Cabo Delgado'),
(4475, 'Issue', 673, 76, 'MACOMIA'),
(4476, 'Issue', 673, 76, 'MUEDA'),
(4477, 'Issue', 673, 76, 'MUIDUMBE'),
(4478, 'Issue', 674, 99, ''),
(4479, 'Issue', 674, 100, '21'),
(4480, 'Issue', 674, 46, 'Relatórios do concurso por província'),
(4481, 'Issue', 674, 102, 'Unidade'),
(4482, 'Issue', 674, 103, '1 concurso por ano em cada um dos sete distritos de intervenção, e 50 concorrentes por distrito'),
(4483, 'Issue', 674, 105, '11'),
(4484, 'Issue', 677, 29, '970000'),
(4487, 'Issue', 677, 60, 'Nampula'),
(4488, 'Issue', 677, 60, 'Zambézia'),
(4489, 'Issue', 677, 76, 'ALTO MOLOCUE'),
(4490, 'Issue', 677, 76, 'MAGANJA DA COSTA'),
(4491, 'Issue', 677, 76, 'MECONTA'),
(4492, 'Issue', 677, 76, 'MOGOVOLAS'),
(4493, 'Issue', 677, 76, 'MOPEIA'),
(4494, 'Issue', 677, 76, 'MORRUMBALA'),
(4495, 'Issue', 677, 76, 'RAPALE'),
(4496, 'Issue', 678, 29, '1450000'),
(4499, 'Issue', 678, 60, 'Nampula'),
(4500, 'Issue', 678, 60, 'Zambézia'),
(4501, 'Issue', 678, 76, 'ALTO MOLOCUE'),
(4502, 'Issue', 678, 76, 'MAGANJA DA COSTA'),
(4503, 'Issue', 678, 76, 'MECONTA'),
(4504, 'Issue', 678, 76, 'MOGOVOLAS'),
(4505, 'Issue', 678, 76, 'MOPEIA'),
(4506, 'Issue', 678, 76, 'MORRUMBALA'),
(4507, 'Issue', 678, 76, 'RAPALE'),
(4508, 'Issue', 679, 29, '3140000'),
(4511, 'Issue', 679, 60, 'Nampula'),
(4512, 'Issue', 679, 60, 'Zambézia'),
(4513, 'Issue', 679, 76, 'ALTO MOLOCUE'),
(4514, 'Issue', 679, 76, 'MAGANJA DA COSTA'),
(4515, 'Issue', 679, 76, 'MECONTA'),
(4516, 'Issue', 679, 76, 'MOGOVOLAS'),
(4517, 'Issue', 679, 76, 'MOPEIA'),
(4518, 'Issue', 679, 76, 'MORRUMBALA'),
(4519, 'Issue', 679, 76, 'RAPALE'),
(4520, 'Issue', 680, 29, '0'),
(4521, 'Issue', 680, 60, ''),
(4522, 'Issue', 680, 76, ''),
(4524, 'Issue', 681, 100, '120'),
(4525, 'Issue', 681, 46, 'Relatório de distribuição de estantes e baús nas escolas'),
(4526, 'Issue', 681, 102, 'Unidade'),
(4527, 'Issue', 681, 103, 'Mobiliário da biblioteca (baús, estantes) produzido pelo carpinteiro local e entregue às escolas do projecto identificadas no exercício de mapeamento'),
(4528, 'Issue', 681, 105, '116'),
(4529, 'Issue', 681, 99, 'Quantidade de equipamento'),
(4531, 'Issue', 682, 100, '10'),
(4532, 'Issue', 682, 46, 'Mapa/controlo de livros impressos e distribuidos'),
(4533, 'Issue', 682, 102, 'Unidade'),
(4534, 'Issue', 682, 103, ''),
(4535, 'Issue', 682, 105, '10'),
(4536, 'Issue', 682, 99, 'Quantidade de livros'),
(4537, 'Issue', 683, 99, ''),
(4538, 'Issue', 683, 100, '11000'),
(4539, 'Issue', 683, 46, 'Lista de distribuição de livros devidamente assinada'),
(4540, 'Issue', 683, 102, 'Unidade'),
(4541, 'Issue', 683, 103, '50 livros para apetrechar 220 bibliotecas escolares'),
(4542, 'Issue', 683, 105, '20400'),
(4543, 'Issue', 684, 99, ''),
(4544, 'Issue', 684, 100, '220'),
(4545, 'Issue', 684, 46, 'Guias de entrega'),
(4546, 'Issue', 684, 102, 'Unidade'),
(4547, 'Issue', 684, 103, ''),
(4548, 'Issue', 684, 105, '210'),
(4549, 'Issue', 685, 29, ''),
(4552, 'Issue', 685, 60, 'Cabo Delgado'),
(4553, 'Issue', 685, 76, 'MUEDA'),
(4554, 'Issue', 685, 76, 'MUIDUMBE'),
(4555, 'Issue', 686, 29, ''),
(4558, 'Issue', 686, 60, 'Cabo Delgado'),
(4559, 'Issue', 686, 76, 'MUEDA'),
(4560, 'Issue', 686, 76, 'MUIDUMBE'),
(4561, 'Issue', 687, 29, ''),
(4564, 'Issue', 687, 60, 'Cabo Delgado'),
(4565, 'Issue', 687, 76, 'MUEDA'),
(4566, 'Issue', 687, 76, 'MUIDUMBE'),
(4567, 'Issue', 688, 29, ''),
(4570, 'Issue', 688, 60, 'Cabo Delgado'),
(4571, 'Issue', 688, 76, 'MUEDA'),
(4572, 'Issue', 688, 76, 'MUIDUMBE'),
(4573, 'Issue', 689, 29, ''),
(4576, 'Issue', 689, 60, 'Cabo Delgado'),
(4577, 'Issue', 689, 76, 'MUEDA'),
(4578, 'Issue', 689, 76, 'MUIDUMBE'),
(4585, 'Issue', 691, 29, ''),
(4588, 'Issue', 691, 60, 'Cabo Delgado'),
(4589, 'Issue', 691, 76, 'MUEDA'),
(4590, 'Issue', 691, 76, 'MUIDUMBE'),
(4591, 'Issue', 692, 29, ''),
(4594, 'Issue', 692, 60, 'Cabo Delgado'),
(4595, 'Issue', 692, 76, 'MUEDA'),
(4596, 'Issue', 692, 76, 'MUIDUMBE'),
(4597, 'Issue', 693, 29, ''),
(4600, 'Issue', 693, 60, 'Cabo Delgado'),
(4601, 'Issue', 693, 76, 'MUEDA'),
(4602, 'Issue', 693, 76, 'MUIDUMBE'),
(4603, 'Issue', 694, 29, ''),
(4606, 'Issue', 694, 60, 'Cabo Delgado'),
(4607, 'Issue', 694, 76, 'MUEDA'),
(4608, 'Issue', 694, 76, 'MUIDUMBE'),
(4609, 'Issue', 695, 29, ''),
(4612, 'Issue', 695, 60, 'Cabo Delgado'),
(4613, 'Issue', 695, 76, 'MUEDA'),
(4614, 'Issue', 695, 76, 'MUIDUMBE'),
(4615, 'Issue', 696, 29, ''),
(4618, 'Issue', 696, 60, 'Cabo Delgado'),
(4619, 'Issue', 696, 76, 'MUEDA'),
(4620, 'Issue', 696, 76, 'MUIDUMBE'),
(4621, 'Issue', 697, 29, ''),
(4624, 'Issue', 697, 60, 'Cabo Delgado'),
(4625, 'Issue', 697, 76, 'MUEDA'),
(4626, 'Issue', 697, 76, 'MUIDUMBE'),
(4627, 'Issue', 698, 29, ''),
(4630, 'Issue', 698, 60, 'Cabo Delgado'),
(4631, 'Issue', 698, 76, 'MUEDA'),
(4632, 'Issue', 698, 76, 'MUIDUMBE'),
(4633, 'Issue', 699, 29, ''),
(4636, 'Issue', 699, 60, 'Cabo Delgado'),
(4637, 'Issue', 699, 76, 'MUEDA'),
(4638, 'Issue', 699, 76, 'MUIDUMBE'),
(4639, 'Issue', 700, 29, ''),
(4642, 'Issue', 700, 60, 'Cabo Delgado'),
(4643, 'Issue', 700, 76, 'MUEDA'),
(4644, 'Issue', 700, 76, 'MUIDUMBE'),
(4645, 'Issue', 701, 29, ''),
(4648, 'Issue', 701, 60, 'Cabo Delgado'),
(4649, 'Issue', 701, 76, 'MUEDA'),
(4650, 'Issue', 701, 76, 'MUIDUMBE'),
(4651, 'Issue', 702, 29, ''),
(4654, 'Issue', 702, 60, 'Cabo Delgado'),
(4655, 'Issue', 702, 76, 'MUEDA'),
(4656, 'Issue', 702, 76, 'MUIDUMBE'),
(4657, 'Issue', 703, 29, ''),
(4660, 'Issue', 703, 60, 'Cabo Delgado'),
(4661, 'Issue', 703, 76, 'MUEDA'),
(4662, 'Issue', 703, 76, 'MUIDUMBE'),
(4663, 'Issue', 704, 29, ''),
(4666, 'Issue', 704, 60, 'Cabo Delgado'),
(4667, 'Issue', 704, 76, 'MUEDA'),
(4668, 'Issue', 704, 76, 'MUIDUMBE'),
(4669, 'Issue', 705, 29, ''),
(4672, 'Issue', 705, 60, 'Cabo Delgado'),
(4673, 'Issue', 705, 76, 'MUEDA'),
(4674, 'Issue', 705, 76, 'MUIDUMBE'),
(4675, 'Issue', 706, 29, ''),
(4678, 'Issue', 706, 60, 'Cabo Delgado'),
(4679, 'Issue', 706, 76, 'MUEDA'),
(4680, 'Issue', 706, 76, 'MUIDUMBE'),
(4681, 'Issue', 707, 29, ''),
(4684, 'Issue', 707, 60, 'Cabo Delgado'),
(4685, 'Issue', 707, 76, 'MUEDA'),
(4686, 'Issue', 707, 76, 'MUIDUMBE'),
(4687, 'Issue', 708, 29, ''),
(4690, 'Issue', 708, 60, 'Cabo Delgado'),
(4691, 'Issue', 708, 76, 'MUEDA'),
(4692, 'Issue', 708, 76, 'MUIDUMBE'),
(4693, 'Issue', 709, 29, ''),
(4696, 'Issue', 709, 60, 'Cabo Delgado'),
(4697, 'Issue', 709, 76, 'MUEDA'),
(4698, 'Issue', 709, 76, 'MUIDUMBE'),
(4699, 'Issue', 710, 29, ''),
(4702, 'Issue', 710, 60, 'Cabo Delgado'),
(4703, 'Issue', 710, 76, 'MUEDA'),
(4704, 'Issue', 710, 76, 'MUIDUMBE'),
(4705, 'Issue', 711, 29, ''),
(4708, 'Issue', 711, 60, 'Cabo Delgado'),
(4709, 'Issue', 711, 76, 'MUEDA'),
(4710, 'Issue', 711, 76, 'MUIDUMBE'),
(4711, 'Issue', 712, 29, ''),
(4714, 'Issue', 712, 60, 'Cabo Delgado'),
(4715, 'Issue', 712, 76, 'MUEDA'),
(4716, 'Issue', 712, 76, 'MUIDUMBE'),
(4717, 'Issue', 713, 29, ''),
(4720, 'Issue', 713, 60, 'Cabo Delgado'),
(4721, 'Issue', 713, 76, 'MUEDA'),
(4722, 'Issue', 713, 76, 'MUIDUMBE'),
(4723, 'Issue', 714, 29, ''),
(4726, 'Issue', 714, 60, 'Cabo Delgado'),
(4727, 'Issue', 714, 76, 'MUEDA'),
(4728, 'Issue', 714, 76, 'MUIDUMBE'),
(4729, 'Issue', 715, 29, ''),
(4732, 'Issue', 715, 60, 'Cabo Delgado'),
(4733, 'Issue', 715, 76, 'MUEDA'),
(4734, 'Issue', 715, 76, 'MUIDUMBE'),
(4735, 'Issue', 716, 29, ''),
(4738, 'Issue', 716, 60, 'Cabo Delgado'),
(4739, 'Issue', 716, 76, 'MUEDA'),
(4740, 'Issue', 716, 76, 'MUIDUMBE'),
(4741, 'Issue', 717, 29, ''),
(4744, 'Issue', 717, 60, 'Cabo Delgado'),
(4745, 'Issue', 717, 76, 'MUEDA'),
(4746, 'Issue', 717, 76, 'MUIDUMBE'),
(4747, 'Issue', 718, 29, ''),
(4750, 'Issue', 718, 60, 'Cabo Delgado'),
(4751, 'Issue', 718, 76, 'MUEDA'),
(4752, 'Issue', 718, 76, 'MUIDUMBE'),
(4753, 'Issue', 719, 29, ''),
(4756, 'Issue', 719, 60, 'Cabo Delgado'),
(4757, 'Issue', 719, 76, 'MUEDA'),
(4758, 'Issue', 719, 76, 'MUIDUMBE'),
(4759, 'Issue', 720, 29, ''),
(4762, 'Issue', 720, 60, 'Cabo Delgado'),
(4763, 'Issue', 720, 76, 'MUEDA'),
(4764, 'Issue', 720, 76, 'MUIDUMBE'),
(4765, 'Issue', 721, 29, ''),
(4768, 'Issue', 721, 60, 'Cabo Delgado'),
(4769, 'Issue', 721, 76, 'MUEDA'),
(4770, 'Issue', 721, 76, 'MUIDUMBE'),
(4771, 'Issue', 722, 29, ''),
(4774, 'Issue', 722, 60, 'Cabo Delgado'),
(4775, 'Issue', 722, 76, 'MUEDA'),
(4776, 'Issue', 722, 76, 'MUIDUMBE'),
(4777, 'Issue', 723, 29, ''),
(4780, 'Issue', 723, 60, 'Cabo Delgado'),
(4781, 'Issue', 723, 76, 'MUEDA'),
(4782, 'Issue', 723, 76, 'MUIDUMBE'),
(4783, 'Issue', 724, 29, ''),
(4786, 'Issue', 724, 60, 'Cabo Delgado'),
(4787, 'Issue', 724, 76, 'MUEDA'),
(4788, 'Issue', 724, 76, 'MUIDUMBE'),
(4800, 'Issue', 726, 29, ''),
(4802, 'Issue', 726, 76, ''),
(4803, 'Issue', 726, 60, 'Niassa'),
(4804, 'Issue', 727, 29, ''),
(4806, 'Issue', 727, 76, ''),
(4807, 'Issue', 727, 60, 'Niassa'),
(4808, 'Issue', 728, 29, ''),
(4810, 'Issue', 728, 76, ''),
(4811, 'Issue', 728, 60, 'Niassa'),
(4812, 'Issue', 729, 29, ''),
(4814, 'Issue', 729, 76, ''),
(4815, 'Issue', 729, 60, 'Niassa'),
(4816, 'Issue', 730, 29, ''),
(4818, 'Issue', 730, 76, ''),
(4819, 'Issue', 730, 60, 'Niassa'),
(4820, 'Issue', 731, 29, ''),
(4822, 'Issue', 731, 76, ''),
(4823, 'Issue', 731, 60, 'Niassa'),
(4824, 'Issue', 732, 29, ''),
(4826, 'Issue', 732, 76, ''),
(4827, 'Issue', 732, 60, 'Niassa'),
(4828, 'Issue', 733, 29, ''),
(4830, 'Issue', 733, 76, ''),
(4831, 'Issue', 733, 60, 'Niassa'),
(4832, 'Issue', 734, 29, ''),
(4834, 'Issue', 734, 76, ''),
(4835, 'Issue', 734, 60, 'Niassa'),
(4836, 'Issue', 735, 29, ''),
(4838, 'Issue', 735, 76, ''),
(4839, 'Issue', 735, 60, 'Niassa'),
(4840, 'Issue', 736, 29, ''),
(4842, 'Issue', 736, 76, ''),
(4843, 'Issue', 736, 60, 'Niassa'),
(4844, 'Issue', 737, 29, ''),
(4846, 'Issue', 737, 76, ''),
(4847, 'Issue', 737, 60, 'Niassa'),
(4848, 'Issue', 738, 29, ''),
(4850, 'Issue', 738, 76, ''),
(4851, 'Issue', 738, 60, 'Niassa'),
(4852, 'Issue', 739, 29, ''),
(4854, 'Issue', 739, 76, ''),
(4855, 'Issue', 739, 60, 'Niassa'),
(4856, 'Issue', 740, 29, ''),
(4858, 'Issue', 740, 76, ''),
(4859, 'Issue', 740, 60, 'Niassa'),
(4860, 'Issue', 741, 29, ''),
(4862, 'Issue', 741, 76, ''),
(4863, 'Issue', 741, 60, 'Niassa'),
(4864, 'Issue', 742, 29, ''),
(4866, 'Issue', 742, 76, ''),
(4867, 'Issue', 742, 60, 'Niassa'),
(4868, 'Issue', 743, 29, ''),
(4870, 'Issue', 743, 76, ''),
(4871, 'Issue', 743, 60, 'Niassa'),
(4872, 'Issue', 744, 29, ''),
(4874, 'Issue', 744, 76, ''),
(4875, 'Issue', 744, 60, 'Niassa'),
(4876, 'Issue', 745, 29, ''),
(4878, 'Issue', 745, 76, ''),
(4879, 'Issue', 745, 60, 'Niassa'),
(4880, 'Issue', 746, 29, ''),
(4882, 'Issue', 746, 76, ''),
(4883, 'Issue', 746, 60, 'Niassa'),
(4884, 'Issue', 747, 29, ''),
(4886, 'Issue', 747, 76, ''),
(4887, 'Issue', 747, 60, 'Niassa'),
(4888, 'Issue', 748, 29, ''),
(4890, 'Issue', 748, 76, ''),
(4891, 'Issue', 748, 60, 'Niassa'),
(4892, 'Issue', 749, 29, ''),
(4894, 'Issue', 749, 76, ''),
(4895, 'Issue', 749, 60, 'Niassa'),
(4896, 'Issue', 750, 29, ''),
(4898, 'Issue', 750, 76, ''),
(4899, 'Issue', 750, 60, 'Niassa'),
(4900, 'Issue', 751, 29, ''),
(4902, 'Issue', 751, 76, ''),
(4903, 'Issue', 751, 60, 'Niassa'),
(4904, 'Issue', 752, 29, ''),
(4906, 'Issue', 752, 76, ''),
(4907, 'Issue', 752, 60, 'Niassa'),
(4908, 'Issue', 753, 29, ''),
(4910, 'Issue', 753, 76, ''),
(4911, 'Issue', 753, 60, 'Niassa'),
(4912, 'Issue', 754, 29, ''),
(4914, 'Issue', 754, 76, ''),
(4915, 'Issue', 754, 60, 'Niassa'),
(4916, 'Issue', 755, 29, ''),
(4918, 'Issue', 755, 76, ''),
(4919, 'Issue', 755, 60, 'Niassa'),
(4920, 'Issue', 756, 29, ''),
(4922, 'Issue', 756, 76, ''),
(4923, 'Issue', 756, 60, 'Niassa'),
(4924, 'Issue', 757, 29, ''),
(4926, 'Issue', 757, 76, ''),
(4927, 'Issue', 757, 60, 'Niassa'),
(4928, 'Issue', 758, 29, ''),
(4930, 'Issue', 758, 76, ''),
(4931, 'Issue', 758, 60, 'Niassa'),
(4932, 'Issue', 759, 29, ''),
(4934, 'Issue', 759, 76, ''),
(4935, 'Issue', 759, 60, 'Niassa'),
(4936, 'Issue', 760, 29, ''),
(4938, 'Issue', 760, 76, ''),
(4939, 'Issue', 760, 60, 'Niassa'),
(4940, 'Issue', 761, 29, ''),
(4942, 'Issue', 761, 76, ''),
(4943, 'Issue', 761, 60, 'Niassa'),
(4944, 'Issue', 762, 29, ''),
(4946, 'Issue', 762, 76, ''),
(4947, 'Issue', 762, 60, 'Niassa'),
(4948, 'Issue', 763, 29, ''),
(4950, 'Issue', 763, 76, ''),
(4951, 'Issue', 763, 60, 'Niassa'),
(4952, 'Issue', 764, 29, ''),
(4954, 'Issue', 764, 76, ''),
(4955, 'Issue', 764, 60, 'Niassa'),
(4956, 'Issue', 765, 29, ''),
(4958, 'Issue', 765, 76, ''),
(4959, 'Issue', 765, 60, 'Niassa'),
(4960, 'Issue', 766, 29, ''),
(4962, 'Issue', 766, 76, ''),
(4963, 'Issue', 766, 60, 'Niassa'),
(4964, 'Issue', 767, 29, ''),
(4966, 'Issue', 767, 76, ''),
(4967, 'Issue', 767, 60, 'Niassa'),
(4968, 'Issue', 768, 29, ''),
(4970, 'Issue', 768, 76, ''),
(4971, 'Issue', 768, 60, 'Niassa'),
(4972, 'Issue', 769, 29, ''),
(4974, 'Issue', 769, 76, ''),
(4975, 'Issue', 769, 60, 'Niassa'),
(4976, 'Issue', 770, 29, ''),
(4978, 'Issue', 770, 76, ''),
(4979, 'Issue', 770, 60, 'Niassa'),
(4980, 'Issue', 771, 29, ''),
(4982, 'Issue', 771, 76, ''),
(4983, 'Issue', 771, 60, 'Niassa'),
(4984, 'Issue', 772, 29, ''),
(4986, 'Issue', 772, 76, ''),
(4987, 'Issue', 772, 60, 'Niassa'),
(4988, 'Issue', 773, 29, ''),
(4990, 'Issue', 773, 76, ''),
(4991, 'Issue', 773, 60, 'Niassa'),
(4992, 'Project', 24, 107, ''),
(4993, 'Issue', 774, 29, ''),
(4996, 'Issue', 774, 51, ''),
(4997, 'Issue', 774, 60, 'Niassa'),
(4998, 'Issue', 774, 76, 'CHIMBUNILA'),
(4999, 'Issue', 774, 76, 'CUAMBA'),
(5000, 'Issue', 774, 76, 'MANDIMBA'),
(5001, 'Issue', 775, 29, ''),
(5005, 'Issue', 775, 60, 'Niassa'),
(5006, 'Issue', 775, 76, 'CHIMBUNILA'),
(5007, 'Issue', 775, 76, 'CUAMBA'),
(5008, 'Issue', 775, 76, 'MANDIMBA'),
(5009, 'Issue', 776, 29, ''),
(5012, 'Issue', 776, 51, ''),
(5013, 'Issue', 776, 60, 'Niassa'),
(5014, 'Issue', 776, 76, 'CHIMBUNILA'),
(5015, 'Issue', 776, 76, 'CUAMBA'),
(5016, 'Issue', 776, 76, 'MANDIMBA'),
(5017, 'Issue', 777, 29, ''),
(5021, 'Issue', 777, 60, 'Niassa'),
(5022, 'Issue', 777, 76, 'CHIMBUNILA'),
(5023, 'Issue', 777, 76, 'CUAMBA'),
(5024, 'Issue', 777, 76, 'MANDIMBA'),
(5025, 'Issue', 778, 29, ''),
(5029, 'Issue', 778, 60, 'Niassa'),
(5030, 'Issue', 778, 76, 'CHIMBUNILA'),
(5031, 'Issue', 778, 76, 'CUAMBA'),
(5032, 'Issue', 778, 76, 'MANDIMBA'),
(5033, 'Issue', 779, 29, ''),
(5037, 'Issue', 779, 60, 'Niassa'),
(5038, 'Issue', 779, 76, 'CHIMBUNILA'),
(5039, 'Issue', 779, 76, 'CUAMBA'),
(5040, 'Issue', 779, 76, 'MANDIMBA'),
(5041, 'Issue', 780, 29, ''),
(5044, 'Issue', 780, 51, ''),
(5045, 'Issue', 780, 60, 'Niassa'),
(5046, 'Issue', 780, 76, 'CHIMBUNILA'),
(5047, 'Issue', 780, 76, 'CUAMBA'),
(5048, 'Issue', 780, 76, 'MANDIMBA'),
(5049, 'Issue', 781, 29, ''),
(5052, 'Issue', 781, 51, ''),
(5053, 'Issue', 781, 60, 'Niassa'),
(5054, 'Issue', 781, 76, 'CHIMBUNILA'),
(5055, 'Issue', 781, 76, 'CUAMBA'),
(5056, 'Issue', 781, 76, 'MANDIMBA'),
(5057, 'Issue', 782, 29, ''),
(5060, 'Issue', 782, 51, ''),
(5061, 'Issue', 782, 60, 'Niassa'),
(5062, 'Issue', 782, 76, 'CHIMBUNILA'),
(5063, 'Issue', 782, 76, 'CUAMBA'),
(5064, 'Issue', 782, 76, 'MANDIMBA'),
(5065, 'Issue', 783, 29, ''),
(5068, 'Issue', 783, 51, ''),
(5069, 'Issue', 783, 60, 'Niassa'),
(5070, 'Issue', 783, 76, 'CHIMBUNILA'),
(5071, 'Issue', 783, 76, 'CUAMBA'),
(5072, 'Issue', 783, 76, 'MANDIMBA'),
(5073, 'Issue', 338, 51, ''),
(5074, 'Issue', 784, 29, ''),
(5077, 'Issue', 784, 51, ''),
(5078, 'Issue', 784, 60, 'Niassa'),
(5079, 'Issue', 784, 76, 'CHIMBUNILA'),
(5080, 'Issue', 784, 76, 'CUAMBA'),
(5081, 'Issue', 784, 76, 'MANDIMBA'),
(5082, 'Issue', 785, 29, ''),
(5085, 'Issue', 785, 51, ''),
(5086, 'Issue', 785, 60, 'Niassa'),
(5087, 'Issue', 785, 76, 'CHIMBUNILA'),
(5088, 'Issue', 785, 76, 'CUAMBA'),
(5089, 'Issue', 785, 76, 'MANDIMBA'),
(5099, 'Issue', 787, 100, '200'),
(5100, 'Issue', 787, 46, ''),
(5101, 'Issue', 787, 102, 'Unidade'),
(5102, 'Issue', 787, 103, ''),
(5103, 'Issue', 787, 105, '0'),
(5104, 'Issue', 787, 99, 'Nr.Beneficiários (15-24,mulher)'),
(5105, 'Issue', 787, 99, 'Nr.Beneficiários (25-49,mulher)'),
(5106, 'Issue', 788, 99, ''),
(5107, 'Issue', 788, 100, '20'),
(5108, 'Issue', 788, 46, ''),
(5109, 'Issue', 788, 102, 'Unidade'),
(5110, 'Issue', 788, 103, ''),
(5111, 'Issue', 788, 105, '36'),
(5118, 'Issue', 790, 29, ''),
(5121, 'Issue', 790, 51, ''),
(5122, 'Issue', 790, 60, 'Niassa'),
(5123, 'Issue', 790, 76, 'CHIMBUNILA'),
(5124, 'Issue', 790, 76, 'CUAMBA'),
(5125, 'Issue', 790, 76, 'MANDIMBA'),
(5126, 'Issue', 791, 99, ''),
(5127, 'Issue', 791, 100, '18'),
(5128, 'Issue', 791, 46, ''),
(5129, 'Issue', 791, 102, 'Unidade'),
(5130, 'Issue', 791, 103, ''),
(5131, 'Issue', 791, 105, '18'),
(5132, 'Issue', 792, 99, ''),
(5133, 'Issue', 792, 100, '12'),
(5134, 'Issue', 792, 46, ''),
(5135, 'Issue', 792, 102, 'Unidade'),
(5136, 'Issue', 792, 103, ''),
(5137, 'Issue', 792, 105, '12'),
(5138, 'Issue', 793, 99, ''),
(5139, 'Issue', 793, 100, '26'),
(5140, 'Issue', 793, 46, ''),
(5141, 'Issue', 793, 102, 'Unidade'),
(5142, 'Issue', 793, 103, ''),
(5143, 'Issue', 793, 105, '26'),
(5145, 'Issue', 794, 100, '1200'),
(5146, 'Issue', 794, 46, ''),
(5147, 'Issue', 794, 102, 'Unidade'),
(5148, 'Issue', 794, 103, ''),
(5149, 'Issue', 794, 105, '1173'),
(5150, 'Issue', 794, 99, 'Nr.Beneficiários (15-24,mulher)'),
(5151, 'Issue', 794, 99, 'Nr.Beneficiários (25-49,mulher)'),
(5152, 'Issue', 795, 99, ''),
(5153, 'Issue', 795, 100, '3'),
(5154, 'Issue', 795, 46, ''),
(5155, 'Issue', 795, 102, 'Unidade'),
(5156, 'Issue', 795, 103, ''),
(5157, 'Issue', 795, 105, '3'),
(5159, 'Issue', 796, 100, '2500'),
(5160, 'Issue', 796, 46, ''),
(5161, 'Issue', 796, 102, 'Unidade'),
(5162, 'Issue', 796, 103, ''),
(5163, 'Issue', 796, 105, '2372'),
(5164, 'Issue', 796, 99, 'Nr.Beneficiários (15-24,mulher)'),
(5165, 'Issue', 796, 99, 'Nr.Beneficiários (25-49,mulher)'),
(5166, 'Issue', 797, 99, ''),
(5167, 'Issue', 797, 100, '9'),
(5168, 'Issue', 797, 46, ''),
(5169, 'Issue', 797, 102, 'Unidade'),
(5170, 'Issue', 797, 103, ''),
(5171, 'Issue', 797, 105, '9'),
(5172, 'Issue', 798, 99, ''),
(5173, 'Issue', 798, 100, '24'),
(5174, 'Issue', 798, 46, ''),
(5175, 'Issue', 798, 102, 'Unidade'),
(5176, 'Issue', 798, 103, ''),
(5177, 'Issue', 798, 105, '24'),
(5178, 'Issue', 798, 51, ''),
(5180, 'Issue', 799, 100, '125'),
(5181, 'Issue', 799, 46, ''),
(5182, 'Issue', 799, 102, 'Unidade'),
(5183, 'Issue', 799, 103, ''),
(5184, 'Issue', 799, 105, '125'),
(5185, 'Issue', 799, 51, ''),
(5186, 'Issue', 799, 99, 'Nr.Beneficiários (15-24,mulher)'),
(5187, 'Issue', 799, 99, 'Nr.Beneficiários (25-49,mulher)'),
(5188, 'Issue', 800, 99, ''),
(5189, 'Issue', 800, 100, '1'),
(5190, 'Issue', 800, 46, ''),
(5191, 'Issue', 800, 102, 'Unidade'),
(5192, 'Issue', 800, 103, ''),
(5193, 'Issue', 800, 105, '1'),
(5194, 'Issue', 800, 51, ''),
(5195, 'Issue', 801, 99, ''),
(5196, 'Issue', 801, 100, '3'),
(5197, 'Issue', 801, 46, ''),
(5198, 'Issue', 801, 102, 'Unidade'),
(5199, 'Issue', 801, 103, ''),
(5200, 'Issue', 801, 105, '3'),
(5201, 'Issue', 801, 51, ''),
(5202, 'Issue', 802, 99, ''),
(5203, 'Issue', 802, 100, '36'),
(5204, 'Issue', 802, 46, ''),
(5205, 'Issue', 802, 102, 'Unidade'),
(5206, 'Issue', 802, 103, ''),
(5207, 'Issue', 802, 105, '36'),
(5208, 'Issue', 802, 51, ''),
(5209, 'Issue', 803, 99, ''),
(5210, 'Issue', 803, 100, ''),
(5211, 'Issue', 803, 46, ''),
(5212, 'Issue', 803, 102, 'Unidade'),
(5213, 'Issue', 803, 103, 'Sem meta definida'),
(5214, 'Issue', 803, 105, '7500'),
(5215, 'Issue', 803, 51, ''),
(5216, 'Issue', 804, 99, ''),
(5217, 'Issue', 804, 100, '1'),
(5218, 'Issue', 804, 46, ''),
(5219, 'Issue', 804, 102, 'Unidade'),
(5220, 'Issue', 804, 103, ''),
(5221, 'Issue', 804, 105, '0'),
(5222, 'Issue', 804, 51, ''),
(5223, 'Issue', 805, 99, ''),
(5224, 'Issue', 805, 100, '9'),
(5225, 'Issue', 805, 46, ''),
(5226, 'Issue', 805, 102, 'Unidade'),
(5227, 'Issue', 805, 103, ''),
(5228, 'Issue', 805, 105, '9'),
(5229, 'Issue', 805, 51, ''),
(5230, 'Project', 12, 107, ''),
(5231, 'Project', 12, 96, ''),
(5232, 'Project', 12, 14, 'Maputo-Cidade'),
(5233, 'Project', 12, 43, 'ALTO MOLOCUE'),
(5234, 'Project', 21, 107, ''),
(5235, 'Project', 18, 107, ''),
(5236, 'Project', 17, 107, ''),
(5237, 'Project', 23, 107, ''),
(5238, 'Project', 19, 107, ''),
(5239, 'Project', 22, 107, ''),
(5240, 'Project', 26, 107, ''),
(5241, 'Project', 20, 107, ''),
(5242, 'Project', 25, 107, ''),
(5243, 'Issue', 342, 51, ''),
(5245, 'Issue', 342, 99, ''),
(5246, 'Issue', 673, 108, ''),
(5247, 'Issue', 580, 108, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `documents`
--

INSERT INTO `documents` (`id`, `project_id`, `category_id`, `title`, `description`, `created_on`) VALUES
(1, 1, 6, 'Proposta técnica ', '', '2018-02-05 19:34:10'),
(2, 1, 7, 'Documento Técnico ', '', '2018-02-05 19:34:34'),
(3, 17, 14, '\"Com a poupança sonho em abrir uma conta bancária\"', 'Joaquina Fabione, de 31 anos de idade, vivecom seu marido, na comunidade de Muita, distrito de Mandimba, província de Niassa e tem 6 filhos.\r\nDevido a dificuldades económicas de seus pais e a distância entre a comunidade e a escola, Joaquina nunca tinha frequentado uma escola antes, até se juntar as turmas de Alfabetização e Educação de Adultos (AEA), através do Projecto Girls Inspire- Aprendendo, eu posso mudar!, implementado pela Associação Progresso com o financiamento da Commonwealth of Learning. \r\n\r\nLogo cedo e como forma de soluccionar os seus problemas, Joaquina casou-se com o seu actual marido aos 14 anos de idade, com o consentimento dos seus familiares, e aos 15 anos tornou-se mãe do seu primeiro filho, dos actuais 6 que tem.\r\n\r\nAtraída pela vontade e ambição de aprender e na esperança de um dia poder mudar a sua vida, Joaquina hoje é uma das alfabetizandas no centro 2 de Muita, que aproveitou a oportunidade trazida pela Girls Inspire através da Associação Progresso.\r\n\"Cedo me casei e cedo me tornei mãe. Não tive muitas escolhas na vida porque os meus pais não tinham nada para me dar e a escola ficava longe desta comunidade. Decidi casar-me cedo, com o apoio dos meus pais, porque esta era a única forma de poder me aguentar na vida até hoje. É pela primeira vez na vida a estar na escola.\"\r\n\r\nHoje, a Joaquina entende o valor da alfabetização e como ela contribui na aprendizagem da sua vida e abre oportunidades.  \r\n\"Vejo que o ensino e educação de adultos tem contribuido na minha apredizagem. Estou a aprender a ler, escrever, conheço as vogais e as consoantes. Um dia poderei serei alguém, se a sorte estiver do meu lado.\"\r\n\r\nPara a Joaquina a AEA tem ajudado também na poupança de dinheiro, algo que a possibilita sonhar em um dia ter sua própria conta bancária e caminhar de forma independente para apoiar os demais na sua familia.\r\n\"Além de estar na AEA estou no grupo de poupança e credito rotativo, sou uma das pessoas que poupo neste grupo. A poupança tem sido para mim uma boa coisa visto que estou a poupar o que ganho na horticultura. Neste momento, estou a desenvolver um negócio de produção e comercialização de bolinhos de farinha de trigo, negócio este que iniciei com o valor emprestado na poupança no mês de Junho no valor de 1.000,00 Mtn, com o prazo de 30 dias para a devolução e um juro de 10%. O meu negócio tem corrido bem. Tenho vendido todos bolinhos que tenho produzido por dia e garantindo um bom ganho e sem risco. Vou conseguir devolver o valor emprestado ao grupo.\r\nEu penso que no futuro, assim que terminar este ciclo e quando o valor for muito, poderei comprar bens caseiros que tem sido dificil de comprar. Com a poupança poderei comprar um colchão e outros utensilios domésticos, também ajudar os meus filhos em material escolar. Na minha vida nunca pensei em abrir uma conta bancária mas, com a poupança, se tiver um valor significante, um dia sonho em ter uma conta no banco. \r\nGostaria de pedir a Progresso que não pare com esta iniciativa. Considero-me uma mulher de sorte porque tenho um marido que me entendeu, deixa-me estudar e tem me apoiado.\"\r\n\r\nOs Grupos de Poupança e Crédito Rotativo nas turmas de AEA têm vindo a responder ao resultado do reforço da liderança económica e tomada de decisão da família, incluindo o planificação familiar, para as mulheres e meninas carentes.\r\n', '2018-05-31 13:48:42'),
(4, 17, 14, 'Ilda Daimone:“Antes não sabia escrever meu nome”', '\r\n“Meu nome é Ilda Mário Santos Daimone, resido no distrito de Cuamba em Niassa, tenho 25 anos de idade e sou orfão de pai, casada e mãe de três filhos. Desde cedo senti necessidade de estudar, mas as condições financeiras não me permitiam concretizar esse desejo, porque minha mãe não trabalhava. Por causa desta dificuldade, antes eu não sabia ler, nem escrever”.  \r\n\r\nIlda viu a sua necessidade mais perto de ser ultrapassada, neste ano, quando ouviu comentários, no seu bairro, sobre o projecto de Alfabetização e Educação de Adultos (AEA) da Associação Progresso financiado pelo COL. Sem perder tempo, Ilda procurou se inscrever, e hoje está a aprender a  ler e escrever. \r\n“Antes não sabia escrever meu nome, mas hoje, assim que frequento a turma de AEA, consigo escrever e ler. Mesmo a professora me mandando ao quadro consigo fazer tudo que ela orienta, o que não acontecia anteriormente”.\r\n\r\nImpedida de frequentar às aulas pelo marido, Ilda tem se esforçado para ver o seu objectivo concretizado. \r\n“Meu marido é um alcoolátra e passa o dia inteiro a beber. Ele tem me proibido de participar nas aulas de AEA, mas eu tenho recusado, porque já perdi muito tempo e quero recuperar e, quem sabe com essa ajuda posso ser alguém na vida“.\r\nIlda recomenda a todas as mulheres do seu bairro para frequentar às aulas da AEA para aprenderem a ler e escrever, pois só assim poderão ter sucesso e emprego no futuro. \r\n\r\nGirls Inspire- Aprendendo, Eu posso mudar!\r\n\r\n', '2018-05-31 13:56:53'),
(5, 17, 14, 'Lurdes Simão: “Hoje sei escrever e ler”', '“Meu nome é Lurdes Simão, nasci no distrito de Cuamba em Niassa, tenho 28 anos de idade e nunca tinha frequentado uma escola antes. Os meus primeiros passos para alfabetização surgiram com a idade já avançada, mas mesmo assim tenho aprendido bastante com o projecto de Alfabetização e Educação de Adultos (AEA)”.\r\n\r\nPrivada da escolaridade quando criança, senhora Lurdes foi vitíma desta cruel realidade logo cedo quando perdeu o seu pai, tendo seguido a vida com apenas sua mãe, que não apresentava condições suficientes para a colocar na escola. Nascida numa família humilde, Lurdes viu-se obrigada a juntar-se à mãe nas actividades agrícolas, de modo a prover alimentos para almentar sua família. \r\nQuando tudo parecia que a senhora Lurdes, com idade já avançada, terminaria o seu destino como iniciou (Sem saber ler e escrever), eis que surgiu o projecto de Alfabetização e Educação de Adulto para resgatar o direito perdido quando criança. \r\n\r\nCom uma mente aberta para aprender, senhora Lurdes venceu todas suas limitações e hoje já sabe escrever, ler e contar os números. \r\n“Nunca imaginei que algum dia poderia escrever meu nome, mas hoje não só sei escrever meu nome, como também posso ler e ajudar os meus filhos nos trabalhos da escola. Hoje quando vou ao hospital consigo ler e me dirigir a porta da Farmácia, Banco de socorro, Laboratório e nos quartos da Enfermaria, consigo ver e ler o número de cama onde meus amigos e familiares estão internados, graças a Escola de Alfabetização e Educação de Adultos”, conta Lurdes.\r\n\r\nA dona Lurdes, hoje, incentiva suas amigas a frequentar às aulas de Alfabetização e Educação de Adultos para aprenderem a ler e a escrever. \r\n\r\nGirls Inspire- Aprendendo, Eu posso mudar!\r\n', '2018-05-31 13:59:57'),
(7, 17, 6, 'Cartões de Publicação nas redes sociais', '', '2018-05-31 14:08:50'),
(8, 17, 14, '\"Melhorei a minha capacidade de gestão focalizada nos resultados\" - Rajabo Momade Cimalawoonga', 'Chamo-me Rajabo Momade Cimalawoonga, vivo em Lichinga, na província de Niassa, em Moçambique. Em Setembro de 2016, juntei-me à Associação Progresso para gerir, a nível provincial, o projecto Girls Inspire, \"Aprendendo, Eu posso mudar\", uma iniciativa para mulheres e raparigas, financiado pela COL.\r\nAchei que os objectivos e metas deste projecto são nobres para o problema de casamentos prematuros que coloca Moçambique, o meu país, em 10 lugar no mundo e em primeiro na África Austral com números/taxas bastante assustadores de raparigas que abandonam a escola e se casam em uma idade precoce, por isso aceitei o desafio para dar o meu contribuito na erradicação deste problema.\r\n\r\nEmbora já com alguma experiência de alguns anos antes, como activista social, cedo me apercebi que este projecto era desafiante: (i) primeiro pelo problema a que a iniciativa se propõe a resolver que é culturalmente sensivel e de difícil controle e gestão porque envolve não só a questão de conhecimentos mas de comportamentos e atitudes individuais e colectivas; (ii) segundo pelo contexto socioeconómico em que se integra o grupo alvo a apoiar: Raparigas e mulheres, muitas delas vulneráveis das comunidades rurais, (iii) terceiro porque deveria contribuir para essa mudança através da educação, uma área nobre mas que muitas das vitímas não gostam de experimentar ou frequentar.\r\n\r\nMas eis que a oportunidade não tardou. Tão cedo a resposta aos meus desafios apareceu quando através da plataforma e tecnologias online Gootomeeting e Webinar me juntei à equipa global da Girls Inspire para, de entre várias coisas, partilhar as experiências das práticas e desafios, aprender ou consolidar conhecimentos através dos vários experientes actores pelo mundo partilhado, cada um fazendo algo, umas vezes semelhante e outras vezes diferente, mas tudo em prol de iniciativas para raparigas e mulheres.\r\nAprendi com COL a valorizar a equipa, conseguir sucessos e, facilmente, partilhei os conhecimentos com a equipa de facilitadores e parceiros ao nível dos distritos e comunidades de modo a desenvolver a capacidade local, a autonomia, segurança e confiança em todos, com vista ao alcance dos objectivos.\r\n\r\nNa gestão do projecto, hoje sinto que melhorou a comunicação e aprendizagem partilhada com a equipa através do uso de tecnologia; Melhorou a nossa percepção, como equipa, sobre como abordar a questão do casamento prematuro e como recolher dados qualitativos através dos estudos de caso, as evidências da mudança na comunidade.\r\n\r\nHoje sinto que este projecto melhorou a minha prática de gerir o projecto e de gerir o principal problema que o projecto pretende resolver: Casamentos prematuros de meninas e mulheres.\r\nComo gestor da equipa de campo que dia após dia vive os desafios do projecto, escolho como a mudança mais significativa que este projecto trouxe para mim: mais do que a melhoria da prática de gestão do projecto,  este projecto ajudou-me também a melhorar na gestão do problema (de casamentos prematuros) e a influenciar mudança, pois sinto que cada vez mais é a própria comunidade que assume a liderança na gestão do problema, reportando os casos que acontecem e assumindo atitude para combater o mal. \r\nAs comunidades estão cada vez mais seguras e confiantes no projecto e tornaram-se amigas da iniciativa Girls inpire e lideram as mudanças. Antes tinham medo de falar do problema, de relatar os casos ou assumirem iniciativas para prevenir. Hoje facilmente relatam ou reportam os problemas e isto facilita as histórias dos estudos de caso. \r\n\r\nHoje lidero melhor a abordagem focalizada no resultado. \r\nConsigo notar mudanças positivas no seio da equipa e nas comunidades que são evidenciados através de atitudes, comportamentos interventivos positivos dos diferentes actores como formadores de género, educadores de adultos, professores, tutores e os membros do comité s comunitários de género bem como das próprias raparigas e próprios rapazes. Entendo que tudo isso é possível porque Girls Inspire capacita e inspira.\r\n\r\nCom a Girls Inspire aprendi que a equipa é parte integrante e importante para fazer a mudança acontecer. Partilharei as minhas aprendizagens com equipa e espero inspirar as próprias raparigas e as comunidades a serem líderes da sua própria mudança e das mudanças para o desenvolvimento nas comunidades.     \r\n\r\n', '2018-05-31 14:12:13'),
(9, 17, 7, 'Formulário de Consentimento / Consent Form', 'Em anexo os formulários de Consentimento referente aos estudos de caso e outras actividades.', '2018-05-31 14:20:56'),
(10, 17, 14, ' O DRAMA DO CASAMENTO PREMATURO E GRAVIDEZ PRECOCE', '“Que sejamos raparigas determinadas e que não nos deixemos levar pela ideia dos nossos amigos, irmãos, tios e pais no que se refere a sexualidade ou casamento prematuro”\r\n\r\nO drama do casamento prematuro e gravidez precoce ainda afigura-se como um desafio em várias partes do mundo, e Moçambique não é excepção. Dados do Inquérito Demográfico e de Saúde indicam que 14 por cento das mulheres entre 20 e 24 anos de idade se casaram antes dos 15 anos, e 48 por cento casaram-se antes dos 18.\r\n \r\nLúcia Jumade 17 anos de idade, é parte da percentagem das raparigas que se casaram antes de completar os 18 anos de idade.Lúcia engravidou do seu primeiro filho aos 15 anos de idade, em seguida foi forçada a viver com o seu parceiro e como consequência foi vítima de casamento forçado e prematuro.  \r\n\r\nVeja o drama vivido pela Lúcia após se juntar ao marido por conta de uma gravidez não planificada.\r\n\"Comecei a viver com  o meu marido até o bebé nascer. Durante a gravidez as minhas amigas não queriam brincar comigo, e na familia eu já não era visto mais como uma criança, mas sim como uma mãe que se deveria preparar para cuidar de uma outra nova vida: o meu bebé. Passei a ser dona do meu marido e este meu dono, por isso, a este deveria prestar contas sobre a minha vida, onde vou, com quem vou, o que vou fazer. Apesar das dificuldades que ia encarrando ao longo do período de gestação, a pior situação foi a falta de relações sociais com a minha mãe, deixando assim tudo sob responsabilidade do meu parceiro e como consequência abandonei os meus estudos. \r\nA minha sogra não me respeitava, agredia-me com palavras porque achava que eu era uma simples mulher para seu filho, e não uma esposa. Foram dias muito tristes e de arrependimento na minha vida até que acabei regressando à  casa da minha  família por força das lições que aprendi do projecto Girls Inspire que a Associação Progresso implementa aqui em Niassa. Através deste projecto aprendi a valorizar-me, aprendi que o casamento prematuro e forçado é um crime e é proibido, aprendi que posso ter muitos problemas na vida por ter casado cedo. Com ajuda dos meus avôs  e toda a minha família, minha mãe e meu tio que participam das reuniões de sensibilização da Associação Progreso para o fim do casamento prematuro, este ano retomei os meus estudos e me encontro, a frequentar a 7ª classe  na Escola Primária Completa 24 de Junho em Chimbunila, na província do Niassa, onde também participo das aulas de explicação e tenho fé que poderei mudar a minha vida com essas aprendizagens.\"\r\n\r\nTal como a Lúcia, muitas raparigas em Moçambique passam por situção igual ou pior, por isso ela aconselha as mulheres a serem determinadas para combater o casamento prematuro e forçado.\r\n\"Aconselho que não se envolvam sexualmente antes de atingir uma idade aceitável, como aconteceu comigo,  pelo facto de correrem vários riscos de saúde e gravidez indesejada. . Enfim, que sejamos raparigas determinadas e que não nos deixemos levar pelas ideias dos nossos amigos, irmãos, tios e pais no que se refere a sexualidade ou casamento prematuro, só assim teremos um horizonte saudável para todos.\"\r\n', '2018-05-31 14:24:58'),
(11, 17, 6, 'CARTAZES: DIA DA RAPARIGA', '', '2018-05-31 14:54:10'),
(12, 17, 19, 'DIA DA RAPARIGA 2017 Video', 'Em anexo o video referente ao dia da rapariga assinalado em 11 de Outubro de 2017.', '2018-05-31 15:01:26'),
(13, 17, 6, 'CAMPANHA: 16 Dias de Activismo 2017', '', '2018-05-31 15:09:40'),
(14, 17, 6, 'CAMPANHA: Dia Internacional da Mulher 2018', '', '2018-05-31 15:12:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `user_id`, `address`, `is_default`, `notify`, `created_on`, `updated_on`) VALUES
(2, 5, 'progresso.luzumirasimbine@gmail.com', 1, 1, '2018-02-05 20:12:25', '2018-04-30 15:12:56'),
(4, 7, 'progresso.edsonrufai@gmail.com', 1, 1, '2018-02-05 20:22:30', '2018-05-08 14:50:32'),
(10, 21, 'progresso.beligiocuco@gmail.com', 1, 1, '2018-02-08 09:20:13', '2018-02-08 09:20:13'),
(13, 24, 'progresso.argentinatimba@gmail.com', 1, 1, '2018-03-20 22:54:09', '2018-03-20 22:54:09'),
(14, 25, 'progresso.martasales@gmail.com', 1, 1, '2018-03-20 22:55:14', '2018-03-20 22:55:14'),
(16, 27, 'Coordenadora@progresso.co.mz', 1, 1, '2018-03-20 22:57:03', '2018-05-08 14:52:23'),
(17, 28, 'progresso.aarmando@gmail.com', 1, 1, '2018-03-21 01:00:50', '2018-05-08 14:37:15'),
(22, 33, 'Progresso.dchinavane@gmail.com', 1, 1, '2018-03-21 01:17:19', '2018-05-08 14:45:27'),
(23, 34, 'feliciamatabel@gmail.com', 1, 1, '2018-03-21 01:18:17', '2018-05-08 14:53:47'),
(25, 36, 'Progresso.claudinanaife@gmail.com', 1, 1, '2018-03-21 01:35:54', '2018-05-08 14:44:14'),
(26, 37, 'tinie.vaneys@gmail.com', 1, 1, '2018-03-21 01:55:13', '2018-03-21 01:55:13'),
(28, 39, 'progresso.lgovene@gmail.com', 1, 1, '2018-03-21 01:57:56', '2018-03-21 01:57:56'),
(37, 50, 'Progresso.alcinasitoe@gmail.com', 1, 1, '2018-04-27 15:39:33', '2018-05-08 14:32:09'),
(38, 51, 'Progresso.franciscasamboco@gmail.com', 1, 1, '2018-04-30 00:28:23', '2018-05-08 14:56:13'),
(40, 53, 'progresso.dmahoche@gmail.com', 1, 1, '2018-04-30 00:33:00', '2018-05-08 14:46:30'),
(41, 54, 'Progresso.chancelerpenicela@gmail.com', 1, 1, '2018-04-30 00:34:25', '2018-05-08 14:40:34'),
(42, 61, 'Progresso.hmmomade@gmail.com', 1, 1, '2018-05-08 15:02:43', '2018-05-08 15:02:43'),
(43, 62, 'Director@progresso.co.mz', 1, 1, '2018-05-08 15:04:26', '2018-05-08 15:04:26'),
(44, 63, 'Progresso.olgazucule@gmail.com', 1, 1, '2018-05-08 15:06:15', '2018-05-08 15:06:15'),
(45, 64, 'Administrar@progresso.co.mz', 1, 1, '2018-05-08 15:08:20', '2018-05-08 15:08:20'),
(46, 65, 'Editora@progresso.co.mz', 1, 1, '2018-05-08 15:12:30', '2018-05-08 15:12:30'),
(47, 66, 'Cassamoiane@gmail.com', 1, 1, '2018-05-08 15:13:58', '2018-05-08 15:13:58'),
(48, 67, 'bhavika.rugnath@gmail.com', 1, 1, '2018-05-10 10:31:50', '2018-05-10 10:31:50'),
(49, 68, 'infopel.mz@gmail.com', 1, 1, '2018-05-10 10:52:08', '2018-05-10 10:52:08'),
(50, 69, 'teste@gmail.com', 1, 1, '2018-05-15 09:46:58', '2018-05-15 09:46:58'),
(51, 70, 'Progresso.rajabomomade@gmail.com', 1, 1, '2018-05-15 14:19:50', '2018-05-15 14:19:50'),
(52, 82, 'rodamarcos0@gmail.com', 1, 1, '2018-05-31 15:43:11', '2018-05-31 15:43:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enabled_modules`
--

CREATE TABLE `enabled_modules` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `enabled_modules`
--

INSERT INTO `enabled_modules` (`id`, `project_id`, `name`) VALUES
(1, 1, 'issue_tracking'),
(2, 1, 'time_tracking'),
(3, 1, 'news'),
(4, 1, 'documents'),
(5, 1, 'files'),
(6, 1, 'wiki'),
(7, 1, 'repository'),
(8, 1, 'boards'),
(9, 1, 'calendar'),
(10, 1, 'gantt'),
(11, 2, 'issue_tracking'),
(12, 2, 'time_tracking'),
(13, 2, 'news'),
(14, 2, 'documents'),
(15, 2, 'files'),
(16, 2, 'wiki'),
(17, 2, 'repository'),
(18, 2, 'boards'),
(19, 2, 'calendar'),
(20, 2, 'gantt'),
(31, 4, 'issue_tracking'),
(32, 4, 'time_tracking'),
(33, 4, 'news'),
(34, 4, 'documents'),
(35, 4, 'files'),
(36, 4, 'wiki'),
(37, 4, 'repository'),
(38, 4, 'boards'),
(39, 4, 'calendar'),
(40, 4, 'gantt'),
(51, 6, 'issue_tracking'),
(52, 6, 'time_tracking'),
(53, 6, 'news'),
(54, 6, 'documents'),
(55, 6, 'files'),
(56, 6, 'wiki'),
(57, 6, 'repository'),
(58, 6, 'boards'),
(59, 6, 'calendar'),
(60, 6, 'gantt'),
(61, 7, 'issue_tracking'),
(62, 7, 'time_tracking'),
(63, 7, 'news'),
(64, 7, 'documents'),
(65, 7, 'files'),
(66, 7, 'wiki'),
(67, 7, 'repository'),
(68, 7, 'boards'),
(69, 7, 'calendar'),
(70, 7, 'gantt'),
(111, 12, 'issue_tracking'),
(113, 12, 'news'),
(114, 12, 'documents'),
(116, 12, 'wiki'),
(117, 12, 'repository'),
(118, 12, 'boards'),
(119, 12, 'calendar'),
(120, 12, 'gantt'),
(121, 13, 'issue_tracking'),
(122, 13, 'time_tracking'),
(123, 13, 'news'),
(124, 13, 'documents'),
(125, 13, 'files'),
(126, 13, 'wiki'),
(127, 13, 'repository'),
(128, 13, 'boards'),
(129, 13, 'calendar'),
(130, 13, 'gantt'),
(131, 14, 'issue_tracking'),
(132, 14, 'time_tracking'),
(133, 14, 'news'),
(134, 14, 'documents'),
(135, 14, 'files'),
(136, 14, 'wiki'),
(137, 14, 'repository'),
(138, 14, 'boards'),
(139, 14, 'calendar'),
(140, 14, 'gantt'),
(141, 15, 'issue_tracking'),
(142, 15, 'time_tracking'),
(143, 15, 'news'),
(144, 15, 'documents'),
(145, 15, 'files'),
(146, 15, 'wiki'),
(147, 15, 'repository'),
(148, 15, 'boards'),
(149, 15, 'calendar'),
(150, 15, 'gantt'),
(151, 16, 'issue_tracking'),
(152, 16, 'time_tracking'),
(153, 16, 'news'),
(154, 16, 'documents'),
(155, 16, 'files'),
(156, 16, 'wiki'),
(157, 16, 'repository'),
(158, 16, 'boards'),
(159, 16, 'calendar'),
(160, 16, 'gantt'),
(161, 17, 'issue_tracking'),
(162, 17, 'time_tracking'),
(163, 17, 'news'),
(164, 17, 'documents'),
(165, 17, 'wiki'),
(166, 17, 'repository'),
(167, 17, 'calendar'),
(168, 17, 'gantt'),
(169, 18, 'issue_tracking'),
(170, 18, 'time_tracking'),
(171, 18, 'news'),
(172, 18, 'documents'),
(173, 18, 'wiki'),
(174, 18, 'repository'),
(175, 18, 'calendar'),
(176, 18, 'gantt'),
(177, 19, 'issue_tracking'),
(178, 19, 'time_tracking'),
(179, 19, 'news'),
(180, 19, 'documents'),
(181, 19, 'wiki'),
(182, 19, 'repository'),
(183, 19, 'calendar'),
(184, 19, 'gantt'),
(185, 20, 'issue_tracking'),
(186, 20, 'time_tracking'),
(187, 20, 'news'),
(188, 20, 'documents'),
(189, 20, 'wiki'),
(190, 20, 'repository'),
(191, 20, 'calendar'),
(192, 20, 'gantt'),
(193, 21, 'issue_tracking'),
(194, 21, 'time_tracking'),
(195, 21, 'news'),
(196, 21, 'documents'),
(197, 21, 'wiki'),
(198, 21, 'repository'),
(199, 21, 'calendar'),
(200, 21, 'gantt'),
(201, 22, 'issue_tracking'),
(202, 22, 'time_tracking'),
(203, 22, 'news'),
(204, 22, 'documents'),
(205, 22, 'wiki'),
(206, 22, 'repository'),
(207, 22, 'calendar'),
(208, 22, 'gantt'),
(209, 23, 'issue_tracking'),
(210, 23, 'time_tracking'),
(211, 23, 'news'),
(212, 23, 'documents'),
(213, 23, 'wiki'),
(214, 23, 'repository'),
(215, 23, 'calendar'),
(216, 23, 'gantt'),
(217, 24, 'issue_tracking'),
(218, 24, 'time_tracking'),
(219, 24, 'news'),
(220, 24, 'documents'),
(221, 24, 'wiki'),
(222, 24, 'repository'),
(223, 24, 'calendar'),
(224, 24, 'gantt'),
(225, 25, 'issue_tracking'),
(226, 25, 'time_tracking'),
(227, 25, 'news'),
(228, 25, 'documents'),
(229, 25, 'wiki'),
(230, 25, 'repository'),
(231, 25, 'calendar'),
(232, 25, 'gantt'),
(233, 26, 'issue_tracking'),
(234, 26, 'time_tracking'),
(235, 26, 'news'),
(236, 26, 'documents'),
(237, 26, 'wiki'),
(238, 26, 'repository'),
(239, 26, 'calendar'),
(240, 26, 'gantt'),
(241, 17, 'report_filters'),
(242, 17, 'custom_reports'),
(243, 12, 'custom_reports'),
(244, 14, 'custom_reports'),
(245, 4, 'custom_reports'),
(246, 1, 'custom_reports'),
(247, 18, 'custom_reports'),
(248, 24, 'custom_reports'),
(249, 23, 'custom_reports'),
(250, 19, 'custom_reports'),
(251, 22, 'custom_reports'),
(252, 2, 'custom_reports'),
(253, 26, 'custom_reports'),
(254, 20, 'custom_reports'),
(255, 25, 'custom_reports'),
(256, 12, 'report_filters'),
(257, 21, 'custom_reports'),
(258, 21, 'report_filters');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enumerations`
--

CREATE TABLE `enumerations` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `enumerations`
--

INSERT INTO `enumerations` (`id`, `name`, `position`, `is_default`, `type`, `active`, `project_id`, `parent_id`, `position_name`) VALUES
(1, 'Baixa', 1, 0, 'IssuePriority', 1, NULL, NULL, 'lowest'),
(2, 'Normal', 2, 1, 'IssuePriority', 1, NULL, NULL, 'default'),
(3, 'Alta', 3, 0, 'IssuePriority', 1, NULL, NULL, 'high3'),
(4, 'Urgente', 4, 0, 'IssuePriority', 1, NULL, NULL, 'high2'),
(5, 'Imediata', 5, 0, 'IssuePriority', 1, NULL, NULL, 'highest'),
(6, 'Publicações ', 1, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(7, 'Documentação técnica', 2, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(8, 'Monitoria & Avaliação ', 1, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(9, 'Planificação ', 2, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(10, 'Planificação ', 3, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(11, 'Orçamentação ', 4, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(12, 'Relatórios ', 5, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(13, 'Fotos', 6, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(14, 'Casos de Sucesso', 7, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(15, 'Formação ', 3, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(16, 'Orçamentação ', 4, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(17, 'Editora ', 5, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(18, 'Assembleia Geral', 8, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(19, 'Videos', 9, 0, 'DocumentCategory', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `groups_users`
--

CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `groups_users`
--

INSERT INTO `groups_users` (`group_id`, `user_id`) VALUES
(15, 5),
(15, 21),
(15, 24),
(15, 28),
(15, 50),
(15, 61),
(16, 53),
(17, 65),
(17, 69),
(19, 64),
(56, 61),
(57, 62),
(58, 27),
(60, 28),
(71, 39),
(73, 36),
(74, 63),
(75, 37),
(76, 7),
(77, 54),
(78, 51),
(81, 70);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imports`
--

CREATE TABLE `imports` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `settings` text,
  `total_items` int(11) DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `import_items`
--

CREATE TABLE `import_items` (
  `id` int(11) NOT NULL,
  `import_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `obj_id` int(11) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `tracker_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `description` longtext,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL,
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `closed_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `issues`
--

INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`, `closed_on`) VALUES
(64, 13, 13, 'Incremento de oportunidades de modo a que os membros das comunidades de base, especialmente mulheres, jovens e crianças, com prioridade para as províncias de Cabo Delgado e Niassa, desenvolvam a sua capacidade de intervenção com vista a melhorar as suas c', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-03-02 09:34:15', '2018-04-02 17:38:06', NULL, 0, NULL, NULL, 64, 1, 2, 0, NULL),
(151, 16, 12, 'Melhorar o acesso a educação básica de qualidade pelas comunidades locais, especialmente a escolarização de crianças e alfabetização de jovens e mulheres, em particular nas províncias de Cabo Delgado e Niassa.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 26, '2018-04-02 18:15:12', '2018-04-23 19:06:53', NULL, 0, NULL, 255, 255, 2, 91, 0, NULL),
(152, 16, 12, 'Promover a saúde comunitária preventiva através da educação e práticas, particularmente em: Nutrição ; Agricultura e meio ambiente.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 18, '2018-04-02 18:15:29', '2018-04-23 19:06:39', NULL, 0, NULL, 255, 255, 92, 139, 0, NULL),
(153, 16, 12, 'Promover a cidadania activa e reforçar as capacidades das comunidades locais e das suas capacidades através da provisão de conhecimento básico e desenvolvimento de redes que favoreçam a defesa dos direitos das comunidades locais.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 12, '2018-04-02 18:15:41', '2018-06-19 10:23:40', NULL, 0, NULL, 255, 255, 140, 171, 0, NULL),
(154, 16, 12, 'Reforçar a capacidade institucional da PROGRESSO através da profissionalização da própria organização', '', NULL, NULL, 1, NULL, 2, NULL, 4, 5, '2018-04-02 18:15:56', '2018-06-19 10:58:41', NULL, 0, NULL, 255, 255, 172, 275, 0, NULL),
(155, 18, 12, 'Construir capacidade nas escolas primárias e centros de alfabetização: processos, professores e educadores de adultos', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 8, '2018-04-02 18:20:06', '2018-04-23 19:04:22', NULL, 0, NULL, 151, 255, 3, 44, 0, NULL),
(156, 11, 12, 'Participação nos encontros de “lobbying” e advocacia no âmbito de desenvolvimento de um processo coerente de formação de formadores.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:20:26', '2018-06-18 12:24:53', NULL, 0, NULL, 155, 255, 4, 7, 0, NULL),
(157, 12, 12, '# de currículos de formação de formadores aprovado pelo Ministério da Educação e Desenvolvimento Humano', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:20:50', '2018-05-18 09:37:33', NULL, 0, NULL, 156, 255, 5, 6, 0, NULL),
(158, 11, 12, 'Intervenções de formação de formadores em metodologias do ensino primário, ensino bilingue, educação pré-escolar e desenvolvimento do curriculum local.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:21:19', '2018-04-02 18:21:39', NULL, 0, NULL, 155, 255, 8, 23, 0, NULL),
(161, 11, 12, 'Intervenções de formação de formadores a nível provincial sobre alfabetização de adultos a realizar a nível das escolas.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:22:30', '2018-04-02 18:23:49', NULL, 0, NULL, 155, 255, 24, 33, 0, NULL),
(164, 11, 12, 'Formação e apoio das associações de pais, professores e alunos (Conselho de Escola).', '', NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:23:35', '2018-04-02 18:24:49', NULL, 0, NULL, 155, 255, 34, 37, 0, NULL),
(166, 11, 12, 'Formação de formadores em necessidades especiais de educação (língua de sinais e “braille”), particularmente em métodos de educação de adultos e abordagens de educação bilingue.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:25:48', '2018-04-02 18:26:21', NULL, 0, NULL, 155, 255, 38, 43, 0, NULL),
(168, 18, 12, 'Produção de materiais de alfabetização/educação', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 8, '2018-04-02 18:27:04', '2018-04-23 19:04:09', NULL, 0, NULL, 151, 255, 45, 64, 0, NULL),
(169, 11, 12, 'Desenvolvimento e produção de materiais em línguas locais para a 1.ª até à 3.ª classe, tanto para professores como para alunos através dos programas existentes.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:27:41', '2018-04-02 18:28:52', NULL, 0, NULL, 168, 255, 46, 49, 0, NULL),
(171, 11, 12, 'Desenvolvimento e produção de materiais de alfabetização de adultos tanto para aprendentes como para educadores.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:29:37', '2018-04-02 18:29:57', NULL, 0, NULL, 168, 255, 50, 55, 0, NULL),
(173, 11, 12, 'Desenvolvimento e produção de materiais de necessidades especiais de acordo com as necessidades dos programas existentes.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:30:45', '2018-04-02 18:31:26', NULL, 0, NULL, 168, 255, 56, 59, 0, NULL),
(175, 11, 12, 'Reproduzir manuais próprios em línguas locais e português, para venda a programas (ex.: ONGs, Governo local, ministérios e indústria privada).', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:32:07', '2018-04-02 18:32:30', NULL, 0, NULL, 168, 255, 60, 63, 0, NULL),
(177, 18, 12, 'Redes e advocacia', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 4, '2018-04-02 18:32:46', '2018-04-23 19:03:40', NULL, 0, NULL, 151, 255, 65, 74, 0, NULL),
(178, 11, 12, 'Ligação com outros projectos educacionais, por exemplo, melhoria da qualidade, nutrição, luta contra o absentismo, luta contra todas as formas de violência, saúde sexual reprodutiva.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:33:12', '2018-04-02 18:33:37', NULL, 0, NULL, 177, 255, 66, 69, 0, NULL),
(180, 11, 12, 'Colaborar em projectos e programas dentro de outras ONGs e OSC (tanto lideradas pela PROGRESSO como por outras organizações).', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:33:55', '2018-04-02 18:34:13', NULL, 0, NULL, 177, 255, 70, 73, 0, NULL),
(181, 12, 12, 'Implementação de actividades em conjunto com outras organizações.', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 0, '2018-04-02 18:34:13', '2018-04-02 18:34:13', NULL, 0, NULL, 180, 255, 71, 72, 0, NULL),
(182, 18, 12, 'Introdução da alfabetização digital', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 4, '2018-04-02 18:34:43', '2018-04-23 19:03:26', NULL, 0, NULL, 151, 255, 75, 84, 0, NULL),
(183, 11, 12, 'Programas de educação com aumento de conteúdos tecnológicos: uso das TIC na formação.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:35:13', '2018-04-02 18:36:01', NULL, 0, NULL, 182, 255, 76, 79, 0, NULL),
(184, 12, 12, '# de sessoes de uso das TIC como instrumento de ensino em cada uma das 3 intervenções de formação de formadores', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:36:01', '2018-05-18 10:03:42', NULL, 0, NULL, 183, 255, 77, 78, 0, NULL),
(185, 11, 12, 'Desenvolver programa de formação inovador de educação digital, com enfoque para o uso do telefone e Internet.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:36:40', '2018-04-02 18:37:03', NULL, 0, NULL, 182, 255, 80, 83, 0, NULL),
(186, 12, 12, '# de intervençoes-piloto no uso de tabletes como meio de ensino na educação de adultos ', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:37:03', '2018-05-18 10:04:19', NULL, 0, NULL, 185, 255, 81, 82, 0, NULL),
(187, 18, 12, 'Capacitação em educação e práticas de saúde preventiva', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 10, '2018-04-02 18:38:07', '2018-04-23 19:03:19', NULL, 0, NULL, 152, 255, 93, 114, 0, NULL),
(188, 11, 12, 'Mobilização e formação de activistas comunitários.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:39:45', '2018-04-02 18:40:29', NULL, 0, NULL, 187, 255, 94, 97, 0, NULL),
(189, 12, 12, '# de activistas dentro da rede da PROGRESSO que foram formados para levar adiante o seu papel', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:40:28', '2018-05-18 10:05:18', NULL, 0, NULL, 188, 255, 95, 96, 0, NULL),
(190, 11, 12, 'Promoção e implementação de feiras educacionais alimentares a nível da comunidade.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:41:39', '2018-04-02 18:42:16', NULL, 0, NULL, 187, 255, 98, 101, 0, NULL),
(191, 12, 12, '# de feiras por ano em cada distrito a demonstrar os valores nutricionais de alguns alimentos', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:42:16', '2018-05-18 10:05:58', NULL, 0, NULL, 190, 255, 99, 100, 0, NULL),
(192, 11, 12, 'Formação das comunidades a nível local em questões relacionadas com a saúde através de plataformas de alfabetização: isto pode envolver a distribuição de produtos através também dessas plataformas.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:42:41', '2018-04-02 18:43:03', NULL, 0, NULL, 187, 255, 102, 105, 0, NULL),
(193, 12, 12, '# de adultos nas aulas de alfabetização com conhecimento sobre dieta equilibrada de alimentos produzidos localmente, a importância das redes mosquiteiras, a importância do ferro e ácido fólico no nosso corpo', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:43:02', '2018-05-18 10:06:39', NULL, 0, NULL, 192, 255, 103, 104, 0, NULL),
(194, 11, 12, 'Participação nos encontros de “lobbying” e advocacia no âmbito do desenvolvimento de um programa coerente de qualificaçãode formadores.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:43:27', '2018-04-02 18:43:59', NULL, 0, NULL, 187, 255, 106, 109, 0, NULL),
(195, 12, 12, '# programas de formação de formadores (FdF) aprovado pelo Ministério da Saúde', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:43:58', '2018-05-18 10:07:15', NULL, 0, NULL, 194, 255, 107, 108, 0, NULL),
(196, 11, 12, 'Formação de formadores que irão dar reforço prático aos activistas.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:44:34', '2018-04-02 18:45:00', NULL, 0, NULL, 187, 255, 110, 113, 0, NULL),
(197, 12, 12, '# de pessoas seleccionadas que participam numa formação de formadores com o programa aprovado', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:45:00', '2018-06-18 15:01:23', NULL, 0, NULL, 196, 255, 111, 112, 0, NULL),
(198, 18, 12, 'Produção de materiais relacionados com a saúde ', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:45:27', '2018-04-23 19:03:02', NULL, 0, NULL, 152, 255, 115, 120, 0, NULL),
(199, 11, 12, 'Produção de materiais específicos para fins educacionais sobre saúde e assuntos relacionados com ela. ', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:45:57', '2018-04-02 18:46:14', NULL, 0, NULL, 198, 255, 116, 119, 0, NULL),
(200, 12, 12, '# de guias de formadores dos formadores (formadores-mestres) e um manual dos formandos/activistas de saúde (que podem ser reproduzidos dependendo dos números de FdF e de participantes) Produção de panfletos sobre saúde de acordo com as necessidades', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:46:14', '2018-05-18 10:08:25', NULL, 0, NULL, 199, 255, 117, 118, 0, NULL),
(201, 18, 12, 'Redes e advocacia', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:46:32', '2018-04-23 19:02:28', NULL, 0, NULL, 152, 255, 121, 126, 0, NULL),
(202, 11, 12, 'Ligações com outros projectos para aumentar as actividades nutricionais.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:47:22', '2018-04-02 18:47:55', NULL, 0, NULL, 201, 255, 122, 125, 0, NULL),
(203, 12, 12, '# de ligaçoes para combate à malnutrição, medidas de promoção da saúde preventiva, em intervenções pela PROGRESSO', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:47:55', '2018-05-18 10:09:00', NULL, 0, NULL, 202, 255, 123, 124, 0, NULL),
(204, 18, 12, 'Promoção de práticas agrícolas conducentes à saúde comunitária', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:48:29', '2018-04-23 19:02:14', NULL, 0, NULL, 152, 255, 127, 134, 0, NULL),
(205, 11, 12, 'Promoção e plantio de certas culturas para fins nutricionais.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:48:51', '2018-04-02 18:49:10', NULL, 0, NULL, 204, 255, 128, 133, 0, NULL),
(207, 18, 12, 'Redes e advocacia', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 10, '2018-04-02 18:50:26', '2018-04-23 19:01:53', NULL, 0, NULL, 153, 255, 141, 166, 0, NULL),
(208, 11, 12, 'Capacitação em género, combate a todas as formas de violência.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:50:53', '2018-04-02 18:51:15', NULL, 0, NULL, 207, 255, 142, 145, 0, NULL),
(209, 12, 12, '% de programas implementados pelo Associação PROGRESSO que integram acções de género', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:51:15', '2018-05-18 11:19:09', NULL, 0, NULL, 208, 255, 143, 144, 0, NULL),
(210, 11, 12, 'Acções de reforço da participação na governação local, melhor conhecimento da legislação.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:51:39', '2018-04-02 18:52:04', NULL, 0, NULL, 207, 255, 146, 149, 0, NULL),
(211, 12, 12, '# de formações no âmbito de legislação, por ano, em cada distrito de intervenção', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:52:04', '2018-05-18 10:12:04', NULL, 0, NULL, 210, 255, 147, 148, 0, NULL),
(212, 11, 12, 'Monitoria comunitária', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:52:25', '2018-04-02 18:52:45', NULL, 0, NULL, 207, 255, 150, 153, 0, NULL),
(213, 12, 12, 'Evidência da M&A, dados recolhidos, analisados, sintetizados e partilhados com os beneficiários.', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:52:45', '2018-06-19 10:34:01', NULL, 0, NULL, 212, 255, 151, 152, 0, NULL),
(214, 11, 12, 'Colaboração com outras OSC no terreno envolvidas na promoção de acções relacionadas com as intervenções da PROGRESSO.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:53:05', '2018-06-19 10:32:57', NULL, 0, NULL, 207, 255, 154, 157, 0, NULL),
(215, 12, 12, 'Evidência de colaboração por província, por ano, relativamente a trabalho de advocacia de questões que afectam a comunidade.', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:53:25', '2018-06-19 10:36:21', NULL, 0, NULL, 214, 255, 155, 156, 0, NULL),
(216, 11, 12, 'Programa educacional activo para “advocacia” para a empregabilidade nas comunidades: advocacia para “utilizar os recursos e oportunidades locais”. ', '', NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:53:51', '2018-06-19 10:40:41', NULL, 0, NULL, 207, 255, 158, 161, 0, NULL),
(217, 12, 12, 'Evidências de advocacia em direitos de género, recursos naturais, direito à terra, casamentos de crianças', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:54:14', '2018-05-18 10:30:00', NULL, 0, NULL, 216, 255, 159, 160, 0, NULL),
(218, 18, 12, 'Serviços de desenvolvimento de negócios da Editora e do património existente', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:55:01', '2018-05-18 10:31:04', '2018-04-02', 0, NULL, 154, 255, 173, 196, 0, NULL),
(219, 11, 12, 'Recrutamento de um gestor qualificado, ou formação do pessoal existente.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:55:21', '2018-05-18 10:31:04', NULL, 0, NULL, 218, 255, 174, 177, 0, NULL),
(220, 11, 12, 'Pesquisa de mercado sobre a procura de livros e outros materiais.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:55:37', '2018-05-18 10:31:45', NULL, 0, NULL, 218, 255, 178, 181, 0, NULL),
(221, 11, 12, 'Cálculo de custo de cada livro/material produzido pela Editora para se determinar o preço certo', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:55:46', '2018-05-18 10:32:29', NULL, 0, NULL, 218, 255, 182, 185, 0, NULL),
(222, 11, 12, '“Marketing” rigoroso (publicidade)', '', NULL, NULL, 1, NULL, 2, NULL, 4, 0, '2018-04-02 18:55:57', '2018-04-02 18:55:57', '2018-04-02', 0, NULL, 218, 255, 186, 187, 0, NULL),
(223, 11, 12, 'Encontrar os mecanismos de trazer para a Associação os benefícios do trabalho da Editora', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 18:56:27', '2018-05-18 10:39:54', NULL, 0, NULL, 218, 255, 188, 191, 0, NULL),
(224, 11, 12, 'Outro património  Deverá ser gerido com sentido de negócios (gestão empresarial) de modo a gerar rendimento.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:57:02', '2018-04-02 18:58:16', NULL, 0, NULL, 218, 255, 192, 195, 0, NULL),
(226, 18, 12, 'Serviços de desenvolvimento de negocios da Editora e do patrimonio existente', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 15, '2018-04-02 18:58:44', '2018-06-19 11:09:14', NULL, 0, NULL, 154, 255, 197, 228, 0, NULL),
(227, 11, 12, 'Encontrar os mecanismos de trazer para a Associaçao os beneficios do trabalho da Editora', '', NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 18:59:04', '2018-06-19 11:06:25', NULL, 0, NULL, 226, 255, 198, 201, 0, NULL),
(229, 11, 12, 'Gestao com sentido de negocios (gestao empresarial) de modo a gerar rendimentos', '', NULL, NULL, 1, NULL, 2, NULL, 4, 3, '2018-04-02 18:59:57', '2018-06-19 11:12:19', NULL, 0, NULL, 226, 255, 202, 205, 0, NULL),
(230, 12, 12, '% de contribuiçao de receitas provenientes de gestao de patrimonio nas receitas totais da PROGRESSO', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:00:17', '2018-06-19 11:13:58', NULL, 0, NULL, 229, 255, 203, 204, 0, NULL),
(231, 11, 12, 'Desenvolver uma estratégia para a mobilização e envolvimento de novos membros, também nas comunidades.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 19:00:36', '2018-05-18 10:44:07', NULL, 0, NULL, 226, 255, 206, 209, 0, NULL),
(232, 12, 12, 'Material de formação específico para os membros.', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 0, '2018-04-02 19:00:56', '2018-04-02 19:00:56', NULL, 0, NULL, 231, 255, 207, 208, 0, NULL),
(233, 11, 12, 'Formação e desenvolvimento dos instrumentos necessários para levar a cabo as suas actividades com sucesso.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-02 19:01:22', '2018-05-18 10:42:29', NULL, 0, NULL, 226, 255, 210, 215, 0, NULL),
(236, 18, 12, 'Desenvolvimento da gestão do conhecimento institucional que incorpore o sistema M&A', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 14, '2018-04-02 19:02:50', '2018-04-23 19:01:07', NULL, 0, NULL, 154, 255, 229, 270, 0, NULL),
(237, 11, 12, 'Desenvolvimento da estratégia de monitoria, avaliação e aprendizagem (M&A&Apr) anualmente.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:03:12', '2018-04-02 19:03:35', NULL, 0, NULL, 236, 255, 230, 233, 0, NULL),
(238, 12, 12, 'Estratégia anual de monitoria, avaliação e aprendizagem (M&A&Apr).', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 0, '2018-04-02 19:03:35', '2018-04-02 19:03:35', NULL, 0, NULL, 237, 255, 231, 232, 0, NULL),
(239, 11, 12, 'Identificar o conteúdo da informação que tem que ser disseminada para o mundo exterior e actualizar a brochura e o “website”.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:04:03', '2018-04-02 19:04:31', NULL, 0, NULL, 236, 255, 234, 241, 0, NULL),
(240, 12, 12, '# brochuras', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:04:31', '2018-05-18 10:47:21', NULL, 0, NULL, 239, 255, 235, 236, 0, NULL),
(241, 11, 12, 'Desenvolver o mecanismo do conhecimento preciso e ferramentas das tecnologias de informação e comunicação (TIC) que permitam a captação do conhecimento institucional existente e providenciem uma base da transferência efectiva para os novos funcionários. ', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:05:02', '2018-04-02 19:05:49', NULL, 0, NULL, 236, 255, 242, 245, 0, NULL),
(242, 12, 12, 'Evidências da captação do conhecimento existentes.', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:05:17', '2018-04-02 19:05:49', NULL, 0, NULL, 241, 255, 243, 244, 0, NULL),
(243, 11, 12, 'Organizar um seminário de gestão de sensibilização para monitoria, avaliação e aprendizagem (M&A&Apr) (a gestão do conhecimento) para o pessoal interno.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:05:43', '2018-04-02 19:06:12', NULL, 0, NULL, 236, 255, 246, 251, 0, NULL),
(244, 12, 12, '# de seminários anualmente para o pessoal sobre tópicos relevantes de GC.', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:06:12', '2018-05-28 16:10:55', NULL, 0, NULL, 243, 255, 247, 250, 0, NULL),
(245, 11, 12, 'Desenvolver um sistema viável de M&A e desenvolver os instrumentos respectivos para alimentar o principal sistema de M&A. ', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:06:35', '2018-04-02 19:06:55', NULL, 0, NULL, 236, 255, 252, 255, 0, NULL),
(246, 12, 12, '# de seminários anualmente para o pessoal sobre tópicos relevantes de M&A.', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:06:55', '2018-05-28 16:10:25', NULL, 0, NULL, 245, 255, 253, 254, 0, NULL),
(247, 11, 12, 'Formar os funcionários e membros nas províncias sobre recolha, processos e instrumentos de recolha de dados (formulários a usar na recolha de dados).', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:07:19', '2018-04-02 19:07:44', NULL, 0, NULL, 236, 255, 256, 259, 0, NULL),
(248, 12, 12, '# de “workshops” no âmbito de M&A realizados a nível central e provincial', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:07:44', '2018-05-18 10:49:57', NULL, 0, NULL, 247, 255, 257, 258, 0, NULL),
(249, 11, 12, 'Garantir que o sistema de M&A esteja actualizado e possa dar dados em tempo real', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:08:08', '2018-04-02 19:08:30', NULL, 0, NULL, 236, 255, 260, 263, 0, NULL),
(250, 12, 12, 'Sistema funcional de M&A a produzir dados em tempo real.', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 0, '2018-04-02 19:08:30', '2018-04-02 19:08:30', NULL, 0, NULL, 249, 255, 261, 262, 0, NULL),
(251, 11, 12, 'Manter o sistema financeiro transparente e eficiente.', '', NULL, NULL, 1, NULL, 2, NULL, 4, 1, '2018-04-02 19:08:48', '2018-04-02 19:09:14', NULL, 0, NULL, 236, 255, 264, 269, 0, NULL),
(254, 17, 12, 'Melhorados os níveis de alfabetização das comunidades de base, especialmente mulheres, jovens e crianças, com prioridade para as províncias de Cabo Delgado e Niassa.', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 0, '2018-04-19 21:23:31', '2018-04-19 21:23:31', NULL, 0, NULL, 151, 255, 85, 86, 0, NULL),
(255, 13, 12, 'Incremento de oportunidades de modo a que os membros das comunidades de base, especialmente mulheres, jovens e crianças, com prioridade para províncias de C.Delgado e Niassa, desenvolvam capacidade de intervenção com vista a melhorar as condiçoes de vida', NULL, NULL, NULL, 1, NULL, 2, NULL, 4, 2, '2018-04-23 19:05:41', '2018-06-18 11:10:49', NULL, 0, NULL, NULL, 255, 1, 276, 0, NULL),
(256, 5, 17, 'Melhorados os meios de subsistencia para mulheres e raparigas desfavorecidas em 3 distritos da provincia de Niassa (3 capitais distritais e 9 comunidades em areas rurais dos mesmos distritos)', NULL, '2017-10-10', NULL, 1, NULL, 2, NULL, 24, 10, '2018-05-14 12:22:54', '2018-05-28 10:17:35', '2017-09-06', 5, NULL, NULL, 256, 1, 90, 0, NULL),
(257, 3, 17, 'Aumentada a participaçao equitativa de mulheres e raparigas desfavorecidas no ODL nas comunidades-alvo', NULL, '2017-10-10', NULL, 1, NULL, 2, NULL, 24, 7, '2018-05-14 12:24:44', '2018-05-28 09:12:00', '2017-09-06', 10, NULL, 256, 256, 2, 61, 0, NULL),
(264, 10, 17, 'Aumentada a consciencia sobre os beneficios da educaçao de raparigas atraves da educaçao aberta, a distancia e baseada em tecnologia entre pais e lideres comunitarios bem como maior consciencializaçao sobre as consequencias dos casamentos prematuros', NULL, '2017-10-10', NULL, 1, NULL, 2, NULL, 24, 7, '2018-05-14 15:00:25', '2018-05-28 09:12:00', '2017-09-06', 10, NULL, 257, 256, 3, 60, 0, NULL),
(265, 3, 17, 'Aumentada a liderança economica e tomada de decisoes na familia, incluido o planeamento familiar para mulheres e raparigas desfavorecidas nas areas rurais', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 2, '2018-05-14 15:06:03', '2018-05-22 14:15:10', NULL, 0, NULL, 256, 256, 62, 89, 0, NULL),
(266, 10, 17, 'Aumentado o conhecimento entre raparigas sobre sua saude, direitos sociais e consequencias dos casamentos prematuros', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 4, '2018-05-14 15:07:07', '2018-07-10 14:21:12', NULL, 0, NULL, 265, 256, 63, 74, 0, NULL),
(267, 10, 17, 'Aumentada a consciencia e aspiraçoes de oportunidades de emprego entre as raparigas', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-14 15:08:29', '2018-05-14 15:08:29', NULL, 0, NULL, 265, 256, 75, 88, 0, NULL),
(268, 2, 17, 'Testados e Desenvolvidos cursos, habilidades para a vida, alfabetizaçao financeira e empreendedorismo', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 2, '2018-05-14 15:14:50', '2018-05-22 14:15:10', NULL, 0, NULL, 266, 256, 64, 73, 0, NULL),
(269, 2, 17, 'Partilhadas com os alunos as informaçoes sobre oportunidades de auto-emprego e legislaçao relacionadas', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-14 15:16:38', '2018-05-14 15:16:38', NULL, 0, NULL, 267, 256, 76, 81, 0, NULL),
(270, 2, 17, 'Criados grupos de poupança e credito nas turmas de alfabetizaçao', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-14 15:17:28', '2018-05-14 15:17:28', NULL, 0, NULL, 267, 256, 82, 87, 0, NULL),
(271, 2, 17, 'Consciencializadas as comunidades sobre os beneficios da educaçao e capacitaçao atraves do ODL, sempre que possivel (pais, lideres comunitarios, mulheres e raparigas)', NULL, '2017-10-10', NULL, 1, NULL, 2, NULL, 24, 1, '2018-05-14 15:20:26', '2018-05-28 09:12:00', '2017-09-06', 40, NULL, 264, 256, 4, 25, 0, NULL),
(272, 2, 17, 'Estabelecido ambiente seguro de aprendizagem nos centros de apoio ao aluno', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-14 15:21:11', '2018-05-14 15:21:11', NULL, 0, NULL, 264, 256, 26, 47, 0, NULL),
(273, 2, 17, 'Concluidos acordos com a comunidade sobre apoio as raparigas da comunidade e do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-14 15:22:03', '2018-05-14 15:22:03', NULL, 0, NULL, 264, 256, 48, 53, 0, NULL),
(274, 2, 17, 'Adquiridos conhecimentos  sobre uso de tecnologia pelas mulheres e raparigas', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-14 15:23:21', '2018-05-14 15:23:21', NULL, 0, NULL, 264, 256, 54, 59, 0, NULL),
(287, 5, 18, 'Dotados - em dois anos - 5.000 jovens, mulheres e homens, com competências básicas de literacia, numeracia e habilidades pre-profissionais, para que estejam preparados para o treinamento preparatório para o emprego', NULL, NULL, NULL, 1, NULL, 2, NULL, 61, 0, '2018-05-15 16:06:34', '2018-05-15 16:06:34', NULL, 0, NULL, NULL, 287, 1, 2, 0, NULL),
(288, 12, 12, ' # de formadores formados em metodologias do ensino primário', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:38:50', '2018-05-18 09:38:50', NULL, 0, NULL, 158, 255, 9, 10, 0, NULL),
(289, 12, 12, '# de formadores formados em metodologia bilingue', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:39:17', '2018-05-18 09:39:17', NULL, 0, NULL, 158, 255, 11, 12, 0, NULL),
(290, 12, 12, '# de formadores formados em metodologias de educação pré-escolar', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:39:36', '2018-05-18 09:39:36', NULL, 0, NULL, 158, 255, 13, 14, 0, NULL),
(291, 12, 12, '# de formadores formados em integração dos conteúdos do curriculum local nas metodologias do ensino primário', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:39:49', '2018-05-18 09:39:49', NULL, 0, NULL, 158, 255, 15, 16, 0, NULL),
(292, 12, 12, '# de professores formados em metodologia bilingue por formadores qualificados nas províncias de intervenção da PROGRESSO', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:40:04', '2018-05-18 09:40:04', NULL, 0, NULL, 158, 255, 17, 18, 0, NULL),
(293, 12, 12, '# de escolas beneficiam de educação bilingue nas províncias de intervençao', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 09:40:21', '2018-06-18 12:30:34', NULL, 0, NULL, 158, 255, 19, 20, 0, NULL),
(294, 12, 12, '# de alunos da 1.ª à 3.ª classe beneficiam de educação bilingue', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:40:36', '2018-05-18 09:40:36', NULL, 0, NULL, 158, 255, 21, 22, 0, NULL),
(295, 12, 12, '# de formadores formados em metodologia de alfabetização de adultos', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:41:28', '2018-05-18 09:41:28', NULL, 0, NULL, 161, 255, 25, 26, 0, NULL),
(296, 12, 12, '# de formadores qualificados para apoiar intervenções de formação para educadores de adultos a nível local.', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:41:40', '2018-05-18 09:41:40', NULL, 0, NULL, 161, 255, 27, 28, 0, NULL),
(297, 12, 12, '# de educadores de adultos formados por formadores qualificados', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:41:56', '2018-05-18 09:41:56', NULL, 0, NULL, 161, 255, 29, 30, 0, NULL),
(298, 12, 12, '# de adultos formados em alfabetização', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:42:15', '2018-05-18 09:42:15', NULL, 0, NULL, 161, 255, 31, 32, 0, NULL),
(299, 12, 12, '# de Conselhos de Escola funcionais e a receberem intervenções de capacitação em termos de funcionalidade', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:43:03', '2018-05-18 09:43:03', NULL, 0, NULL, 164, 255, 35, 36, 0, NULL),
(300, 12, 12, '# de formadores qualificados em necessidades especiais de educação (língua de sinais e “braille”) em métodos de alfabetização de adultos e abordagens de educação bilingue', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:43:47', '2018-05-18 09:43:47', NULL, 0, NULL, 166, 255, 39, 40, 0, NULL),
(301, 12, 12, '# de adultos formados no uso da língua de sinais e “braille”', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:44:04', '2018-05-18 09:44:04', NULL, 0, NULL, 166, 255, 41, 42, 0, NULL),
(302, 12, 12, '# de formadores (educação bilingue, necessidades especiais, alfabetização de adultos) para a Formação de Formadores (FdF)', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:44:45', '2018-05-18 09:44:45', NULL, 0, NULL, 169, 255, 47, 48, 0, NULL),
(303, 12, 12, '# de manuais desenvolvidos para os formandos, que pode ser reproduzido quando for necessário, dependendo dos números dos participantes da FdF. ', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:45:23', '2018-05-18 09:45:23', NULL, 0, NULL, 171, 255, 51, 52, 0, NULL),
(304, 12, 12, '# de manuais de ensino bilingue desenvolvidos de acordo com as necessidades', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 09:45:32', '2018-06-18 14:31:10', NULL, 0, NULL, 171, 255, 53, 54, 0, NULL),
(305, 12, 12, '# de manuais de necessidades especiais desenvolvidos anualmente', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 09:46:33', '2018-05-18 09:46:33', NULL, 0, NULL, 173, 255, 57, 58, 0, NULL),
(306, 12, 12, '# de manuais desenvolvidos em línguas locais para programas de organizações privadas', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 10:01:25', '2018-05-18 10:01:25', NULL, 0, NULL, 175, 255, 61, 62, 0, NULL),
(307, 12, 12, '# de ligaçoes com qualquer tópico dentro da jurisdição da PROGRESSO nas suas intervenções', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 10:02:09', '2018-05-18 10:02:09', NULL, 0, NULL, 178, 255, 67, 68, 0, NULL),
(308, 12, 12, '# de camponeses (distribuição igual de homens e mulheres) abrangidos pela extensão rural', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 10:09:58', '2018-05-18 10:09:58', NULL, 0, NULL, 205, 255, 129, 130, 0, NULL),
(309, 12, 12, '% de reduçao de incidência de malnutrição nas áreas de intervenção', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 10:10:31', '2018-05-18 11:18:42', NULL, 0, NULL, 205, 255, 131, 132, 0, NULL),
(310, 5, 19, 'Alunos com habilidades para o emprego ', NULL, NULL, NULL, 1, NULL, 2, NULL, 5, 6, '2018-05-18 10:21:17', '2018-05-23 08:46:05', NULL, 0, NULL, NULL, 310, 1, 18, 0, NULL),
(313, 12, 12, '% de recuperação de todos os custos da Editora', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 10:31:04', '2018-05-18 11:20:54', NULL, 0, NULL, 219, 255, 175, 176, 0, NULL),
(314, 12, 12, '% de recuperação de todos os custos da Editora ', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 10:31:44', '2018-05-18 11:20:46', NULL, 0, NULL, 220, 255, 179, 180, 0, NULL),
(315, 12, 12, '% de recuperação de todos os custos da Editora', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 10:32:24', '2018-05-18 11:20:39', NULL, 0, NULL, 221, 255, 183, 184, 0, NULL),
(316, 12, 12, '% de recuperação de todos os custos da Editora', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 10:39:53', '2018-05-18 11:20:32', NULL, 0, NULL, 223, 255, 189, 190, 0, NULL),
(317, 12, 12, '% de contribuição de receitas provenientes de gestão do património nas receitas totais da PROGRESSO', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 10:40:37', '2018-05-18 11:19:32', NULL, 0, NULL, 224, 255, 193, 194, 0, NULL),
(318, 12, 12, '% de recuperaçao de todos os custos da Editora', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 10:41:24', '2018-06-19 11:07:49', NULL, 0, NULL, 227, 255, 199, 200, 0, NULL),
(319, 3, 19, 'Realizadas aulas de explicação com as ferramentas elaboradas', NULL, NULL, NULL, 1, NULL, 2, NULL, 5, 6, '2018-05-18 10:42:28', '2018-05-23 08:46:05', NULL, 0, NULL, 310, 310, 2, 17, 0, NULL),
(320, 12, 12, 'Material de formação específico para os membros', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 10:43:20', '2018-05-18 10:43:20', NULL, 0, NULL, 233, 255, 211, 214, 0, NULL),
(321, 2, 19, 'Ferramentas elaboradas e testadas', NULL, NULL, NULL, 1, NULL, 2, NULL, 5, 7, '2018-05-18 10:43:49', '2018-06-18 10:01:42', NULL, 0, NULL, 319, 310, 3, 16, 0, NULL),
(322, 11, 12, 'Assistência nas matrículas e programa de reembolso, se for viável no contexto da organização', '', NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 10:44:30', '2018-05-18 10:45:02', NULL, 0, NULL, 226, 255, 216, 219, 0, NULL),
(323, 12, 12, '# de acções realizadas no âmbito do engajamento comunitário', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 10:45:01', '2018-05-18 10:46:12', NULL, 0, NULL, 322, 255, 217, 218, 0, NULL),
(324, 12, 12, '# de novos membros recrutados', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 10:45:34', '2018-05-18 10:45:34', NULL, 0, NULL, 320, 255, 212, 213, 0, NULL),
(325, 12, 12, 'Website', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 10:48:07', '2018-05-18 10:48:07', NULL, 0, NULL, 239, 255, 237, 238, 0, NULL),
(326, 12, 12, 'Twitter', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 10:48:20', '2018-05-18 10:48:20', NULL, 0, NULL, 239, 255, 239, 240, 0, NULL),
(327, 12, 12, '# de seminários anualmente para o pessoal sobre tópicos relevantes de GC', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 10:49:16', '2018-05-18 10:49:16', NULL, 0, NULL, 244, 255, 248, 249, 0, NULL),
(328, 12, 12, 'Prestação de contas de todos os projectos nos prazos acordados em cada projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 10:51:11', '2018-05-18 10:51:11', NULL, 0, NULL, 251, 255, 265, 266, 0, NULL),
(329, 12, 12, 'Prestação de contas trimestral ao Conselho de Direcção sobre toda a situação financeira da Associação PROGRESSO', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 10:51:23', '2018-05-18 10:51:23', NULL, 0, NULL, 251, 255, 267, 268, 0, NULL),
(330, 11, 12, 'Oportunidades de desenvolvimento profissional', '', NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 11:15:30', '2018-05-18 11:16:06', NULL, 0, NULL, 226, 255, 220, 223, 0, NULL),
(331, 12, 12, 'Departamento de RH desempenhando as funções necessárias', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 11:16:06', '2018-05-18 11:16:06', NULL, 0, NULL, 330, 255, 221, 222, 0, NULL),
(332, 11, 12, 'Assistência nas matrículas e programa de reembolso, se for viável no contexto da organização', '', NULL, NULL, 1, NULL, 2, NULL, 67, 1, '2018-05-18 11:16:53', '2018-05-18 11:17:12', NULL, 0, NULL, 226, 255, 224, 227, 0, NULL),
(333, 12, 12, 'Departamento de RH desempenhando as funções necessárias', NULL, NULL, NULL, 1, NULL, 2, NULL, 67, 0, '2018-05-18 11:17:12', '2018-05-18 11:17:12', NULL, 0, NULL, 332, 255, 225, 226, 0, NULL),
(334, 5, 20, 'a)	Maior utilização dos serviços sociais, saúde e nutricionais de qualidade', NULL, NULL, NULL, 1, NULL, 2, NULL, 28, 3, '2018-05-18 16:37:54', '2018-05-29 08:15:18', NULL, 65, NULL, NULL, 334, 1, 114, 0, NULL),
(335, 11, 19, 'Seleccionar facilitadores ', 'Facilitadores, sao professores especialistas das disciplinas para as quais o muva pretende elaborar ferramentas. Foram definidos critérios para selecção destes facilitadores, tendo sido difundidos entre os directores das escolas secundarias do distrito Ka mpfumu e dai identificado o numero necessário, foram entrevistados, seleccionados e contractados os facilitadores.  ', '2017-04-01', NULL, 1, 5, 2, NULL, 5, 2, '2018-05-22 09:17:35', '2018-06-18 09:02:05', '2016-09-01', 100, 32, 321, 310, 4, 7, 0, NULL),
(336, 11, 19, 'Elaborar ferramentas ', 'Coube a Associação Progresso, a responsabilidade de coordenar o processo de elaboração de ferramentas. Entenda-se por ferramentas, planos de aulas, nas quais se visível a metodologia cooperativa estruturado, estando claro, que habilidade sócio-emocionais  pretende-se alcançar naquela aula.  ', '2017-03-30', NULL, 1, 5, 2, NULL, 5, 3, '2018-05-22 09:24:28', '2018-06-18 08:32:47', '2016-09-01', 100, 1600, 321, 310, 8, 11, 0, NULL),
(337, 11, 19, 'Testar as ferramentas', 'A testagem de ferramentas consiste em aulas de explicação dadas em dois centros (AVSI e CADE), a alunos do ensino secundário (8a, 10a,12a), de 9 escolas secundarias. Quem ministra as aulas de explicação sao estudantes finalistas (4o ano), da Universidade Pedagógica. Estes elaboraram as ferramentas supervisionados pelos facilitadores. ', '2019-11-30', NULL, 1, 5, 2, NULL, 5, 2, '2018-05-22 09:46:21', '2018-06-18 08:26:12', '2017-04-27', 40, 2400, 321, 310, 12, 15, 0, NULL),
(338, 11, 17, 'Desenvolver habilidades para a vida, alfabetizaçao financeira e material de aprendizagem para o empreendedorismo', 'Desenvolver em 30 alfabetizandas-alvo do projecto da comunidade de Undi, no distrito de Chimbunila, conhecimentos e habilidades para saber fazer em artesanato e gestao de pequenos negocios.', '2018-04-06', NULL, 1, 24, 2, NULL, 24, 7, '2018-05-22 13:08:17', '2018-07-10 14:11:38', '2018-04-02', 100, 43, 268, 256, 65, 68, 0, NULL),
(339, 12, 17, 'Numero de alfabetizandas capacitadas em artesanato e gestao de pequenos negocios', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 1, '2018-05-22 14:15:09', '2018-05-29 10:15:50', NULL, 0, NULL, 338, 256, 66, 67, 0, NULL),
(340, 12, 19, 'Numero de facilitadores seleccionados ', NULL, NULL, NULL, 1, NULL, 2, NULL, 5, 1, '2018-05-23 08:34:02', '2018-06-18 09:14:09', NULL, 0, NULL, 335, 310, 5, 6, 0, NULL),
(341, 12, 19, 'Numero de ferramentas elaboradas ', NULL, NULL, NULL, 1, NULL, 2, NULL, 5, 1, '2018-05-23 08:40:30', '2018-06-18 09:12:33', NULL, 0, NULL, 336, 310, 9, 10, 0, NULL),
(342, 12, 19, 'Numero de ferramentas testadas ', NULL, NULL, NULL, 1, NULL, 2, NULL, 5, 3, '2018-05-23 08:46:05', '2018-07-25 23:44:08', NULL, 0, NULL, 337, 310, 13, 14, 0, NULL),
(343, 5, 23, 'Ensaiar numa acção piloto uma abordagem integrada para melhorar a qualidade do ensino,  conferindo aos alunos (crianças e adultos) as competências básicas necessárias para continuar a aprender', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 09:41:38', '2018-05-23 09:41:38', NULL, 0, NULL, NULL, 343, 1, 28, 0, NULL),
(349, 3, 23, 'Habilitados crianças e adultos em 20 comunidades com conhecimentos e habilidades que lhes permitam viver melhor.', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 09:55:34', '2018-05-23 09:55:34', NULL, 0, NULL, 343, 343, 2, 11, 0, NULL),
(350, 3, 23, 'Melhorados os serviços de educação prestados nas 20 comunidades alvos ', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 09:59:32', '2018-05-23 09:59:32', NULL, 0, NULL, 343, 343, 12, 17, 0, NULL),
(352, 3, 23, 'Taxa de graduação de meninas e mulheres no ensino primário e alfabetização  aumentada', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 1, '2018-05-23 10:00:53', '2018-05-23 10:02:27', NULL, 0, NULL, 343, 343, 18, 25, 0, NULL),
(353, 10, 23, 'Garantida a gestão e monitoria do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 1, '2018-05-23 10:03:36', '2018-05-23 11:06:53', NULL, 0, NULL, 343, 343, 26, 27, 0, NULL),
(354, 10, 23, 'Professores, alfabetizadores e técnicos com capacidade para ensinar OLE em língua local e em português', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 10:04:51', '2018-05-23 10:04:51', NULL, 0, NULL, 349, 343, 3, 4, 0, NULL),
(355, 10, 23, 'Professores, alfabetizadores e técnicos com capacidade para integrar com eficácia aspectos do Curriculum Local e Habilidades para a vida nas aulas ', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 10:05:25', '2018-05-23 10:05:25', NULL, 0, NULL, 349, 343, 5, 6, 0, NULL),
(359, 10, 23, 'Monitorada a aplicação das normas de gestão nas instituições de ensino nas 20 comunidades e IFPs,  pelos Conselhos de Escola', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 10:55:37', '2018-05-23 10:55:37', NULL, 0, NULL, 350, 343, 13, 14, 0, NULL),
(360, 10, 23, 'Directores de escolas e supervisores de AEA capacitados na aplicação eficiente das normas e regulamentos de gestão das instituições de ensino ', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 10:56:31', '2018-05-23 10:56:31', NULL, 0, NULL, 350, 343, 15, 16, 0, NULL),
(363, 3, 23, 'Melhorada a participação da comunidade na gestão das escolas das 20 comunidades alvos ', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 11:02:06', '2018-05-23 11:02:06', NULL, 0, NULL, NULL, 363, 1, 4, 0, NULL),
(364, 10, 23, 'Conselhos de Escolas nas 20 comunidades, capacitados e actuantes na monitoria da gestão da Escola e Centro de alfabetização', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 11:02:46', '2018-05-23 11:02:46', NULL, 0, NULL, 363, 363, 2, 3, 0, NULL),
(368, 3, 23, 'Garantida a gestão e monitoria do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 11:40:28', '2018-05-23 11:40:28', NULL, 0, NULL, NULL, 368, 1, 8, 0, NULL),
(369, 10, 23, 'Realizadas reuniões anuais de planificação e avaliação nos distritos', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 11:41:19', '2018-05-23 11:41:19', NULL, 0, NULL, 368, 368, 2, 3, 0, NULL),
(370, 10, 23, 'Resultados do projecto divulgados ', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 11:41:51', '2018-05-23 11:41:51', NULL, 0, NULL, 368, 368, 4, 5, 0, NULL),
(371, 10, 23, 'Reunidas as condições técnicas e materiais para a implementação efectiva do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 11:42:41', '2018-05-23 11:42:41', NULL, 0, NULL, 368, 368, 6, 7, 0, NULL),
(372, 10, 23, 'Implementados cursos intensivos de alfabetização para grupos especificos nas 20 comunidade', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 11:43:52', '2018-05-23 11:43:52', NULL, 0, NULL, 352, 343, 19, 20, 0, NULL),
(373, 10, 23, 'Reduzida a % de desistências no EP e alfabetização, em particular entre meninas e mulheres', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 11:44:24', '2018-05-23 11:44:24', NULL, 0, NULL, 352, 343, 21, 22, 0, NULL),
(374, 10, 23, 'Melhoradas as condições materiais para as aulas de alfabetização ', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 11:44:54', '2018-05-23 11:44:54', NULL, 0, NULL, 352, 343, 23, 24, 0, NULL),
(375, 10, 23, 'Material suplementar de ensino e de leitura disponíveis nas Instituições de ensino nas 20 comunidades e IFPs provinciais', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 11:50:42', '2018-05-23 11:50:42', NULL, 0, NULL, 349, 343, 7, 8, 0, NULL),
(377, 12, 23, '% de alunos que completam ciclos de aprendizagem com conhecimentos prescritos nos programas ', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-05-23 12:14:40', '2018-05-23 12:14:40', NULL, 0, NULL, 349, 343, 9, 10, 0, NULL),
(380, 5, 21, 'Melhorada competência de leitura e escrita de aproximadamente 5.000 alunas e alunos do 1º ciclo', NULL, '2019-09-30', NULL, 1, NULL, 2, NULL, 21, 2, '2018-05-28 13:23:18', '2018-05-28 14:43:43', '2015-11-02', 17, NULL, NULL, 380, 1, 46, 0, NULL),
(390, 5, 20, 'b)	Reduzida a vulnerabilidade económica das famílias de COVs, preparando-as para melhor ultrapassar o impacto causado pelo HIV/SIDA.', NULL, NULL, NULL, 1, NULL, 2, NULL, 28, 0, '2018-05-28 13:53:01', '2018-05-28 13:53:01', NULL, 0, NULL, NULL, 390, 1, 14, 0, NULL),
(398, 11, 20, '1. Fortalecimento das ligações e sistemas de referências que asseguram o acesso apropriado aos serviços de saúde e sociais', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-05-28 16:43:06', '2018-06-21 11:08:22', '2017-07-01', 30, NULL, 334, 334, 2, 15, 0, NULL),
(399, 11, 20, '2. Aumentar o conhecimento dos activistas sobre o desenvolvimento de COVidas incluindo o conhecimento dos padrões mínimos', '', '2017-08-31', NULL, 1, 28, 2, NULL, 28, 1, '2018-05-29 08:15:17', '2018-06-21 12:05:26', '2017-07-01', 100, NULL, 334, 334, 16, 21, 0, NULL),
(449, 5, 24, 'Melhorada a qualidade da educação para alunos (raparigas e rapazes) das escolas primárias pelos graduados dos 4 IFP das províncias de Cado Delgado, Tete, Maputo e Niassa', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 2, '2018-05-29 10:28:07', '2018-05-31 16:20:08', NULL, 0, NULL, NULL, 449, 1, 126, 0, NULL),
(457, 3, 24, 'Melhorada a qualidade do programa de formação de professores em 4 IFP parceiros nas províncias de Cabo Delgado, Tete, Maputo e Niassa (centrado no aluno e sensível ao género) ', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 2, '2018-05-29 11:06:09', '2018-05-31 16:20:08', NULL, 0, NULL, 449, 449, 2, 57, 0, NULL),
(458, 3, 24, 'Melhorada a aplicação das metodologias e pedagogia centradas no aluno e sensíveis ao género pelos formandos e graduados dos 4 IFP nas províncias de Cabo Delgado, Tete, Maputo e Niassa', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:06:31', '2018-05-29 11:06:31', NULL, 0, NULL, 449, 449, 58, 91, 0, NULL),
(459, 3, 24, 'Melhorada a gestão escolar e a supervisão na aplicação das abordagens centradas no aluno e sensívels ao género nas escolas primárias de prática/estágio nas províncias de Cabo Delgado, Tete, Maputo e Niassa ', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:06:52', '2018-05-29 11:06:52', NULL, 0, NULL, 449, 449, 92, 125, 0, NULL),
(460, 10, 24, 'Melhorados os instrumentos para o MINEDH desenvolver o currículo de formação dos professores nas áreas de psicopedagogia, línguas e didácticas', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 2, '2018-05-29 11:08:03', '2018-05-31 16:20:08', NULL, 0, NULL, 457, 449, 3, 12, 0, NULL),
(461, 10, 24, 'Aumentada a capacidade dos formadores em dar aula centrada no aluno e sensível ao género incluindo psicopedagogia, línguas e didácticas ', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:15:41', '2018-05-29 11:15:41', NULL, 0, NULL, 457, 449, 13, 48, 0, NULL),
(462, 10, 24, 'Aumentada a capacidade dos supervisores em ajudar os formandos a aplicar as estratégias de ensino durante as práticas', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:16:55', '2018-05-29 11:16:55', NULL, 0, NULL, 458, 449, 59, 76, 0, NULL),
(464, 10, 24, 'Aumentada a capacidade do pessoal da escola em gerir as escolas', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:17:49', '2018-05-29 11:17:49', NULL, 0, NULL, 459, 449, 93, 114, 0, NULL),
(465, 10, 24, 'Aumentada a capacidade dos conselhos de escolas em participar activamente na gestão das escolas do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:18:08', '2018-05-29 11:18:08', NULL, 0, NULL, 459, 449, 115, 124, 0, NULL),
(466, 2, 24, 'Relatório da análise dos módulos actuais', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:19:05', '2018-05-29 11:19:05', NULL, 0, NULL, 460, 449, 4, 5, 0, NULL),
(467, 2, 24, 'Equipas de trabalho capacitadas em metodologias participativas e sensíveis ao género', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:19:24', '2018-05-29 11:19:24', NULL, 0, NULL, 460, 449, 6, 9, 0, NULL),
(469, 2, 24, 'Equipa central capacitada em ensino centrado no aluno e sensíveis ao aluno', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:20:50', '2018-05-29 11:20:50', NULL, 0, NULL, 461, 449, 14, 15, 0, NULL),
(470, 2, 24, 'Formadores capacitados em metodologias centradas no aluno e sensíveis ao género usam boas práticas no ensino', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:21:07', '2018-05-29 11:21:07', NULL, 0, NULL, 461, 449, 16, 17, 0, NULL),
(471, 2, 24, 'Políticas e mecanismos para combater a violência baseada no género e promoção da igualdade promovida nos IFP', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:21:24', '2018-05-29 11:21:24', NULL, 0, NULL, 461, 449, 18, 27, 0, NULL),
(472, 2, 24, 'Planos de Desenvolvimento dos IFP estabelecidos ', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:22:25', '2018-05-29 11:22:25', NULL, 0, NULL, 461, 449, 28, 31, 0, NULL),
(473, 2, 24, 'Materiais de ensino e aprendizagem e suplementares distribuídos nos IFP', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:23:08', '2018-05-29 11:23:08', NULL, 0, NULL, 461, 449, 32, 33, 0, NULL),
(474, 2, 24, 'Pedagógicos e chefes de departamento capacitados em gestão, plano estratégicos e liderança', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:23:28', '2018-05-29 11:23:28', NULL, 0, NULL, 461, 449, 34, 47, 0, NULL),
(475, 2, 24, 'Equipa de monitoria capacitada nos conteúdos dos manuais e colecta de dados ', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:24:55', '2018-05-29 11:24:55', NULL, 0, NULL, 462, 449, 60, 61, 0, NULL),
(476, 2, 24, 'Supervisores dos IFP capacitados nos manuais e acompanhamento', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:25:17', '2018-05-29 11:25:17', NULL, 0, NULL, 462, 449, 62, 65, 0, NULL),
(477, 2, 24, 'Guião para apoiar a supervisão e prática  desenvolvidos', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:25:38', '2018-05-29 11:25:38', NULL, 0, NULL, 462, 449, 66, 67, 0, NULL);
INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`, `closed_on`) VALUES
(478, 2, 24, 'Mentoria dos formandos nas escolas de prática e e estágio facilitada', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-29 11:25:54', '2018-05-29 11:25:54', NULL, 0, NULL, 462, 449, 68, 75, 0, NULL),
(485, 10, 24, 'Aumentada a capacidade dos tutores em apoiar os formandos durante a prática', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:13:58', '2018-05-30 09:13:58', NULL, 0, NULL, 458, 449, 77, 90, 0, NULL),
(486, 2, 24, 'Directores das escolas e tutores capacitados no papel das escolas de práticas ', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:15:19', '2018-05-30 09:15:19', NULL, 0, NULL, 485, 449, 78, 79, 0, NULL),
(487, 2, 24, 'Plano para apoio aos professores nas escolas desenvolvido', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:15:36', '2018-05-30 09:15:36', NULL, 0, NULL, 485, 449, 80, 83, 0, NULL),
(488, 2, 24, 'Materiais de ensino e suplementares distribuídos nas escolas do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:15:54', '2018-05-30 09:15:54', NULL, 0, NULL, 485, 449, 84, 85, 0, NULL),
(489, 2, 24, 'Tutores capacitados em ensino de línguas, usando metodologias participativas e sensíveis ao género  ', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:16:15', '2018-05-30 09:16:15', NULL, 0, NULL, 485, 449, 86, 89, 0, NULL),
(490, 2, 24, 'Directores e pedagógicos capacitados em gestão escolar', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:17:16', '2018-05-30 09:17:16', NULL, 0, NULL, 464, 449, 94, 95, 0, NULL),
(491, 2, 24, 'Políticas e mecanismos para lidar com a violência baseada no género nas escolas disseminados ', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:17:37', '2018-05-30 09:17:37', NULL, 0, NULL, 464, 449, 96, 99, 0, NULL),
(492, 2, 24, 'Professores capacitados em políticas e mecanismos para combater a violência baseada no género nas escolas primárias', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:17:54', '2018-05-30 09:17:54', NULL, 0, NULL, 464, 449, 100, 105, 0, NULL),
(493, 2, 24, 'Actividades extracurriculares que apoiam a igualdade de género facilitadas nas escolas do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:18:12', '2018-05-30 09:18:12', NULL, 0, NULL, 464, 449, 106, 109, 0, NULL),
(494, 2, 24, 'Escolas do projecto apetrechadas ', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:18:27', '2018-05-30 09:18:27', NULL, 0, NULL, 464, 449, 110, 113, 0, NULL),
(495, 2, 24, 'Manuais aprovados disseminados nos IFP', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:22:29', '2018-05-30 09:22:29', NULL, 0, NULL, 460, 449, 10, 11, 0, NULL),
(496, 2, 24, 'Conselho da escola capacitado em gestão da escola, incluindo políticas relacionadas com direitos das crianças e igualdade de género', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:28:09', '2018-05-30 09:28:09', NULL, 0, NULL, 465, 449, 116, 119, 0, NULL),
(497, 2, 24, 'Pessoal da escola e conselho de escola capacitado no papel e responsabilidade do conselho de escola ', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:28:26', '2018-05-30 09:28:26', NULL, 0, NULL, 465, 449, 120, 121, 0, NULL),
(499, 2, 24, 'Rede de conselho de escola para partilhar boas práticas facilitada', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-30 09:30:44', '2018-05-30 09:30:44', NULL, 0, NULL, 465, 449, 122, 123, 0, NULL),
(500, 18, 12, 'Outra Estrategia para o Alcance do Objectivo Especifico 1', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 1, '2018-05-30 11:31:22', '2018-05-30 11:41:53', NULL, 0, NULL, 151, 255, 87, 90, 0, NULL),
(501, 11, 12, 'Outras Actividades que Contribuem para o Alcance do Objectivo Especifico 1', 'Esta actividade e\' criada para responder ao facto de muitas actividades realizadas no ambito dos projectos nao aparecerem descritas no Programa de Desenvolvimento da Associaçao PROGRESSO 2017 - 2020 mas contribuem indubitavelmente para o alcance do respectivo objectivo especifico e para o objectivo geral.', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-30 11:40:30', '2018-05-30 11:40:30', NULL, 0, NULL, 500, 255, 88, 89, 0, NULL),
(502, 11, 24, 'Desenvolver instrumentos para a colecta de dados', '', '2018-01-30', NULL, 1, 25, 2, NULL, 25, 1, '2018-05-30 11:45:59', '2018-06-01 10:36:51', '2017-10-01', 100, 2880, 478, 449, 69, 70, 0, NULL),
(503, 18, 12, 'Outra Estrategia para o Alcance do Objectivo Especifico 2', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-30 11:51:04', '2018-05-30 11:51:04', NULL, 0, NULL, 152, 255, 135, 138, 0, NULL),
(504, 11, 24, 'Desenvolver o plano de monitoria', 'O plano inclui: (i) os indicadores a serem monitorados, principais dados a colectar durante a Monitoria e os principais aspectos que devem ser observados durante a monitoria;  (ii) fonte de recolha de dados e sua metodologia; (iii) ferramentas a serem utilizadas para fazer a monitoria e igualmente o modelo de relatório a ser elaborado depois da monitoria; (iii) pessoas/ equipas responsáveis que vão fazer a recolha de dados bem como a frequência de recolha dos mesmos. O projecto e também o seu plano de monitoria são implementados em estreita colaboração com instituições de educação nacionais, provinciais e distritais (MINEDH, DPEDH, SDEJT e IFP). \r\n\r\nO plano foi concebido para ser um documento vivo, iniciado na fase de planeamento do BETTER e frequentemente referido por aqueles que vão usá-lo. O envolvimento de diferentes partes interessadas do projecto é essencial, pois, o plano requer o seu conhecimento detalhado do contexto e o seu envolvimento reforça a sua compreensão sobre que dados vão recolher e como serão recolhidos. A selecção de metodologias de recolha de dados usadas para medir e acompanhar os indicadores devem considerar as fontes dos dados, o custo e o tempo necessário para recolher os dados, o acesso aos dados, a quantidade de informação necessária para a recolha de dados, quem é responsável pela recolha de dados, e como os dados serão reportados. O plano de monitoria fornece os detalhes necessários pela equipa do projecto para responder as perguntas e seleccionar a necessária estratégia de recolha de dados.\r\n', '2017-12-15', NULL, 1, 25, 2, NULL, 25, 0, '2018-05-30 11:51:40', '2018-05-30 11:51:40', '2017-10-13', 100, 800, 478, 449, 71, 72, 0, NULL),
(505, 11, 12, 'Outras Actividades que Contribuem para o Alcance do Objectivo Especifico 2', 'Esta actividade e\' criada para responder ao facto de muitas actividades realizadas no ambito dos projectos nao aparecerem descritas no Programa de Desenvolvimento da Associaçao PROGRESSO 2017 - 2020 mas contribuem indubitavelmente para o alcance do respectivo objectivo especifico e para o objectivo geral.', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-30 11:52:32', '2018-05-30 11:52:32', NULL, 0, NULL, 503, 255, 136, 137, 0, NULL),
(506, 18, 12, 'Outra Estrategia para o Alcance do Objectivo Especifico 3', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-30 11:53:56', '2018-05-30 11:53:56', NULL, 0, NULL, 153, 255, 167, 170, 0, NULL),
(507, 11, 12, 'Outras Actividades que Contribuem para o Alcance do Objectivo Especifico 3', 'Esta actividade e\' criada para responder ao facto de muitas actividades realizadas no ambito dos projectos nao aparecerem descritas no Programa de Desenvolvimento da Associaçao PROGRESSO 2017 - 2020 mas contribuem indubitavelmente para o alcance do respectivo objectivo especifico e para o objectivo geral.', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-30 11:55:02', '2018-05-30 11:55:02', NULL, 0, NULL, 506, 255, 168, 169, 0, NULL),
(508, 18, 12, 'Outra Estrategia para o Alcance do Objectivo Especifico 4', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-05-30 11:55:40', '2018-05-30 11:55:40', NULL, 0, NULL, 154, 255, 271, 274, 0, NULL),
(509, 11, 12, 'Outras Actividades que Contribuem para o Alcance do Objectivo Especifico 4', '', NULL, NULL, 1, NULL, 2, NULL, 24, 2, '2018-05-30 11:56:16', '2018-06-05 11:49:30', NULL, 0, NULL, 508, 255, 272, 273, 0, NULL),
(510, 11, 24, 'Colher dados do projecto sistematicamente', 'Actividade continua', NULL, NULL, 1, 25, 2, NULL, 25, 1, '2018-05-30 12:06:29', '2018-06-01 10:35:59', '2017-09-20', 100, NULL, 478, 449, 73, 74, 0, NULL),
(512, 11, 24, 'Estudos específicos ', ' ', '2018-12-27', NULL, 1, 54, 2, NULL, 25, 0, '2018-05-31 15:47:06', '2018-05-31 15:47:06', '2018-06-01', 0, NULL, 471, 449, 19, 20, 0, NULL),
(515, 11, 24, 'Políticas e mecanismos nos IFPs para combater a violência baseada no género e promover a igualdade promovida.', '', NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-31 15:54:59', '2018-05-31 15:54:59', NULL, 0, NULL, 471, 449, 21, 22, 0, NULL),
(516, 11, 24, 'Encontros com a DNFP', '', NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-31 15:56:56', '2018-05-31 15:56:56', NULL, 0, NULL, 471, 449, 23, 24, 0, NULL),
(517, 11, 24, 'Melhorar os instrumentos que ajudam o IFP a promover mecanismos de promoção do género ', '', NULL, NULL, 1, 54, 2, NULL, 25, 0, '2018-05-31 15:58:24', '2018-05-31 15:58:24', NULL, 0, NULL, 471, 449, 25, 26, 0, NULL),
(518, 11, 24, 'Apoio aos IFPs a fazer seu plano (trabalho com o consultor)', '', NULL, NULL, 1, 54, 2, NULL, 25, 0, '2018-05-31 16:05:32', '2018-05-31 16:05:32', NULL, 0, NULL, 472, 449, 29, 30, 0, NULL),
(519, 11, 24, 'Políticas e mecanismos do MINEDH para lidar com a violência baseada no gênero nas escolas primárias disseminadas', '', NULL, NULL, 1, 54, 2, NULL, 25, 0, '2018-05-31 16:08:33', '2018-05-31 16:08:33', '2018-06-01', 0, NULL, 491, 449, 97, 98, 0, NULL),
(520, 11, 24, 'Professores formados em políticas e mecanismos para combater a violência baseada no gênero nas escolas primárias', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-31 16:11:58', '2018-05-31 16:11:58', NULL, 0, NULL, 492, 449, 101, 102, 0, NULL),
(521, 11, 24, 'Professores formados em políticas e mecanismos para combater a violência baseada no gênero nas escolas primárias', '', NULL, NULL, 1, 54, 2, NULL, 25, 0, '2018-05-31 16:13:02', '2018-05-31 16:13:02', NULL, 0, NULL, 492, 449, 103, 104, 0, NULL),
(522, 11, 24, 'Imprimir e partilhar políticas e mecanismos com formadores, formandos, professores, pais e comunidades', '', NULL, NULL, 1, 54, 2, NULL, 25, 0, '2018-05-31 16:15:28', '2018-05-31 16:15:28', NULL, 0, NULL, 496, 449, 117, 118, 0, NULL),
(523, 11, 24, 'Treinar e orientar a equipa em ensino centrado no aluno e sensibilidade ao género', '', NULL, NULL, 1, 54, 2, NULL, 25, 0, '2018-05-31 16:21:31', '2018-05-31 16:21:31', NULL, 0, NULL, 467, 449, 7, 8, 0, NULL),
(524, 2, 24, 'Manuais desenvolvidos reflectem boas práticas e tópicos identificados', NULL, NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-31 16:26:27', '2018-05-31 16:26:27', NULL, 0, NULL, 457, 449, 49, 56, 0, NULL),
(525, 11, 24, 'Análise baseada no critério da promoção da igualdade de género ', '', NULL, NULL, 1, 54, 2, NULL, 25, 0, '2018-05-31 16:27:43', '2018-05-31 16:27:43', NULL, 0, NULL, 524, 449, 50, 51, 0, NULL),
(526, 11, 24, 'REALIZAR ESTUDO SOBRE AS COMPETÊNCIAS DOS FORMADORES E DOS FORMANDOS DOS IFP’S', '', '2018-09-30', NULL, 1, 25, 2, NULL, 25, 1, '2018-05-31 16:28:29', '2018-06-01 10:34:37', '2017-10-01', 0, NULL, 524, 449, 52, 53, 0, NULL),
(527, 11, 24, 'Planificar ações para melhorar o ambiente amigável às crianças nas escolas', '', NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-05-31 16:32:24', '2018-05-31 16:32:24', NULL, 0, NULL, 494, 449, 111, 112, 0, NULL),
(528, 11, 24, 'Treinar as equipas em monitoria no conteúdo dos módulos e coleção de dados', '', NULL, NULL, 1, 25, 2, NULL, 25, 1, '2018-06-01 09:26:40', '2018-06-01 10:33:40', '2018-07-02', 0, NULL, 476, 449, 63, 64, 0, NULL),
(537, 11, 24, 'Distribuir materiais para ensino centrado no aluno disponíveis aos IFP ', '', NULL, NULL, 1, 51, 2, NULL, 25, 0, '2018-06-01 10:46:12', '2018-06-01 10:46:12', NULL, 0, NULL, 474, 449, 35, 36, 0, NULL),
(538, 11, 24, 'Criar a base de dados dos livros do IFP', '', '2018-01-26', NULL, 1, 25, 2, NULL, 25, 0, '2018-06-01 10:47:48', '2018-06-01 10:47:48', '2017-09-14', 0, NULL, 474, 449, 37, 38, 0, NULL),
(539, 11, 24, 'Procurement dos materiais de referência para os formadores', '', NULL, NULL, 1, 51, 2, NULL, 25, 0, '2018-06-01 10:48:35', '2018-06-01 10:48:35', NULL, 0, NULL, 474, 449, 39, 40, 0, NULL),
(540, 11, 24, 'Realizar videos demonstrando estratégias de ensino e leitura', '', NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-06-01 10:49:16', '2018-06-01 10:49:16', NULL, 0, NULL, 474, 449, 41, 42, 0, NULL),
(541, 11, 24, 'Distribuição de materiais as escolas e IFPs', '', NULL, NULL, 1, NULL, 2, NULL, 25, 0, '2018-06-01 10:50:07', '2018-06-01 10:50:07', NULL, 0, NULL, 474, 449, 43, 44, 0, NULL),
(542, 11, 24, 'Selecção e procurement de materiais', '', NULL, NULL, 1, 51, 2, NULL, 25, 0, '2018-06-01 10:50:57', '2018-06-01 10:50:57', NULL, 0, NULL, 474, 449, 45, 46, 0, NULL),
(543, 5, 25, 'Melhorados actuais níveis de desnutrição crónica em oito (8) distritos alvo, na Província de Cabo Delgado, através da geração de resultados nutricionais melhorados em mais de 80% dos cerca de 221.971 beneficiários directos (mulheres grávidas e lactantes,', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 10:51:35', '2018-06-01 10:51:35', NULL, 0, NULL, NULL, 543, 1, 126, 0, NULL),
(544, 11, 24, 'Treinamento dos formadores supervisores dos IFP para darem treinamento em serviço aos tutores', '', NULL, NULL, 1, 51, 2, NULL, 25, 0, '2018-06-01 10:54:57', '2018-06-01 10:54:57', NULL, 0, NULL, 487, 449, 81, 82, 0, NULL),
(545, 11, 24, 'Distribuir materiais suplementares, apropriados e relevantes aos IFPS', '', NULL, NULL, 1, 51, 2, NULL, 25, 0, '2018-06-01 10:57:21', '2018-06-01 10:57:21', NULL, 0, NULL, 489, 449, 87, 88, 0, NULL),
(546, 3, 25, 'Desenvolvido o plano de Expansao', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 11:00:41', '2018-06-01 11:00:41', NULL, 0, NULL, 543, 543, 2, 25, 0, NULL),
(547, 3, 25, 'Iniciadas as principais operaçoes para a implementaçao das actividades do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 11:02:12', '2018-06-01 11:02:12', NULL, 0, NULL, 543, 543, 26, 39, 0, NULL),
(548, 3, 25, 'Realizado treinamento dos membros do consorcio', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 11:02:45', '2018-06-01 11:02:45', NULL, 0, NULL, 543, 543, 40, 49, 0, NULL),
(549, 3, 25, 'Informadas as comunidades-alvo sobre os objectivos do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 1, '2018-06-01 11:04:41', '2018-06-01 11:08:27', NULL, 0, NULL, 543, 543, 50, 57, 0, NULL),
(550, 3, 25, 'Seleccionados e treinados todos os trabalhadores comunitarios e promotores de saude', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 11:05:39', '2018-06-01 11:05:39', NULL, 0, NULL, 543, 543, 58, 79, 0, NULL),
(551, 3, 25, 'Implementados os pacotes de prestaçao de serviços de nutriçao nas comunidades beneficiadas pelo projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 11:06:39', '2018-06-01 11:06:39', NULL, 0, NULL, 543, 543, 80, 93, 0, NULL),
(552, 3, 25, 'Seleccionados, traduzidos, reproduzidos e distribuidos materiais de Informaçao, Educaçao e Comunicaçao (IEC)/ Comunicaçao para Mudança de Comportamento (CMC)', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 11:10:28', '2018-06-01 11:10:28', NULL, 0, NULL, 543, 543, 94, 103, 0, NULL),
(553, 3, 25, 'Realizados encontros de coordenaçao do projecto a todos os niveis envolvendo todos os parceiros interessados, quer organizaçao do governo, quer nao-governamentais', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 11:13:32', '2018-06-01 11:13:32', NULL, 0, NULL, 543, 543, 104, 117, 0, NULL),
(554, 11, 24, 'Formar clubes escolares', '', '2018-09-28', NULL, 1, 51, 2, NULL, 25, 0, '2018-06-01 11:23:24', '2018-06-01 11:23:24', '2018-06-04', 0, NULL, 493, 449, 107, 108, 0, NULL),
(555, 11, 24, 'Criar grupos de trabalho desenvolvem os módulos/manual de psicopedagogia,  coaching, género e línguas, gestão escolar, reflectindo boas práticas e tópicos identificados', '', NULL, NULL, 1, 33, 2, NULL, 25, 0, '2018-06-01 12:04:47', '2018-06-01 12:04:47', NULL, 0, NULL, 524, 449, 54, 55, 0, NULL),
(556, 10, 25, 'Realizados encontros de coordenaçao entre os membros do consorcio ', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:20:10', '2018-06-01 12:20:10', NULL, 0, NULL, 546, 543, 3, 12, 0, NULL),
(557, 10, 25, 'Realizado diagnostico inicial dos distritos', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:20:41', '2018-06-01 12:20:41', NULL, 0, NULL, 546, 543, 13, 18, 0, NULL),
(558, 10, 25, 'Assinado o memorandum de entendimento entre o Governo e as ONG\'s', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:21:38', '2018-06-01 12:21:38', NULL, 0, NULL, 546, 543, 19, 24, 0, NULL),
(559, 10, 25, 'Contratado o pessoal chave do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:23:07', '2018-06-01 12:23:07', NULL, 0, NULL, 547, 543, 27, 32, 0, NULL),
(560, 10, 25, 'Adquirido material e equipamento para a implementaçao do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:24:00', '2018-06-01 12:24:00', NULL, 0, NULL, 547, 543, 33, 38, 0, NULL),
(561, 10, 25, 'Realizado treinamento dos membros do consorcio', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:24:48', '2018-06-01 12:24:48', NULL, 0, NULL, 548, 543, 41, 48, 0, NULL),
(562, 10, 25, 'Mobilizadas as comunidades-alvo do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:25:32', '2018-06-01 12:25:32', NULL, 0, NULL, 549, 543, 51, 56, 0, NULL),
(563, 10, 25, 'Seleccionados e treinados Promotores de Saude e Agentes Polivalentes Elementares (APE\'s)', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:27:20', '2018-06-01 12:27:20', NULL, 0, NULL, 550, 543, 59, 66, 0, NULL),
(564, 10, 25, 'Seleccionados e treinados Voluntarios Comunitarios de saude', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:28:00', '2018-06-01 12:28:00', NULL, 0, NULL, 550, 543, 67, 74, 0, NULL),
(565, 10, 25, 'Adquiridos e distribuidos incentivos para os voluntarios comunitarios', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:28:39', '2018-06-01 12:28:39', NULL, 0, NULL, 550, 543, 75, 78, 0, NULL),
(566, 10, 25, 'Implementados os pacotes de prestaçao de serviços de nutriçao baseados nas comunidades-alvo do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:29:59', '2018-06-01 12:29:59', NULL, 0, NULL, 551, 543, 81, 92, 0, NULL),
(567, 10, 25, 'Reproduzidos e distribuidos materiais de IEC/CMC para os grupos-alvo do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 1, '2018-06-01 12:31:24', '2018-06-22 16:09:35', NULL, 0, NULL, 552, 543, 95, 102, 0, NULL),
(568, 10, 25, 'Realizados encontros de coordenaçao do projecto com os parceiros', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:32:43', '2018-06-01 12:32:43', NULL, 0, NULL, 553, 543, 105, 116, 0, NULL),
(569, 3, 25, 'Prestado o apoio tecnico e logistico na implementaçao das actividades do projecto e elaborado seus respectivos relatorios', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:34:33', '2018-06-01 12:34:33', NULL, 0, NULL, 543, 543, 118, 125, 0, NULL),
(570, 10, 25, 'Realizada a monitoria das actividades do projecto e elaborados os relatorios de prestaçao de contas', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-01 12:36:04', '2018-06-01 12:36:04', NULL, 0, NULL, 569, 543, 119, 124, 0, NULL),
(571, 11, 20, '3. Facilitar ao nível comunitário, sessões de debate nos grupos de poupança, sobre os cuidados e apoio para as COVs, desenvolvimento positivo na adolescência, direitos e protecção das crianças, género e Violência Basead', '', '2018-09-01', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-04 09:30:42', '2018-06-21 12:23:04', '2017-08-01', 40, NULL, 334, 334, 22, 27, 0, NULL),
(572, 11, 20, '4. Prover serviços e cuidados a COVs de acordo com os padrões mínimos de atendimento a criança, definidos pelo MGCAS.', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-04 09:55:37', '2018-06-21 13:59:10', '2017-07-01', 40, NULL, 334, 334, 28, 41, 0, NULL),
(573, 11, 20, '5. Fortalecer Iigações com estruturas locais existentes e outras iniciativas que beneficiem as COVs.', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-04 10:46:46', '2018-06-21 14:48:37', '2017-07-01', 40, NULL, 334, 334, 42, 53, 0, NULL),
(574, 11, 20, '6. Apoiar  integração escolar e retenção escolar das COVs, particularmente as raparigas', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-04 11:12:36', '2018-06-21 15:13:29', '2017-08-01', 20, NULL, 334, 334, 54, 65, 0, NULL),
(575, 11, 20, '7. Facilitar o processo de registo de nascimento e legalização dos documentos de identificação ', '\r\n', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 2, '2018-06-04 11:31:15', '2018-06-21 15:43:31', '2017-08-01', 10, NULL, 334, 334, 66, 73, 0, NULL),
(576, 11, 20, '8. Melhorar a componente nutricional das famílias das COVs', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 2, '2018-06-04 11:50:57', '2018-06-21 16:10:13', '2017-08-01', 50, NULL, 334, 334, 74, 85, 0, NULL),
(577, 11, 20, '9. Prestar apoio psicossocial as crianças e suas famílias de acordo  com as necessidades identificadas', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-04 12:18:50', '2018-06-21 16:10:54', '2017-08-01', 50, NULL, 334, 334, 86, 95, 0, NULL),
(578, 11, 20, '10. Prestar apoio habitacional as crianças e suas famílias.', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 2, '2018-06-04 14:10:18', '2018-06-21 16:29:23', '2017-08-01', 50, NULL, 334, 334, 96, 103, 0, NULL),
(579, 11, 20, '11. Estimular o desenvolvimento da primeira infância', '\r\n', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 2, '2018-06-04 14:43:33', '2018-06-21 17:30:10', '2017-08-01', 50, NULL, 334, 334, 104, 113, 0, NULL),
(580, 11, 20, '1. Apoiar os  activistas a implementar intervenções viáveis na área de fortalecimento económico para COVs e COVs chefes de família.', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 2, '2018-06-04 15:16:54', '2018-06-21 17:52:19', '2017-08-01', 10, NULL, 390, 390, 2, 13, 0, NULL),
(591, 5, 26, '1. Maior utilização de serviços sociais, de saúde e nutricionais de qualidade', NULL, NULL, NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-18 11:58:34', '2018-06-18 11:58:34', NULL, 0, NULL, NULL, 591, 1, 110, 0, NULL),
(592, 5, 26, '2. Reduzida a vulnerabilidade económica das famílias de COVs, preparando as famílias para melhor ultrapassar o impacto causado pelo HIV/SIDA', NULL, NULL, NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-18 12:00:05', '2018-06-18 12:00:05', NULL, 0, NULL, NULL, 592, 1, 14, 0, NULL),
(593, 11, 26, '1. Fortalecimento das ligações e sistemas de referências que asseguram o acesso apropriado aos serviços de saúde e sociais', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 2, '2018-06-18 12:08:13', '2018-06-27 08:23:05', '2017-09-01', 70, NULL, 591, 591, 2, 11, 0, NULL),
(594, 11, 26, '2. Aumentar o conhecimento dos activistas sobre o desenvolvimento de COVs incluindo o conhecimento dos padrões mínimos', '', '2018-10-31', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-18 12:17:05', '2018-06-27 15:57:35', '2017-09-01', 90, NULL, 591, 591, 12, 17, 0, NULL),
(595, 11, 26, '3. Facilitar ao nível comunitário, sessões de debate nos grupos de poupança, sobre os cuidados e apoio para as COVs, desenvolvimento positivo na adolescência, direitos e protecção das crianças, género e Violência Baseada no Género (VBG), casamentos premat', '\r\n', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-18 12:27:12', '2018-06-27 16:39:26', '2017-11-01', 30, NULL, 591, 591, 18, 23, 0, NULL),
(596, 11, 26, '4. Prover serviços e cuidados à COVs de acordo com os padrões mínimos de atendimento a criança, definidos pelo MGCAS', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-18 13:51:35', '2018-06-27 16:43:55', '2017-10-01', 60, NULL, 591, 591, 24, 35, 0, NULL),
(597, 11, 26, '5. Fortalecer ligações com estruturas locais existentes e outras iniciativas que beneficiem as COVs', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 2, '2018-06-18 14:09:06', '2018-06-28 08:58:58', '2017-10-01', 50, NULL, 591, 591, 36, 47, 0, NULL),
(598, 11, 26, '6. Apoiar integração escolar e retenção escolar das COVs, particularmente as raparigas', '\r\n', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-18 14:17:50', '2018-06-28 09:00:31', '2017-11-30', 40, NULL, 591, 591, 48, 57, 0, NULL),
(599, 11, 26, '7. Facilitar o processo de registo de nascimento e legalização dos documentos de identificação', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 2, '2018-06-18 14:41:55', '2018-06-28 09:20:09', '2017-11-30', 50, NULL, 591, 591, 58, 65, 0, NULL),
(600, 11, 26, '8. Melhorar a componente nutricional das famílias das COVs', '\r\n', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-18 14:56:46', '2018-06-28 09:21:35', '2017-11-01', 40, NULL, 591, 591, 66, 79, 0, NULL),
(601, 11, 26, '9. Prestar apoio psicossocial as crianças e suas famílias de acordo com as necessidades identificadas', '\r\n', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 2, '2018-06-18 15:17:00', '2018-06-28 09:49:01', '2017-11-01', 60, NULL, 591, 591, 80, 89, 0, NULL),
(602, 11, 26, '10. Prestar apoio habitacional as crianças e suas famílias', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-18 15:22:50', '2018-06-28 10:02:47', '2017-11-01', 60, NULL, 591, 591, 90, 99, 0, NULL),
(603, 11, 26, '11. Estimular o desenvolvimento da primeira Infância', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 2, '2018-06-18 15:35:02', '2018-06-28 10:49:16', '2017-11-01', 50, NULL, 591, 591, 100, 109, 0, NULL),
(604, 11, 26, '1. Apoiar aos activistas a implementar intervenções viáveis na área de fortalecimento económico para COVs e COVs-chefe de família', '\r\n', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-18 15:42:40', '2018-06-28 10:50:36', '2017-11-01', 30, NULL, 592, 592, 2, 13, 0, NULL),
(608, 11, 12, 'Programas de formaçao orientados para \"atitude e habilidades para se tornar formavel\" nas comunidades', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-19 10:52:40', '2018-06-19 10:52:40', NULL, 0, NULL, 207, 255, 162, 165, 0, NULL),
(609, 12, 12, '# de programas orientados para atitude e habilidades para se tornar formavel', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 1, '2018-06-19 10:54:18', '2018-06-19 11:00:04', NULL, 0, NULL, 608, 255, 163, 164, 0, NULL),
(612, 11, 20, 'Realizar encontro de apresentação do Projecto aos Governos Distritais com a participação de SDSMAS, SDEJT, Parceiros clínicos, Líderes comunitários e religiosos, ONGs, OCBs, CCPC e pessoas influentes.', '', '2017-07-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 11:05:35', '2018-06-21 11:05:35', '2017-07-01', 100, NULL, 398, 334, 3, 4, 0, NULL),
(613, 11, 20, 'Mapear os serviços disponíveis nos distritos e nas comunidades', '', '2017-07-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 11:13:41', '2018-06-21 11:13:41', '2017-07-01', 100, NULL, 398, 334, 5, 6, 0, NULL),
(614, 11, 20, 'Realizar encontros com as estruturas de base nas comunidades abrangidas para a socialização do projecto', '', '2018-07-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 11:20:43', '2018-06-21 11:20:43', '2017-07-01', 70, NULL, 398, 334, 7, 8, 0, NULL),
(615, 11, 20, 'Realizar encontros com as US e parceiros clínicos para fortalecimento de ligações de serviços e para coordenação das actividades e facilitar a referência dos casos', '', '2017-07-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 11:26:34', '2018-06-21 11:26:34', '2017-07-01', 100, NULL, 398, 334, 9, 10, 0, NULL),
(616, 11, 20, 'Participar nos encontros de comités de saúde, de congestão, TARV e outros ao nível das US', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 11:30:39', '2018-06-21 11:30:39', '2017-08-01', 50, NULL, 398, 334, 11, 12, 0, NULL),
(617, 11, 20, 'Realizar visitas de acompanhamento e supervisão das actividades pelo coordenador do projecto', '', '2018-06-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 11:36:26', '2018-06-21 11:36:26', '2017-09-01', 80, NULL, 398, 334, 13, 14, 0, NULL),
(618, 11, 20, 'Identificar, seleccionar e contratar 62 activistas sendo: Mueda: 22 activistas, 3 activistas chefes, 1 facilitador de F.E. Muidumbe: 15 activistas, 2 activistas chefes, 1 facilitador de F.E', '', '2017-07-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 11:49:35', '2018-06-21 11:49:35', '2017-07-01', 100, NULL, 399, 334, 17, 18, 0, NULL),
(619, 3, 21, 'Aumentada a capacidade local de produção e acesso a materiais educativos e de leitura nos 7 distritos das províncias de Nampula e da Zambézia', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 11:54:25', '2018-06-21 11:54:25', NULL, 0, NULL, 380, 380, 2, 45, 0, NULL),
(620, 11, 20, 'Capacitar num período de 7 dias 52 activistas, 3 facilitadores de F.E, 7 activistas chefes, 2 supervisores de campo e 1 oficial de M&A e 1 Gestor de Projecto, em matéria de gestão de casos de COVs em matéria  de di', '', '2017-08-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 12:04:01', '2018-06-21 12:04:01', '2017-08-01', 100, NULL, 399, 334, 19, 20, 0, NULL),
(621, 10, 21, 'Professores e membros de Organizações da Sociedade Civil / membros das comunidades de 7 distritos produzem materiais educativos e de leitura;', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 12:08:30', '2018-06-21 12:08:30', NULL, 0, NULL, 619, 380, 3, 26, 0, NULL),
(622, 11, 20, 'Identificar na área geográflca do projecto grupos de poupanças existentes e funcionais ', '', '2017-08-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 12:32:47', '2018-06-21 12:32:47', '2017-08-01', 100, NULL, 571, 334, 23, 24, 0, NULL),
(623, 11, 20, 'Realizar secções de debate nos grupos de poupança sobre os temas acima descritos', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 13:58:14', '2018-06-21 13:58:14', '2017-08-01', 20, NULL, 571, 334, 25, 26, 0, NULL),
(624, 11, 20, 'ldentificar nas US e na comunidade, crianças infectadas ou afectadas, crianças chefes do agregado familiar e crianças com alto nível de vulnerabilidade com apoio de técnicos de saúde, Iíderes comunitários comités  comunitários   CCPC', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 14:08:23', '2018-06-21 14:08:23', '2017-08-01', 50, NULL, 572, 334, 29, 30, 0, NULL),
(625, 11, 20, 'Avaliar o estado das crianças através de preenchimento da matriz de apoio a crianças (MAC), elaborar um plano de acção, prestar serviços ou referir de acordo com as necessidades, usando abordagem centrada na família', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 14:30:34', '2018-06-21 14:30:34', '2017-08-01', 50, NULL, 572, 334, 31, 32, 0, NULL),
(626, 11, 20, 'Articular com parceiros clínicos e outros serviços sociais para facilidades de acesso das COVs aos Serviços de atendimento', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 14:34:27', '2018-06-21 14:34:27', '2017-08-01', 40, NULL, 572, 334, 33, 34, 0, NULL),
(627, 11, 20, 'Referir todas as COVs e os membros dos agregados familiares para os services de HIV (Testagem, Cuidado e tratamento),e outros serviços de saúde e sociais', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 14:36:45', '2018-06-21 14:36:45', '2017-08-01', 40, NULL, 572, 334, 35, 36, 0, NULL),
(628, 11, 21, 'Capacitar facilitadores em técnicas para a elaboração de livrinhos (brochuras) para crianças, priorizando o uso de materiais locais', 'A capacitação de Facilitadores, incluindo formadores dos IFP´s e técnicos distritais e provinciais de educação, enquadra-se na estratégia de intervenção desenhada para o projecto que consiste em capacitar grupos alvo numerosos em cascata. Com esta capacitação, espera-se que os beneficiários se encarreguem em dar réplica durante o exercício das suas actividades.', '2016-07-02', NULL, 1, 21, 2, NULL, 21, 0, '2018-06-21 14:37:03', '2018-06-21 14:37:03', '2016-06-22', 100, 80, 621, 380, 4, 7, 0, NULL),
(629, 11, 20, 'Realizar visitas rotineiras de acompanhamento das actividades no campo', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 14:43:28', '2018-06-21 14:43:28', '2017-08-01', 50, NULL, 572, 334, 37, 38, 0, NULL),
(630, 11, 20, 'Realizar encontros de balanço trimestral com envolvimento dos SDSMAS e líderes comunitários', '', '2018-08-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 14:46:12', '2018-06-21 14:46:12', '2017-12-01', 60, NULL, 572, 334, 39, 40, 0, NULL),
(631, 11, 20, 'Identificar dentro da área geográfica do projecto lnstituições e outros actores que trabalham na área de COVs e estabelecer parcerias para fortalecer o mecanismo de referências', '', '2017-08-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 14:53:13', '2018-06-21 14:53:13', '2017-07-01', 100, NULL, 573, 334, 43, 44, 0, NULL),
(632, 11, 20, 'Referir COVs aos serviços identidades de acordo com as necessidades', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 14:55:42', '2018-06-21 14:55:42', '2017-09-01', 50, NULL, 573, 334, 45, 46, 0, NULL),
(633, 11, 20, 'Envolver as estruturas locais e parceiras que trabalham na área de COVs nos encontros de balanço do projecto', '', '2018-08-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:04:05', '2018-06-21 15:04:05', '2017-12-01', 50, NULL, 573, 334, 47, 48, 0, NULL),
(634, 11, 20, 'Sensibilizar as famílias em matéria de equidade de género e realizar actividades recreativas da quinzena da criança, 1 de Dezembro e outras datas comemorativas', '', '2018-10-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:08:23', '2018-06-21 15:08:23', '2018-06-01', 20, NULL, 573, 334, 49, 50, 0, NULL),
(635, 11, 20, 'Realizar visitas de supervisão conjuntas com os serviços SDSMAS (Técnico de Acção)', '', '2018-08-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:12:44', '2018-06-21 15:12:44', '2017-04-01', 50, NULL, 573, 334, 51, 52, 0, NULL),
(636, 11, 20, 'Sensibilizar os pais e cuidadores sobre a importância da integração e retenção das COVs na escola com especial atenção a rapariga', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:15:56', '2018-06-21 15:15:56', '2017-09-01', 50, NULL, 574, 334, 55, 56, 0, NULL),
(637, 11, 20, 'Realizar encontros com as direcções das escolas, conselhos de escolas, Iíderes comunitários com vista a facilitar processo de referência de COVs para receberem serviços', '', '2018-02-28', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:31:02', '2018-06-21 15:31:02', '2017-10-01', 100, NULL, 574, 334, 57, 58, 0, NULL),
(638, 11, 21, 'Desenvolver materiais de capacitação', 'O desenvolvimento de materiais consiste em elaborar um guião com os critérios que orientam os escritores, ou os produtores, sobre as técnicas de elaboração de livrinhos para as crianças, de acordo com o nível de aprendizagem de alunos nas classes iniciais.', '2016-05-31', NULL, 1, 21, 2, NULL, 21, 0, '2018-06-21 15:32:00', '2018-06-21 15:32:00', '2016-04-22', 100, 80, 621, 380, 8, 11, 0, NULL),
(639, 11, 20, 'Advocar as instituições de ensino para facilitar as matrículas, uniforme escolar e material escolar as crianças órfãs e vulneráveis', '', '2017-12-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:36:39', '2018-06-21 15:36:39', '2017-10-01', 100, NULL, 574, 334, 59, 60, 0, NULL),
(640, 11, 20, 'Sensibilizar as famílias em matéria de equidade de género e igualdade de oportunidades entre rapazes e raparigas', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:39:04', '2018-06-21 15:39:04', '2017-08-01', 60, NULL, 574, 334, 61, 62, 0, NULL),
(641, 11, 20, 'Identificar dentro das áreas de actuação do projecto as oportunidades de capacitação profissional e advogar para o acesso de COVs ao treinamento vocacional', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:42:31', '2018-06-21 15:42:31', '2017-08-01', 40, NULL, 574, 334, 63, 64, 0, NULL),
(642, 11, 20, 'Identificar COVs sem registo de nascimento e outros documentos de identificação e referir para os serviços de Registo e Notariado', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:46:36', '2018-06-21 15:46:36', '2017-08-01', 60, NULL, 575, 334, 67, 68, 0, NULL),
(643, 11, 20, 'Realizar encontros permanentes com os serviços dos registos e notariado para facilitar o acesso das COVs aos serviços', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:49:03', '2018-06-21 15:49:03', '2017-08-01', 50, NULL, 575, 334, 69, 70, 0, NULL),
(644, 11, 20, 'Criar facilidades junto da liderança local para aquisição de atestado de pobreza', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:51:37', '2018-06-21 15:51:37', '2017-08-01', 40, NULL, 575, 334, 71, 72, 0, NULL),
(645, 11, 20, 'Facilitar sessões de aconselhamento nutricional as famílias de COVS', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:54:25', '2018-06-21 15:54:25', '2017-08-01', 50, NULL, 576, 334, 75, 76, 0, NULL),
(646, 11, 20, 'Promover a prática de hortas caseiras e plantio de árvores de frutas', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:55:49', '2018-06-21 15:55:49', '2017-08-01', 50, NULL, 576, 334, 77, 78, 0, NULL),
(647, 11, 20, 'Avaliar o estado nutricional das crianças através de fita de perímetro branquial e outros sinais visíveis', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 15:58:23', '2018-06-21 15:58:23', '2017-08-01', 50, NULL, 576, 334, 79, 80, 0, NULL),
(648, 11, 20, 'Referir os casos suspeitos de malnutrição as US', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 16:06:30', '2018-06-21 16:06:30', '2017-08-01', 50, NULL, 576, 334, 81, 82, 0, NULL),
(649, 11, 20, 'Promover a prática de machambas comunitárias', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 16:09:44', '2018-06-21 16:09:44', '2017-08-01', 50, NULL, 576, 334, 83, 84, 0, NULL),
(650, 11, 20, 'Identificar as famílias de COVs que têm problemas psicossocial para prestação de serviços de apoio psíquico', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 16:13:16', '2018-06-21 16:13:16', '2017-08-01', 50, NULL, 577, 334, 87, 88, 0, NULL),
(651, 11, 21, 'Capacitar professores em técnicas para a elaboração de livrinhos (brochuras) para crianças, priorizando o uso de materiais locais - Réplica nos distritos: ', 'Os seminários de capacitação de professores são facilitados pelos formadores dos IFP´s capacitados ao nível provincial. Estas capacitações prevê beneficiar um total de 250 professores das 21 ZIP´s onde o projecto intervêm.', '2016-08-26', NULL, 1, 21, 2, NULL, 21, 0, '2018-06-21 16:14:07', '2018-06-21 16:14:07', '2016-07-15', 100, 280, 621, 380, 12, 15, 0, NULL),
(652, 11, 20, 'Identificar e referir COVs com necessidades aos programas de reintegração Social', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 16:15:25', '2018-06-21 16:15:25', '2017-08-01', 40, NULL, 577, 334, 89, 90, 0, NULL),
(653, 11, 20, 'Sensibilizar os cuidadores das COVs para conversarem abertamente com as COVs, perceberem suas frustrações e prestar apoio emocional', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 16:18:48', '2018-06-21 16:18:48', '2017-08-01', 60, NULL, 577, 334, 91, 92, 0, NULL),
(654, 11, 20, 'Sensibilizar cuidadores para a integração de COVs nos clubes infantis, grupos de brincar, igrejas respeitando sempre as escolhas', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 16:21:02', '2018-06-21 16:21:02', '2017-08-01', 60, NULL, 577, 334, 93, 94, 0, NULL),
(655, 11, 20, 'Identificar as famílias de COVs mais necessitadas na área e habitação', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 16:24:11', '2018-06-21 16:24:11', '2017-08-01', 60, NULL, 578, 334, 97, 98, 0, NULL),
(656, 11, 20, 'Mobilizar as comunidades para apoiar na melhoria das condições de habitação das COVs', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 16:27:21', '2018-06-21 16:27:21', '2017-08-01', 70, NULL, 578, 334, 99, 100, 0, NULL),
(657, 11, 20, 'Fazer referência e facilitar o acesso ao INAS', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 16:29:04', '2018-06-21 16:29:04', '2017-08-01', 70, NULL, 578, 334, 101, 102, 0, NULL),
(659, 11, 21, 'Apoiar e orientar a produção de livrinhos  (brochuras) no âmbito do concurso anual de escritores para a produção de livrinhos infantis', 'Consiste em adquirir material didáctico e artesanal para apoiar aos professores que vão participar no concurso anual de escritores. Este material é alocado nas escolas e os professares que decidem concorrer se inscrevem e levantam para a posterior elaborar os livrinhos.', '2019-03-28', NULL, 1, 21, 2, NULL, 21, 0, '2018-06-21 17:15:27', '2018-06-21 17:15:27', '2016-10-14', 80, 192, 621, 380, 16, 19, 0, NULL),
(660, 11, 20, 'Sensibilizar as mães grávidas e lactantes sobre a importância do aleitamento materno exclusivo (AME) em crianças dos 0 aos 6 meses', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 17:18:37', '2018-06-21 17:18:37', '2017-08-01', 60, NULL, 579, 334, 105, 106, 0, NULL),
(661, 11, 20, 'Incentivar os parceiros para acompanhar as suas parceiras e crianças as consultas de SMI', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 17:21:06', '2018-06-21 17:21:06', '2017-09-01', 50, NULL, 579, 334, 107, 108, 0, NULL),
(662, 11, 20, 'Sensibilizar os pais para o fabrico de brinquedos com recuso aos materiais locais e reciclados', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-21 17:23:21', '2018-06-21 17:23:51', '2017-08-01', 50, NULL, 579, 334, 109, 110, 0, NULL),
(663, 11, 21, 'Organizar competições anuais de escritores para a produção de livrinhos infantis para crianças nos 7 distritos abrangidos pelo projecto; selecção final dos três livros vencedores a nível do projecto', 'Esta actividade é periódica e é realizada uma vez por ano, durante o ano lectivo. ', '2019-05-31', NULL, 1, 21, 2, NULL, 21, 0, '2018-06-21 17:24:05', '2018-06-21 17:24:05', '2016-11-01', 60, 320, 621, 380, 20, 23, 0, NULL),
(664, 11, 20, 'Sensibilizar os cuidadores das COVs para estimular o crescimento das crianças através de brincadeiras e conversar no dia-a-dia', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 17:29:48', '2018-06-21 17:29:48', '2017-08-01', 60, NULL, 579, 334, 111, 112, 0, NULL),
(665, 12, 21, 'Número de Facilitadores (+ técnicos da educação + Formadores dos IFP´s + Pessoal do projecto) capacitados nas províncias de intervenção', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 17:31:00', '2018-06-21 17:31:00', NULL, 0, NULL, 628, 380, 5, 6, 0, NULL),
(666, 12, 21, 'Manual desenvolvido e disponível', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 17:36:28', '2018-06-21 17:36:28', NULL, 0, NULL, 638, 380, 9, 10, 0, NULL),
(667, 11, 20, 'Mapear os grupos de poupança existentes nas comunidades e reactivar as actividades ', '', '2018-10-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 17:37:50', '2018-06-21 17:37:50', '2017-08-01', 60, NULL, 580, 390, 3, 4, 0, NULL),
(668, 11, 20, 'Criar novos grupos de poupanças', '', '2018-03-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 17:40:59', '2018-06-21 17:40:59', '2017-10-01', 0, NULL, 580, 390, 5, 6, 0, NULL),
(669, 12, 21, 'Número de professores capacitados nas provincias de intervenção', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 17:41:43', '2018-06-21 17:41:43', NULL, 0, NULL, 651, 380, 13, 14, 0, NULL),
(670, 11, 20, 'Facilitar as secções de alfabetização financeira', '', '2017-12-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 17:47:06', '2018-06-21 17:47:06', '2017-10-01', 0, NULL, 580, 390, 7, 8, 0, NULL),
(671, 12, 21, 'Lista de material disponível nas capacitações e distribuidos nos distritos', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 17:47:21', '2018-06-21 17:47:21', NULL, 0, NULL, 659, 380, 17, 18, 0, NULL),
(672, 11, 20, 'Integrar os adolescentes jovens nos grupos de poupanças', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-21 17:50:14', '2018-06-21 17:50:14', '2017-09-01', 0, NULL, 580, 390, 9, 10, 0, NULL),
(673, 11, 20, 'Integrar os cuidadores de COVs, chefes de famílias nos grupos de poupanças', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 1, '2018-06-21 17:52:06', '2018-07-26 00:17:31', '2017-09-01', 0, NULL, 580, 390, 11, 12, 0, NULL),
(674, 12, 21, 'número de concursos organizados por distrito', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 17:56:49', '2018-06-21 17:56:49', NULL, 0, NULL, 663, 380, 21, 22, 0, NULL),
(675, 2, 21, 'Aproximadamente 10.000 alunos e 80 professores com acesso a materiais educativos e de leitura', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 18:02:25', '2018-06-21 18:02:25', NULL, 0, NULL, 621, 380, 24, 25, 0, NULL),
(676, 10, 21, 'Criadas ou reabilitadas (pedagogicamente) as bibliotecas escolares  da comunidade;', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 18:14:48', '2018-06-21 18:14:48', NULL, 0, NULL, 619, 380, 27, 44, 0, NULL),
(677, 11, 21, 'Produzir estantes para cada escola (ou baús para as escolas sem edifício) para armazenar os livros da biblioteca', 'Esta actividade consiste em criação de bibliotecas móveis, no caso concreto de baús, para facilitar o acesso aos alunos. Os materiais produzidos destinam-se às 116 escolas assistidas pelo projecto, deixando de fora as 94 escolas de controlo.', '2016-02-27', NULL, 1, 21, 2, NULL, 21, 0, '2018-06-21 18:27:32', '2018-06-21 18:27:32', '2015-11-01', 100, 480, 676, 380, 28, 31, 0, NULL),
(678, 11, 21, 'Apetrechar bibliotecas escolares da comunidade com 50 livros', 'Fazem parte dos livros usados para apetrechar as bibliotecas a colectânea do \"Eu Leio\" Volumes 1, 2, 3, 4 e 5; Gira Sol Volume #2\r\nGira Sol Volume #5; Gira Sol Volume #11; Gira Sol Volume #12;  Gira Sol Volume  #13\r\n\r\n', '2016-03-31', NULL, 1, 21, 2, NULL, 21, 0, '2018-06-21 18:54:18', '2018-06-21 18:54:18', '2016-02-01', 100, 560, 676, 380, 32, 37, 0, NULL),
(679, 11, 21, 'Preparar as condições de funcionamento das bibliotecas: capacitar os facilitadores, regulamentos elaborados, disseminar informações, etc.', 'Esta actividade consiste em capacitar Facilitadores, técnicos de educação, directores de escola por forma a torná-los replicadores. Uma vez estes serem capazes de replicar a capacitação dada, espera-se que eles capacitem os membros da comunidade voluntários para gerirem as bibliotecas escolares.\r\n\r\nPor outro lado, em relação a disseminação de informações via rádios, a estratégia é de estabelecer parceria com as Rádios Comunitárias locais via Memorando de Entendimentos e providenciar apoio técnico aos fazedores dos programas radiofónicos com vista a realizarem os programas radiofónicos do projecto dentro dos parâmetros estabelecidos.\r\n\r\nInclui apoiar as bibliotecas com materiais de registo de dados, tais como: caderno de biblioteca escolar, lapis, caneta, borrachas etc.', '2019-07-30', NULL, 1, 21, 2, NULL, 21, 0, '2018-06-21 19:12:36', '2018-06-21 19:12:36', '2016-02-01', 80, 5680, 676, 380, 38, 41, 0, NULL),
(680, 11, 21, 'Seleccionar e capacitar 2 pessoas por escola / comunidade para serem bibliotecários (na selecção dos candidatos é dada prioridade às mulheres e pessoas com deficiência)', 'Espera-se que o processo de selecção das pessoas voluntárias, assim como a respectiva capacitação, seja conduzida ao nível de cada escola pelo director, apoiado pelo Facilitador e Técnico da Educação dos SDEJT capacitados como replicadores.', '2016-09-01', NULL, 1, 21, 2, NULL, 21, 0, '2018-06-21 19:17:12', '2018-06-21 19:17:12', '2016-06-01', 20, 928, 676, 380, 42, 43, 0, NULL),
(681, 12, 21, 'Nº de escolas com estantes ou baús produzidos no âmbito do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 19:27:37', '2018-06-21 19:27:37', NULL, 0, NULL, 677, 380, 29, 30, 0, NULL),
(682, 12, 21, 'Nº títulos disponibilizados para o apetrechamento de bibliotecas escolares', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 19:36:11', '2018-06-21 19:36:11', NULL, 0, NULL, 678, 380, 33, 34, 0, NULL),
(683, 12, 21, 'Nº de livros distribuídos no âmbito de apetrechamento de bibliotecas', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 19:42:36', '2018-06-21 19:42:36', NULL, 0, NULL, 678, 380, 35, 36, 0, NULL),
(684, 12, 21, 'Número de escolas com regulamento interno produzido no âmbito do projecto', NULL, NULL, NULL, 1, NULL, 2, NULL, 21, 0, '2018-06-21 19:47:35', '2018-06-21 19:47:35', NULL, 0, NULL, 679, 380, 39, 40, 0, NULL),
(685, 11, 25, 'Realizar encontros mensais de coordenaçao entre os membros do consorcio a nivel central e provincial', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:10:51', '2018-06-22 15:10:51', NULL, 0, NULL, 556, 543, 4, 5, 0, NULL),
(686, 11, 25, 'Realizar encontros mensais de coordenaçao do projecto a nivel central entre os membros do consorcio e o MISAU', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:12:10', '2018-06-22 15:12:10', NULL, 0, NULL, 556, 543, 6, 7, 0, NULL),
(687, 11, 25, 'Realizar encontros mensais de coordenaçao do projecto a nivel provincial entre os membros do consorcio ea DPS-CD', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:13:49', '2018-06-22 15:13:49', NULL, 0, NULL, 556, 543, 8, 9, 0, NULL),
(688, 11, 25, 'Realizar encontros de coordenaçao do projecto a nivel distrital entre os membros do consorcio e SDSMAS', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:15:02', '2018-06-22 15:15:02', NULL, 0, NULL, 556, 543, 10, 11, 0, NULL),
(689, 11, 25, 'Realizar o mapeamento da area de saude nos distritos de implemementaçao do projecto', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:22:37', '2018-06-22 15:22:37', NULL, 0, NULL, 557, 543, 14, 15, 0, NULL),
(691, 11, 25, 'Identificar e mobilizar todas as comunidades beneficiarias das actividades do projecto', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:24:36', '2018-06-22 15:24:36', NULL, 0, NULL, 557, 543, 16, 17, 0, NULL);
INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`, `closed_on`) VALUES
(692, 11, 25, 'Assinar um memorandum de entendimento com a DPS', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:25:25', '2018-06-22 15:25:25', NULL, 0, NULL, 558, 543, 20, 21, 0, NULL),
(693, 11, 25, 'Assinar um memorandum de entendimento com os Serviços Distritais da Saude, Mulher e Acçao Social (SDSMAS)', '', NULL, NULL, 1, NULL, 2, NULL, 24, 1, '2018-06-22 15:26:46', '2018-06-22 15:29:18', NULL, 0, NULL, 558, 543, 22, 23, 0, NULL),
(694, 11, 25, 'Recrutar pessoal chave para a implementaçao do projecto ', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:30:47', '2018-06-22 15:30:47', NULL, 0, NULL, 559, 543, 28, 29, 0, NULL),
(695, 11, 25, 'Treinar pessoal chave para a implementaçao do projecto (pessoal administrativo e do programa)', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:36:23', '2018-06-22 15:36:23', NULL, 0, NULL, 559, 543, 30, 31, 0, NULL),
(696, 11, 25, 'Adquirir materiais e equipamento essenciais para a implementaçao do projecto', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:41:58', '2018-06-22 15:41:58', NULL, 0, NULL, 560, 543, 34, 35, 0, NULL),
(697, 11, 25, 'Fazer o levantamento fisico de infra-estruturas sanitarias', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:42:34', '2018-06-22 15:42:34', NULL, 0, NULL, 560, 543, 36, 37, 0, NULL),
(698, 11, 25, 'Conduzir uma formaçao inicial aos membros do consorcio em pacote nutricional basico comunitario e da unidade sanitaria', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:45:17', '2018-06-22 15:45:17', NULL, 0, NULL, 561, 543, 42, 43, 0, NULL),
(699, 11, 25, 'Conduzir um refrescamento anual para os membros do consorcio de temas tecnicos ligados a nutriçao', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:46:19', '2018-06-22 15:46:19', NULL, 0, NULL, 561, 543, 44, 45, 0, NULL),
(700, 11, 25, 'Realizar uma formaçao aos membros do consorcio (pessoal de programas e administrativos) e gestao e questoes fiduciarias', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:47:32', '2018-06-22 15:47:32', NULL, 0, NULL, 561, 543, 46, 47, 0, NULL),
(701, 11, 25, 'Informar as comunidades sobre os objectivos do projecto assim como os termos e condiçoes de implementaçao do projecto', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:49:51', '2018-06-22 15:49:51', NULL, 0, NULL, 562, 543, 52, 53, 0, NULL),
(702, 11, 25, 'Assinar acordos com as comunidades sobre os termos de condiçoes de implementaçao do projecto', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:50:48', '2018-06-22 15:50:48', NULL, 0, NULL, 562, 543, 54, 55, 0, NULL),
(703, 11, 25, 'Conduzir um processo de identificaçao, selecçao e recrutamento de Agentes Polivalentes Elementares (APE\'s) e Promotores', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:56:03', '2018-06-22 15:56:03', NULL, 0, NULL, 563, 543, 60, 61, 0, NULL),
(704, 11, 25, 'Realizar treinamento inicial aos APE\'s e Promotores', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:56:42', '2018-06-22 15:56:42', NULL, 0, NULL, 563, 543, 62, 63, 0, NULL),
(705, 11, 25, 'Realizar refrescamento dos APE\'s ce Promotores', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:57:24', '2018-06-22 15:57:24', NULL, 0, NULL, 563, 543, 64, 65, 0, NULL),
(706, 11, 25, 'Conduzir um processo de selecçao de Voluntarios Comunitarios de Saude', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:58:35', '2018-06-22 15:58:35', NULL, 0, NULL, 564, 543, 68, 69, 0, NULL),
(707, 11, 25, 'Realizar treinamento inicial de Voluntarios de Saude', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 15:59:25', '2018-06-22 15:59:25', NULL, 0, NULL, 564, 543, 70, 71, 0, NULL),
(708, 11, 25, 'Realizar refrescamento dos Voluntarios Comunitarios de Saude', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 16:00:05', '2018-06-22 16:00:05', NULL, 0, NULL, 564, 543, 72, 73, 0, NULL),
(709, 11, 25, 'Adquirir e distribuir incentivos para os trabalhadores comunitarios de saude', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 16:01:19', '2018-06-22 16:01:19', NULL, 0, NULL, 565, 543, 76, 77, 0, NULL),
(710, 11, 25, 'Realizar a monitoria do crescimento de todas as crianças menores de 2 anos', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 16:02:27', '2018-06-22 16:02:27', NULL, 0, NULL, 566, 543, 82, 83, 0, NULL),
(711, 11, 25, 'Fazer a distribuiçao e a monitoria da ingestao dos micronutrientes em po (MNP) para todas as crianças dos 6 aos 23 meses de idade', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 16:04:06', '2018-06-22 16:04:06', NULL, 0, NULL, 566, 543, 84, 85, 0, NULL),
(712, 11, 25, 'Conduzir sessoes de Educaçao nutricional e fornecer suplementos nutricionais para todas as mulheres gravidas', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 16:05:37', '2018-06-22 16:05:37', NULL, 0, NULL, 566, 543, 86, 87, 0, NULL),
(713, 11, 25, 'Conduzir sessoes de educaçao para a saude (incluindo educaçao nutricional) e distribuir suplementos nutricionais a todas as adolescentes do sexo femenino dos distritos alvo', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 16:07:13', '2018-06-22 16:07:13', NULL, 0, NULL, 566, 543, 88, 89, 0, NULL),
(714, 11, 25, 'Fazer a entrega dos pacotes de prestaçao de serviços de nutrientes destinadas as comunidades no geral dos distritos alvo', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 16:08:31', '2018-06-22 16:08:31', NULL, 0, NULL, 566, 543, 90, 91, 0, NULL),
(715, 11, 25, 'Traduzir, reproduzir e distribuir materiais de IEC/CMC criteriosamente seleccionados', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 16:11:04', '2018-06-22 16:11:04', NULL, 0, NULL, 567, 543, 96, 97, 0, NULL),
(716, 11, 25, 'Apoiar todas as actividades de IEC/CMC relacionadas com o projecto de nutriçao', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-22 16:12:04', '2018-06-22 16:12:04', NULL, 0, NULL, 567, 543, 98, 99, 0, NULL),
(717, 11, 25, 'Apoiar a iniciativa do MISAU de promoçao da criança e da mulher \"Semana Nacional de Saude da Mulher e da Criança\"', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-27 10:13:48', '2018-06-27 10:13:48', NULL, 0, NULL, 567, 543, 100, 101, 0, NULL),
(718, 11, 25, 'Realizar encontros semanais de coordenaçao do projecto a nivel distrital entre o consorcio, ONG\'s, SDSMAS e a DPS', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-27 10:23:22', '2018-06-27 10:23:22', NULL, 0, NULL, 568, 543, 106, 107, 0, NULL),
(719, 11, 25, 'Realizar encontros trimestrais de coordenaçao do projecto a nivel distrital entre o consorcio, ONG\'s interessadas e os SDSMAS', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-27 10:34:19', '2018-06-27 10:34:19', NULL, 0, NULL, 568, 543, 108, 109, 0, NULL),
(720, 11, 25, 'Realizar encontros comunitarios envolvendo os comites de saude, assim como os comites ligados a area de nutriçao', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-27 10:36:03', '2018-06-27 10:36:03', NULL, 0, NULL, 568, 543, 110, 111, 0, NULL),
(721, 11, 25, 'Realizar encontros de coordenaçao do projecto ao nivel central entre os membros do consorcio e o MISAU/DNSP', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-27 10:38:14', '2018-06-27 10:38:14', NULL, 0, NULL, 568, 543, 112, 113, 0, NULL),
(722, 11, 25, 'Realizar encontros anuais de revisao do projecto', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-27 10:47:07', '2018-06-27 10:47:07', NULL, 0, NULL, 568, 543, 114, 115, 0, NULL),
(723, 11, 25, 'Realizar visitas de supervisao das actividades do projecto e prestar apoio tecnico e logistico as unidades de campo', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-27 10:50:54', '2018-06-27 10:50:54', NULL, 0, NULL, 570, 543, 120, 121, 0, NULL),
(724, 11, 25, 'Produzir relatorios mensais e trimestrais de prestaçao de contas a nivel distrital para DPS e MISAU', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-06-27 10:56:50', '2018-06-27 10:56:50', NULL, 0, NULL, 570, 543, 122, 123, 0, NULL),
(726, 11, 26, 'Realizar um encontro de apresentação do Projecto com a participação do Governo distrital, Lideranças comunitárias, Comités Comunitários de Protecção da Criança, Parceiros clínicos, Serviços sociais, líderes religiosos, Organizações da sociedade civil e', '', '2017-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 15:50:11', '2018-06-27 15:50:11', '2017-09-01', 100, NULL, 593, 591, 3, 4, 0, NULL),
(727, 11, 26, 'Mapear os serviços sociais disponíveis nas comunidades do distrito de Lichinga', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 15:51:59', '2018-06-27 15:51:59', '2017-09-01', 50, NULL, 593, 591, 5, 6, 0, NULL),
(728, 11, 26, 'Estabelecer contactos e articular com parceiros clínicos e sociais para fortalecer a ligação de serviços e coordenação das actividades', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 15:53:37', '2018-06-27 15:53:37', '2017-10-01', 50, NULL, 593, 591, 7, 8, 0, NULL),
(729, 11, 26, 'Participar dos encontros de co-gestão, comité TARV e outros ao nível das US', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 15:55:40', '2018-06-27 15:55:40', '2017-11-01', 50, NULL, 593, 591, 9, 10, 0, NULL),
(730, 11, 26, 'Contratar 70 activistas, 9 activistas chefes, 2 supervisores de campo e 5 Facilitadores de poupança', '', '2017-10-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 16:12:27', '2018-06-27 16:12:27', '2017-09-01', 100, NULL, 594, 591, 13, 14, 0, NULL),
(731, 11, 26, 'Formar num período de sete (7) dias um total de 70 Activistas, 9 activistas chefes, 2 supervisores de campo, 5 Facilitadores de poupança, 1 Supervisor de FE, 3 Assistentes (1 projecto e 2 M&A) e 1 coordenadora, em matéria de gestão de casos de COVs (pa', '', '2017-10-31', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 16:32:49', '2018-06-27 16:32:49', '2017-09-01', 80, NULL, 594, 591, 15, 16, 0, NULL),
(732, 11, 26, 'Identificar na área geográfica do Projecto grupos de poupança existentes com actividades em curso', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 16:41:50', '2018-06-27 16:41:50', '2017-11-01', 30, NULL, 595, 591, 19, 20, 0, NULL),
(733, 11, 26, 'Promover sessões de debate nos grupos de poupança', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 16:42:56', '2018-06-27 16:42:56', '2017-11-01', 30, NULL, 595, 591, 21, 22, 0, NULL),
(734, 11, 26, 'Identificar nas US e comunidade COVs afectadas ou infectadas pelo HIV, COVs chefes de família e as mais vulneráveis com o apoio técnicos de saúde, parceiro clinico, CCPC, lideres comunitários e outros intervenientes', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 16:46:06', '2018-06-27 16:46:06', '2017-11-01', 50, NULL, 596, 591, 25, 26, 0, NULL),
(735, 11, 26, 'Avaliar o estado das COVs identificadas com recurso a matriz de apoio a criança, traçar um plano de acção e prestar serviço ou referir de acordo com as necessidades, numa abordagem centrada na Família', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 16:56:18', '2018-06-27 16:56:18', '2017-11-01', 40, NULL, 596, 591, 27, 28, 0, NULL),
(736, 11, 26, 'Articular com os Parceiros clínicos e Sociais para a facilidade de acesso das COVs aos serviços', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 16:58:02', '2018-06-27 16:58:02', '2017-10-01', 40, NULL, 596, 591, 29, 30, 0, NULL),
(737, 11, 26, 'Referir todas COVs e membros dos seus agregados familiares para os serviços de HIV (testagem, cuidados e tratamento), incluindo para outros serviços de saúde e sociais', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 17:02:19', '2018-06-27 17:02:19', '2017-11-01', 60, NULL, 596, 591, 31, 32, 0, NULL),
(738, 11, 26, 'Realizar visitas de acompanhamento das actividades no campo', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-27 17:06:45', '2018-06-27 17:06:45', '2017-10-01', 70, NULL, 596, 591, 33, 34, 0, NULL),
(739, 11, 26, 'Identificar instituições e outros actores que trabalham no apoio a COVs e articular com eles o mecanismo de referência e contra referência de beneficiários', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 08:49:51', '2018-06-28 08:49:51', '2017-10-01', 50, NULL, 597, 591, 37, 38, 0, NULL),
(740, 11, 26, 'Avaliar as necessidades das COVs e referir para outras instituições de apoio', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 08:52:31', '2018-06-28 08:52:31', '2017-12-01', 70, NULL, 597, 591, 39, 40, 0, NULL),
(741, 11, 26, 'Envolver as estruturas locais e actores que trabalham com COVs nos encontros de balanço das actividades do Projecto', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 08:54:55', '2018-06-28 08:54:55', '2017-10-01', 50, NULL, 597, 591, 41, 42, 0, NULL),
(742, 11, 26, 'Promover a equidade de género e realizar actividades recreativas no âmbito da celebração do dia 1 de Junho e 1 de Dezembro', '', '2018-09-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 08:56:58', '2018-06-28 08:56:58', '2017-03-01', 50, NULL, 597, 591, 43, 44, 0, NULL),
(743, 11, 26, 'Realizar visitas trimestrais de supervisão conjunta com os SDSMAS', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 08:58:26', '2018-06-28 08:58:26', '2017-11-01', 50, NULL, 597, 591, 45, 46, 0, NULL),
(744, 11, 26, 'Sensibilizar cuidadores de COVs sobre a importância de integração e retenção das crianças na escola com especial atenção a rapariga', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:01:58', '2018-06-28 09:01:58', '2017-11-01', 50, NULL, 598, 591, 49, 50, 0, NULL),
(745, 11, 26, 'Advogar com as instituições do ensino, sectores de Educação e a serviços da Acção social a facilidade de acesso das crianças a matrícula, uniforme e material escolar', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:05:19', '2018-06-28 09:05:19', '2017-11-01', 60, NULL, 598, 591, 51, 52, 0, NULL),
(746, 11, 26, 'Promover a equidade de Género nas famílias de COVs e igualdade de oportunidades', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:07:54', '2018-06-28 09:07:54', '2017-11-01', 60, NULL, 598, 591, 53, 54, 0, NULL),
(747, 11, 26, 'Identificar oportunidades de capacitação Profissional e advogar para o acesso de jovens ao treinamento vocacional', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:10:10', '2018-06-28 09:10:10', '2017-11-01', 30, NULL, 598, 591, 55, 56, 0, NULL),
(748, 11, 26, 'Identificar COVs com necessidade de registo de nascimento e documentos de identificação e referir para serviços de notariado', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:14:25', '2018-06-28 09:14:25', '2017-11-01', 60, NULL, 599, 591, 59, 60, 0, NULL),
(749, 11, 26, 'Facilitar em coordenação com liderança comunitária a aquisição de atestado de pobreza', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:16:47', '2018-06-28 09:16:47', '2017-11-01', 50, NULL, 599, 591, 61, 62, 0, NULL),
(750, 11, 26, 'Facilitar o acesso das COVs aos serviços de notariado', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:19:53', '2018-06-28 09:19:53', '2017-11-01', 50, NULL, 599, 591, 63, 64, 0, NULL),
(751, 11, 26, 'Promover o aconselhamento nutricional as famílias de COVs', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:23:46', '2018-06-28 09:23:46', '2017-11-01', 50, NULL, 600, 591, 67, 68, 0, NULL),
(752, 11, 26, 'Incentivar ao uso de alimentos localmente produzidos na preparação das refeições', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:29:44', '2018-06-28 09:29:44', '2017-11-01', 60, NULL, 600, 591, 69, 70, 0, NULL),
(753, 11, 26, 'Incentivar a prática de hortas caseira, plantio de árvores de frutas', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:31:41', '2018-06-28 09:31:41', '2017-11-01', 50, NULL, 600, 591, 71, 72, 0, NULL),
(754, 11, 26, 'Promover a prática de machambas comunitárias em coordenação com o SDAE', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:40:58', '2018-06-28 09:40:58', '2017-11-01', 40, NULL, 600, 591, 73, 74, 0, NULL),
(755, 11, 26, 'Avaliar o estado nutricional das crianças pelo uso da fita de MUAC', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:46:44', '2018-06-28 09:46:44', '2017-11-01', 60, NULL, 600, 591, 75, 76, 0, NULL),
(756, 11, 26, 'Referir para US os casos de suspeita de malnutrição', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:48:09', '2018-06-28 09:48:09', '2017-11-01', 50, NULL, 600, 591, 77, 78, 0, NULL),
(757, 11, 26, 'Identificar COVs e Cuidadores com necessidades emocionais e prestar o apoio psicossocial', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:53:45', '2018-06-28 09:53:45', '2017-11-01', 40, NULL, 601, 591, 81, 82, 0, NULL),
(758, 11, 26, 'Referir e facilitar o acesso das crianças a programas de reintegração social', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:55:01', '2018-06-28 09:55:01', '2017-11-01', 40, NULL, 601, 591, 83, 84, 0, NULL),
(759, 11, 26, 'Sensibilizar aos cuidadores para conversarem com as crianças, perceberem suas frustrações e apoio emocional', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 09:57:02', '2018-06-28 09:57:02', '2017-11-01', 60, NULL, 601, 591, 85, 86, 0, NULL),
(760, 11, 26, 'Sensibilizar cuidadores para a integração de crianças nos clubes infantis existentes, nas congregacoes religiosas e outros respeitando sempre as suas escolhas', '', '2018-12-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:01:55', '2018-06-28 10:01:55', '2017-11-01', 60, NULL, 601, 591, 87, 88, 0, NULL),
(761, 11, 26, 'Identificar as necessidades das famílias na componente habitacional', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:36:41', '2018-06-28 10:36:41', '2017-11-01', 60, NULL, 602, 591, 91, 92, 0, NULL),
(762, 11, 26, 'Sensibilizar os cuidadores das COVs a melhorarem as suas habitações de modo a garantir um abrigo condigno (arejado, limpo e seguro)', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:37:56', '2018-06-28 10:37:56', '2017-11-01', 60, NULL, 602, 591, 93, 94, 0, NULL),
(763, 11, 26, 'Mobilizar a comunidade para apoiar na melhoria das condições de habitação das COVs', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:39:13', '2018-06-28 10:39:13', '2017-11-01', 50, NULL, 602, 591, 95, 96, 0, NULL),
(764, 11, 26, 'Referir e Facilitar o acesso das crianças aos serviços de Acção social', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:43:29', '2018-06-28 10:43:29', '2017-11-01', 60, NULL, 602, 591, 97, 98, 0, NULL),
(765, 11, 26, 'Promover nas famílias o aleitamento materno exclusivo', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:45:23', '2018-06-28 10:45:23', '2017-11-01', 40, NULL, 603, 591, 101, 102, 0, NULL),
(766, 11, 26, 'Incentivar o envolvimento dos homens a acompanharem as suas esposas as consultas de SMI em todas as fases (pré/pós parto)', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:46:40', '2018-06-28 10:46:40', '2017-11-01', 40, NULL, 603, 591, 103, 104, 0, NULL),
(767, 11, 26, 'Incentivar e ensinar os pais a fabricarem brinquedos com material local ou reciclado', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:47:56', '2018-06-28 10:47:56', '2017-11-01', 50, NULL, 603, 591, 105, 106, 0, NULL),
(768, 11, 26, 'Incentivar os cuidadores para estimularem o crescimento das crianças, conversando e brincando com elas durante as suas actividades diárias', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:49:01', '2018-06-28 10:49:01', '2017-11-01', 60, NULL, 603, 591, 107, 108, 0, NULL),
(769, 11, 26, 'Mapear os grupos de Poupança já existentes e reactivar as actividades', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:51:44', '2018-06-28 10:51:44', '2017-11-01', 30, NULL, 604, 592, 3, 4, 0, NULL),
(770, 11, 26, 'Criar novos grupos de Poupança', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:53:07', '2018-06-28 10:53:07', '2017-11-01', 20, NULL, 604, 592, 5, 6, 0, NULL),
(771, 11, 26, 'Promover sessões de alfabetização financeira', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:54:02', '2018-06-28 10:54:02', '2017-11-01', 20, NULL, 604, 592, 7, 8, 0, NULL),
(772, 11, 26, 'Integrar os adolescentes e jovens nos grupos de poupança', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:55:25', '2018-06-28 10:55:25', '2017-11-01', 30, NULL, 604, 592, 9, 10, 0, NULL),
(773, 11, 26, 'Integrar os cuidadores de COVs e chefes de família nos grupos de poupança', '', '2018-11-30', NULL, 1, NULL, 2, NULL, 28, 0, '2018-06-28 10:56:16', '2018-06-28 10:56:16', '2017-11-01', 20, NULL, 604, 592, 11, 12, 0, NULL),
(774, 11, 17, 'Identificar todas as comunidades - alvo do projecto', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 12:31:04', '2018-07-10 12:31:04', NULL, 0, NULL, 273, 256, 49, 52, 0, NULL),
(775, 11, 17, 'Conduzir estudos de base nas capitais distritais do projecto', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 12:35:48', '2018-07-10 12:35:48', NULL, 0, NULL, 271, 256, 5, 14, 0, NULL),
(776, 11, 17, 'Capacitar os formadores distritais', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 12:37:45', '2018-07-10 12:37:45', NULL, 0, NULL, 272, 256, 27, 30, 0, NULL),
(777, 11, 17, 'Desenvolver materiais de sensibilizaçao sobre as desvantagens dos casamentos prematuros e os beneficios da educaçao e capacitaçao', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 12:40:10', '2018-07-10 12:40:10', NULL, 0, NULL, 271, 256, 15, 20, 0, NULL),
(778, 11, 17, 'Capacitar e \"refrescar\" alfabetizadores em habilidades para a vida e promoçao de uso de tecnologia relevante', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 12:45:22', '2018-07-10 12:45:22', NULL, 0, NULL, 274, 256, 55, 58, 0, NULL),
(779, 11, 17, 'Estabelecer e capacitar os Comites Comunitarios de Genero', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 12:47:12', '2018-07-10 12:47:12', NULL, 0, NULL, 271, 256, 21, 24, 0, NULL),
(780, 11, 17, 'Reciclar tutores para as aulas de explicaçao ', '', NULL, NULL, 1, NULL, 2, NULL, 24, 1, '2018-07-10 12:49:25', '2018-07-10 12:50:41', NULL, 0, NULL, 272, 256, 31, 34, 0, NULL),
(781, 11, 17, 'Inscrever mulheres e raparigas nas aulas de explicaçao ', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 12:51:43', '2018-07-10 12:51:43', NULL, 0, NULL, 272, 256, 35, 38, 0, NULL),
(782, 11, 17, 'Identificar um centro de apoio ao aluno em cada uma das comunidades - alvo do projecto', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 12:53:55', '2018-07-10 12:53:55', NULL, 0, NULL, 272, 256, 39, 42, 0, NULL),
(783, 11, 17, 'Inscrever mulheres e raparigas em alfabetizaçao designada para cursos de treinamento de habilidades e / ou centros de apoio ao aluno', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 12:56:56', '2018-07-10 12:56:56', NULL, 0, NULL, 272, 256, 43, 46, 0, NULL),
(784, 11, 17, 'Integradas mulheres e raparigas no ensino secundario a distancia', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 14:12:56', '2018-07-10 14:12:56', NULL, 0, NULL, 268, 256, 69, 72, 0, NULL),
(785, 11, 17, 'Organizar mesas redondas sobre emprego para mulheres e raparigas partilhadas via radio comunitaria e coordenar com o INEFP sobre a disseminaçao de oportunidades de emprego usando a mesma via', '', '2017-12-30', NULL, 1, NULL, 2, NULL, 24, 1, '2018-07-10 14:15:47', '2018-07-10 14:40:42', '2017-02-01', 0, NULL, 269, 256, 77, 80, 0, NULL),
(787, 12, 17, 'Nr. de mulheres e raparigas integradas no ensino secundario a distancia', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 14:30:50', '2018-07-10 14:30:50', NULL, 0, NULL, 784, 256, 70, 71, 0, NULL),
(788, 12, 17, 'Nr. de programas radiofonicos transmitidos', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 14:37:44', '2018-07-10 14:37:44', NULL, 0, NULL, 785, 256, 78, 79, 0, NULL),
(790, 11, 17, 'Criar grupos de poupança e credito nas turmas de alfabetizaçao', '', NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 14:45:44', '2018-07-10 14:45:44', NULL, 0, NULL, 270, 256, 83, 86, 0, NULL),
(791, 12, 17, 'Nr. de grupos de poupança e credito criados', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 14:46:23', '2018-07-10 14:46:23', NULL, 0, NULL, 790, 256, 84, 85, 0, NULL),
(792, 12, 17, 'Nr. de formadores capacitados', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 14:49:11', '2018-07-10 14:49:11', NULL, 0, NULL, 776, 256, 28, 29, 0, NULL),
(793, 12, 17, 'Numero de professores tutores reciclados', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 14:52:21', '2018-07-10 14:52:21', NULL, 0, NULL, 780, 256, 32, 33, 0, NULL),
(794, 12, 17, 'Numero de mulheres e raparigas que participam nas aulas de explicaçao', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 14:57:19', '2018-07-10 14:57:19', NULL, 0, NULL, 781, 256, 36, 37, 0, NULL),
(795, 12, 17, 'Numero de centros de aprendizagem comunitaria para raparigas identificados', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 14:59:35', '2018-07-10 14:59:35', NULL, 0, NULL, 782, 256, 40, 41, 0, NULL),
(796, 12, 17, 'Numero de mulheres e raparigas que frequentam as aulas de alfabetizaçao ', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-10 15:01:44', '2018-07-10 15:01:44', NULL, 0, NULL, 783, 256, 44, 45, 0, NULL),
(797, 12, 17, 'Numero de comunidades identificadas', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-11 10:30:57', '2018-07-11 10:30:57', NULL, 0, NULL, 774, 256, 50, 51, 0, NULL),
(798, 12, 17, 'Numero de alfabetizadores capacitados', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-11 10:41:43', '2018-07-11 10:41:43', NULL, 0, NULL, 778, 256, 56, 57, 0, NULL),
(799, 12, 17, 'Numero de raparigas e mulheres inquiridas', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-11 10:43:04', '2018-07-11 10:43:04', NULL, 0, NULL, 775, 256, 6, 7, 0, NULL),
(800, 12, 17, 'Numero de organizaçoes inquiridas', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-11 10:43:53', '2018-07-11 10:43:53', NULL, 0, NULL, 775, 256, 8, 9, 0, NULL),
(801, 12, 17, 'Numero de empregadores inquiridos', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-11 10:45:46', '2018-07-11 10:45:46', NULL, 0, NULL, 775, 256, 10, 11, 0, NULL),
(802, 12, 17, 'Numero de lideres comunitarios inquiridos', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-11 10:46:27', '2018-07-11 10:46:27', NULL, 0, NULL, 775, 256, 12, 13, 0, NULL),
(803, 12, 17, 'Numero de materiais produzidos', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-11 10:47:55', '2018-07-11 10:47:55', NULL, 0, NULL, 777, 256, 16, 17, 0, NULL),
(804, 12, 17, 'Numero de DVD\'s produzidos', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-11 10:48:34', '2018-07-11 10:48:34', NULL, 0, NULL, 777, 256, 18, 19, 0, NULL),
(805, 12, 17, 'Numero de Comites Comunitarios de Genero estabelecidos e capacitados', NULL, NULL, NULL, 1, NULL, 2, NULL, 24, 0, '2018-07-11 10:50:49', '2018-07-11 10:50:49', NULL, 0, NULL, 779, 256, 22, 23, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `issue_categories`
--

CREATE TABLE `issue_categories` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `issue_relations`
--

CREATE TABLE `issue_relations` (
  `id` int(11) NOT NULL,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `issue_relations`
--

INSERT INTO `issue_relations` (`id`, `issue_from_id`, `issue_to_id`, `relation_type`, `delay`) VALUES
(16, 243, 251, 'relates', NULL),
(17, 335, 501, 'relates', NULL),
(18, 336, 501, 'relates', NULL),
(19, 337, 501, 'relates', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `issue_statuses`
--

CREATE TABLE `issue_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `default_done_ratio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `issue_statuses`
--

INSERT INTO `issue_statuses` (`id`, `name`, `is_closed`, `position`, `default_done_ratio`) VALUES
(1, 'Novo', 0, 1, NULL),
(2, 'Em curso', 0, 2, NULL),
(3, 'Resolvido', 0, 3, NULL),
(4, 'Feedback', 0, 4, NULL),
(5, 'Fechado', 1, 5, NULL),
(6, 'Rejeitado', 1, 6, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `journals`
--

CREATE TABLE `journals` (
  `id` int(11) NOT NULL,
  `journalized_id` int(11) NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` longtext,
  `created_on` datetime NOT NULL,
  `private_notes` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `journals`
--

INSERT INTO `journals` (`id`, `journalized_id`, `journalized_type`, `user_id`, `notes`, `created_on`, `private_notes`) VALUES
(72, 152, 'Issue', 4, '', '2018-04-02 18:16:15', 0),
(73, 151, 'Issue', 4, '', '2018-04-02 18:19:03', 0),
(76, 164, 'Issue', 4, '', '2018-04-02 18:24:21', 0),
(77, 224, 'Issue', 4, '', '2018-04-02 18:57:42', 0),
(78, 242, 'Issue', 4, '', '2018-04-02 19:05:49', 0),
(79, 236, 'Issue', 4, '', '2018-04-23 19:01:07', 0),
(80, 226, 'Issue', 4, '', '2018-04-23 19:01:28', 0),
(81, 218, 'Issue', 4, '', '2018-04-23 19:01:42', 0),
(82, 207, 'Issue', 4, '', '2018-04-23 19:01:53', 0),
(83, 204, 'Issue', 4, '', '2018-04-23 19:02:14', 0),
(84, 201, 'Issue', 4, '', '2018-04-23 19:02:28', 0),
(85, 198, 'Issue', 4, '', '2018-04-23 19:03:02', 0),
(86, 187, 'Issue', 4, '', '2018-04-23 19:03:19', 0),
(87, 182, 'Issue', 4, '', '2018-04-23 19:03:26', 0),
(88, 177, 'Issue', 4, '', '2018-04-23 19:03:40', 0),
(89, 168, 'Issue', 4, '', '2018-04-23 19:04:09', 0),
(90, 155, 'Issue', 4, '', '2018-04-23 19:04:22', 0),
(91, 154, 'Issue', 4, '', '2018-04-23 19:06:11', 0),
(92, 153, 'Issue', 4, '', '2018-04-23 19:06:29', 0),
(93, 152, 'Issue', 4, '', '2018-04-23 19:06:39', 0),
(94, 151, 'Issue', 4, '', '2018-04-23 19:06:53', 0),
(113, 161, 'Issue', 4, '', '2018-04-30 15:57:58', 0),
(115, 205, 'Issue', 51, '', '2018-04-30 16:09:24', 0),
(117, 214, 'Issue', 51, '', '2018-04-30 16:11:03', 0),
(121, 193, 'Issue', 5, '', '2018-04-30 16:20:01', 0),
(124, 164, 'Issue', 4, '', '2018-04-30 16:26:30', 0),
(130, 243, 'Issue', 4, '', '2018-05-02 16:13:25', 0),
(132, 247, 'Issue', 4, '', '2018-05-02 16:20:07', 0),
(134, 247, 'Issue', 4, '', '2018-05-02 16:27:06', 0),
(136, 247, 'Issue', 4, '', '2018-05-02 16:27:25', 0),
(138, 247, 'Issue', 4, '', '2018-05-02 16:27:40', 0),
(140, 243, 'Issue', 4, '', '2018-05-03 18:39:43', 0),
(141, 251, 'Issue', 4, '', '2018-05-03 18:39:43', 0),
(142, 266, 'Issue', 24, '', '2018-05-14 15:11:15', 0),
(146, 157, 'Issue', 28, '', '2018-05-18 09:35:42', 0),
(147, 157, 'Issue', 67, '', '2018-05-18 09:37:33', 0),
(148, 184, 'Issue', 67, '', '2018-05-18 10:03:42', 0),
(149, 186, 'Issue', 67, '', '2018-05-18 10:04:19', 0),
(150, 189, 'Issue', 67, '', '2018-05-18 10:05:18', 0),
(151, 191, 'Issue', 67, '', '2018-05-18 10:05:58', 0),
(152, 193, 'Issue', 67, '', '2018-05-18 10:06:39', 0),
(153, 195, 'Issue', 67, '', '2018-05-18 10:07:16', 0),
(154, 197, 'Issue', 67, '', '2018-05-18 10:07:53', 0),
(155, 200, 'Issue', 67, '', '2018-05-18 10:08:25', 0),
(156, 203, 'Issue', 67, '', '2018-05-18 10:09:00', 0),
(157, 209, 'Issue', 67, '', '2018-05-18 10:11:12', 0),
(158, 211, 'Issue', 67, '', '2018-05-18 10:12:04', 0),
(159, 233, 'Issue', 67, '', '2018-05-18 10:42:29', 0),
(160, 231, 'Issue', 67, '', '2018-05-18 10:44:07', 0),
(161, 323, 'Issue', 67, '', '2018-05-18 10:46:12', 0),
(162, 240, 'Issue', 67, '', '2018-05-18 10:47:21', 0),
(163, 248, 'Issue', 67, '', '2018-05-18 10:49:57', 0),
(164, 229, 'Issue', 67, '', '2018-05-18 11:13:38', 0),
(165, 309, 'Issue', 67, '', '2018-05-18 11:18:43', 0),
(166, 209, 'Issue', 67, '', '2018-05-18 11:19:09', 0),
(167, 317, 'Issue', 67, '', '2018-05-18 11:19:32', 0),
(168, 316, 'Issue', 67, '', '2018-05-18 11:20:32', 0),
(169, 315, 'Issue', 67, '', '2018-05-18 11:20:39', 0),
(170, 314, 'Issue', 67, '', '2018-05-18 11:20:47', 0),
(171, 313, 'Issue', 67, '', '2018-05-18 11:20:54', 0),
(172, 338, 'Issue', 24, '', '2018-05-22 14:11:07', 0),
(173, 352, 'Issue', 21, '', '2018-05-23 10:02:27', 0),
(176, 353, 'Issue', 21, '', '2018-05-23 11:06:53', 0),
(177, 334, 'Issue', 28, '', '2018-05-25 14:30:24', 0),
(179, 338, 'Issue', 67, '', '2018-05-28 15:00:59', 0),
(180, 338, 'Issue', 67, '', '2018-05-28 15:01:18', 0),
(181, 246, 'Issue', 24, '', '2018-05-28 16:10:25', 0),
(182, 244, 'Issue', 24, '', '2018-05-28 16:10:55', 0),
(183, 338, 'Issue', 24, '', '2018-05-29 10:14:14', 0),
(184, 500, 'Issue', 24, '', '2018-05-30 11:41:53', 0),
(185, 338, 'Issue', 24, '', '2018-05-30 15:27:44', 0),
(186, 528, 'Issue', 25, '', '2018-06-01 10:33:40', 0),
(187, 526, 'Issue', 25, '', '2018-06-01 10:34:37', 0),
(188, 510, 'Issue', 25, '', '2018-06-01 10:36:00', 0),
(189, 502, 'Issue', 25, '', '2018-06-01 10:36:51', 0),
(190, 549, 'Issue', 24, '', '2018-06-01 11:08:27', 0),
(191, 575, 'Issue', 28, '', '2018-06-04 11:33:27', 0),
(192, 509, 'Issue', 67, '', '2018-06-05 11:48:57', 0),
(193, 509, 'Issue', 67, '', '2018-06-05 11:49:30', 0),
(199, 501, 'Issue', 24, '', '2018-06-12 15:39:53', 0),
(201, 501, 'Issue', 24, '', '2018-06-12 15:41:37', 0),
(202, 337, 'Issue', 5, '', '2018-06-18 08:26:12', 0),
(203, 336, 'Issue', 5, '', '2018-06-18 08:32:20', 0),
(204, 336, 'Issue', 5, '', '2018-06-18 08:32:47', 0),
(205, 335, 'Issue', 5, '', '2018-06-18 09:02:05', 0),
(206, 342, 'Issue', 5, '', '2018-06-18 09:09:20', 0),
(207, 341, 'Issue', 5, '', '2018-06-18 09:12:33', 0),
(208, 340, 'Issue', 5, '', '2018-06-18 09:14:09', 0),
(209, 335, 'Issue', 5, '', '2018-06-18 09:30:10', 0),
(210, 501, 'Issue', 5, '', '2018-06-18 09:30:10', 0),
(211, 336, 'Issue', 5, '', '2018-06-18 09:30:43', 0),
(212, 501, 'Issue', 5, '', '2018-06-18 09:30:43', 0),
(213, 337, 'Issue', 5, '', '2018-06-18 09:31:22', 0),
(214, 501, 'Issue', 5, '', '2018-06-18 09:31:22', 0),
(215, 321, 'Issue', 24, '', '2018-06-18 10:01:42', 0),
(216, 255, 'Issue', 24, 'Nao estava completo. Faltavam algumas palavras.', '2018-06-18 11:10:49', 0),
(217, 156, 'Issue', 24, '', '2018-06-18 12:24:53', 0),
(218, 293, 'Issue', 24, 'A actividade estava incompleta.', '2018-06-18 12:30:34', 0),
(219, 304, 'Issue', 24, 'A meta estava em falta.', '2018-06-18 14:31:10', 0),
(220, 197, 'Issue', 24, '', '2018-06-18 15:01:23', 0),
(221, 601, 'Issue', 28, '', '2018-06-18 15:19:25', 0),
(222, 153, 'Issue', 24, '', '2018-06-19 10:23:40', 0),
(223, 214, 'Issue', 24, '', '2018-06-19 10:32:57', 0),
(224, 213, 'Issue', 24, '', '2018-06-19 10:34:01', 0),
(225, 215, 'Issue', 24, '', '2018-06-19 10:36:21', 0),
(226, 216, 'Issue', 24, '', '2018-06-19 10:40:41', 0),
(227, 154, 'Issue', 24, '', '2018-06-19 10:58:41', 0),
(228, 609, 'Issue', 24, '', '2018-06-19 11:00:04', 0),
(229, 227, 'Issue', 24, '', '2018-06-19 11:06:25', 0),
(230, 318, 'Issue', 24, '', '2018-06-19 11:07:49', 0),
(231, 226, 'Issue', 24, '', '2018-06-19 11:09:14', 0),
(232, 229, 'Issue', 24, '', '2018-06-19 11:12:19', 0),
(233, 230, 'Issue', 24, '', '2018-06-19 11:13:58', 0),
(235, 398, 'Issue', 28, '', '2018-06-21 11:08:22', 0),
(236, 399, 'Issue', 28, '', '2018-06-21 12:05:26', 0),
(237, 571, 'Issue', 28, '', '2018-06-21 12:23:04', 0),
(238, 572, 'Issue', 28, '', '2018-06-21 13:59:10', 0),
(239, 573, 'Issue', 28, '', '2018-06-21 14:48:37', 0),
(240, 574, 'Issue', 28, '', '2018-06-21 15:13:29', 0),
(241, 575, 'Issue', 28, '', '2018-06-21 15:43:31', 0),
(242, 576, 'Issue', 28, '', '2018-06-21 15:52:22', 0),
(243, 576, 'Issue', 28, '', '2018-06-21 16:10:13', 0),
(244, 577, 'Issue', 28, '', '2018-06-21 16:10:54', 0),
(245, 578, 'Issue', 28, '', '2018-06-21 16:22:02', 0),
(246, 578, 'Issue', 28, '', '2018-06-21 16:29:23', 0),
(247, 579, 'Issue', 28, '', '2018-06-21 17:13:51', 0),
(248, 662, 'Issue', 28, '', '2018-06-21 17:23:51', 0),
(249, 579, 'Issue', 28, '', '2018-06-21 17:30:10', 0),
(250, 580, 'Issue', 28, '', '2018-06-21 17:35:27', 0),
(251, 580, 'Issue', 28, '', '2018-06-21 17:52:19', 0),
(252, 693, 'Issue', 24, '', '2018-06-22 15:29:18', 0),
(253, 567, 'Issue', 24, '', '2018-06-22 16:09:35', 0),
(254, 593, 'Issue', 28, '', '2018-06-27 08:23:05', 0),
(255, 594, 'Issue', 28, '', '2018-06-27 15:57:35', 0),
(256, 595, 'Issue', 28, '', '2018-06-27 16:39:26', 0),
(257, 596, 'Issue', 28, '', '2018-06-27 16:43:55', 0),
(258, 597, 'Issue', 28, '', '2018-06-28 08:36:26', 0),
(259, 597, 'Issue', 28, '', '2018-06-28 08:58:58', 0),
(260, 598, 'Issue', 28, '', '2018-06-28 09:00:31', 0),
(261, 599, 'Issue', 28, '', '2018-06-28 09:11:04', 0),
(262, 599, 'Issue', 28, '', '2018-06-28 09:20:09', 0),
(263, 600, 'Issue', 28, '', '2018-06-28 09:21:35', 0),
(264, 601, 'Issue', 28, '', '2018-06-28 09:49:01', 0),
(265, 602, 'Issue', 28, '', '2018-06-28 10:02:47', 0),
(266, 603, 'Issue', 28, '', '2018-06-28 10:44:15', 0),
(267, 603, 'Issue', 28, '', '2018-06-28 10:49:16', 0),
(268, 604, 'Issue', 28, '', '2018-06-28 10:50:36', 0),
(269, 780, 'Issue', 24, '', '2018-07-10 12:50:41', 0),
(270, 338, 'Issue', 24, '', '2018-07-10 14:11:38', 0),
(271, 266, 'Issue', 24, '', '2018-07-10 14:21:12', 0),
(272, 785, 'Issue', 24, '', '2018-07-10 14:40:42', 0),
(273, 712, 'Issue', 67, '', '2018-07-19 16:51:49', 0),
(274, 778, 'Issue', 67, '', '2018-07-19 16:51:49', 0),
(275, 712, 'Issue', 67, '', '2018-07-19 16:52:43', 0),
(276, 778, 'Issue', 67, '', '2018-07-19 16:52:43', 0),
(277, 342, 'Issue', 67, '', '2018-07-25 23:15:33', 0),
(278, 342, 'Issue', 67, '', '2018-07-25 23:44:08', 0),
(279, 673, 'Issue', 67, '', '2018-07-26 00:17:31', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `journal_details`
--

CREATE TABLE `journal_details` (
  `id` int(11) NOT NULL,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `property` varchar(30) NOT NULL DEFAULT '',
  `prop_key` varchar(30) NOT NULL DEFAULT '',
  `old_value` longtext,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `journal_details`
--

INSERT INTO `journal_details` (`id`, `journal_id`, `property`, `prop_key`, `old_value`, `value`) VALUES
(114, 72, 'attr', 'subject', '2.	Promover a saúde comunitária preventiva através da educação e práticas, particularmente em: Nutrição ; Agricultura e meio ambiente.', 'Promover a saúde comunitária preventiva através da educação e práticas, particularmente em: Nutrição ; Agricultura e meio ambiente.'),
(115, 73, 'attr', 'subject', '1.	Melhorar o acesso a educação básica de qualidade pelas comunidades locais, especialmente a escolarização de crianças e alfabetização de jovens e mulheres, em particular nas províncias de Cabo Delgado e Niassa.', 'Melhorar o acesso a educação básica de qualidade pelas comunidades locais, especialmente a escolarização de crianças e alfabetização de jovens e mulheres, em particular nas províncias de Cabo Delgado e Niassa.'),
(118, 76, 'attr', 'tracker_id', '16', '11'),
(119, 77, 'attr', 'tracker_id', '16', '11'),
(120, 78, 'attr', 'parent_id', '236', '241'),
(121, 79, 'attr', 'tracker_id', '16', '18'),
(122, 79, 'cf', '28', '0', NULL),
(123, 80, 'attr', 'tracker_id', '16', '18'),
(124, 80, 'cf', '28', '0', NULL),
(125, 81, 'attr', 'tracker_id', '16', '18'),
(126, 81, 'attr', 'start_date', '2018-04-02', NULL),
(127, 81, 'cf', '28', '0', NULL),
(128, 82, 'attr', 'tracker_id', '16', '18'),
(129, 82, 'cf', '28', '0', NULL),
(130, 83, 'attr', 'tracker_id', '16', '18'),
(131, 83, 'cf', '28', '0', NULL),
(132, 84, 'attr', 'tracker_id', '16', '18'),
(133, 84, 'cf', '28', '0', NULL),
(134, 85, 'attr', 'tracker_id', '16', '18'),
(135, 85, 'cf', '28', '0', NULL),
(136, 86, 'attr', 'tracker_id', '16', '18'),
(137, 86, 'cf', '28', '0', NULL),
(138, 87, 'attr', 'tracker_id', '16', '18'),
(139, 87, 'cf', '28', '0', NULL),
(140, 88, 'attr', 'tracker_id', '16', '18'),
(141, 88, 'cf', '28', '0', NULL),
(142, 89, 'attr', 'tracker_id', '16', '18'),
(143, 89, 'cf', '28', '0', NULL),
(144, 90, 'attr', 'tracker_id', '16', '18'),
(145, 90, 'cf', '28', '0', NULL),
(146, 91, 'attr', 'tracker_id', '13', '16'),
(147, 91, 'attr', 'done_ratio', NULL, '0'),
(148, 91, 'attr', 'parent_id', NULL, '255'),
(149, 91, 'cf', '28', NULL, '0'),
(150, 92, 'attr', 'tracker_id', '13', '16'),
(151, 92, 'attr', 'done_ratio', NULL, '0'),
(152, 92, 'attr', 'parent_id', NULL, '255'),
(153, 92, 'cf', '28', NULL, '0'),
(154, 93, 'attr', 'tracker_id', '13', '16'),
(155, 93, 'attr', 'done_ratio', NULL, '0'),
(156, 93, 'attr', 'parent_id', NULL, '255'),
(157, 93, 'cf', '28', NULL, '0'),
(158, 94, 'attr', 'tracker_id', '13', '16'),
(159, 94, 'attr', 'done_ratio', NULL, '0'),
(160, 94, 'attr', 'parent_id', NULL, '255'),
(161, 94, 'cf', '28', NULL, '0'),
(187, 113, 'relation', 'relates', NULL, '303'),
(189, 115, 'relation', 'relates', NULL, '322'),
(191, 117, 'relation', 'relates', NULL, '310'),
(197, 121, 'relation', 'relates', NULL, '329'),
(200, 124, 'relation', 'relates', NULL, '330'),
(208, 130, 'relation', 'relates', NULL, '325'),
(210, 132, 'relation', 'relates', NULL, '326'),
(212, 134, 'relation', 'relates', '326', NULL),
(214, 136, 'relation', 'relates', NULL, '327'),
(216, 138, 'relation', 'relates', '327', NULL),
(218, 140, 'relation', 'relates', NULL, '251'),
(219, 141, 'relation', 'relates', NULL, '243'),
(220, 142, 'attr', 'subject', 'Aumentado o conhecimento entre mulheres e raparigas sobre sua saude, direitos sociais e consequencias dos casamentos preamturos', 'Aumentado o conhecimento entre raparigas sobre sua saude, direitos sociais e consequencias dos casamentos preamturos'),
(223, 146, 'attr', 'subject', 'Um currículo de formação de formadores aprovado pelo Ministério da Educação e Desenvolvimento Humano', '# de currículos de formação de formadores aprovado pelo Ministério da Educação e Desenvolvimento Humano'),
(224, 146, 'cf', '100', '', '1'),
(225, 147, 'cf', '99', '', 'Numero de Curriculos'),
(226, 148, 'attr', 'subject', 'Pelo menos uma sessão de uso das TIC como instrumento de ensino em cada uma das 3 intervenções de formação de formadores.', '# de sessoes de uso das TIC como instrumento de ensino em cada uma das 3 intervenções de formação de formadores'),
(227, 148, 'cf', '100', '', '1'),
(228, 149, 'attr', 'subject', 'Pelo menos uma intervenção-piloto no uso de tabletes como meio de ensino na educação de adultos ', '# de intervençoes-piloto no uso de tabletes como meio de ensino na educação de adultos '),
(229, 149, 'cf', '100', '', '1'),
(230, 150, 'attr', 'subject', 'Pelo menos 200 activistas dentro da rede da PROGRESSO que foram formados para levar adiante o seu papel.', '# de activistas dentro da rede da PROGRESSO que foram formados para levar adiante o seu papel'),
(231, 150, 'cf', '100', '', '200'),
(232, 151, 'attr', 'subject', 'Pelo menos uma feira por ano em cada distrito a demonstrar os valores nutricionais de alguns alimentos.', '# de feiras por ano em cada distrito a demonstrar os valores nutricionais de alguns alimentos'),
(233, 151, 'cf', '100', '', '1'),
(234, 152, 'attr', 'subject', 'Pelo menos 5.000 adultos nas aulas de alfabetização têm conhecimento sobre dieta equilibrada de alimentos produzidos localmente, a importância das redes mosquiteiras, a importância do ferro e ácido fólico no nosso corpo.', '# de adultos nas aulas de alfabetização com conhecimento sobre dieta equilibrada de alimentos produzidos localmente, a importância das redes mosquiteiras, a importância do ferro e ácido fólico no nosso corpo'),
(235, 152, 'cf', '100', '', '5000'),
(236, 153, 'attr', 'subject', 'Um programa de formação de formadores (FdF) aprovado pelo Ministério da Saúde.', '# programas de formação de formadores (FdF) aprovado pelo Ministério da Saúde'),
(237, 153, 'cf', '100', '', '1'),
(238, 154, 'attr', 'subject', 'Pelo menos 20 pessoas seleccionadas participam numa formação de formadores com o programa aprovado.', '# de pessoas seleccionadas participam numa formação de formadores com o programa aprovado'),
(239, 154, 'cf', '100', '', '20'),
(240, 155, 'attr', 'subject', 'Pelo menos um guia de formadores dos formadores (formadores-mestres) e um manual dos formandos/activistas de saúde (que podem ser reproduzidos dependendo dos números de FdF e de participantes).  Produção de panfletos sobre saúde de acordo com as necessida', '# de guias de formadores dos formadores (formadores-mestres) e um manual dos formandos/activistas de saúde (que podem ser reproduzidos dependendo dos números de FdF e de participantes) Produção de panfletos sobre saúde de acordo com as necessidades'),
(241, 155, 'cf', '100', '', '1'),
(242, 156, 'attr', 'subject', 'Pelo menos uma ligação para combate à malnutrição, medidas de promoção da saúde preventiva, em intervenções pela PROGRESSO.', '# de ligaçoes para combate à malnutrição, medidas de promoção da saúde preventiva, em intervenções pela PROGRESSO'),
(243, 156, 'cf', '100', '', '1'),
(244, 157, 'attr', 'subject', 'Pelo menos 50% ou mais dos programas implementados pelo Associação PROGRESSO integram acções de género. ', '% de programas implementados pelo Associação PROGRESSO que integram acções de género'),
(245, 157, 'cf', '100', '', '50'),
(246, 158, 'attr', 'subject', 'Pelo menos duas formações no âmbito de legislação, por ano, em cada distrito de intervenção. ', '# de formações no âmbito de legislação, por ano, em cada distrito de intervenção'),
(247, 158, 'cf', '100', '', '2'),
(248, 159, 'attr', 'subject', 'Formação e desenvolvimento dos instrumentos necessários para levar a cabo as suas actividades com sucesso. Assistência nas matrículas e programa de reembolso, se for viável no contexto da organização.', 'Formação e desenvolvimento dos instrumentos necessários para levar a cabo as suas actividades com sucesso.'),
(249, 160, 'attr', 'subject', 'Formação dos membros Formação e desenvolvimento dos instrumentos necessários para levar a cabo as suas actividades com sucesso. Desenvolver uma estratégia para a mobilização e envolvimento de novos membros, também nas comunidades. Assistência nas matrícul', 'Desenvolver uma estratégia para a mobilização e envolvimento de novos membros, também nas comunidades.'),
(250, 161, 'attr', 'subject', 'Material de formação específico para os membros', '# de acções realizadas no âmbito do engajamento comunitário'),
(251, 162, 'attr', 'subject', '2 brochuras, “website” e “twitter” actualizados de acordo com as intervenções da PROGRESSO.', '# brochuras'),
(252, 162, 'cf', '100', '', '2'),
(253, 163, 'attr', 'subject', 'Pelo menos 4 “workshops” no âmbito de M&A realizados a nível central e provincial. ', '# de “workshops” no âmbito de M&A realizados a nível central e provincial'),
(254, 163, 'cf', '100', '', '4'),
(255, 164, 'attr', 'subject', 'Plano de melhoria do desempenho dos funcionários  Instrumentos necessários para levar a cabo as suas actividades com sucesso. Oportunidades de desenvolvimento profissional. Assistência nas matrículas e programa de reembolso, se for viável no contexto da o', 'Instrumentos necessários para levar a cabo as suas actividades com sucesso.'),
(256, 165, 'cf', '102', '', 'Percentual'),
(257, 166, 'cf', '102', '', 'Percentual'),
(258, 167, 'cf', '102', '', 'Percentual'),
(259, 168, 'cf', '100', '', '100'),
(260, 168, 'cf', '102', '', 'Percentual'),
(261, 169, 'cf', '100', '', '100'),
(262, 169, 'cf', '102', '', 'Percentual'),
(263, 170, 'cf', '100', '', '100'),
(264, 170, 'cf', '102', '', 'Percentual'),
(265, 171, 'cf', '100', '', '100'),
(266, 171, 'cf', '102', '', 'Percentual'),
(267, 172, 'cf', '76', '', 'CHIMBUNILA'),
(268, 173, 'attr', 'subject', 'Melhorada a participação da comunidade na gestão das escolas das 20 comunidades alvos', 'Taxa de graduação de meninas e mulheres no ensino primário e alfabetização  aumentada'),
(271, 176, 'attr', 'tracker_id', '3', '10'),
(272, 177, 'attr', 'subject', 'a)	Maior utilização dos serviços sociais, saúde e nutricionais de qualidade; b)	Reduzida a vulnerabilidade económica das famílias de COVs, preparando-as para melhor ultrapassar o impacto causado pelo HIV/SIDA.', 'a)	Maior utilização dos serviços sociais, saúde e nutricionais de qualidade'),
(274, 179, 'attr', 'parent_id', '268', NULL),
(275, 180, 'attr', 'parent_id', NULL, '268'),
(276, 181, 'attr', 'subject', 'Pelo menos um seminário anualmente para o pessoal sobre tópicos relevantes de M&A.', '# de seminários anualmente para o pessoal sobre tópicos relevantes de M&A.'),
(277, 182, 'attr', 'subject', 'Pelo menos um seminário anualmente para o pessoal sobre tópicos relevantes de GC.', '# de seminários anualmente para o pessoal sobre tópicos relevantes de GC.'),
(278, 183, 'attr', 'due_date', NULL, '2018-04-06'),
(279, 183, 'attr', 'start_date', NULL, '2018-04-02'),
(280, 184, 'attr', 'subject', 'Outra Estrategia para o Alcance do Objectivo Estrategico 1', 'Outra Estrategia para o Alcance do Objectivo Especifico 1'),
(281, 185, 'attr', 'done_ratio', '0', '100'),
(282, 186, 'attr', 'subject', 'Equipa de monitoria treinada no conteúdo dos módulos e coleção de dados', 'Treinar as equipas em monitoria no conteúdo dos módulos e coleção de dados'),
(283, 187, 'attr', 'subject', 'ESTUDO SOBRE AS COMPETÊNCIAS DOS FORMADORES E DOS FORMANDOS DOS IFP’S', 'REALIZAR ESTUDO SOBRE AS COMPETÊNCIAS DOS FORMADORES E DOS FORMANDOS DOS IFP’S'),
(284, 188, 'attr', 'subject', 'Dados colhidos sistematicamente', 'Colher dados do projecto sistematicamente'),
(285, 189, 'attr', 'subject', 'Instrumentos para colecta de dados desenvolvidos', 'Desenvolver instrumentos para a colecta de dados'),
(286, 190, 'attr', 'tracker_id', '5', '3'),
(287, 191, 'attr', 'done_ratio', '0', '10'),
(288, 192, 'attr', 'subject', 'Outras Actividades que Contribuem para o Alcance do Objectivo Especifico 4', 'Outras Actividades que Contribuem para o Alcance do Objectivo Especifico 4.'),
(289, 193, 'attr', 'subject', 'Outras Actividades que Contribuem para o Alcance do Objectivo Especifico 4.', 'Outras Actividades que Contribuem para o Alcance do Objectivo Especifico 4'),
(297, 199, 'relation', 'relates', NULL, '391'),
(299, 201, 'relation', 'relates', '391', NULL),
(300, 202, 'attr', 'due_date', NULL, '2019-11-30'),
(301, 202, 'attr', 'start_date', NULL, '2017-04-27'),
(302, 202, 'attr', 'done_ratio', '0', '40'),
(303, 203, 'attr', 'due_date', NULL, '2018-03-30'),
(304, 203, 'attr', 'start_date', NULL, '2016-09-01'),
(305, 203, 'attr', 'done_ratio', '0', '100'),
(306, 204, 'attr', 'due_date', '2018-03-30', '2017-03-30'),
(307, 205, 'attr', 'due_date', NULL, '2017-04-01'),
(308, 205, 'attr', 'start_date', NULL, '2016-09-01'),
(309, 205, 'attr', 'done_ratio', '0', '100'),
(310, 205, 'cf', '76', NULL, 'DISTRITO MUNICIAL KaMpfumo'),
(311, 206, 'cf', '100', '218', '436'),
(312, 206, 'cf', '105', '', '218'),
(313, 207, 'cf', '105', '', '739'),
(314, 208, 'cf', '105', '', '18'),
(315, 209, 'relation', 'relates', NULL, '501'),
(316, 210, 'relation', 'relates', NULL, '335'),
(317, 211, 'relation', 'relates', NULL, '501'),
(318, 212, 'relation', 'relates', NULL, '336'),
(319, 213, 'relation', 'relates', NULL, '501'),
(320, 214, 'relation', 'relates', NULL, '337'),
(321, 215, 'attr', 'subject', 'Ferramentas elaboradas', 'Ferramentas elaboradas e testadas'),
(322, 216, 'attr', 'subject', 'Incremento de oportunidades de modo a que os membros das comunidades de base, especialmente mulheres, jovens e crianças, com prioridade para as províncias de Cabo Delgado e Niassa, desenvolvam a sua capacidade de intervenção com vista a melhorar as suas c', 'Incremento de oportunidades de modo a que os membros das comunidades de base, especialmente mulheres, jovens e crianças, com prioridade para províncias de C.Delgado e Niassa, desenvolvam capacidade de intervenção com vista a melhorar as condiçoes de vida'),
(323, 217, 'attr', 'subject', 'Participação nos encontros de “lobbying” e advocacia no âmbito de desenvolvimento de um processo coerente de formaçãode formadores.', 'Participação nos encontros de “lobbying” e advocacia no âmbito de desenvolvimento de um processo coerente de formação de formadores.'),
(324, 218, 'attr', 'subject', '# de escolas beneficiam de educação bilingue nas províncias de ', '# de escolas beneficiam de educação bilingue nas províncias de intervençao'),
(325, 219, 'cf', '103', '', 'De acordo com as necessidades'),
(326, 220, 'attr', 'subject', '# de pessoas seleccionadas participam numa formação de formadores com o programa aprovado', '# de pessoas seleccionadas que participam numa formação de formadores com o programa aprovado'),
(327, 221, 'attr', 'done_ratio', '0', '60'),
(328, 222, 'attr', 'subject', 'Promover a cidadania activa e reforçar as capacidades das comunidades locais e das suas capacidades através da provisão de conhecimento básico e desenvolvimento de rede que favoreçam a defesa dos direitos das comunidades locais.', 'Promover a cidadania activa e reforçar as capacidades das comunidades locais e das suas capacidades através da provisão de conhecimento básico e desenvolvimento de redes que favoreçam a defesa dos direitos das comunidades locais.'),
(329, 223, 'attr', 'subject', 'Colaboração com outras OCS no terreno envolvidas na promoção de acções relacionadas com as intervenções da PROGRESSO.', 'Colaboração com outras OSC no terreno envolvidas na promoção de acções relacionadas com as intervenções da PROGRESSO.'),
(330, 224, 'cf', '103', '', 'Dados recolhidos, analisados, sintetizados e partilhados com os beneficiários.'),
(331, 225, 'attr', 'subject', 'Evidência de pelo menos uma colaboração por província, por ano, relativamente a trabalho de advocacia de questões que afectam a comunidade.', 'Evidência de colaboração por província, por ano, relativamente a trabalho de advocacia de questões que afectam a comunidade.'),
(332, 225, 'cf', '100', '', '1'),
(333, 226, 'attr', 'subject', 'Programa educacional activo para “advocacia” para a empregabilidade nas comunidades: advocacia para “utilizar os recursos e oportunidades locais”. Programas de formação  orientados para “atitude e habilidades para se tornar formável” nas comunidades.', 'Programa educacional activo para “advocacia” para a empregabilidade nas comunidades: advocacia para “utilizar os recursos e oportunidades locais”. '),
(334, 227, 'attr', 'subject', 'Reforçar a capacidade institucional da PROGRESSO através da profissionalização da própria organização: ●	Gestão empresarial (por exemplo, mobilização de fundos). ●	Desenvolvimento do capital humano. ●	Desenvolvimento do conhecimento institucional. ●	De', 'Reforçar a capacidade institucional da PROGRESSO através da profissionalização da própria organização'),
(335, 227, 'attr', 'start_date', '2018-04-02', NULL),
(336, 228, 'attr', 'subject', 'Numero de programas orientados para atitude e habilidades para se tornar formavel', '# de programas orientados para atitude e habilidades para se tornar formavel'),
(337, 229, 'attr', 'subject', 'Unidade de Recursos Humanos (internalização ou externalização) Recrutamento de novos funcionários qualificados. Gestão das relações com os funcionários e observância das leis laborais e formação e desenvolvimento. Transferência de conhecimento e experiênc', 'Encontrar os mecanismos de trazer para a Associaçao os beneficios do trabalho da Editora'),
(338, 230, 'attr', 'subject', 'Departamentos de RH desempenhando as funções necessárias', '% de recuperaçao de todos os custos da Editora'),
(339, 230, 'cf', '100', '1', ''),
(340, 230, 'cf', '103', '', 'Pelo menos a recuperaçao de todos os custos'),
(341, 231, 'attr', 'subject', 'Desenvolvimento do capital humano', 'Serviços de desenvolvimento de negocios da Editora e do patrimonio existente'),
(342, 232, 'attr', 'subject', 'Instrumentos necessários para levar a cabo as suas actividades com sucesso.', 'Gestao com sentido de negocios (gestao empresarial) de modo a gerar rendimentos'),
(343, 233, 'attr', 'subject', 'Um departamento de RH desempenhando as funções necessárias.', '% de contribuiçao de receitas provenientes de gestao de patrimonio nas receitas totais da PROGRESSO'),
(344, 233, 'cf', '100', '', '10'),
(345, 233, 'cf', '102', '', 'Percentual'),
(347, 235, 'attr', 'description', 'a) Realizar encontro de apresentação do Projecto aos Governos Distritais com a participação de SDSMAS, SDEJT, Parceiros clínicos, Líderes comunitários e religiosos, ONGs, OCBs, CCPC e pessoas influentes.\r\nb) Mapear os serviços disponíveis nos distritos e nas comunidades;\r\nc) Realizar encontros com as estruturas de base nas comunidades abrangidas para a socialização do projecto;\r\nd) Realizar encontros com as U.S e parceiros clínicos para fortalecimento de ligações de serviços e para coordenação das actividades e facilitar a referência dos casos.\r\ne) Participar nos encontros de comités de saúde, de congestão, TARV e outros ao nível das U.S;\r\nf) Realizar visitas de acompanhamento e supervisão das actividades pelo coordenador do projecto.\r\n', ''),
(348, 236, 'attr', 'description', 'a) Identificar, seleccionar e contratar 62 activistas sendo:\r\n\r\n* Mueda: 22 activistas, 3 activistas chefes, 1 facilitador de fortalecimento económicas\r\n* Muidumbe: 15 actlvistas, 2 activistas chefes, 1 facilitador de fortalecimento económico\r\n* Macomia: 15 activistas, 2 activistas chefes, 1 facilitador de fortalecimento económico\r\n\r\nPara gerir  os três distritos serão contratados 1 supervisore de monitoria e avaliação, e 1 gestor de projecto.\r\n\r\nb) Capacitar num período de 7 dias 52 activistas, 3 facilitadores de fortalecimento económico, 7 activistas chefes, 2 supervisores de campo e 1 oficial de M&A e 1 Gestor de Projecto, em matéria de gestão de casos de COVs em matéria de direito da criança  e padrões mínimos de atendimento\r\na criança com o foco para os serviços sociais básicos e aspectos de monitoria e avaliação com facilitação de formadores credenciados pela FHI 360;\r\n', ''),
(349, 237, 'attr', 'description', 'a) Identificar na área geográfica do projecto grupos de poupanças existentes e funcionais\r\nb) Realizar secções de debate nos grupos de poupança sobre os temas acima descritos;', ''),
(350, 238, 'attr', 'description', 'a) ldentificar nas US e na comunidade, crianças infectadas ou afectadas, crianças chefes do agregado familiar e crianças com alto nível  de vulnerabilidade com apoio de técnicos  de saúde, líderes comunitários e comités comunitário CCPC;\r\nb) Avaliar o estado das crianças através de preenchimento da matriz de apoio a crianças (MAC);\r\nlaborar  um plano  de accao,  prestar  services  ou referir   de acordo  com as necessidades,  usando abordagem  centrada  na familia.\r\nc) Articular com parceiros clínicos e outros serviços sociais para facilidades de acesso das COVs aos serviços de atendimento;\r\nd) Referir todas as COVs e os membros dos agregados familiares para os serviços de HIV (Testagem, Cuidado e tratamento), e outros serviços de saúde e sociais;\r\ne) Realizar visitas rotineiras de acompanhamento das actividades no campo;\r\nf) Realizar encontros de balanço trimestral com envolvimento dos SDSMAS e lideres comunitários.\r\n', ''),
(351, 239, 'attr', 'description', 'a) Identificar dentro da área geográfica do projecto lnstituições e outros actores que trabalham na área de COVs e estabelecer parcerias para fortalecer o mecanismo de referências;\r\nb) Referir COVs aos serviços identidades de acordo com as necessidades;\r\nc) Envolver as estruturas locais e parceiros que trabalham na área de COVs nos encontros de balanço do projecto;\r\nd) Sensibilizar as famílias em matéria de equidade de género e realizar actividades recreativas da quinzena da criança, 1 de Dezembro e outras datas comemorativas;\r\ne) Realizar visitas de supervisão conjuntas com os serviços SDSMAS (Técnico de Acção)\r\n', ''),
(352, 240, 'attr', 'description', 'a) Sensibilizar os pais e cuidadores sobre a importância da integração e retenção das COVs na escola com especial atenção a rapariga;\r\nb) Realizar encontros com as direcções das escolas, conselhos de escolas, líderes comunitários com vista a facilitar o processo de referência de COVs para receberem serviços;\r\nc) Advocar as instituições de ensino para facilitar as matrículas, uniforme escolar e material escolar as crianças órfãs  e vulneráveis;\r\nd) Sensibilizar as famílias em matéria de equidade de género e igualdade de oportunidades entre rapazes e raparigas;\r\ne) Identificar dentro das áreas de actuação do projecto as oportunidades de capacitação profissional e advogar para o acesso de COVs ao treinamento vocacional.\r\n', ''),
(353, 241, 'attr', 'description', 'a) Identificar COVs sem registo de nascimento e outros documentos de identificação e referir para os serviços de Registo e Notariado;\r\nb) Realizar encontros permanentes com os serviços dos registos e notariado para facilitar o acesso das COVs aos serviços;\r\nc) Criar facilidades junto da liderança local para aquisição de atestado de pobreza.\r\n', '\r\n'),
(354, 242, 'attr', 'description', 'a) Facilitar sessões de aconselhamento nutricional as famílias de COVs;\r\nb) Promover a prática de hortas caseiras e plantio de árvores de frutas;\r\nc) Avaliar o estado nutricional das crianças através de fita de perímetro branquial e outros sinais visíveis;\r\nd) Referir os casos suspeitos de malnutrição as US;\r\ne) Promover a prática de machambas comunitárias.\r\n', ''),
(355, 243, 'attr', 'done_ratio', '30', '50'),
(356, 244, 'attr', 'description', 'a) Identificar as famílias de COVs  que têm problemas psicossociais para prestação de serviços de apoio psíiquico;\r\nb) Identificar e referir COVs com necessidades aos programas de reintegração Social;\r\nc) Sensibilizar os cuidadores dos COVs para conversarem abertamente com as COVs, perceberem suas frustrações e prestar apoio emocional;\r\nd) Sensibilizar cuidadores para a integração de COVs nos clubes infantis, grupos de brincar, igrejas respeitando sempre as escolhas.\r\n', ''),
(357, 245, 'attr', 'description', 'a) Identificar as famílias de COVs mais necessitadas na área de habitação;\r\nb) Mobilizar as comunidades para apoiar na melhoria das condições de habitação das COVs;\r\nc) Fazer referência e facilitar o acesso a INAS.\r\n', ''),
(358, 246, 'attr', 'done_ratio', '30', '50'),
(359, 247, 'attr', 'description', 'a) Sensibilizar as mães grávidas e lactantes sobre a importância do aleitamento materno exclusivo (AME) em crianças dos 0 aos 6 meses;\r\nb) Incentivar os parceiros para acompanhar as suas parceiras e crianças as consultas de SMI;\r\nc) Sensibilizar os pais para o fabrico de brinquedos com recurso dos materiais locais e reciclados;\r\nd) Sensibilizar os cuidadores das COVs para estimular o crescimento das crianças através de brincadeiras e conversar no dia-a-dia.\r\n', '\r\n'),
(360, 248, 'attr', 'done_ratio', '0', '50'),
(361, 249, 'attr', 'done_ratio', '20', '50'),
(362, 250, 'attr', 'description', 'a) Mapear os grupos de poupança existentes nas comunidades e reactivar as actividades;\r\nb) Criar novos grupos de poupanças;\r\nc) Facilitar as secções de alfabetização financeira;\r\nd) Integrar os adolescentes jovens nos grupos de poupanças;\r\ne) Integrar os cuidadores de COVs, chefes de famílias nos grupos de poupanças.\r\n', ''),
(363, 251, 'attr', 'done_ratio', '20', '10'),
(364, 252, 'attr', 'subject', 'Assinar um memorandum de entendimento com os Serviços Distritais da Saude, ,Mulher e Acçao Social (SDSMAS)', 'Assinar um memorandum de entendimento com os Serviços Distritais da Saude, Mulher e Acçao Social (SDSMAS)'),
(365, 253, 'attr', 'tracker_id', '3', '10'),
(366, 254, 'attr', 'description', 'a) Realizar um encontro de apresentação do Projecto com a participação do Governo distrital, Lideranças comunitárias, Comités Comunitários de Protecção da Criança, Parceiros clínicos, Serviços sociais, líderes religiosos, Organizações da sociedade civil e outros;\r\nb) Mapear os serviços sociais disponíveis nas comunidades do distrito da cidade de Lichinga; \r\nc) Estabelecer contactos e articular com parceiros clínicos e sociais para fortalecer a ligação de serviços e coordenação das actividades;\r\nd) Participar dos encontros de co-gestão, comité TARV e outros ao nível das US.\r\n', ''),
(367, 255, 'attr', 'description', 'a) Contratar 70 Activistas, 9 activistas chefes, 2 supervisores de campo e 5 Facilitadores de poupança;\r\nb) Formar num período de sete (7) dias um total de 70 Activistas, 9 activistas chefes, 2 supervisores de campo, 5 Facilitadores de poupança, 1 Supervisor de FE, 3 Assistentes (1 projecto e 2 M&A) e 1 coordenadora, em matéria de gestão de casos de COVs (padrões mínimos, serviços básicos e aspectos de M&A), com a facilitação de formadores credenciados pela FHI 360.\r\n', ''),
(368, 256, 'attr', 'description', 'a) Identificar na área geográfica do Projecto grupos de poupança existentes com actividades em curso;\r\nb) Promover sessões de debate nos grupos de poupança.\r\n\r\n', '\r\n'),
(369, 257, 'attr', 'description', 'a) Identificar nas US e comunidade COVs afectadas ou infectadas pelo HIV, COVs chefes de família e as mais vulneráveis com o apoio dos técnicos de saúde, parceiro clinico, CCPC, lideres comunitários e outros intervenientes;\r\nb) Avaliar o estado das COVs identificadas com recurso a matriz de apoio a criança, traçar um plano de acção e prestar serviço ou referir de acordo com as necessidades, numa abordagem centrada na Família;\r\nc) Articular com os Parceiros clínicos e Sociais para a facilidade de acesso das COVs aos serviços;\r\nd) Referir todas COVs e membros dos seus agregados familiares para os serviços de HIV (testagem, cuidados e tratamento), incluindo para outros serviços de saúde e sociais;\r\ne) Realizar visitas de acompanhamento das actividades no campo.\r\n', ''),
(370, 258, 'attr', 'description', 'a) Identificar instituições e outros actores que trabalham no apoio a COVs e articular com eles o mecanismo de referência e contra referência de beneficiários;\r\nb) Avaliar as necessidades das COVs e referir para outras instituições de apoio;\r\nc) Envolver as estruturas locais e actores que trabalham com COVs nos encontros de balanço das actividades do Projecto;\r\nd) Promover a equidade de género e realizar actividades recreativas no âmbito da celebração de dia 1 de Junho e 1 de Dezembro;\r\ne) Realizar visitas trimestrais de supervisão conjunta com os SDSMAS.\r\n', ''),
(371, 259, 'attr', 'done_ratio', '40', '50'),
(372, 260, 'attr', 'description', 'a) Sensibilizar cuidadores de COVs sobre a importância de integração e retenção das crianças na escola com especial atenção a rapariga;\r\nb) Advogar com as instituições do ensino, sectores de Educação e a serviços da Acção social a facilidade de acesso das crianças a matrícula, uniforme e material escolar;\r\nc) Promover a equidade de Género nas famílias de COVs e igualdade de oportunidades;\r\nd) Identificar oportunidades de capacitação Profissional e advogar para o acesso de jovens ao treinamento vocacional.\r\n', '\r\n'),
(373, 261, 'attr', 'description', 'a) Identificar COVs com necessidade de registo de nascimento e documentos de identificação e referir para serviços de notariado;\r\nb) Facilitar em coordenação com liderança comunitária a aquisição de atestado de pobreza;\r\nc) Facilitar o acesso das COVs aos serviços de notariado.\r\n', ''),
(374, 262, 'attr', 'done_ratio', '40', '50'),
(375, 263, 'attr', 'description', 'a) Promover o aconselhamento nutricional as famílias de COVs;\r\nb) Incentivar ao uso de alimentos localmente produzidos na preparação das refeições; \r\nc) Incentivar a prática de hortas caseiras, plantio de árvores de frutas;\r\nd) Promover a prática de machambas comunitárias em coordenação com o SDAE;\r\ne) Avaliar o estado nutricional das crianças pelo uso da fita de MUAC;  \r\nf) Referir para US os casos de suspeita de malnutrição. \r\n', '\r\n'),
(376, 264, 'attr', 'description', 'a) Identificar COVs e Cuidadores com necessidades emocionais e prestar o apoio psicossocial; \r\nb) Referir e facilitar o acesso das crianças a programas de reintegração social;\r\nc) Sensibilizar aos cuidadores para conversarem com as crianças, perceberem suas frustrações e apoio emocional;\r\nd) Sensibilizar cuidadores para a integração de crianças nos clubes infantis existentes, nas congregacoes religiosas e outros respeitando sempre as suas escolhas;\r\n', '\r\n'),
(377, 265, 'attr', 'description', 'a) Identificar as necessidades das famílias na componente habitacional;\r\nb) Sensibilizar os cuidadores das COVs a melhorarem as suas habitações de modo a garantir um abrigo condigno (arejado, limpo e seguro);\r\nc) Mobilizar a comunidade para apoiar na melhoria das condições de habitação das COVs;\r\nd) Referir e Facilitar o acesso das crianças aos serviços de Acção social.\r\n', ''),
(378, 266, 'attr', 'description', 'a) Promover nas famílias o aleitamento materno exclusivo;\r\nb) Incentivar o envolvimento do homem a acompanharem as suas esposas as consultas de SMI em todas as fases (pré/pós parto);\r\nc) Incentivar e ensinar aos pais a fabricarem brinquedos com material local ou reciclado;\r\nd) Incentivar aos cuidadores para estimularem o crescimento das crianças, conversando e brincando com elas durante as suas actividades diárias.\r\n', ''),
(379, 267, 'attr', 'done_ratio', '60', '50'),
(380, 268, 'attr', 'description', 'a) Mapear os grupos de Poupança já existentes e reactivar as actividades;\r\nb) Criar novos grupos de Poupança;\r\nc) Promover sessões de alfabetização financeira;\r\nd) Integrar os adolescentes e jovens nos grupos de poupança;\r\ne) Integrar os cuidadores de COVs e chefes de família nos grupos de poupança.\r\n', '\r\n'),
(381, 269, 'attr', 'subject', 'Reciclar turores para as aulas de explicaçao ', 'Reciclar tutores para as aulas de explicaçao '),
(382, 270, 'attr', 'subject', 'Formar alfabetizandas do distrito de Chimbunila em Artesanato e Gestao de pequenos negocios', 'Desenvolver habilidades para a vida, alfabetizaçao financeira e material de aprendizagem para o empreendedorismo'),
(383, 271, 'attr', 'subject', 'Aumentado o conhecimento entre raparigas sobre sua saude, direitos sociais e consequencias dos casamentos preamturos', 'Aumentado o conhecimento entre raparigas sobre sua saude, direitos sociais e consequencias dos casamentos prematuros'),
(384, 272, 'attr', 'due_date', NULL, '2017-12-30'),
(385, 272, 'attr', 'start_date', NULL, '2017-02-01'),
(386, 273, 'relation', 'relates', NULL, '778'),
(387, 274, 'relation', 'relates', NULL, '712'),
(388, 275, 'relation', 'relates', '778', NULL),
(389, 276, 'relation', 'relates', '712', NULL),
(390, 277, 'cf', '99', NULL, 'Numero de Curriculos'),
(391, 277, 'cf', '103', '', 'abc'),
(392, 277, 'cf', '51', '', 'minhas observações '),
(393, 278, 'cf', '99', 'Numero de Curriculos', NULL),
(394, 278, 'cf', '103', 'abc', ''),
(395, 278, 'cf', '51', 'minhas observações ', ''),
(396, 279, 'cf', '29', '', '1000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `members`
--

INSERT INTO `members` (`id`, `user_id`, `project_id`, `created_on`, `mail_notification`) VALUES
(10, 61, 17, '2018-05-14 11:21:07', 0),
(11, 28, 17, '2018-05-14 11:21:23', 0),
(12, 65, 17, '2018-05-14 11:21:56', 0),
(13, 7, 17, '2018-05-14 11:22:12', 0),
(17, 70, 17, '2018-05-15 14:22:32', 0),
(20, 24, 12, '2018-05-17 09:13:12', 0),
(24, 61, 12, '2018-05-17 09:13:12', 0),
(27, 5, 19, '2018-05-17 12:42:29', 0),
(28, 28, 20, '2018-05-17 17:12:45', 0),
(31, 50, 14, '2018-05-17 20:53:41', 0),
(32, 28, 14, '2018-05-17 20:53:41', 0),
(33, 21, 14, '2018-05-17 20:53:41', 0),
(34, 27, 14, '2018-05-17 20:53:41', 0),
(35, 62, 14, '2018-05-17 20:53:41', 0),
(37, 5, 14, '2018-05-17 20:53:41', 0),
(39, 50, 4, '2018-05-17 20:54:16', 0),
(40, 28, 4, '2018-05-17 20:54:16', 0),
(41, 21, 4, '2018-05-17 20:54:16', 0),
(42, 27, 4, '2018-05-17 20:54:16', 0),
(43, 62, 4, '2018-05-17 20:54:16', 0),
(45, 5, 4, '2018-05-17 20:54:16', 0),
(47, 50, 1, '2018-05-17 20:54:43', 0),
(48, 28, 1, '2018-05-17 20:54:43', 0),
(49, 21, 1, '2018-05-17 20:54:43', 0),
(50, 27, 1, '2018-05-17 20:54:43', 0),
(51, 62, 1, '2018-05-17 20:54:43', 0),
(53, 5, 1, '2018-05-17 20:54:43', 0),
(55, 50, 2, '2018-05-17 20:55:14', 0),
(56, 28, 2, '2018-05-17 20:55:14', 0),
(57, 21, 2, '2018-05-17 20:55:14', 0),
(58, 27, 2, '2018-05-17 20:55:14', 0),
(59, 62, 2, '2018-05-17 20:55:14', 0),
(61, 5, 2, '2018-05-17 20:55:14', 0),
(63, 53, 19, '2018-05-18 10:46:28', 0),
(64, 61, 19, '2018-05-18 10:47:10', 0),
(65, 39, 19, '2018-05-18 10:49:04', 0),
(67, 21, 21, '2018-05-18 17:08:49', 0),
(68, 28, 22, '2018-05-22 13:50:29', 0),
(69, 21, 23, '2018-05-23 09:31:15', 0),
(70, 50, 24, '2018-05-30 09:36:10', 0),
(71, 54, 24, '2018-05-30 09:36:26', 0),
(72, 51, 24, '2018-05-30 09:36:43', 0),
(73, 25, 24, '2018-05-30 09:36:56', 0),
(74, 7, 24, '2018-05-30 09:38:30', 0),
(75, 61, 24, '2018-05-30 09:39:33', 0),
(77, 53, 24, '2018-05-30 09:48:58', 0),
(79, 63, 24, '2018-05-30 10:11:05', 0),
(80, 64, 24, '2018-05-30 10:11:24', 0),
(81, 65, 24, '2018-05-30 10:12:03', 0),
(82, 33, 24, '2018-05-30 10:22:25', 0),
(83, 34, 24, '2018-05-30 10:22:40', 0),
(84, 27, 24, '2018-05-30 10:23:10', 0),
(85, 25, 12, '2018-05-31 08:52:38', 0),
(86, 24, 17, '2018-05-31 15:31:57', 0),
(87, 61, 20, '2018-05-31 15:34:28', 0),
(88, 24, 14, '2018-06-01 15:31:16', 0),
(89, 24, 4, '2018-06-01 15:31:26', 0),
(90, 24, 1, '2018-06-01 15:31:36', 0),
(91, 24, 2, '2018-06-01 15:31:53', 0),
(92, 67, 12, '2018-06-05 09:02:30', 0),
(94, 24, 18, '2018-06-05 11:52:39', 0),
(95, 24, 24, '2018-06-05 11:52:51', 0),
(96, 24, 23, '2018-06-05 11:53:18', 0),
(97, 24, 19, '2018-06-05 11:53:31', 0),
(98, 24, 22, '2018-06-05 11:53:40', 0),
(99, 24, 20, '2018-06-05 11:53:53', 0),
(100, 24, 25, '2018-06-05 11:54:18', 0),
(101, 61, 18, '2018-06-11 09:40:17', 0),
(102, 61, 25, '2018-06-12 09:50:56', 0),
(103, 61, 21, '2018-06-12 09:52:05', 0),
(104, 24, 21, '2018-06-12 09:52:19', 0),
(105, 61, 23, '2018-06-12 10:52:30', 0),
(106, 61, 22, '2018-06-12 10:53:44', 0),
(107, 28, 25, '2018-06-12 10:54:47', 0),
(108, 28, 26, '2018-06-18 11:14:44', 0),
(109, 24, 26, '2018-06-19 09:23:27', 0),
(110, 61, 26, '2018-06-19 09:23:43', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `member_roles`
--

CREATE TABLE `member_roles` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `member_roles`
--

INSERT INTO `member_roles` (`id`, `member_id`, `role_id`, `inherited_from`) VALUES
(10, 10, 15, NULL),
(11, 11, 4, NULL),
(12, 12, 11, NULL),
(13, 13, 18, NULL),
(20, 20, 3, NULL),
(24, 24, 3, NULL),
(27, 27, 3, NULL),
(28, 28, 3, NULL),
(31, 31, 3, NULL),
(32, 32, 3, NULL),
(33, 33, 3, NULL),
(34, 34, 3, NULL),
(35, 35, 3, NULL),
(37, 37, 3, NULL),
(39, 39, 3, NULL),
(40, 40, 3, NULL),
(41, 41, 3, NULL),
(42, 42, 3, NULL),
(43, 43, 3, NULL),
(45, 45, 3, NULL),
(47, 47, 3, NULL),
(48, 48, 3, NULL),
(49, 49, 3, NULL),
(50, 50, 3, NULL),
(51, 51, 3, NULL),
(53, 53, 3, NULL),
(55, 55, 3, NULL),
(56, 56, 3, NULL),
(57, 57, 3, NULL),
(58, 58, 3, NULL),
(59, 59, 3, NULL),
(61, 61, 3, NULL),
(63, 63, 9, NULL),
(64, 64, 15, NULL),
(65, 65, 8, NULL),
(67, 67, 3, NULL),
(68, 68, 3, NULL),
(69, 69, 3, NULL),
(70, 70, 3, NULL),
(71, 71, 23, NULL),
(72, 72, 22, NULL),
(73, 73, 12, NULL),
(74, 74, 18, NULL),
(75, 75, 15, NULL),
(78, 77, 9, NULL),
(80, 79, 9, NULL),
(81, 80, 10, NULL),
(82, 81, 11, NULL),
(83, 82, 27, NULL),
(84, 83, 26, NULL),
(85, 84, 16, NULL),
(90, 85, 3, NULL),
(91, 86, 3, NULL),
(92, 87, 15, NULL),
(93, 17, 28, NULL),
(94, 88, 3, NULL),
(95, 89, 3, NULL),
(96, 90, 3, NULL),
(97, 91, 3, NULL),
(98, 92, 3, NULL),
(106, 100, 24, NULL),
(107, 101, 15, NULL),
(108, 101, 3, NULL),
(112, 102, 15, NULL),
(113, 103, 15, NULL),
(114, 104, 24, NULL),
(117, 94, 24, NULL),
(119, 95, 24, NULL),
(120, 86, 24, NULL),
(122, 96, 24, NULL),
(124, 105, 15, NULL),
(125, 97, 24, NULL),
(128, 98, 24, NULL),
(130, 106, 15, NULL),
(131, 99, 24, NULL),
(137, 107, 4, NULL),
(138, 102, 3, NULL),
(139, 108, 3, NULL),
(140, 109, 24, NULL),
(141, 110, 15, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `description` text,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `open_id_authentication_associations`
--

CREATE TABLE `open_id_authentication_associations` (
  `id` int(11) NOT NULL,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `assoc_type` varchar(255) DEFAULT NULL,
  `server_url` blob,
  `secret` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `open_id_authentication_nonces`
--

CREATE TABLE `open_id_authentication_nonces` (
  `id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `homepage` varchar(255) DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `inherit_members` tinyint(1) NOT NULL DEFAULT '0',
  `default_version_id` int(11) DEFAULT NULL,
  `default_assigned_to_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `homepage`, `is_public`, `parent_id`, `created_on`, `updated_on`, `identifier`, `status`, `lft`, `rgt`, `inherit_members`, `default_version_id`, `default_assigned_to_id`) VALUES
(1, 'Programa Educação ', '', '', 1, 12, '2018-02-05 13:53:27', '2018-03-18 01:10:34', 'programa-educacao', 1, 14, 29, 0, NULL, NULL),
(2, 'Programa Saude ', '', '', 1, 12, '2018-02-05 13:53:36', '2018-03-18 01:10:48', 'programa-saude', 1, 30, 37, 0, NULL, NULL),
(4, 'Programa Desenvolvimento Institucional', '', '', 1, 12, '2018-02-05 13:54:03', '2018-03-18 01:10:17', 'programa-desenvolvimento-institucional', 1, 12, 13, 0, NULL, NULL),
(6, 'Plano Estratégico 2017 - 2020', '', '', 1, NULL, '2018-02-05 14:44:32', '2018-02-05 14:44:32', 'plano-estrategico-2017-2020', 5, 7, 8, 0, NULL, NULL),
(7, 'Plano Estratégico 2021-2014', '', '', 1, NULL, '2018-02-05 20:10:59', '2018-02-05 20:10:59', 'plano-estrategico-2021-2014', 5, 39, 40, 0, NULL, NULL),
(12, 'Plano Estratégico 2017-2020', '**Relatório de Indicadores/Metas:** http://intra.itis.ac.mz:81/reportPD.php?p=12\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamentoPD.php?p=12', '', 1, NULL, '2018-02-26 18:34:35', '2018-07-30 13:47:11', 'plano-estrategico-da-bhavika', 1, 9, 38, 0, NULL, NULL),
(13, 'Plano Estratégico', '', '', 1, NULL, '2018-03-02 09:29:15', '2018-03-02 09:29:15', 'plano-estrategico', 5, 1, 6, 0, NULL, NULL),
(14, 'Programa de Cidadania Activa', '', '', 1, 12, '2018-03-02 23:11:31', '2018-05-09 11:01:11', 'programa-de-cidadania', 1, 10, 11, 0, NULL, NULL),
(15, 'Programa de Educação', '', '', 1, 13, '2018-03-02 23:12:21', '2018-03-02 23:14:24', 'programa-de-educcao', 5, 2, 3, 0, NULL, NULL),
(16, 'Programa de Saúde', '', '', 1, 13, '2018-03-02 23:13:07', '2018-03-02 23:14:43', 'programa-de-saude', 5, 4, 5, 0, NULL, NULL),
(17, 'Girl\'s Inspire - Aprendendo Eu Posso Mudar!', 'Este projecto pretende contribuir para a eliminaçao dos casamentos prematuros atraves da alfabetizaçao, aulas de explicaçao para alunas do ensino primario e habilidades para a vida como forma de criar mecanismos para que mulheres e raparigas dos 3 distritos-alvo do projecto (Mandimba, Chimbunila e Cuamba) na provincia de Niassa tenham meios de subsistencia mais robustos e autonomia financeira.\r\n\r\nRelatório de Indicadores/Metas: http://intra.itis.ac.mz:81/report.php?p=17\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamento.php?p=17', 'www.progresso.co.mz', 1, 1, '2018-05-14 11:03:54', '2018-07-26 00:12:23', 'girl-s-inspire-aprendendo-eu-posso-mudar', 1, 21, 22, 0, NULL, NULL),
(18, 'Alfabetização para Formação Técnico-Vocacional', 'Este projecto visa proporcionar, ao longo de um período de 2 anos,  habilidades de literacia, numeracia e pré-profissionais a 5000 jovens em 5 distritos (Palma , Mocímboa da Praia , Macomia , Meluco , Quissanga ) e na cidade de Pemba,  província de Cabo Delgado,  Moçambique  de modo que eles podem qualificar-se para oa treinamento de preparação para o  trabalho e posterior treino tecnico/vocacional ou empreendedorismo\r\n\r\nRelatório de Indicadores/Metas: http://intra.itis.ac.mz:81/report.php?p=18\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamento.php?p=18', '', 1, 1, '2018-05-15 16:02:48', '2018-07-26 00:11:46', 'alfebetizacao-para-formacao-tecnico-vocacional', 1, 17, 18, 0, NULL, NULL),
(19, 'Muva  Aprender ', 'Testar se um programa de ensino secundário complementar, que consiste em ferramentas auxiliares elaboradas com base no currículo nacional e adoptando metodologias participativas que desenvolvam habilidades cognitivas e não-cognitivas, pode contribuir para a empregabilidade do aluno\r\n\r\n**Relatório de Indicadores/Metas:** http://intra.itis.ac.mz:81/report.php?p=19\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamento.php?p=19', '', 1, 1, '2018-05-17 12:42:29', '2018-07-26 00:13:16', 'muva-aprender', 1, 25, 26, 0, NULL, NULL),
(20, 'COVida \"Juntos pelas Crianças\", - Cabo Delgado', 'Através do programa de subvenções do COVida, preve-se o melhormanto  da saúde, do estado nutricional e do bem-estar das crianças órfãs e vulneráveis (COVs) que vivem nos distritos prioritários definidos pelo PEPFAR.\r\n\r\n**Relatório de Indicadores/Metas:** http://intra.itis.ac.mz:81/report.php?p=20\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamento.php?p=20', '', 1, 2, '2018-05-17 17:12:45', '2018-07-26 00:15:19', 'covida-juntos-pelas-criancas', 1, 33, 34, 0, NULL, NULL),
(21, '\"Eu Leio\"', 'O \"Eu Leio\" é um projecto financiado pela USAID e implementado em consórcio pelas ONG´s CESC - Centro de Aprendizagem e Capacitação da Sociedade Civil - Asoociação PROGRESSO e Save the Children International - Moçambique. O projecto é subdividido em 3 componentes e cada uma das ONG´s do consórcio implementa uma componente. O CESC é responsável pela implementação da Componente de Gestão Escolar, a PROGRESSO implementa a componente da Gestão Escolar e a Save the Children implementa a componente de Monitoria e Avaliação.\r\n\r\nRelatório de Indicadores/Metas: http://intra.itis.ac.mz:81/report.php?p=21\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamento.php?p=21', '', 1, 1, '2018-05-18 17:08:49', '2018-07-26 00:11:24', 'eu-leio', 1, 15, 16, 0, NULL, NULL),
(22, 'Promover a Educação das Raparigas e das Mulheres para Melhorar a Autonomia e os Meios de Subsistência em 9 Comunidades, na Província do Niassa', 'Prevenir casamentos prematuros e forçados de crianças através de educação e formação aberta, a distância baseada na tecnologia.\r\n\r\n**Relatório de Indicadores/Metas:** http://intra.itis.ac.mz:81/report.php?p=22\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamento.php?p=22', '', 1, 1, '2018-05-22 13:50:28', '2018-07-26 00:13:58', 'promover-a-educacao-das-raparigas-e-das-mulheres-para-melhorar-a-autonomia-e-os-meios-de-subsistenci', 1, 27, 28, 0, NULL, NULL),
(23, 'Melhorar a qualidade do ensino aplicando uma abordagem integrada ', 'Relatório de Indicadores/Metas: http://intra.itis.ac.mz:81/report.php?p=23\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamento.php?p=23', '', 1, 1, '2018-05-23 09:31:15', '2018-07-26 00:12:54', 'irlanda-educacao', 1, 23, 24, 0, NULL, NULL),
(24, 'BETTER', 'Melhor educação através da Formação de Professores e da Capacitação para Resultados (BETTER) é um projecto de sete anos cofinanciado pelo governo do Canadá e pela CODE, para apoiar a formação de formandos em Moçambique. Implementado pela CODE e pela Associação Progresso, parceiro moçambicano, iniciado em Julho de 2015, o objectivo final do BETTER é melhorar a qualidade da educação dos alunos do ensino primário, através da melhoria da qualidade da formação de professores em quatro Institutos de Formação de Professores (IFPs) localizados nas províncias de Cabo Delgado, Tete, Niassa e Maputo. O BETTER visa fortalecer o uso de metodologias centradas no aluno, promover a igualdade de género nos IFPs e escolas do ensino primário do projecto, fortalecer a capacidade dos professores para ensinar a língua e a literacia, melhorar a supervisão e a orientação dos aspirantes a professores durante as práticas/estágio, fortalecer a gestão escolar nas escolas de colocação, e melhorar a qualidade e quantidade de materiais, para apoiar o ensino da língua e da literacia. Através de monitoria e avaliação sistemáticas, e em estreita coordenação com o Ministério da Educação (MINEDH) de Moçambique, o BETTER informará a expansão de intervenções semelhantes no programa de professores, a nível nacional.\r\n\r\nRelatório de Indicadores/Metas: http://intra.itis.ac.mz:81/report.php?p=24\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamento.php?p=24', '', 1, 1, '2018-05-29 09:42:03', '2018-07-26 00:12:10', 'better', 1, 19, 20, 0, NULL, NULL),
(25, 'Prestaçao de Serviços de Nutriçao Baseados na Comunidade', 'Este projecto pretende contribuir para a reduçao dos niveis de desnutriçao cronica na provincia de Cabo Delgado, atraves da geraçao de resultados nutricionais melhorados em mmais de 80% dos beneficiarios directos (mulheres gravidas e lactantes, crianças menores de 2 anos e adolescentes do sexo feminino) em oito distritos-alvo do projecto.\r\n\r\n**Relatório de Indicadores/Metas:** http://intra.itis.ac.mz:81/report.php?p=25\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamento.php?p=25', '', 1, 2, '2018-06-01 10:49:10', '2018-07-26 00:16:08', 'prestacao-de-servicos-de-nutricao-baseados-na-comunidade', 1, 35, 36, 0, NULL, NULL),
(26, 'COVida \"Juntos pelas Crianças\" - Niassa', 'Contribuir para a criação de uma sociedade democrática de justiça social, na qual:\r\n• Os cidadãos sejam iguais perante a lei independentemente da sua cor, religião e sexo.\r\n• As necessidades básicas de todos são satisfeitas.\r\n• Haja equidade nas oportunidades de acesso aos recursos e para participar no desenvolvimento do país.\r\n\r\n**Relatório de Indicadores/Metas:** http://intra.itis.ac.mz:81/report.php?p=26\r\n**Relatório de Orçamento :** http://intra.itis.ac.mz:81/reportOrcamento.php?p=26', '', 1, 2, '2018-06-18 11:14:44', '2018-07-26 00:14:37', 'covida', 1, 31, 32, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `projects_trackers`
--

CREATE TABLE `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `projects_trackers`
--

INSERT INTO `projects_trackers` (`project_id`, `tracker_id`) VALUES
(1, 2),
(1, 3),
(1, 5),
(1, 10),
(1, 11),
(1, 12),
(2, 2),
(2, 3),
(2, 5),
(2, 10),
(2, 11),
(2, 12),
(4, 2),
(4, 3),
(4, 5),
(4, 10),
(4, 11),
(4, 12),
(6, 2),
(6, 3),
(6, 5),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 16),
(6, 17),
(7, 2),
(7, 3),
(7, 5),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(7, 16),
(7, 17),
(12, 2),
(12, 3),
(12, 5),
(12, 10),
(12, 11),
(12, 12),
(12, 13),
(12, 16),
(12, 17),
(12, 18),
(13, 2),
(13, 3),
(13, 5),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 16),
(13, 17),
(14, 2),
(14, 3),
(14, 5),
(14, 10),
(14, 11),
(14, 12),
(15, 2),
(15, 3),
(15, 5),
(15, 10),
(15, 11),
(15, 12),
(16, 2),
(16, 3),
(16, 5),
(16, 10),
(16, 11),
(16, 12),
(17, 2),
(17, 3),
(17, 5),
(17, 10),
(17, 11),
(17, 12),
(18, 2),
(18, 3),
(18, 5),
(18, 10),
(18, 11),
(18, 12),
(19, 2),
(19, 3),
(19, 5),
(19, 10),
(19, 11),
(19, 12),
(20, 2),
(20, 3),
(20, 5),
(20, 10),
(20, 11),
(20, 12),
(21, 2),
(21, 3),
(21, 5),
(21, 10),
(21, 11),
(21, 12),
(22, 2),
(22, 3),
(22, 5),
(22, 10),
(22, 11),
(22, 12),
(23, 2),
(23, 3),
(23, 5),
(23, 10),
(23, 11),
(23, 12),
(24, 2),
(24, 3),
(24, 5),
(24, 10),
(24, 11),
(24, 12),
(25, 2),
(25, 3),
(25, 5),
(25, 10),
(25, 11),
(25, 12),
(26, 2),
(26, 3),
(26, 5),
(26, 10),
(26, 11),
(26, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `visibility` int(11) DEFAULT '0',
  `options` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `queries`
--

INSERT INTO `queries` (`id`, `project_id`, `name`, `filters`, `user_id`, `column_names`, `sort_criteria`, `group_by`, `type`, `visibility`, `options`) VALUES
(3, 12, 'Relatório Demo', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\ntracker_id:\n  :operator: \"=\"\n  :values:\n  - \'11\'\n', 67, '---\n- :tracker\n- :status\n- :priority\n- :subject\n- :assigned_to\n- :updated_on\n- :author\n- :fixed_version\n- :total_estimated_hours\n- :last_updated_by\n', '---\n- - id\n  - desc\n- - due_date\n  - asc\n- - updated_on\n  - asc\n', 'tracker', 'IssueQuery', 0, '---\n:totalable_names:\n- :cf_29\n- :cf_81\n- :cf_55\n- :cf_58\n- :cf_57\n- :cf_63\n- :cf_65\n:draw_relations: \n:draw_progress_line: \n'),
(5, NULL, 'Relatorio de Actividades', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\ntracker_id:\n  :operator: \"=\"\n  :values:\n  - \'11\'\n  - \'12\'\n', 67, '---\n- :tracker\n- :subject\n- :cf_99\n- :cf_100\n- :cf_103\n- :cf_46\n- :cf_105\n', '---\n- - id\n  - asc\n- - tracker\n  - asc\n- - \'\'\n  - asc\n', '', 'IssueQuery', 2, '---\n:totalable_names: []\n:draw_relations: \n:draw_progress_line: \n'),
(6, NULL, 'Actividade por alocação ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\ntracker_id:\n  :operator: \"=\"\n  :values:\n  - \'11\'\n  - \'12\'\n', 67, '---\n- :tracker\n- :subject\n- :assigned_to\n- :start_date\n- :done_ratio\n- :cf_60\n- :cf_76\n- :cf_29\n', '---\n- - tracker\n  - asc\n- - id\n  - desc\n- - \'\'\n  - asc\n', 'assigned_to', 'IssueQuery', 2, '---\n:totalable_names:\n- :cf_29\n:draw_relations: \n:draw_progress_line: \n'),
(7, NULL, 'Actividades por Provincia', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\ntracker_id:\n  :operator: \"=\"\n  :values:\n  - \'11\'\n', 67, '---\n- :tracker\n- :subject\n- :assigned_to\n- :cf_60\n- :cf_76\n- :cf_99\n- :cf_100\n', '---\n- - cf_60\n  - desc\n- - \'\'\n  - asc\n- - \'\'\n  - asc\n', '', 'IssueQuery', 2, '---\n:totalable_names: []\n:draw_relations: \n:draw_progress_line: \n'),
(8, NULL, 'Relatório de Numero de Beneficiários ', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\ntracker_id:\n  :operator: \"=\"\n  :values:\n  - \'12\'\ncf_99:\n  :operator: \"=\"\n  :values:\n  - Nr.Beneficiários (0-5,homem)\n  - Nr.Beneficiários (0-5,mulher)\n  - Nr.Beneficiários (6-14,homem)\n  - Nr.Beneficiários (6-14,mulher)\n  - Nr.Beneficiários (15-24,homem)\n  - Nr.Beneficiários (15-24,mulher)\n  - Nr.Beneficiários (25-49,homem)\n  - Nr.Beneficiários (25-49,mulher)\n  - Nr.Beneficiários (>50,homem)\n  - Nr.Beneficiários (>50,mulher)\n', 67, '---\n- :tracker\n- :subject\n- :cf_99\n- :cf_100\n- :cf_105\n', '---\n- - id\n  - desc\n- - \'\'\n  - asc\n- - \'\'\n  - asc\n', '', 'IssueQuery', 2, '---\n:totalable_names: []\n:draw_relations: \n:draw_progress_line: \n'),
(9, NULL, 'Actividades por Projecto', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', 67, '---\n- :project\n- :tracker\n- :status\n- :priority\n- :subject\n- :assigned_to\n- :updated_on\n- :cf_29\n', '---\n- - id\n  - desc\n- - \'\'\n  - asc\n- - \'\'\n  - asc\n', 'project', 'IssueQuery', 2, '---\n:totalable_names:\n- :cf_29\n:draw_relations: \n:draw_progress_line: \n'),
(10, NULL, 'Relatório de Indicadores de Equipamento', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\ntracker_id:\n  :operator: \"=\"\n  :values:\n  - \'12\'\ncf_99:\n  :operator: \"=\"\n  :values:\n  - Quantidade de livros\n  - Quantidade de equipamento\n  - Quantidade de mobiliario\n', 67, '---\n- :subject\n- :cf_99\n- :cf_100\n- :cf_103\n- :cf_105\n', '---\n- - id\n  - desc\n- - \'\'\n  - asc\n- - \'\'\n  - asc\n', '', 'IssueQuery', 2, '---\n:totalable_names:\n- :cf_29\n:draw_relations: \n:draw_progress_line: \n'),
(11, NULL, 'Relatório de Orçamento / Valor gasto', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n', 67, '---\n- :tracker\n- :subject\n- :cf_29\n- :cf_81\n', '---\n- - id\n  - desc\n- - \'\'\n  - asc\n- - \'\'\n  - asc\n', '', 'IssueQuery', 2, '---\n:totalable_names: []\n:draw_relations: \n:draw_progress_line: \n'),
(12, NULL, 'Relatório da Argentina', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\ntracker_id:\n  :operator: \"=\"\n  :values:\n  - \'11\'\n', 67, '---\n- :tracker\n- :status\n- :priority\n- :subject\n- :assigned_to\n- :start_date\n- :due_date\n', '---\n- - id\n  - desc\n- - \'\'\n  - asc\n- - \'\'\n  - asc\n', '', 'IssueQuery', 2, '---\n:totalable_names:\n- :cf_29\n:draw_relations: \n:draw_progress_line: \n'),
(13, NULL, 'Relatório Teste', '---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\ntracker_id:\n  :operator: \"=\"\n  :values:\n  - \'11\'\n', 67, '---\n- :tracker\n- :status\n- :subject\n- :start_date\n- :due_date\n- :cf_45\n', '---\n- - id\n  - desc\n- - status\n  - asc\n- - priority\n  - asc\n', 'category', 'IssueQuery', 2, '---\n:totalable_names:\n- :cf_95\n- :cf_29\n:draw_relations: \n:draw_progress_line: \n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `queries_roles`
--

CREATE TABLE `queries_roles` (
  `query_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `repositories`
--

CREATE TABLE `repositories` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(60) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `root_url` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `path_encoding` varchar(64) DEFAULT NULL,
  `log_encoding` varchar(64) DEFAULT NULL,
  `extra_info` longtext,
  `identifier` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT NULL,
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int(11) NOT NULL DEFAULT '0',
  `permissions` text,
  `issues_visibility` varchar(30) NOT NULL DEFAULT 'default',
  `users_visibility` varchar(30) NOT NULL DEFAULT 'all',
  `time_entries_visibility` varchar(30) NOT NULL DEFAULT 'all',
  `all_roles_managed` tinyint(1) NOT NULL DEFAULT '1',
  `settings` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `position`, `assignable`, `builtin`, `permissions`, `issues_visibility`, `users_visibility`, `time_entries_visibility`, `all_roles_managed`, `settings`) VALUES
(1, 'Non member', 0, 1, 1, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'0\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'0\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  add_issues:\n  - \'5\'\n  - \'3\'\n  - \'10\'\n  - \'2\'\n  - \'11\'\n  - \'12\'\n  delete_issues:\n  - \'11\'\n  view_issues: []\n  edit_issues: []\n  add_issue_notes: []\n'),
(2, 'Anonymous', 0, 1, 2, '---\n- :view_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :view_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, NULL),
(3, 'Gestor de Projecto', 1, 1, 0, '---\n- :add_project\n- :edit_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_public_queries\n- :save_queries\n- :view_messages\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :manage_boards\n- :view_calendar\n- :view_documents\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_files\n- :manage_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :edit_issues\n- :copy_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :delete_issues\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :import_issues\n- :manage_categories\n- :view_news\n- :manage_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :commit_access\n- :manage_related_issues\n- :manage_repository\n- :view_time_entries\n- :log_time\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :view_wiki_pages\n- :view_wiki_edits\n- :export_wiki_pages\n- :edit_wiki_pages\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_wiki\n', 'all', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(4, 'Assistente de Programas', 2, 1, 0, '---\n- :manage_versions\n- :save_queries\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :manage_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :add_issue_notes\n- :view_private_notes\n- :manage_categories\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :commit_access\n- :view_time_entries\n- :log_time\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(6, 'Doador', 3, 1, 0, '---\n- :save_queries\n- :view_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :view_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(7, 'Parceiro de Implementaçao', 4, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :view_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(8, 'Auxiliar Administrativo ', 5, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'0\'\n  edit_issues: \'1\'\n  add_issue_notes: \'0\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  add_issues:\n  - \'11\'\n  add_issue_notes:\n  - \'11\'\n  view_issues: []\n  edit_issues: []\n  delete_issues: []\n'),
(9, 'Oficial de Contabilidade', 6, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'0\'\n  edit_issues: \'1\'\n  add_issue_notes: \'0\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  add_issues:\n  - \'11\'\n  add_issue_notes:\n  - \'11\'\n  view_issues: []\n  edit_issues: []\n  delete_issues: []\n'),
(10, 'Assistente de Recursos Humanos', 7, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'0\'\n  edit_issues: \'1\'\n  add_issue_notes: \'0\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  add_issues:\n  - \'11\'\n  add_issue_notes:\n  - \'11\'\n  view_issues: []\n  edit_issues: []\n  delete_issues: []\n'),
(11, 'Coordenadora Editorial', 8, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'0\'\n  add_issues: \'0\'\n  edit_issues: \'1\'\n  add_issue_notes: \'0\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues:\n  - \'11\'\n  add_issues:\n  - \'11\'\n  add_issue_notes:\n  - \'11\'\n  edit_issues: []\n  delete_issues: []\n'),
(12, 'Oficial Monitoria e Avaliaçao', 9, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(13, 'Parceiro co-financiador', 10, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(14, 'Presidente Conselho Direcçao', 11, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(15, 'Responsavel de Programas', 12, 1, 0, '---\n- :add_project\n- :edit_project\n- :close_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_public_queries\n- :save_queries\n- :view_messages\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :manage_boards\n- :view_calendar\n- :view_documents\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_files\n- :manage_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :edit_issues\n- :copy_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :delete_issues\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :import_issues\n- :manage_categories\n- :view_news\n- :manage_news\n- :comment_news\n- :view_report_filters\n- :view_changesets\n- :browse_repository\n- :commit_access\n- :manage_related_issues\n- :manage_repository\n- :view_time_entries\n- :log_time\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :view_wiki_pages\n- :view_wiki_edits\n- :export_wiki_pages\n- :edit_wiki_pages\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_wiki\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(16, 'Coordenadora Geral', 13, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(17, 'Consultora Angariaçao Fundos', 14, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(18, 'Assistente de Comunicaçao', 15, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :manage_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(19, 'Auxiliar de Recursos Humanos', 16, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(20, 'Auxiliar de Contabilidade', 17, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(21, 'Assistente de Contabilidade', 18, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(22, 'Oficial de Educaçao', 19, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(23, 'Assistente de Genero', 20, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(24, 'Assistente Monito. e Avaliaçao', 21, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(25, 'Assistente Administrativo', 22, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(26, 'Elaboradores de manuais', 23, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(27, 'Coordenador de elaboradores', 24, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n'),
(28, 'Oficial de Projecto', 25, 1, 0, '---\n- :save_queries\n- :view_messages\n- :add_messages\n- :view_calendar\n- :view_documents\n- :add_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :view_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n', 'default', 'all', 'all', 1, '--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: \'1\'\n  add_issues: \'1\'\n  edit_issues: \'1\'\n  add_issue_notes: \'1\'\n  delete_issues: \'1\'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles_managed_roles`
--

CREATE TABLE `roles_managed_roles` (
  `role_id` int(11) NOT NULL,
  `managed_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('1'),
('10'),
('100'),
('101'),
('102'),
('103'),
('104'),
('105'),
('106'),
('107'),
('108'),
('11'),
('12'),
('13'),
('14'),
('15'),
('16'),
('17'),
('18'),
('19'),
('2'),
('20'),
('20090214190337'),
('20090312172426'),
('20090312194159'),
('20090318181151'),
('20090323224724'),
('20090401221305'),
('20090401231134'),
('20090403001910'),
('20090406161854'),
('20090425161243'),
('20090503121501'),
('20090503121505'),
('20090503121510'),
('20090614091200'),
('20090704172350'),
('20090704172355'),
('20090704172358'),
('20091010093521'),
('20091017212227'),
('20091017212457'),
('20091017212644'),
('20091017212938'),
('20091017213027'),
('20091017213113'),
('20091017213151'),
('20091017213228'),
('20091017213257'),
('20091017213332'),
('20091017213444'),
('20091017213536'),
('20091017213642'),
('20091017213716'),
('20091017213757'),
('20091017213835'),
('20091017213910'),
('20091017214015'),
('20091017214107'),
('20091017214136'),
('20091017214236'),
('20091017214308'),
('20091017214336'),
('20091017214406'),
('20091017214440'),
('20091017214519'),
('20091017214611'),
('20091017214644'),
('20091017214720'),
('20091017214750'),
('20091025163651'),
('20091108092559'),
('20091114105931'),
('20091123212029'),
('20091205124427'),
('20091220183509'),
('20091220183727'),
('20091220184736'),
('20091225164732'),
('20091227112908'),
('20100129193402'),
('20100129193813'),
('20100221100219'),
('20100313132032'),
('20100313171051'),
('20100705164950'),
('20100819172912'),
('20101104182107'),
('20101107130441'),
('20101114115114'),
('20101114115359'),
('20110220160626'),
('20110223180944'),
('20110223180953'),
('20110224000000'),
('20110226120112'),
('20110226120132'),
('20110227125750'),
('20110228000000'),
('20110228000100'),
('20110401192910'),
('20110408103312'),
('20110412065600'),
('20110511000000'),
('20110902000000'),
('20111201201315'),
('20120115143024'),
('20120115143100'),
('20120115143126'),
('20120127174243'),
('20120205111326'),
('20120223110929'),
('20120301153455'),
('20120422150750'),
('20120705074331'),
('20120707064544'),
('20120714122000'),
('20120714122100'),
('20120714122200'),
('20120731164049'),
('20120930112914'),
('20121026002032'),
('20121026003537'),
('20121209123234'),
('20121209123358'),
('20121212125001-redmine_custom_reports'),
('20121212125002-redmine_custom_reports'),
('20121212125003-redmine_custom_reports'),
('20121213084931'),
('20130110122628'),
('20130201184705'),
('20130202090625'),
('20130207175206'),
('20130207181455'),
('20130215073721'),
('20130215111127'),
('20130215111141'),
('20130217094251'),
('20130602092539'),
('20130710182539'),
('20130713104233'),
('20130713111657'),
('20130729070143'),
('20130911193200'),
('20131004113137'),
('20131005100610'),
('20131124175346'),
('20131210180802'),
('20131214094309'),
('20131215104612'),
('20131218183023'),
('20140228130325'),
('20140903143914'),
('20140920094058'),
('20141029181752'),
('20141029181824'),
('20141109112308'),
('20141122124142'),
('20150113194759'),
('20150113211532'),
('20150113213922'),
('20150113213955'),
('20150208105930'),
('20150510083747'),
('20150525103953'),
('20150526183158'),
('20150528084820'),
('20150528092912'),
('20150528093249'),
('20150725112753'),
('20150730122707'),
('20150730122735'),
('20150921204850'),
('20150921210243'),
('20151020182334'),
('20151020182731'),
('20151021184614'),
('20151021185456'),
('20151021190616'),
('20151024082034'),
('20151025072118'),
('20151031095005'),
('20160404080304'),
('20160416072926'),
('20160529063352'),
('20161001122012'),
('20161002133421'),
('20161010081301'),
('20161010081528'),
('20161010081600'),
('20161126094932'),
('20161220091118'),
('20170207050700'),
('20170302015225'),
('20170309214320'),
('20170320051650'),
('20170418090031'),
('20170419144536'),
('21'),
('22'),
('23'),
('24'),
('25'),
('26'),
('27'),
('28'),
('29'),
('3'),
('30'),
('31'),
('32'),
('33'),
('34'),
('35'),
('36'),
('37'),
('38'),
('39'),
('4'),
('40'),
('41'),
('42'),
('43'),
('44'),
('45'),
('46'),
('47'),
('48'),
('49'),
('5'),
('50'),
('51'),
('52'),
('53'),
('54'),
('55'),
('56'),
('57'),
('58'),
('59'),
('6'),
('60'),
('61'),
('62'),
('63'),
('64'),
('65'),
('66'),
('67'),
('68'),
('69'),
('7'),
('70'),
('71'),
('72'),
('73'),
('74'),
('75'),
('76'),
('77'),
('78'),
('79'),
('8'),
('80'),
('81'),
('82'),
('83'),
('84'),
('85'),
('86'),
('87'),
('88'),
('89'),
('9'),
('90'),
('91'),
('92'),
('93'),
('94'),
('95'),
('96'),
('97'),
('98'),
('99');

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `updated_on`) VALUES
(1, 'ui_theme', 'classic', '2018-02-05 19:52:00'),
(2, 'default_language', 'pt', '2018-04-29 19:04:37'),
(3, 'force_default_language_for_anonymous', '1', '2018-05-28 15:26:07'),
(4, 'force_default_language_for_loggedin', '0', '2018-02-05 14:40:07'),
(5, 'start_of_week', '1', '2018-02-05 19:52:53'),
(6, 'date_format', '%d %b %Y', '2018-02-05 19:52:53'),
(7, 'time_format', '%H:%M', '2018-02-05 19:52:53'),
(8, 'timespan_format', 'decimal', '2018-02-05 14:40:08'),
(9, 'user_format', 'firstname_lastname', '2018-02-05 14:40:08'),
(10, 'gravatar_enabled', '0', '2018-02-05 14:40:08'),
(11, 'gravatar_default', '', '2018-02-05 14:40:08'),
(12, 'thumbnails_enabled', '0', '2018-02-05 14:40:08'),
(13, 'thumbnails_size', '100', '2018-02-05 14:40:08'),
(14, 'new_item_menu_tab', '2', '2018-02-05 14:40:08'),
(15, 'app_title', 'Sistema de Monitoria de Projectos', '2018-02-05 14:40:20'),
(16, 'welcome_text', 'A Associação PROGRESSO foi criada em 6 de Março de 1991 como pessoa colectiva de utilidade pública, dotada de personalidade jurídica, autonomia administrativa, financeira e patrimonial.\r\nA Associação PROGRESSO desenvolve as suas acções no espírito de entre ajuda fundado na garantia constitucional do associativismo, o que constitui um dos princípios básicos para o desenvolvimento humano, com enfoque na melhoria das condições de vida da sociedade moçambicana, tendo como base as comunidades e as classes mais vulneráveis, designadamente a mulher e criança.\r\n\r\n* [Ver relatorio de beneficiarios do Plano Estrategico](http://intra.itis.ac.mz/bhavika/Report1MISA.html)\r\n* [Ver relatorio de orcamento do Plano Estrategico](http://intra.itis.ac.mz/bhavika/ReportMisaOrcamento.html)\r\n\r\n* [Ver relatório Geral do Plano Estratégico](http://intra.itis.ac.mz/bhavika/reportBetter.html)', '2018-07-10 10:05:46'),
(17, 'per_page_options', '25,50,100', '2018-02-05 14:40:21'),
(18, 'search_results_per_page', '10', '2018-02-05 14:40:21'),
(19, 'activity_days_default', '30', '2018-02-05 14:40:21'),
(20, 'host_name', 'http://intra.itis.ac.mz:81/redmine/', '2018-05-28 15:08:19'),
(21, 'protocol', 'http', '2018-02-05 14:40:21'),
(22, 'text_formatting', 'markdown', '2018-03-13 20:00:00'),
(23, 'cache_formatted_text', '0', '2018-02-05 14:40:21'),
(24, 'wiki_compression', '', '2018-02-05 14:40:21'),
(25, 'feeds_limit', '15', '2018-02-05 14:40:21'),
(26, 'default_projects_public', '1', '2018-02-05 19:53:50'),
(27, 'default_projects_modules', '---\n- issue_tracking\n- time_tracking\n- news\n- documents\n- wiki\n- repository\n- calendar\n- gantt\n', '2018-03-21 21:59:54'),
(28, 'default_projects_tracker_ids', '---\n- \'5\'\n- \'3\'\n- \'10\'\n- \'2\'\n- \'11\'\n- \'12\'\n- \'8\'\n- \'1\'\n', '2018-05-18 11:28:39'),
(29, 'sequential_project_identifiers', '0', '2018-02-05 19:53:50'),
(30, 'new_project_user_role_id', '3', '2018-02-05 19:53:50'),
(31, 'cross_project_issue_relations', '1', '2018-03-19 04:31:15'),
(32, 'link_copied_issue', 'ask', '2018-02-05 19:54:30'),
(33, 'cross_project_subtasks', 'system', '2018-03-19 04:15:45'),
(34, 'issue_group_assignment', '0', '2018-03-21 21:59:17'),
(35, 'default_issue_start_date_to_creation_date', '0', '2018-05-28 15:19:22'),
(36, 'display_subprojects_issues', '0', '2018-03-19 04:17:35'),
(37, 'issue_done_ratio', 'issue_field', '2018-02-05 19:54:30'),
(38, 'non_working_week_days', '---\n- \'6\'\n- \'7\'\n', '2018-02-05 19:54:30'),
(39, 'issues_export_limit', '500', '2018-02-05 19:54:30'),
(40, 'gantt_items_limit', '500', '2018-02-05 19:54:30'),
(41, 'parent_issue_dates', 'independent', '2018-05-28 15:19:23'),
(42, 'parent_issue_priority', 'derived', '2018-02-05 19:54:30'),
(43, 'parent_issue_done_ratio', 'independent', '2018-05-29 17:38:11'),
(44, 'issue_list_default_columns', '---\n- tracker\n- status\n- priority\n- subject\n- assigned_to\n- updated_on\n- cf_104\n', '2018-06-12 09:17:39'),
(45, 'issue_list_default_totals', '---\n- cf_29\n', '2018-05-28 15:19:23'),
(46, 'timelog_required_fields', '---\n- issue_id\n- comments\n', '2018-02-05 19:54:39'),
(47, 'plugin_redmine_report_filters', '---\nsettings_closed_statuses:\n- \'5\'\n', '2018-03-10 04:47:45'),
(48, 'enabled_scm', '---\n- Subversion\n- Darcs\n- Mercurial\n- Cvs\n- Bazaar\n- Git\n', '2018-03-13 19:54:19'),
(49, 'autofetch_changesets', '1', '2018-03-13 19:54:19'),
(50, 'sys_api_enabled', '0', '2018-03-13 19:54:19'),
(51, 'repository_log_display_limit', '100', '2018-03-13 19:54:19'),
(52, 'commit_logs_formatting', '1', '2018-03-13 19:54:19'),
(53, 'commit_ref_keywords', 'refs,references,IssueID', '2018-03-13 19:54:19'),
(54, 'commit_cross_project_ref', '0', '2018-03-13 19:54:19'),
(55, 'commit_logtime_enabled', '0', '2018-03-13 19:54:19'),
(56, 'commit_update_keywords', '--- []\n', '2018-03-13 19:54:19'),
(57, 'attachment_max_size', '200000', '2018-03-22 06:59:37'),
(58, 'attachment_extensions_allowed', '', '2018-03-22 06:59:37'),
(59, 'attachment_extensions_denied', '', '2018-03-22 06:59:37'),
(60, 'file_max_size_displayed', '200000', '2018-03-22 06:59:37'),
(61, 'diff_max_lines_displayed', '1500', '2018-03-22 06:59:37'),
(62, 'repositories_encodings', '', '2018-03-22 06:59:37'),
(63, 'mail_from', 'sistemademonitoria@progresso.co.mz', '2018-05-10 11:45:23'),
(64, 'bcc_recipients', '1', '2018-05-03 11:45:49'),
(65, 'plain_text_mail', '0', '2018-05-03 11:45:49'),
(66, 'default_notification_option', 'all', '2018-05-03 11:45:49'),
(67, 'notified_events', '---\n- issue_added\n- issue_updated\n- news_added\n- news_comment_added\n- document_added\n- file_added\n- message_posted\n- wiki_content_added\n- wiki_content_updated\n', '2018-05-03 11:45:49'),
(68, 'emails_header', 'Sistema de Monitoria de Projectos da Associação Progresso', '2018-05-10 11:45:23'),
(69, 'emails_footer', 'You have received this notification because you have either subscribed to it, or are involved in it.\r\nTo change your notification preferences, please click here: http://hostname/my/account', '2018-05-03 11:45:50'),
(70, 'login_required', '0', '2018-05-28 15:26:26'),
(71, 'autologin', '0', '2018-05-28 15:26:26'),
(72, 'self_registration', '0', '2018-05-28 15:26:26'),
(73, 'show_custom_fields_on_registration', '0', '2018-05-28 15:26:26'),
(74, 'unsubscribe', '0', '2018-05-28 15:26:44'),
(75, 'password_min_length', '8', '2018-05-28 15:26:27'),
(76, 'password_max_age', '0', '2018-05-28 15:26:27'),
(77, 'lost_password', '1', '2018-05-28 15:26:27'),
(78, 'max_additional_emails', '5', '2018-05-28 15:26:27'),
(79, 'openid', '0', '2018-05-28 15:26:27'),
(80, 'session_lifetime', '0', '2018-05-28 15:26:27'),
(81, 'session_timeout', '0', '2018-05-28 15:26:27'),
(82, 'default_users_hide_mail', '1', '2018-05-28 15:26:27'),
(83, 'default_users_time_zone', '', '2018-05-28 15:26:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `time_entries`
--

CREATE TABLE `time_entries` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(1024) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `time_entries`
--

INSERT INTO `time_entries` (`id`, `project_id`, `user_id`, `issue_id`, `hours`, `comments`, `activity_id`, `spent_on`, `tyear`, `tmonth`, `tweek`, `created_on`, `updated_on`) VALUES
(5, 17, 24, 339, 43, 'Foram formadas menos raparigas em relaçao ao numero que foi planificado.', 15, '2018-05-29', 2018, 5, 22, '2018-05-29 10:15:50', '2018-05-29 10:15:50'),
(10, 19, 5, 342, 427, 'Este foi o tempo gasto na realização das aulas de explicacao', 15, '2018-06-18', 2018, 6, 25, '2018-06-18 09:09:20', '2018-06-18 09:09:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `action`, `value`, `created_on`, `updated_on`) VALUES
(29, 25, 'feeds', '36af6825cefa10bde673e3722e2c58dfc362f422', '2018-03-21 00:58:00', '2018-03-21 00:58:00'),
(36, 24, 'feeds', 'a903d42cdf15584b97bbf90dd79f07881073fe9c', '2018-03-21 01:29:03', '2018-03-21 01:29:03'),
(44, 33, 'feeds', '3ba72d896a9f5a6331f0958ffb4253af01dda899', '2018-03-21 01:37:22', '2018-03-21 01:37:22'),
(47, 36, 'feeds', '0aaeda5084ecc0e5b79467cc34396884f9ae8a15', '2018-03-21 01:39:50', '2018-03-21 01:39:50'),
(49, 34, 'feeds', '13f199fcf9a0031edf6cc643a0004595b0c6d3ae', '2018-03-21 01:47:33', '2018-03-21 01:47:33'),
(54, 27, 'feeds', '67f021c08b652bf64ea93ba99c268641db6c2e4a', '2018-03-21 21:21:42', '2018-03-21 21:21:42'),
(63, 28, 'feeds', '8cd43a5d111b98f1e3389aec91dcc336c22f9486', '2018-03-22 01:33:15', '2018-03-22 01:33:15'),
(68, 7, 'feeds', '55ac4ba82218141f417a3396efd9694537b13c42', '2018-03-22 20:55:29', '2018-03-22 20:55:29'),
(118, 50, 'feeds', 'b77a43557c9b557500cec5f8ff28daa91c77fc7c', '2018-04-27 15:41:17', '2018-04-27 15:41:17'),
(122, 21, 'feeds', '24b11db27fe711a369e1b16e53a737caea152d1f', '2018-04-27 15:51:19', '2018-04-27 15:51:19'),
(148, 53, 'feeds', '0e6056d4ed3338a97179d24700b296796f0a6d7c', '2018-04-30 08:37:50', '2018-04-30 08:37:50'),
(159, 51, 'feeds', '64ffc4a982341c8af44492039770b01388d42185', '2018-04-30 15:11:18', '2018-04-30 15:11:18'),
(160, 5, 'feeds', '796f3d0f96fae845d88f2cb271e2268ef813b50d', '2018-04-30 15:13:33', '2018-04-30 15:13:33'),
(188, 37, 'feeds', '9a62ee45029c1ccaf76be9dc08629c37f2d9493b', '2018-05-09 09:20:56', '2018-05-09 09:20:56'),
(193, 67, 'feeds', 'fa0fd7c46d97957df85b1597d3e7f53398f7f558', '2018-05-10 10:47:45', '2018-05-10 10:47:45'),
(201, 37, 'session', 'b9c4f0ac28b5c1791cfd320092b2e3c6d72c4d03', '2018-05-11 16:11:45', '2018-05-11 16:11:47'),
(205, 61, 'feeds', '8967a329f5e8d2a304597c66ad1f3ab065f5e85f', '2018-05-14 09:36:18', '2018-05-14 09:36:18'),
(209, 5, 'session', 'fc6034b8519cf747e76817d582b00f70e99123cb', '2018-05-14 15:30:53', '2018-05-14 17:01:20'),
(214, 69, 'feeds', '9a1e82ef6c9ea5d838512ff69fcbfc56807b5c35', '2018-05-15 09:50:59', '2018-05-15 09:50:59'),
(242, 21, 'session', '0190ab8f4af948d4e17b5952ab1f8659efef6378', '2018-05-17 14:58:03', '2018-05-17 15:10:38'),
(253, 5, 'session', '19a2daefab5d4ec44085bd39c76b95b5c0074538', '2018-05-18 10:18:19', '2018-05-18 10:57:36'),
(269, 5, 'session', 'db574fd16582802d2f63bccabdb936c0cfea276b', '2018-05-22 08:57:10', '2018-05-22 10:04:50'),
(278, 21, 'session', 'df3e0b59f19d5292e0a31cfad16cf99f3f2b72d2', '2018-05-25 08:55:03', '2018-05-25 08:57:25'),
(281, 21, 'session', 'a74d6320e0de3cf806a80330682b98abb417684c', '2018-05-28 09:23:48', '2018-05-28 09:34:34'),
(283, 21, 'session', '45bf9e084ccec66813d7e359865f9998e666b317', '2018-05-28 13:11:03', '2018-05-28 15:29:53'),
(293, 7, 'session', 'accec3fcb4e865c30387134688788405df96991f', '2018-05-29 08:40:35', '2018-05-29 08:49:08'),
(296, 21, 'session', '60feabb34a37acdfa9bd3b3ac3383fcb3ae3ae6c', '2018-05-29 09:07:22', '2018-05-29 10:55:36'),
(297, 25, 'session', 'a05193ebc16b90667a700b591be08922f8e897cf', '2018-05-29 11:04:51', '2018-05-29 11:28:12'),
(302, 54, 'session', '33b388dbf0a1b77b5ef203a7d869cbf96ed960e3', '2018-05-30 10:35:30', '2018-05-30 10:58:03'),
(303, 54, 'feeds', '717bfbed7e8c77045fec9120c33266e8c620e344', '2018-05-30 10:37:54', '2018-05-30 10:37:54'),
(309, 7, 'session', 'b0b7ffdbe11285694a11c652e768c525787c5ee6', '2018-05-31 13:35:42', '2018-05-31 15:52:42'),
(320, 82, 'session', 'a17d9a88c63213c77c64a00025f0ab6c96f53e89', '2018-06-02 07:58:39', '2018-06-02 08:01:38'),
(323, 7, 'session', '54271a51f10937694ef079c9b564528c80920328', '2018-06-05 10:46:42', '2018-06-05 10:47:58'),
(326, 21, 'session', '403cb53a801be5a7d37e904195f54da406ff767d', '2018-06-11 17:26:59', '2018-06-11 17:30:07'),
(332, 28, 'session', 'edee26684de221b3059596939137d8c7bf7a0442', '2018-06-13 11:49:39', '2018-06-13 11:49:39'),
(335, 7, 'session', '19a1fbc956bd851b88c5a2f76de6bfde650623bc', '2018-06-14 10:47:06', '2018-06-14 10:47:06'),
(336, 28, 'session', '9f2dbdaa93c485e4d6908ebb6b80aa20f17b1f07', '2018-06-14 11:56:29', '2018-06-14 11:56:29'),
(338, 28, 'session', '2b23da5b9315de8b6253ffd2ec8cfaa322e7cb8c', '2018-06-15 10:57:28', '2018-06-15 10:57:28'),
(340, 5, 'session', 'e3e949f74deee0af5d8630b8ebaa87c3f91aac72', '2018-06-18 08:20:33', '2018-06-18 09:38:27'),
(341, 28, 'session', 'a6b8a0841172e2bee258c98924783e811c8ebcb2', '2018-06-18 09:25:11', '2018-06-18 16:36:16'),
(343, 21, 'session', '4f1016c08cae4b19611d28b0e6d20d7e93fe5d4c', '2018-06-18 12:26:18', '2018-06-18 12:30:24'),
(344, 21, 'session', 'd8c6a30ce0d9b60712f913f9ccaaf56694d47315', '2018-06-19 09:13:25', '2018-06-19 12:36:45'),
(345, 28, 'session', '483105033fe33c2eef3cc11c0903cceae1cc9b38', '2018-06-19 09:39:00', '2018-06-19 09:59:46'),
(348, 28, 'session', 'dfd59c929f936b087bc0cea71de1f97d4d57ead5', '2018-06-21 10:13:11', '2018-06-21 17:53:07'),
(356, 28, 'session', 'fc3959108f70ab3150cd53ab104870d90e7b72a3', '2018-06-26 11:05:22', '2018-06-26 11:06:01'),
(357, 28, 'session', '487a2c5fb8b7def6b44240414fe2a265c898e22b', '2018-06-27 08:15:55', '2018-06-27 08:23:08'),
(359, 28, 'session', '2538ed14f8811ff38d32c79a0deff5141dfd1f1f', '2018-06-27 15:03:14', '2018-06-27 17:12:46'),
(361, 28, 'session', 'e03443d11e069850b638cf50d47a518951c8775f', '2018-06-28 08:22:23', '2018-06-28 10:57:05'),
(369, 67, 'session', '878ef8eafef56a7a9ec33ba1ce9134beb46d6788', '2018-06-28 14:39:48', '2018-06-28 16:18:10'),
(373, 67, 'session', '6244c97de383fdce402d51fd867a4dcacb0a8bc7', '2018-07-01 20:26:27', '2018-07-16 15:39:39'),
(375, 7, 'session', '1680ddf7f6d38f3e0744e3932ad9876cd5072a1f', '2018-07-02 14:51:06', '2018-07-02 15:43:39'),
(384, 67, 'session', '6d39093eed98543517ddd25e4ed6cb0d74deafb4', '2018-07-10 09:50:13', '2018-07-10 12:10:41'),
(385, 67, 'session', '5f83057a80c2019dbef60618caa4bf9961d94229', '2018-07-10 14:43:27', '2018-07-10 14:43:27'),
(386, 24, 'session', '5e90a9893521d1448b85ba7d58cc24b48d12e63c', '2018-07-10 16:25:07', '2018-07-11 12:33:09'),
(392, 24, 'session', '9fd383a329a38007ad904cead454e897cc78d295', '2018-07-12 08:36:43', '2018-07-12 08:38:51'),
(393, 24, 'session', 'd2c155448d4c29431a28176a2092983e7851b79b', '2018-07-16 16:07:34', '2018-07-16 16:16:17'),
(394, 24, 'session', '1903d3e26ee710cc0da2eb6be7b051334927b873', '2018-07-17 10:40:45', '2018-07-17 15:36:03'),
(395, 7, 'session', '4379ea3372b2ca5f164bf171abebe4ee5f5a984b', '2018-07-17 14:08:17', '2018-07-17 15:31:11'),
(396, 24, 'session', '994eac9f08417959d65c2811e60559eea8b80d90', '2018-07-19 08:23:06', '2018-07-19 14:03:53'),
(397, 67, 'session', '7461b5109f1c52d830f210cccf040842eb1307bd', '2018-07-19 16:30:15', '2018-07-19 17:00:21'),
(398, 24, 'session', '7c2c52f4179c7807e24c38b2e404227d65d3fb69', '2018-07-20 08:37:04', '2018-07-20 09:06:24'),
(399, 24, 'session', '3ff300c9edc0663e0d209eb61a5410aa3a0ed7ea', '2018-07-23 12:16:34', '2018-07-23 14:49:17'),
(400, 67, 'session', '3c5a4fa405c2334837caccd69cbaa175efdd0061', '2018-07-23 17:03:22', '2018-07-23 17:04:02'),
(401, 24, 'session', '4b9eb6ef84ba389759ae52db127b4961bd8c785b', '2018-07-24 08:49:25', '2018-07-24 16:16:05'),
(402, 24, 'session', '272400656e089e71102ebe78d91742d6e6944981', '2018-07-25 08:20:56', '2018-07-25 15:24:33'),
(403, 67, 'session', '2b348d3c82c2cd86290997567f3b14acc6235910', '2018-07-25 14:19:02', '2018-07-26 09:43:02'),
(406, 67, 'session', '552d2b6615f6d7b0ff394ed29eeb1ed84b6cb2c0', '2018-07-26 13:43:09', '2018-07-26 17:39:03'),
(407, 67, 'session', '6bcc7682c6ee88e27774a8dafa9fc8f970cc924d', '2018-07-30 10:58:33', '2018-07-30 11:25:03'),
(408, 67, 'session', 'dd3e04cac434d5196c287333d582ae60c83cce0d', '2018-07-30 13:39:50', '2018-07-30 14:06:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `trackers`
--

CREATE TABLE `trackers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  `fields_bits` int(11) DEFAULT '0',
  `default_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `trackers`
--

INSERT INTO `trackers` (`id`, `name`, `is_in_chlog`, `position`, `is_in_roadmap`, `fields_bits`, `default_status_id`) VALUES
(2, 'Produto', 1, 8, 1, 503, 1),
(3, 'Resultado Intermedio', 0, 6, 0, 503, 1),
(5, 'Resultado Final', 0, 5, 1, 503, 1),
(10, 'Resultado imediato', 0, 7, 1, 503, 1),
(11, 'Actividade', 0, 9, 1, 4, 1),
(12, 'Indicador', 0, 10, 1, 503, 1),
(13, 'Objectivo Geral', 0, 1, 0, 511, 1),
(15, 'Base de Referência', 0, 11, 1, 503, 1),
(16, 'Objectivo Especifico ', 0, 3, 1, 0, 1),
(17, 'Finalidade', 0, 2, 1, 503, 1),
(18, 'Estrategia', 0, 4, 1, 503, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `firstname` varchar(30) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `identity_url` varchar(255) DEFAULT NULL,
  `mail_notification` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(64) DEFAULT NULL,
  `must_change_passwd` tinyint(1) NOT NULL DEFAULT '0',
  `passwd_changed_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `login`, `hashed_password`, `firstname`, `lastname`, `admin`, `status`, `last_login_on`, `language`, `auth_source_id`, `created_on`, `updated_on`, `type`, `identity_url`, `mail_notification`, `salt`, `must_change_passwd`, `passwd_changed_on`) VALUES
(2, '', '', '', 'Anonymous users', 0, 1, NULL, '', NULL, '2018-01-25 22:03:47', '2018-01-25 22:03:47', 'GroupAnonymous', NULL, '', NULL, 0, NULL),
(3, '', '', '', 'Non member users', 0, 1, NULL, '', NULL, '2018-01-25 22:03:48', '2018-01-25 22:03:48', 'GroupNonMember', NULL, '', NULL, 0, NULL),
(4, '', '', '', 'Anonymous', 0, 0, NULL, '', NULL, '2018-01-25 22:06:36', '2018-01-25 22:06:36', 'AnonymousUser', NULL, 'only_my_events', NULL, 0, NULL),
(5, 'luzumira.simbine', '48bb23d2c646da6a24fb1f13575471a8fe8e00c0', 'Luzumira', 'Simbine', 0, 1, '2018-06-18 08:20:33', 'pt', NULL, '2018-02-05 20:12:24', '2018-06-01 13:44:00', 'User', NULL, 'only_assigned', 'dd581837a449fa0e31d8299004184f18', 0, '2018-05-14 15:30:52'),
(7, 'edson.rufai', 'd7d587fd6bb55b9c1f1a68bfc8dda558e990799b', 'Edson', 'Rufai', 0, 1, '2018-07-17 14:08:17', 'pt', NULL, '2018-02-05 20:22:30', '2018-06-01 13:41:14', 'User', NULL, 'only_assigned', '1fdc26092840dc86f670bc70b6aa4e61', 0, '2018-05-08 15:50:36'),
(13, '', '', '', 'Doador', 0, 1, NULL, '', NULL, '2018-02-05 20:32:42', '2018-02-05 20:32:42', 'Group', NULL, '', NULL, 0, NULL),
(14, '', '', '', 'Parceiro de Implementaçao', 0, 1, NULL, '', NULL, '2018-02-05 20:32:48', '2018-05-15 14:31:18', 'Group', NULL, '', NULL, 0, NULL),
(15, '', '', '', 'Gestor de Projecto', 0, 1, NULL, '', NULL, '2018-02-05 20:35:58', '2018-02-05 20:35:58', 'Group', NULL, '', NULL, 0, NULL),
(16, '', '', '', 'Oficial de Contabilidade', 0, 1, NULL, '', NULL, '2018-02-05 20:36:04', '2018-05-15 14:26:23', 'Group', NULL, '', NULL, 0, NULL),
(17, '', '', '', 'Coordenadora Editorial', 0, 1, NULL, '', NULL, '2018-02-05 20:36:08', '2018-05-15 14:29:14', 'Group', NULL, '', NULL, 0, NULL),
(19, '', '', '', 'Assistente Administrativo', 0, 1, NULL, '', NULL, '2018-02-05 20:36:21', '2018-05-15 14:24:41', 'Group', NULL, '', NULL, 0, NULL),
(21, 'beligio.cuco', '40c557949c3a0ef3b82373502620f69885ca29df', 'Beligio', 'Cuco', 0, 1, '2018-06-21 11:26:12', 'pt', NULL, '2018-02-08 09:20:12', '2018-06-01 12:43:52', 'User', NULL, 'only_assigned', '0e828e8939b708571b566f45675dd025', 0, '2018-05-17 12:54:00'),
(24, 'argentina.timba', 'c008aba3935a280c17710149a9c9d700af916f3c', 'Argentina', 'Timba', 1, 1, '2018-07-26 08:18:14', 'pt', NULL, '2018-03-20 22:54:09', '2018-05-03 11:32:29', 'User', NULL, 'all', '21e404ba65f591d7a0bb194cf7ce9d25', 0, '2018-05-03 11:32:29'),
(25, 'marta.sales', '878d61cbcdaa2cb036a5964d68593b33b9197b8f', 'Marta', 'Sales', 1, 1, '2018-07-11 07:45:11', 'pt', NULL, '2018-03-20 22:55:14', '2018-05-31 20:05:47', 'User', NULL, 'only_my_events', 'a50233f13f626e08d232ea16cf0edc80', 0, '2018-05-29 08:53:32'),
(27, 'elisa.mucavele', 'ac126d05d382594c246c0ba27db65c5160de04a5', 'Elisa', 'Mucavele', 0, 1, '2018-07-11 09:19:25', 'pt', NULL, '2018-03-20 22:57:03', '2018-07-11 09:03:32', 'User', NULL, 'only_assigned', '6ccdb90ba78b6de7acb57a1ff01a31e4', 0, '2018-07-11 09:03:32'),
(28, 'amandio.armando', 'e3890a3d611a8352d5525997b67fb50a990bb2d6', 'Amandio', 'Armando', 0, 1, '2018-06-28 08:22:23', 'pt', NULL, '2018-03-21 01:00:50', '2018-06-01 11:14:40', 'User', NULL, 'only_assigned', 'f4a2d0f7a8e8d77e5003c65810610c44', 0, '2018-05-18 10:15:12'),
(33, 'david.chinavane', '1bd8f574669529d848de10a76cb6000e15f4bc44', 'David', 'Chinavane', 0, 1, '2018-03-23 01:21:34', 'pt', NULL, '2018-03-21 01:17:19', '2018-06-01 13:40:44', 'User', NULL, 'only_assigned', '1eaae5e8a28114959b00088db6997471', 1, '2018-05-08 14:45:27'),
(34, 'felicia.matabel', '9760bc465421eb4d15a6c60eb3169a5f27f70124', 'Felicia', 'Matabel', 0, 1, '2018-04-27 15:34:55', 'pt', NULL, '2018-03-21 01:18:17', '2018-06-01 13:42:07', 'User', NULL, 'only_assigned', '402fc35cb880fc038ad3e502694c8293', 1, '2018-05-08 14:53:47'),
(36, 'claudina.naife', '5070bf49200ef80ca98ba4d8561c390b5e7d753f', 'Claudina', 'Naife', 0, 1, '2018-04-30 09:02:28', 'pt', NULL, '2018-03-21 01:35:54', '2018-06-01 13:40:23', 'User', NULL, 'only_assigned', 'e9fc6eab7e480b2d9f7db154feb051da', 1, '2018-05-08 14:44:14'),
(37, 'tinie.vaneys', 'ce24ecc68390f486cd0e3682a3ff1ae65ba3957a', 'Tinie', 'Van Eys', 0, 1, '2018-05-11 16:07:10', 'en', NULL, '2018-03-21 01:55:13', '2018-06-01 13:47:47', 'User', NULL, 'only_assigned', 'ddf77d9636cabfaff0f53efa98b5e0da', 0, '2018-05-11 16:11:45'),
(39, 'ludgerio.govene', '3ce87696059aad5b0f6744fda2335f1883d653fc', 'Ludgerio', 'Govene', 0, 1, NULL, 'pt', NULL, '2018-03-21 01:57:56', '2018-06-01 13:43:37', 'User', NULL, 'only_assigned', '350e8df96d63555ee29c961440c68d59', 1, '2018-05-08 15:14:37'),
(46, '', '', '', 'Assistente de Monitoria e Avaliaçao', 0, 1, NULL, '', NULL, '2018-03-22 06:57:12', '2018-05-03 11:14:42', 'Group', NULL, '', NULL, 0, NULL),
(48, '', '', '', 'Parceiro co-financiador', 0, 1, NULL, '', NULL, '2018-04-16 09:31:14', '2018-04-16 09:31:14', 'Group', NULL, '', NULL, 0, NULL),
(50, 'alcina.sitoe', '2b742a5a7c258604b4e17405d33e03592adcc3ad', 'Alcina', 'Sitoe', 0, 1, '2018-04-30 15:16:09', 'pt', NULL, '2018-04-27 15:39:33', '2018-05-31 20:03:19', 'User', NULL, 'only_my_events', 'e1e085fb5d289d1e8cc475701ada8399', 1, '2018-05-08 14:32:09'),
(51, 'francisca.samboco', '23827f3401578f738664d3c6c5bd33992bfbbda5', 'Francisca', 'Samboco', 0, 1, '2018-04-30 15:11:17', 'pt', NULL, '2018-04-30 00:28:23', '2018-06-01 13:42:26', 'User', NULL, 'only_assigned', '045db754d233e650646bbbabe78dfda0', 1, '2018-05-08 14:56:12'),
(53, 'domingos.mahoche', '484a553dc6f5d3b501ef1cc63b10ae086f829694', 'Domingos', 'Mahoche', 0, 1, '2018-04-30 08:37:49', 'pt', NULL, '2018-04-30 00:33:00', '2018-06-01 12:44:19', 'User', NULL, 'only_assigned', '877298a3c02e28f48f693dec448033a4', 1, '2018-05-08 14:46:30'),
(54, 'chanceler.penicela', 'd1f55a1f617404ae93a9206311de44b5c1ebb627', 'Chanceler', 'Penicela', 0, 1, '2018-05-31 14:07:04', 'pt', NULL, '2018-04-30 00:34:25', '2018-06-01 12:45:21', 'User', NULL, 'only_assigned', '00f2caac26232e7593afe55a0aa29e9c', 0, '2018-05-30 10:35:30'),
(56, '', '', '', 'Responsavel de Programas', 0, 1, NULL, '', NULL, '2018-05-03 11:11:15', '2018-05-03 11:11:15', 'Group', NULL, '', NULL, 0, NULL),
(57, '', '', '', 'Presidente do Conselho de Direcçao', 0, 1, NULL, '', NULL, '2018-05-03 11:12:46', '2018-05-03 11:12:46', 'Group', NULL, '', NULL, 0, NULL),
(58, '', '', '', 'Coordenadora Geral', 0, 1, NULL, '', NULL, '2018-05-03 11:13:00', '2018-05-03 11:13:00', 'Group', NULL, '', NULL, 0, NULL),
(59, '', '', '', 'Oficial de Monitoria e Avaliaçao', 0, 1, NULL, '', NULL, '2018-05-03 11:15:04', '2018-05-03 11:15:04', 'Group', NULL, '', NULL, 0, NULL),
(60, '', '', '', 'Assistente de Programas', 0, 1, NULL, '', NULL, '2018-05-03 11:28:42', '2018-05-03 11:28:42', 'Group', NULL, '', NULL, 0, NULL),
(61, 'helvia.momade', '7758ee860be189b12b9a4a9669872636e5dd02c9', 'Helvia', 'Momade', 1, 1, '2018-07-26 10:34:32', 'pt', NULL, '2018-05-08 15:02:43', '2018-06-28 13:57:02', 'User', NULL, 'only_my_events', '30dc17254491e55e6f1bad69cabe0ef2', 0, '2018-06-28 13:57:02'),
(62, 'elisabeth.sequeira', '3e29b68fc69742d1f5c773b6a5c387f1d05af5b8', 'Elisabeth', 'Sequeira', 0, 1, NULL, 'pt', NULL, '2018-05-08 15:04:26', '2018-06-01 13:41:37', 'User', NULL, 'only_assigned', 'd84affc3434cf87a4edd49f4490cdc5a', 1, '2018-05-08 15:04:26'),
(63, 'olga.zucule', 'fc39fc533d0cdaa8404a92e5170594a854931aa2', 'Olga', 'Zucule', 0, 1, NULL, 'pt', NULL, '2018-05-08 15:06:15', '2018-06-01 12:44:31', 'User', NULL, 'only_assigned', '722d6ba5d1cb8982bc306308631b40b6', 0, '2018-05-08 15:06:15'),
(64, 'eurico.chemane', '93ceca0080020b18546fd7f1cc24aeeaf7fc1ce4', 'Eurico', 'Chemane', 0, 1, NULL, 'pt', NULL, '2018-05-08 15:08:20', '2018-06-01 12:44:45', 'User', NULL, 'only_assigned', '713cb9d1f8d70c89a477c9acc3bdaf3d', 1, '2018-05-08 15:08:20'),
(65, 'neide.pinto', '070fc541ec7536dfeb36e595d9e4325d142aade8', 'Neide', 'Pinto', 0, 1, NULL, 'pt', NULL, '2018-05-08 15:12:30', '2018-06-01 13:44:17', 'User', NULL, 'only_assigned', '19df2e1c4274d91a7cf9055efdf6164d', 1, '2018-05-08 15:12:30'),
(66, 'cassamo.moiane', 'f2fc96e0582f5af637a17a181f06e2efbaed6ad5', 'Cassamo', 'Moiane', 0, 1, NULL, 'pt', NULL, '2018-05-08 15:13:58', '2018-06-01 12:45:04', 'User', NULL, 'only_assigned', '072d39e0c9e151817f320a022ab146e7', 1, '2018-05-08 15:13:58'),
(67, 'assistente', '2b52fc966eaa90fcbd65419a59728cdb03096dc4', 'Bhavika', 'Rugnath', 1, 1, '2018-07-30 13:39:50', 'pt', NULL, '2018-05-10 10:31:50', '2018-06-05 11:49:18', 'User', NULL, 'all', 'cc79501fd6c4460db381e219a8554d3b', 0, '2018-05-10 10:31:50'),
(68, 'bhavika.rugnath', '254fefd120e6df22a40a148c89ea40a19db29c53', 'bhavika', 'rugnath', 1, 1, '2018-05-10 10:54:44', 'pt', NULL, '2018-05-10 10:52:08', '2018-05-10 11:51:00', 'User', NULL, 'all', 'c3a6adbf0dc267ab04188a48f98053e1', 0, '2018-05-10 11:51:00'),
(69, 'userTeste', 'e1e5cad0c17cf6a802abfd75156cce34e3566bfd', 'user', 'teste', 0, 1, '2018-05-15 09:53:35', 'pt', NULL, '2018-05-15 09:46:58', '2018-05-15 09:46:58', 'User', NULL, 'all', '1884bd7b61390feb23fa3e5647338e38', 0, '2018-05-15 09:46:58'),
(70, 'rajabo.momade', '4f68b61562323ecaf8defb4f2a68c8ed64dc113f', 'Rajabo', 'Momade', 0, 1, NULL, 'pt', NULL, '2018-05-15 14:19:50', '2018-06-01 13:45:56', 'User', NULL, 'only_assigned', '0134f8d0390700fc229a00ba477c51c3', 1, '2018-05-15 14:19:50'),
(71, '', '', '', 'Auxiliar Administrativo', 0, 1, NULL, '', NULL, '2018-05-15 14:25:50', '2018-05-15 14:25:50', 'Group', NULL, '', NULL, 0, NULL),
(72, '', '', '', 'Auxiliar de Recursos Humanos', 0, 1, NULL, '', NULL, '2018-05-15 14:26:13', '2018-05-15 14:26:13', 'Group', NULL, '', NULL, 0, NULL),
(73, '', '', '', 'Assistente de Contabilidade', 0, 1, NULL, '', NULL, '2018-05-15 14:26:44', '2018-05-15 14:26:44', 'Group', NULL, '', NULL, 0, NULL),
(74, '', '', '', 'Auxiliar de Contabilidade', 0, 1, NULL, '', NULL, '2018-05-15 14:26:59', '2018-05-15 14:26:59', 'Group', NULL, '', NULL, 0, NULL),
(75, '', '', '', 'Consultora de Angariaçao de Fundos', 0, 1, NULL, '', NULL, '2018-05-15 14:28:52', '2018-05-15 14:28:52', 'Group', NULL, '', NULL, 0, NULL),
(76, '', '', '', 'Assistente de Comunicaçao', 0, 1, NULL, '', NULL, '2018-05-15 14:29:33', '2018-05-15 14:29:33', 'Group', NULL, '', NULL, 0, NULL),
(77, '', '', '', 'Assistente de Genero', 0, 1, NULL, '', NULL, '2018-05-15 14:30:08', '2018-05-15 14:30:08', 'Group', NULL, '', NULL, 0, NULL),
(78, '', '', '', 'Oficial de Educaçao', 0, 1, NULL, '', NULL, '2018-05-15 14:30:20', '2018-05-15 14:30:20', 'Group', NULL, '', NULL, 0, NULL),
(81, '', '', '', 'Oficial de Projecto', 0, 1, NULL, '', NULL, '2018-05-31 15:32:38', '2018-05-31 15:32:38', 'Group', NULL, '', NULL, 0, NULL),
(82, 'Rodrigues.Marcos', 'b8feae0cea770f009fd580d7fe0ecbce37705009', 'Rodrigues', 'Marcos', 0, 1, '2018-06-02 07:58:39', 'pt', NULL, '2018-05-31 15:43:11', '2018-06-01 13:46:18', 'User', NULL, 'only_assigned', '9b7bcb252b766236b01026be723539ff', 1, '2018-05-31 15:43:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `others` text,
  `hide_mail` tinyint(1) DEFAULT '1',
  `time_zone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_id`, `others`, `hide_mail`, `time_zone`) VALUES
(2, 5, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(4, 7, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(10, 21, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(13, 24, '---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n  top:\n  - timelog\n  - issueswatched\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 12\n', 1, ''),
(14, 25, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(16, 27, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(17, 28, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 1\n:gantt_months: 6\n', 1, ''),
(22, 33, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(23, 34, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n  top:\n  - issuequery\n:my_page_settings: {}\n', 1, ''),
(25, 36, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(26, 37, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, 'Pretoria'),
(28, 39, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(37, 50, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(38, 51, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings:\n  issuesassignedtome:\n    :sort: subject,priority:desc,updated_on:desc\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(40, 53, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(41, 54, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(42, 61, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 2\n:gantt_months: 6\n', 1, ''),
(43, 62, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(44, 63, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(45, 64, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(46, 65, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(47, 66, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(48, 67, '---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n:gantt_zoom: 3\n:gantt_months: 24\n', 1, ''),
(49, 68, '---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(50, 69, '---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(51, 70, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, ''),
(52, 82, '---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:textarea_font: \'\'\n:my_page_layout:\n  left:\n  - issuesassignedtome\n  right:\n  - issuesreportedbyme\n:my_page_settings: {}\n', 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `versions`
--

CREATE TABLE `versions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `wiki_page_title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `sharing` varchar(255) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `watchers`
--

CREATE TABLE `watchers` (
  `id` int(11) NOT NULL,
  `watchable_type` varchar(255) NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `watchers`
--

INSERT INTO `watchers` (`id`, `watchable_type`, `watchable_id`, `user_id`) VALUES
(1, 'Issue', 335, 61),
(2, 'Issue', 336, 61),
(3, 'Issue', 337, 61),
(4, 'Issue', 338, 28),
(5, 'Issue', 338, 7),
(6, 'Issue', 338, 61),
(7, 'Issue', 338, 65),
(8, 'Issue', 338, 70),
(9, 'Issue', 339, 28),
(10, 'Issue', 339, 7),
(11, 'Issue', 339, 61),
(12, 'Issue', 339, 65),
(13, 'Issue', 339, 70),
(14, 'Issue', 340, 61),
(15, 'Issue', 341, 61),
(16, 'Issue', 342, 61),
(21, 'Issue', 352, 21),
(22, 'Issue', 353, 21),
(23, 'Issue', 354, 21),
(24, 'Issue', 355, 21),
(26, 'Issue', 359, 21),
(27, 'EnabledModule', 163, 7),
(28, 'Issue', 638, 24),
(29, 'Issue', 638, 21),
(32, 'Issue', 659, 24),
(33, 'Issue', 659, 21),
(34, 'Issue', 663, 24),
(35, 'Issue', 663, 21),
(36, 'Issue', 671, 24),
(37, 'Issue', 671, 21),
(38, 'Issue', 677, 24),
(39, 'Issue', 677, 21),
(40, 'Issue', 677, 61),
(41, 'Issue', 679, 24),
(42, 'Issue', 679, 21),
(43, 'Issue', 679, 61),
(44, 'Issue', 680, 24),
(45, 'Issue', 680, 21),
(46, 'Issue', 680, 61),
(47, 'Issue', 681, 24),
(48, 'Issue', 681, 21),
(49, 'Issue', 681, 61),
(50, 'Issue', 682, 24),
(51, 'Issue', 682, 21),
(52, 'Issue', 682, 61),
(53, 'Issue', 683, 24),
(54, 'Issue', 683, 21),
(55, 'Issue', 683, 61),
(56, 'Issue', 684, 24),
(57, 'Issue', 684, 21),
(58, 'Issue', 684, 61);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wikis`
--

CREATE TABLE `wikis` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wikis`
--

INSERT INTO `wikis` (`id`, `project_id`, `start_page`, `status`) VALUES
(1, 1, 'Wiki', 1),
(2, 2, 'Wiki', 1),
(4, 4, 'Wiki', 1),
(6, 6, 'Wiki', 1),
(7, 7, 'Wiki', 1),
(12, 12, 'Wiki', 1),
(13, 13, 'Wiki', 1),
(14, 14, 'Wiki', 1),
(15, 15, 'Wiki', 1),
(16, 16, 'Wiki', 1),
(17, 17, 'Wiki', 1),
(18, 18, 'Wiki', 1),
(19, 19, 'Wiki', 1),
(20, 20, 'Wiki', 1),
(21, 21, 'Wiki', 1),
(22, 22, 'Wiki', 1),
(23, 23, 'Wiki', 1),
(24, 24, 'Wiki', 1),
(25, 25, 'Wiki', 1),
(26, 26, 'Wiki', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_contents`
--

CREATE TABLE `wiki_contents` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` longtext,
  `comments` varchar(1024) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wiki_contents`
--

INSERT INTO `wiki_contents` (`id`, `page_id`, `author_id`, `text`, `comments`, `updated_on`, `version`) VALUES
(1, 1, 7, 'Raparigas e mulheres capacitadas em artesanato e gestão de pequenos negócios\r\n\r\nA Associação Progresso capacitou, entre os dias 02 e 06 de Abril de 2018, no distrito de Chimbunila em Niassa, 25 raparigas e mulheres em artesanato e gestão de pequenos negócios. \r\nCom objectivo de desenvolver em raparigas o conhecimento e a capacidade para saber fazer em artesanato e início de pequenos negócios, a actividade foi organizada pela Associação Progresso através do projecto Girls Inspire “Aprendendo, eu Posso Mudar” em parceria com o Intituto Nacional de Emprego e Formação Profissional de Niassa e Serviços Distritais de Educação, Juventude e Tecnologia de Chimbunila.\r\nEsta iniciativa marca o ponto de partida para acções de Habilidades para a Vida nas raparigas e mulheres através de criação de auto-emprego nas comunidades.\r\n', '', '2018-05-31 15:15:19', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_content_versions`
--

CREATE TABLE `wiki_content_versions` (
  `id` int(11) NOT NULL,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) DEFAULT '',
  `comments` varchar(1024) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wiki_content_versions`
--

INSERT INTO `wiki_content_versions` (`id`, `wiki_content_id`, `page_id`, `author_id`, `data`, `compression`, `comments`, `updated_on`, `version`) VALUES
(1, 1, 1, 7, 0x5261706172696761732065206d756c686572657320636170616369746164617320656d206172746573616e61746f20652067657374c3a36f2064652070657175656e6f73206e6567c3b363696f730d0a0d0a41204173736f636961c3a7c3a36f2050726f67726573736f20636170616369746f752c20656e747265206f732064696173203032206520303620646520416272696c20646520323031382c206e6f20646973747269746f206465204368696d62756e696c6120656d204e69617373612c203235207261706172696761732065206d756c686572657320656d206172746573616e61746f20652067657374c3a36f2064652070657175656e6f73206e6567c3b363696f732e200d0a436f6d206f626a65637469766f20646520646573656e766f6c76657220656d20726170617269676173206f20636f6e686563696d656e746f20652061206361706163696461646520706172612073616265722066617a657220656d206172746573616e61746f206520696ec3ad63696f2064652070657175656e6f73206e6567c3b363696f732c2061206163746976696461646520666f69206f7267616e697a6164612070656c61204173736f636961c3a7c3a36f2050726f67726573736f206174726176c3a97320646f2070726f6a6563746f204769726c7320496e737069726520e2809c417072656e64656e646f2c20657520506f73736f204d75646172e2809d20656d20706172636572696120636f6d206f20496e74697475746f204e6163696f6e616c20646520456d707265676f206520466f726d61c3a7c3a36f2050726f66697373696f6e616c206465204e69617373612065205365727669c3a76f732044697374726974616973206465204564756361c3a7c3a36f2c204a7576656e747564652065205465636e6f6c6f676961206465204368696d62756e696c612e0d0a4573746120696e6963696174697661206d61726361206f20706f6e746f20646520706172746964612070617261206163c3a7c3b5657320646520486162696c696461646573207061726120612056696461206e6173207261706172696761732065206d756c6865726573206174726176c3a9732064652063726961c3a7c3a36f206465206175746f2d656d707265676f206e617320636f6d756e6964616465732e0d0a, '', '', '2018-05-31 15:15:19', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_pages`
--

CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wiki_pages`
--

INSERT INTO `wiki_pages` (`id`, `wiki_id`, `title`, `created_on`, `protected`, `parent_id`) VALUES
(1, 17, 'Wiki', '2018-05-31 15:15:19', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wiki_redirects`
--

CREATE TABLE `wiki_redirects` (
  `id` int(11) NOT NULL,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `redirects_to` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `redirects_to_wiki_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `workflows`
--

CREATE TABLE `workflows` (
  `id` int(11) NOT NULL,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `old_status_id` int(11) NOT NULL DEFAULT '0',
  `new_status_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(30) DEFAULT NULL,
  `field_name` varchar(30) DEFAULT NULL,
  `rule` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `workflows`
--

INSERT INTO `workflows` (`id`, `tracker_id`, `old_status_id`, `new_status_id`, `role_id`, `assignee`, `author`, `type`, `field_name`, `rule`) VALUES
(31, 2, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(32, 2, 1, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(33, 2, 1, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(34, 2, 1, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(35, 2, 1, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(36, 2, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(37, 2, 2, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(38, 2, 2, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(39, 2, 2, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(40, 2, 2, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(41, 2, 3, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(42, 2, 3, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(43, 2, 3, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(44, 2, 3, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(45, 2, 3, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(46, 2, 4, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(47, 2, 4, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(48, 2, 4, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(49, 2, 4, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(50, 2, 4, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(51, 2, 5, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(52, 2, 5, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(53, 2, 5, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(54, 2, 5, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(55, 2, 5, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(56, 2, 6, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(57, 2, 6, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(58, 2, 6, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(59, 2, 6, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(60, 2, 6, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(61, 3, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(62, 3, 1, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(63, 3, 1, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(64, 3, 1, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(65, 3, 1, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(66, 3, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(67, 3, 2, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(68, 3, 2, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(69, 3, 2, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(70, 3, 2, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(71, 3, 3, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(72, 3, 3, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(73, 3, 3, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(74, 3, 3, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(75, 3, 3, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(76, 3, 4, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(77, 3, 4, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(78, 3, 4, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(79, 3, 4, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(80, 3, 4, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(81, 3, 5, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(82, 3, 5, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(83, 3, 5, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(84, 3, 5, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(85, 3, 5, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(86, 3, 6, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(87, 3, 6, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(88, 3, 6, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(89, 3, 6, 4, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(90, 3, 6, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(104, 2, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(105, 2, 1, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(106, 2, 1, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(107, 2, 1, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(108, 2, 2, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(109, 2, 2, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(110, 2, 2, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(111, 2, 3, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(112, 2, 3, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(113, 2, 3, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(114, 2, 4, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(115, 2, 4, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(116, 2, 4, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(117, 3, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(118, 3, 1, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(119, 3, 1, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(120, 3, 1, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(121, 3, 2, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(122, 3, 2, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(123, 3, 2, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(124, 3, 3, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(125, 3, 3, 4, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(126, 3, 3, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(127, 3, 4, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(128, 3, 4, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(129, 3, 4, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(152, 2, 1, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(153, 2, 2, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(154, 2, 3, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(155, 2, 3, 4, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(156, 2, 4, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(159, 3, 1, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(160, 3, 2, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(161, 3, 3, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(162, 3, 3, 4, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(163, 3, 4, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(351, 13, 1, 0, 1, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(352, 13, 1, 0, 3, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(353, 13, 1, 0, 4, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(355, 13, 1, 0, 6, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(356, 13, 1, 0, 7, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(357, 13, 1, 0, 8, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(358, 13, 1, 0, 9, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(359, 13, 1, 0, 10, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(360, 13, 1, 0, 11, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(361, 13, 1, 0, 1, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(362, 13, 1, 0, 3, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(363, 13, 1, 0, 4, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(365, 13, 1, 0, 6, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(366, 13, 1, 0, 7, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(367, 13, 1, 0, 8, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(368, 13, 1, 0, 9, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(369, 13, 1, 0, 10, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(370, 13, 1, 0, 11, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(471, 11, 1, 0, 2, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(472, 11, 1, 0, 3, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(475, 11, 1, 0, 6, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(476, 11, 1, 0, 7, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(529, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', 'project_id', 'readonly'),
(530, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', 'project_id', 'readonly'),
(531, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', 'project_id', 'readonly'),
(532, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', 'project_id', 'readonly'),
(534, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', 'subject', 'readonly'),
(535, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', 'subject', 'readonly'),
(536, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', 'subject', 'readonly'),
(537, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', 'subject', 'readonly'),
(539, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(540, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(541, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(542, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(544, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(545, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(546, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(547, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(549, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', 'assigned_to_id', 'readonly'),
(550, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', 'assigned_to_id', 'readonly'),
(551, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', 'assigned_to_id', 'readonly'),
(552, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', 'assigned_to_id', 'readonly'),
(554, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', 'category_id', 'readonly'),
(555, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', 'category_id', 'readonly'),
(556, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', 'category_id', 'readonly'),
(557, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', 'category_id', 'readonly'),
(559, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'readonly'),
(560, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'readonly'),
(561, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'readonly'),
(562, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'readonly'),
(564, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', 'start_date', 'readonly'),
(565, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', 'start_date', 'readonly'),
(566, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', 'start_date', 'readonly'),
(567, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', 'start_date', 'readonly'),
(569, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(570, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(571, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(572, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(574, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', 'description', 'readonly'),
(575, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', 'description', 'readonly'),
(576, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', 'description', 'readonly'),
(577, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', 'description', 'readonly'),
(579, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', '45', 'readonly'),
(580, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', '45', 'readonly'),
(581, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', '45', 'readonly'),
(582, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', '45', 'readonly'),
(584, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(585, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(586, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(587, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(589, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', '28', 'required'),
(590, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', '28', 'required'),
(591, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', '28', 'required'),
(592, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', '28', 'required'),
(594, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', '44', 'required'),
(595, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', '44', 'required'),
(596, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', '44', 'required'),
(597, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', '44', 'required'),
(599, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', '29', 'required'),
(600, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', '29', 'required'),
(601, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', '29', 'required'),
(602, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', '29', 'required'),
(604, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', '60', 'readonly'),
(605, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', '60', 'readonly'),
(606, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', '60', 'readonly'),
(607, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', '60', 'readonly'),
(609, 11, 2, 0, 8, 0, 0, 'WorkflowPermission', '76', 'readonly'),
(610, 11, 2, 0, 9, 0, 0, 'WorkflowPermission', '76', 'readonly'),
(611, 11, 2, 0, 10, 0, 0, 'WorkflowPermission', '76', 'readonly'),
(612, 11, 2, 0, 11, 0, 0, 'WorkflowPermission', '76', 'readonly'),
(666, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', 'project_id', 'readonly'),
(667, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', 'subject', 'readonly'),
(668, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(669, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(670, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', 'assigned_to_id', 'readonly'),
(671, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', 'category_id', 'readonly'),
(672, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'readonly'),
(673, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', 'start_date', 'readonly'),
(674, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(675, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', 'description', 'readonly'),
(676, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', '45', 'readonly'),
(677, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(678, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', '28', 'required'),
(679, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', '44', 'required'),
(680, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', '29', 'required'),
(681, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', '60', 'readonly'),
(682, 11, 2, 0, 4, 0, 0, 'WorkflowPermission', '76', 'readonly'),
(684, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'project_id', 'readonly'),
(685, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'project_id', 'readonly'),
(686, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'project_id', 'readonly'),
(687, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'project_id', 'readonly'),
(688, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'project_id', 'readonly'),
(690, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'tracker_id', 'readonly'),
(691, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'tracker_id', 'readonly'),
(692, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'tracker_id', 'readonly'),
(693, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'tracker_id', 'readonly'),
(694, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'tracker_id', 'readonly'),
(696, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'subject', 'readonly'),
(697, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'subject', 'readonly'),
(698, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'subject', 'readonly'),
(699, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'subject', 'readonly'),
(700, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'subject', 'readonly'),
(702, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(703, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(704, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(705, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(706, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'priority_id', 'readonly'),
(708, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(709, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(710, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(711, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(712, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'is_private', 'readonly'),
(714, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'assigned_to_id', 'readonly'),
(715, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'assigned_to_id', 'readonly'),
(716, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'assigned_to_id', 'readonly'),
(717, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'assigned_to_id', 'readonly'),
(718, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'assigned_to_id', 'readonly'),
(720, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'category_id', 'readonly'),
(721, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'category_id', 'readonly'),
(722, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'category_id', 'readonly'),
(723, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'category_id', 'readonly'),
(724, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'category_id', 'readonly'),
(738, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'estimated_hours', 'readonly'),
(739, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'estimated_hours', 'readonly'),
(740, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'estimated_hours', 'readonly'),
(741, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'estimated_hours', 'readonly'),
(742, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'estimated_hours', 'readonly'),
(750, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'description', 'readonly'),
(751, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'description', 'readonly'),
(752, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'description', 'readonly'),
(753, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'description', 'readonly'),
(754, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'description', 'readonly'),
(756, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', '45', 'readonly'),
(757, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', '45', 'readonly'),
(758, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', '45', 'readonly'),
(759, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', '45', 'readonly'),
(760, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', '45', 'readonly'),
(761, 11, 1, 0, 1, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(762, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(763, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(764, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(765, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(766, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', '30', 'readonly'),
(768, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', '28', 'required'),
(769, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', '28', 'required'),
(770, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', '28', 'required'),
(771, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', '28', 'required'),
(772, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', '28', 'required'),
(774, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', '44', 'required'),
(775, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', '44', 'required'),
(776, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', '44', 'required'),
(777, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', '44', 'required'),
(778, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', '44', 'required'),
(780, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', '29', 'required'),
(781, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', '29', 'required'),
(782, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', '29', 'required'),
(783, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', '29', 'required'),
(784, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', '29', 'required'),
(786, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', '60', 'readonly'),
(787, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', '60', 'readonly'),
(788, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', '60', 'readonly'),
(789, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', '60', 'readonly'),
(790, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', '60', 'readonly'),
(792, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', '76', 'readonly'),
(793, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', '76', 'readonly'),
(794, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', '76', 'readonly'),
(795, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', '76', 'readonly'),
(796, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', '76', 'readonly'),
(798, 11, 1, 0, 2, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(799, 11, 1, 0, 3, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(800, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(802, 11, 1, 0, 6, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(803, 11, 1, 0, 7, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(804, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(805, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(806, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(807, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(808, 11, 1, 0, 12, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(809, 11, 1, 0, 13, 0, 0, 'WorkflowPermission', 'parent_issue_id', 'required'),
(811, 11, 1, 0, 2, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(812, 11, 1, 0, 3, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(813, 11, 1, 0, 4, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(815, 11, 1, 0, 6, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(816, 11, 1, 0, 7, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(817, 11, 1, 0, 8, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(818, 11, 1, 0, 9, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(819, 11, 1, 0, 10, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(820, 11, 1, 0, 11, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(821, 11, 1, 0, 12, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(822, 11, 1, 0, 13, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(823, 11, 0, 1, 1, 0, 0, 'WorkflowTransition', NULL, NULL),
(855, 11, 1, 0, 1, 0, 0, 'WorkflowPermission', 'done_ratio', 'required'),
(856, 11, 1, 0, 1, 0, 0, 'WorkflowPermission', '29', 'required');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_attachments_on_author_id` (`author_id`),
  ADD KEY `index_attachments_on_created_on` (`created_on`),
  ADD KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`),
  ADD KEY `index_attachments_on_disk_filename` (`disk_filename`);

--
-- Indexes for table `auth_sources`
--
ALTER TABLE `auth_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_auth_sources_on_id_and_type` (`id`,`type`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boards_project_id` (`project_id`),
  ADD KEY `index_boards_on_last_message_id` (`last_message_id`);

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `changesets_changeset_id` (`changeset_id`);

--
-- Indexes for table `changesets`
--
ALTER TABLE `changesets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  ADD KEY `index_changesets_on_user_id` (`user_id`),
  ADD KEY `index_changesets_on_repository_id` (`repository_id`),
  ADD KEY `index_changesets_on_committed_on` (`committed_on`),
  ADD KEY `changesets_repos_scmid` (`repository_id`,`scmid`);

--
-- Indexes for table `changesets_issues`
--
ALTER TABLE `changesets_issues`
  ADD UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`),
  ADD KEY `index_changesets_issues_on_issue_id` (`issue_id`);

--
-- Indexes for table `changeset_parents`
--
ALTER TABLE `changeset_parents`
  ADD KEY `changeset_parents_changeset_ids` (`changeset_id`),
  ADD KEY `changeset_parents_parent_ids` (`parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  ADD KEY `index_comments_on_author_id` (`author_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_custom_fields_on_id_and_type` (`id`,`type`);

--
-- Indexes for table `custom_fields_projects`
--
ALTER TABLE `custom_fields_projects`
  ADD UNIQUE KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`);

--
-- Indexes for table `custom_fields_roles`
--
ALTER TABLE `custom_fields_roles`
  ADD UNIQUE KEY `custom_fields_roles_ids` (`custom_field_id`,`role_id`);

--
-- Indexes for table `custom_fields_trackers`
--
ALTER TABLE `custom_fields_trackers`
  ADD UNIQUE KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`);

--
-- Indexes for table `custom_field_enumerations`
--
ALTER TABLE `custom_field_enumerations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_reports`
--
ALTER TABLE `custom_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_custom_reports_on_project_id` (`project_id`),
  ADD KEY `index_custom_reports_on_user_id` (`user_id`);

--
-- Indexes for table `custom_report_series`
--
ALTER TABLE `custom_report_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_custom_report_series_on_custom_report_id` (`custom_report_id`);

--
-- Indexes for table `custom_values`
--
ALTER TABLE `custom_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_values_customized` (`customized_type`,`customized_id`),
  ADD KEY `index_custom_values_on_custom_field_id` (`custom_field_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_project_id` (`project_id`),
  ADD KEY `index_documents_on_category_id` (`category_id`),
  ADD KEY `index_documents_on_created_on` (`created_on`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_email_addresses_on_user_id` (`user_id`);

--
-- Indexes for table `enabled_modules`
--
ALTER TABLE `enabled_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled_modules_project_id` (`project_id`);

--
-- Indexes for table `enumerations`
--
ALTER TABLE `enumerations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_enumerations_on_project_id` (`project_id`),
  ADD KEY `index_enumerations_on_id_and_type` (`id`,`type`);

--
-- Indexes for table `groups_users`
--
ALTER TABLE `groups_users`
  ADD UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_items`
--
ALTER TABLE `import_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issues_project_id` (`project_id`),
  ADD KEY `index_issues_on_status_id` (`status_id`),
  ADD KEY `index_issues_on_category_id` (`category_id`),
  ADD KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  ADD KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  ADD KEY `index_issues_on_tracker_id` (`tracker_id`),
  ADD KEY `index_issues_on_priority_id` (`priority_id`),
  ADD KEY `index_issues_on_author_id` (`author_id`),
  ADD KEY `index_issues_on_created_on` (`created_on`),
  ADD KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`),
  ADD KEY `index_issues_on_parent_id` (`parent_id`);

--
-- Indexes for table `issue_categories`
--
ALTER TABLE `issue_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_categories_project_id` (`project_id`),
  ADD KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`);

--
-- Indexes for table `issue_relations`
--
ALTER TABLE `issue_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_issue_relations_on_issue_from_id_and_issue_to_id` (`issue_from_id`,`issue_to_id`),
  ADD KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  ADD KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`);

--
-- Indexes for table `issue_statuses`
--
ALTER TABLE `issue_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_issue_statuses_on_position` (`position`),
  ADD KEY `index_issue_statuses_on_is_closed` (`is_closed`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  ADD KEY `index_journals_on_user_id` (`user_id`),
  ADD KEY `index_journals_on_journalized_id` (`journalized_id`),
  ADD KEY `index_journals_on_created_on` (`created_on`);

--
-- Indexes for table `journal_details`
--
ALTER TABLE `journal_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journal_details_journal_id` (`journal_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  ADD KEY `index_members_on_user_id` (`user_id`),
  ADD KEY `index_members_on_project_id` (`project_id`);

--
-- Indexes for table `member_roles`
--
ALTER TABLE `member_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_member_roles_on_member_id` (`member_id`),
  ADD KEY `index_member_roles_on_role_id` (`role_id`),
  ADD KEY `index_member_roles_on_inherited_from` (`inherited_from`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_board_id` (`board_id`),
  ADD KEY `messages_parent_id` (`parent_id`),
  ADD KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  ADD KEY `index_messages_on_author_id` (`author_id`),
  ADD KEY `index_messages_on_created_on` (`created_on`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_project_id` (`project_id`),
  ADD KEY `index_news_on_author_id` (`author_id`),
  ADD KEY `index_news_on_created_on` (`created_on`);

--
-- Indexes for table `open_id_authentication_associations`
--
ALTER TABLE `open_id_authentication_associations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `open_id_authentication_nonces`
--
ALTER TABLE `open_id_authentication_nonces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_projects_on_lft` (`lft`),
  ADD KEY `index_projects_on_rgt` (`rgt`);

--
-- Indexes for table `projects_trackers`
--
ALTER TABLE `projects_trackers`
  ADD UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  ADD KEY `projects_trackers_project_id` (`project_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_queries_on_project_id` (`project_id`),
  ADD KEY `index_queries_on_user_id` (`user_id`);

--
-- Indexes for table `queries_roles`
--
ALTER TABLE `queries_roles`
  ADD UNIQUE KEY `queries_roles_ids` (`query_id`,`role_id`);

--
-- Indexes for table `repositories`
--
ALTER TABLE `repositories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_repositories_on_project_id` (`project_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_managed_roles`
--
ALTER TABLE `roles_managed_roles`
  ADD UNIQUE KEY `index_roles_managed_roles_on_role_id_and_managed_role_id` (`role_id`,`managed_role_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_settings_on_name` (`name`);

--
-- Indexes for table `time_entries`
--
ALTER TABLE `time_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_entries_project_id` (`project_id`),
  ADD KEY `time_entries_issue_id` (`issue_id`),
  ADD KEY `index_time_entries_on_activity_id` (`activity_id`),
  ADD KEY `index_time_entries_on_user_id` (`user_id`),
  ADD KEY `index_time_entries_on_created_on` (`created_on`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_value` (`value`),
  ADD KEY `index_tokens_on_user_id` (`user_id`);

--
-- Indexes for table `trackers`
--
ALTER TABLE `trackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_users_on_id_and_type` (`id`,`type`),
  ADD KEY `index_users_on_auth_source_id` (`auth_source_id`),
  ADD KEY `index_users_on_type` (`type`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_preferences_on_user_id` (`user_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `versions_project_id` (`project_id`),
  ADD KEY `index_versions_on_sharing` (`sharing`);

--
-- Indexes for table `watchers`
--
ALTER TABLE `watchers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  ADD KEY `index_watchers_on_user_id` (`user_id`),
  ADD KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`);

--
-- Indexes for table `wikis`
--
ALTER TABLE `wikis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wikis_project_id` (`project_id`);

--
-- Indexes for table `wiki_contents`
--
ALTER TABLE `wiki_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_contents_page_id` (`page_id`),
  ADD KEY `index_wiki_contents_on_author_id` (`author_id`);

--
-- Indexes for table `wiki_content_versions`
--
ALTER TABLE `wiki_content_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  ADD KEY `index_wiki_content_versions_on_updated_on` (`updated_on`);

--
-- Indexes for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  ADD KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  ADD KEY `index_wiki_pages_on_parent_id` (`parent_id`);

--
-- Indexes for table `wiki_redirects`
--
ALTER TABLE `wiki_redirects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  ADD KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`);

--
-- Indexes for table `workflows`
--
ALTER TABLE `workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  ADD KEY `index_workflows_on_old_status_id` (`old_status_id`),
  ADD KEY `index_workflows_on_role_id` (`role_id`),
  ADD KEY `index_workflows_on_new_status_id` (`new_status_id`),
  ADD KEY `index_workflows_on_tracker_id` (`tracker_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `auth_sources`
--
ALTER TABLE `auth_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `changes`
--
ALTER TABLE `changes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `changesets`
--
ALTER TABLE `changesets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `custom_field_enumerations`
--
ALTER TABLE `custom_field_enumerations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_reports`
--
ALTER TABLE `custom_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `custom_report_series`
--
ALTER TABLE `custom_report_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `custom_values`
--
ALTER TABLE `custom_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5248;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `email_addresses`
--
ALTER TABLE `email_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `enabled_modules`
--
ALTER TABLE `enabled_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `enumerations`
--
ALTER TABLE `enumerations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_items`
--
ALTER TABLE `import_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=806;

--
-- AUTO_INCREMENT for table `issue_categories`
--
ALTER TABLE `issue_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_relations`
--
ALTER TABLE `issue_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `issue_statuses`
--
ALTER TABLE `issue_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `journal_details`
--
ALTER TABLE `journal_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `member_roles`
--
ALTER TABLE `member_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `open_id_authentication_associations`
--
ALTER TABLE `open_id_authentication_associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `open_id_authentication_nonces`
--
ALTER TABLE `open_id_authentication_nonces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `repositories`
--
ALTER TABLE `repositories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `time_entries`
--
ALTER TABLE `time_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `trackers`
--
ALTER TABLE `trackers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watchers`
--
ALTER TABLE `watchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `wikis`
--
ALTER TABLE `wikis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wiki_contents`
--
ALTER TABLE `wiki_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wiki_content_versions`
--
ALTER TABLE `wiki_content_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wiki_redirects`
--
ALTER TABLE `wiki_redirects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workflows`
--
ALTER TABLE `workflows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=857;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
