CREATE DATABASE  IF NOT EXISTS `aves` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `aves`;


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


DROP TABLE IF EXISTS `tont_aves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tont_aves` (
  `CDAVE` varchar(5) NOT NULL,
  `DSNOMBRE_COMUN` varchar(100) DEFAULT NULL,
  `DSNOMBRE_CIENTIFICO` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CDAVE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40000 ALTER TABLE `tont_aves` DISABLE KEYS */;
INSERT  IGNORE INTO `tont_aves` (`CDAVE`, `DSNOMBRE_COMUN`, `DSNOMBRE_CIENTIFICO`) VALUES ('AV001','Suirirí Cariblanco','Dendrocygna viduata'),('AV002','Suirirí Piquirrojo','Dendrocygna autumnalis'),('AV003','Suirirí Bicolor','Dendrocygna bicolor'),('AV004','Cisne Cuellinegro','Cygnus melancoryphus'),('AV005','Cisne Coscoroba','Coscoroba coscoroba'),('AV006','Pato crestudo americano','Sarkidiornis sylvicola'),('AV007','Ganso del Orinoco','Oressochen jubatus'),('AV008','Cauquén Común','Chloephaga picta'),('AV009','Pato Criollo','Cairina moschata'),('AV010','Pato Acollarado','Callonetta leucophrys'),('AV011','Paloma Bravía','Columba livia'),('AV012','Tórtola Europea','Streptopelia turtur'),('AV013','Vinago africano común','Treron calvus'),('AV014','Ganga Goteada','Pterocles burchelli'),('AV015','Sisón Azulado','Eupodotis caerulescens'),('AV016','Codorniz Común','Coturnix coturnix'),('AV017','Ganso Espolonado','Plectropterus gambensis'),('AV018','Suirirí Cariblanco','Dendrocygna viduata'),('AV019','Cerceta Carretona','Gargane Spatula querquedula'),('AV020','Polluela Pintoja','Porzana porzana'),('AV021','Perdiz Malgache','Margaroperdix madagarensis'),('AV022','Codorniz Arlequín','Coturnix delegorguei'),('AV023','Tórtola Malgache','Streptopelia picturata'),('AV024','Mesito Monias','Monias benschi'),('AV025','Cúa Crestado','Coua cristata'),('AV026','Cúa Pechirrojo','Coua serriana'),('AV027','Polluela de Waters','Sarothrura watersi'),('AV028','Gallineta Común','Gallinula chloropus'),('AV029','Chorlitejo Pecuario','Charadrius pecuarius'),('AV030','Zarapito Real','Numenius arquata'),('AV031','Tinamú Café','Crypturellus obsoletus'),('AV032','Ganso del Nilo','Alopochen aegyptiaca'),('AV033','Suirirí Bicolor','Dendrocygna bicolor'),('AV034','Chachalaca colombiana','Ortalis columbiana'),('AV035','Pavón Porú','Crax daubentoni'),('AV036','Corcovado Castaño','Odontophorus hyperythrus'),('AV037','Paloma perdiz violácea','Geotrygon violacea'),('AV038','Zenaida Huilota','Zenaida macroura'),('AV039','Tórtola Turca','Streptopelia decaocto'),('AV040','Añapero Menudo','Chordeiles pusillus'),('AV041','Malvasía canela','Oxyura jamaicensis'),('AV042','Porrón Albeola','Bucephala albeola'),('AV043','Colín Cariclaro','Dendrortyx leucophrys'),('AV044','Paloma Montaraz Jamaicana','Leptotila jamaicensis'),('AV045','Cuclillo Bobo','Morococcyx erythropygus'),('AV046','Nictibio Jamaicano','Nyctibius jamaicensis'),('AV047','Colibrí verdemar','Colibri thalassinus'),('AV048','Zafiro de Elicia','Hylocharis eliciae'),('AV049','Correlimos Batitú','Bartramia longicauda'),('AV050','Aura Sabanera','Cathartes burrovianus'),('AV051','Silbón Europeo','Mareca penelope'),('AV052','Cerceta Aliazul','Spatula discors'),('AV053','Éider real','Somateria spectabilis'),('AV054','Porrón Osculado','Bucephala clangula'),('AV055','Colín de Moctezuma','Cyrtonyx montezumae'),('AV056','Zampullín Cuellinegro','Podiceps nigricollis'),('AV057','Paloma Bravía','Columba livia'),('AV058','Zenaida Aliblanca','Zenaida asiatica'),('AV059','Cuclillo de Manglar','Coccyzus minor'),('AV060','Rascón de Ridgway','Rallus obsoletus'),('AV061','Ánsar nival','Anser caerulescens'),('AV062','Barnacla Cariblanca','Branta leucopsis'),('AV063','Cisne Chico','Cygnus columbianus'),('AV064','Tarro Canelo','Tadorna ferruginea'),('AV065','Cerceta Carretona','Spatula querquedula'),('AV066','Porrón Osculado','Bucephala clangula'),('AV067','Arborófila Golirrufa','Arborophila rufogularis'),('AV068','Bambusícola China','Bambusicola thoracicus'),('AV069','Faisán Ensangrentado','Ithaginis cruentus'),('AV070','Gallo lira común','Tetrao tetrix'),('AV071','Barnacla Carinegra','Branta bernicla'),('AV072','Gansito Asiático','Nettapus coromandelianus'),('AV073','Cuchara Común','Spatula clypeata'),('AV074','Porrón Coacoxtle','Aythya valisineria'),('AV075','Tórtola moteada oriental','Streptopelia chinensis'),('AV076','Vinago axila','Treron axillaris'),('AV077','Dúcula Verde','Ducula aenea'),('AV078','Koel occidental','Eudynamys scolopaceus'),('AV079','Críalo Blanquinegro','Clamator jacobinus'),('AV080','Zampullín Cuellinegro','Podiceps nigricollis'),('AV081','Ganso Cenizo','Cereopsis novaehollandiae'),('AV082','Malvasía Australiana','Oxyura australis'),('AV083','Gansito Australiano','Nettapus pulchellus'),('AV084','Ánade azulón','Anas platyrhynchos'),('AV085','Agachadiza Colirrara','Gallinago stenura'),('AV086','Combatiente','Calidris pugnax'),('AV087','Aguja Café','Limosa haemastica'),('AV088','Archibebe Moteado','Tringa guttifer'),('AV089','Torillo Pechinegro','Turnix melanogaster'),('AV090','Podargo Ocelado','Podargus ocellatus');
/*!40000 ALTER TABLE `tont_aves` ENABLE KEYS */;


DROP TABLE IF EXISTS `tont_aves_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tont_aves_pais` (
  `CDPAIS` varchar(3) NOT NULL,
  `CDAVE` varchar(5) NOT NULL,
  PRIMARY KEY (`CDPAIS`,`CDAVE`),
  KEY `CDAVE` (`CDAVE`),
  CONSTRAINT `tont_aves_pais_ibfk_1` FOREIGN KEY (`CDPAIS`) REFERENCES `tont_paises` (`CDPAIS`),
  CONSTRAINT `tont_aves_pais_ibfk_2` FOREIGN KEY (`CDAVE`) REFERENCES `tont_aves` (`CDAVE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40000 ALTER TABLE `tont_aves_pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `tont_aves_pais` ENABLE KEYS */;


DROP TABLE IF EXISTS `tont_paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tont_paises` (
  `CDPAIS` varchar(3) NOT NULL,
  `DSNOMBRE` varchar(100) DEFAULT NULL,
  `CDZONA` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`CDPAIS`),
  KEY `CDZONA` (`CDZONA`),
  CONSTRAINT `tont_paises_ibfk_1` FOREIGN KEY (`CDZONA`) REFERENCES `tont_zonas` (`CDZONA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



/*!40000 ALTER TABLE `tont_paises` DISABLE KEYS */;
INSERT  IGNORE INTO `tont_paises` (`CDPAIS`, `DSNOMBRE`, `CDZONA`) VALUES ('AU','Austriala','OC'),('BR','Brasil','SU'),('CN','China','AS'),('CO','Colombia','SU'),('MG','Madagascar','AF'),('MX','Mexico','CE'),('PH','Filipinas','AS'),('US','Estados Unidos','NO'),('ZA','Sudafrica','AF');
/*!40000 ALTER TABLE `tont_paises` ENABLE KEYS */;



DROP TABLE IF EXISTS `tont_zonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tont_zonas` (
  `CDZONA` varchar(3) NOT NULL,
  `DSNOMBRE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CDZONA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40000 ALTER TABLE `tont_zonas` DISABLE KEYS */;
INSERT  IGNORE INTO `tont_zonas` (`CDZONA`, `DSNOMBRE`) VALUES ('AF','Africa'),('AS','Asia'),('CE','Centroamérica'),('NO','Norteamérica'),('OC','Oceanía'),('SU','Sudamérica');
/*!40000 ALTER TABLE `tont_zonas` ENABLE KEYS */;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;



SELECT * FROM aves.tont_aves;
SELECT * FROM aves.tont_zonas;
SELECT * FROM aves.tont_aves_pais;

insert into tont_aves_pais values ('BR','AV005');
insert into tont_aves_pais values ('BR','AV007');
insert into tont_aves_pais values ('BR','AV008');
insert into tont_aves_pais values ('BR','AV009');
insert into tont_aves_pais values ('BR','AV010');






SELECT ZN.DSNOMBRE, PA.DSNOMBRE, AV.DSNOMBRE_COMUN, AV.CDAVE FROM 
tont_zonas AS ZN INNER JOIN tont_paises AS PA ON ZN.CDZONA = PA.CDZONA INNER JOIN 
tont_aves_pais AS AV_PA ON PA.CDPAIS=AV_PA.CDPAIS INNER JOIN 
tont_aves AS AV ON AV.CDAVE = AV_PA.CDAVE WHERE ZN.CDZONA = 'SU';


delimiter $$

CREATE PROCEDURE `findAves`(p_cdZona varchar(3))
begin
	SELECT ZN.DSNOMBRE, PA.DSNOMBRE, AV.DSNOMBRE_COMUN, AV.CDAVE FROM 
	tont_zonas AS ZN INNER JOIN tont_paises AS PA ON ZN.CDZONA = PA.CDZONA INNER JOIN 
	tont_aves_pais AS AV_PA ON PA.CDPAIS=AV_PA.CDPAIS INNER JOIN 
	tont_aves AS AV ON AV.CDAVE = AV_PA.CDAVE WHERE ZN.CDZONA = p_cdZona;	
end$$

call findAves('SU'); 

