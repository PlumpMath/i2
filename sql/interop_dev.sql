-- MySQL dump 10.13  Distrib 5.6.27, for osx10.11 (x86_64)
--
-- Host: localhost    Database: interop_dev
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `package_group_id` int(11) NOT NULL,
  `request_flag` tinyint(1) NOT NULL DEFAULT '0',
  `default_message_txt` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_name` (`name`) USING BTREE,
  KEY `message_package_group_id` (`package_group_id`) USING BTREE,
  CONSTRAINT `message_package_group_id` FOREIGN KEY (`package_group_id`) REFERENCES `package_group` (`package_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (10,'CIM_DER(changedDERGroupStatus)',1,0,NULL),(11,'CIM_DER(createDERGroupForecast)',1,0,NULL),(12,'CIM_DER(createDERGroupDispatches)',1,0,NULL),(13,'CIM_DER(changedDERGroup)',1,0,'<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:req=\"http://sixthc.com/CIM/Request\" xmlns:der=\"http://iec.ch/TC57/2011/DERGroupMessage\" xmlns:mes=\"http://iec.ch/TC57/2011/schema/message\" xmlns:der1=\"http://www.epri.com/2013/DERGroup#\">\n   <soapenv:Header/>\n   <soapenv:Body>\n      <req:RequestCreateDERGroupPayload>\n         <requestURL>?</requestURL>\n         <payload>\n            <der:Header>\n               <mes:Verb>?</mes:Verb>\n               <mes:Noun>?</mes:Noun>\n               <!--Optional:-->\n               <mes:Revision>?</mes:Revision>\n               <!--Optional:-->\n               <mes:ReplayDetection>\n                  <mes:Nonce>?</mes:Nonce>\n                  <mes:Created>?</mes:Created>\n               </mes:ReplayDetection>\n               <!--Optional:-->\n               <mes:Context>?</mes:Context>\n               <!--Optional:-->\n               <mes:Timestamp>?</mes:Timestamp>\n               <!--Optional:-->\n               <mes:Source>?</mes:Source>\n               <!--Optional:-->\n               <mes:AsyncReplyFlag>?</mes:AsyncReplyFlag>\n               <!--Optional:-->\n               <mes:ReplyAddress>?</mes:ReplyAddress>\n               <!--Optional:-->\n               <mes:AckRequired>?</mes:AckRequired>\n               <!--Optional:-->\n               <mes:User>\n                  <mes:UserID>?</mes:UserID>\n                  <!--Optional:-->\n                  <mes:Organization>?</mes:Organization>\n               </mes:User>\n               <!--Optional:-->\n               <mes:MessageID>?</mes:MessageID>\n               <!--Optional:-->\n               <mes:CorrelationID>?</mes:CorrelationID>\n               <!--Optional:-->\n               <mes:Comment>?</mes:Comment>\n               <!--Zero or more repetitions:-->\n               <mes:Property>\n                  <mes:Name>?</mes:Name>\n                  <!--Optional:-->\n                  <mes:Value>?</mes:Value>\n               </mes:Property>\n               <!--You may enter ANY elements at this point-->\n            </der:Header>\n            <!--Optional:-->\n            <der:Request>\n               <!--Optional:-->\n               <mes:StartTime>?</mes:StartTime>\n               <!--Optional:-->\n               <mes:EndTime>?</mes:EndTime>\n               <!--Zero or more repetitions:-->\n               <mes:Option>\n                  <mes:name>?</mes:name>\n                  <!--Optional:-->\n                  <mes:value>?</mes:value>\n               </mes:Option>\n               <!--Zero or more repetitions:-->\n               <mes:ID idType=\"?\" idAuthority=\"?\" kind=\"?\" objectType=\"?\">?</mes:ID>\n               <!--You may enter ANY elements at this point-->\n            </der:Request>\n            <!--Optional:-->\n            <der:Payload>\n               <der1:DERGroups>\n                  <!--1 or more repetitions:-->\n                  <der1:DERGroup description=\"?\" comment=\"?\">\n                     <!--Optional:-->\n                     <der1:extensionsList>\n                        <!--1 or more repetitions:-->\n                        <der1:extensionsItem>\n                           <der1:extName>?</der1:extName>\n                           <der1:extValue>?</der1:extValue>\n                           <!--Optional:-->\n                           <der1:extType>?</der1:extType>\n                        </der1:extensionsItem>\n                     </der1:extensionsList>\n                     <!--Optional:-->\n                     <der1:status>\n                        <der1:dateTime>?</der1:dateTime>\n                        <!--Optional:-->\n                        <der1:reason>?</der1:reason>\n                        <!--Optional:-->\n                        <der1:remark>?</der1:remark>\n                        <der1:value>?</der1:value>\n                     </der1:status>\n                     <der1:name>?</der1:name>\n                     <!--Optional:-->\n                     <der1:mRID>?</der1:mRID>\n                     <!--Zero or more repetitions:-->\n                     <der1:Names>\n                        <der1:name>?</der1:name>\n                        <!--Optional:-->\n                        <der1:NameType>\n                           <!--Optional:-->\n                           <der1:description>?</der1:description>\n                           <der1:name>?</der1:name>\n                           <!--Optional:-->\n                           <der1:NameTypeAuthority>\n                              <!--Optional:-->\n                              <der1:description>?</der1:description>\n                              <der1:name>?</der1:name>\n                           </der1:NameTypeAuthority>\n                        </der1:NameType>\n                     </der1:Names>\n                     <!--Zero or more repetitions:-->\n                     <der1:DERMember>\n                        <!--Optional:-->\n                        <der1:mRID>?</der1:mRID>\n                        <!--Optional:-->\n                        <der1:name>?</der1:name>\n                        <!--Optional:-->\n                        <der1:Names>\n                           <der1:name>?</der1:name>\n                           <!--Optional:-->\n                           <der1:NameType>\n                              <!--Optional:-->\n                              <der1:description>?</der1:description>\n                              <der1:name>?</der1:name>\n                              <!--Optional:-->\n                              <der1:NameTypeAuthority>\n                                 <!--Optional:-->\n                                 <der1:description>?</der1:description>\n                                 <der1:name>?</der1:name>\n                              </der1:NameTypeAuthority>\n                           </der1:NameType>\n                        </der1:Names>\n                     </der1:DERMember>\n                  </der1:DERGroup>\n               </der1:DERGroups>\n               <!--Optional:-->\n               <der:OperationSet>\n                  <!--Optional:-->\n                  <mes:enforceMsgSequence>?</mes:enforceMsgSequence>\n                  <!--Optional:-->\n                  <mes:enforceTransactionalIntegrity>?</mes:enforceTransactionalIntegrity>\n                  <!--Zero or more repetitions:-->\n                  <mes:Operation>\n                     <mes:operationId>?</mes:operationId>\n                     <!--Optional:-->\n                     <mes:noun>?</mes:noun>\n                     <!--Optional:-->\n                     <mes:verb>?</mes:verb>\n                     <!--Optional:-->\n                     <mes:elementOperation>false</mes:elementOperation>\n                     <!--You may enter ANY elements at this point-->\n                  </mes:Operation>\n               </der:OperationSet>\n               <!--Optional:-->\n               <der:Compressed>?</der:Compressed>\n               <!--Optional:-->\n               <der:Format>?</der:Format>\n            </der:Payload>\n         </payload>\n      </req:RequestCreateDERGroupPayload>\n   </soapenv:Body>\n</soapenv:Envelope>'),(14,'CIM_DER(createDERGroupCapabilities)',1,0,NULL),(15,'CIM_DER(createDERGroups)',1,0,NULL),(16,'CIM_DER(deleteDERGroup)',1,0,NULL),(17,'CIM_DER(getDERGroupCapabilities)',1,0,NULL),(18,'CIM_DER(getDERGroupStatus)',1,0,NULL),(19,'CIM_DER(getDERGroup)',1,0,NULL),(30,'CIM_DER(requestChangedDERGroupStatus)',2,1,NULL),(31,'CIM_DER(requestCreateDERGroupDispatch)',2,1,NULL),(32,'CIM_DER(requestCreateDERGroupForecast)',2,1,NULL),(33,'CIM_DER(requestChangedDERGroups)',2,1,NULL),(34,'CIM_DER(requestCreateDERGroupCapabilities)',2,1,NULL),(36,'CIM_DER(requestDeleteDERGroup)',2,1,NULL),(38,'CIM_DER(requestGetDERGroupStatus)',2,1,NULL),(39,'CIM_DER(requestGetDERGroup)',2,1,NULL);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_log`
--

DROP TABLE IF EXISTS `message_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_log` (
  `message_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` longtext COLLATE utf8_unicode_ci,
  `contentType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `data` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encoding` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faultCode` longtext COLLATE utf8_unicode_ci,
  `header` longtext COLLATE utf8_unicode_ci,
  `httpMethod` longtext COLLATE utf8_unicode_ci,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `messageId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8_unicode_ci,
  `responseCode` longtext COLLATE utf8_unicode_ci,
  `resultCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `stage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `correlationID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`message_log_id`),
  KEY `INTERFACE_ID` (`message_id`) USING BTREE,
  CONSTRAINT `message_log_message_id` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_log`
--

LOCK TABLES `message_log` WRITE;
/*!40000 ALTER TABLE `message_log` DISABLE KEYS */;
INSERT INTO `message_log` VALUES (71,NULL,'text/xml','2016-06-18 14:59:32',NULL,'UTF-8',NULL,'{}',NULL,NULL,'0',NULL,'<soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"><soap:Body><soap:Fault><faultcode>soap:Server</faultcode><faultstring>CIM header.MessageID is not unique</faultstring></soap:Fault></soap:Body></soap:Envelope>','500','fail',NULL,'serviceOutFault',NULL,NULL),(72,'http://localhost:8080/epriConnect/ExecuteDERGroupDispatches','text/xml;charset=UTF-8','2016-06-18 11:58:30',NULL,'UTF-8',NULL,'{accept-encoding=[gzip,deflate], connection=[Keep-Alive], Content-Length=[3134], content-type=[text/xml;charset=UTF-8], host=[localhost:8080], SOAPAction=[\"http://www.epri.com/2016/DERGroupDispatches/CreateDERGroupDispatches\"], user-agent=[Apache-HttpClient/4.1.1 (java 1.5)]}','POST',NULL,'5056eab4-120c-11e5-9493-1697f925ec7b','http://www.epri.com/2016/DERGroupDispatches/CreateDERGroupDispatches','<soapenv:Envelope \nxmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" \nxmlns:der=\"http://www.epri.com/2016/DERGroupDispatchesMessage\" \nxmlns:mes=\"http://www.iec.ch/TC57/2011/schema/message\" \nxmlns:der1=\"http://www.epri.com/2013/DERGroupDispatches#\">\n   <soapenv:Header/>\n   <soapenv:Body>\n      <der:CreateDERGroupDispatches>\n         <der:Header>\n            <mes:Verb>Create</mes:Verb>\n                <mes:Noun>Workorder</mes:Noun>\n                <mes:Revision>0.1</mes:Revision>            \n                <mes:ReplayDetection>\n                    <mes:Nonce>1234</mes:Nonce>\n                    <mes:Created>2015-06-12T12:00:00.00-05:00</mes:Created>\n                </mes:ReplayDetection>                \n                <mes:Context>Not Set</mes:Context>                \n                <mes:Timestamp>2015-06-12T12:00:00.00-05:00</mes:Timestamp>               \n                <mes:Source>epri</mes:Source>                \n                <mes:AsyncReplyFlag>false</mes:AsyncReplyFlag>                \n                <mes:ReplyAddress>http://epri.com/CIM</mes:ReplyAddress>                \n                <mes:AckRequired>false</mes:AckRequired>                \n                <mes:User>\n                    <mes:UserID>epriTest</mes:UserID>\n                    <mes:Organization>sixc</mes:Organization>\n                </mes:User>                \n                <mes:MessageID>5056eab4-120c-11e5-9493-1697f925ec7b</mes:MessageID>                \n              <!--  <mes:CorrelationID>5056f018-120c-11e5-9493-1697f925ec7b</mes:CorrelationID>     -->           \n                <mes:Comment>epri persistence test</mes:Comment>                \n                <mes:Property>\n                    <mes:Name>workorder</mes:Name>\n                    <mes:Value>0.1</mes:Value>\n                </mes:Property>\n         </der:Header>\n         <!--Optional:-->\n         <der:Request>\n            <!--Optional:-->\n            <mes:StartTime>2015-06-12T12:00:00.00-05:00</mes:StartTime>\n            <!--Optional:-->\n            <mes:EndTime>2015-06-12T12:00:00.00-05:00</mes:EndTime>\n         </der:Request>\n         <!--Optional:-->\n         <der:Payload>\n            <der1:DERGroupDispatches>\n               <!--1 or more repetitions:-->\n               <der1:DERGroupDispatch>\n                  <der1:DERGroup>\n                     <der1:name>d1</der1:name>\n                     <!--Optional:-->\n                     <der1:mRID>3344</der1:mRID>\n                     \n                  </der1:DERGroup>\n                  <der1:RequestedCapability>\n                     <der1:capabilityType>RealPower</der1:capabilityType>\n                     <der1:value>1.7</der1:value>\n                     <der1:capabilityUnits>MW</der1:capabilityUnits>\n                     <der1:capabilityMultiplier>0.7</der1:capabilityMultiplier>\n                  </der1:RequestedCapability>\n                  <der1:mRID>9988</der1:mRID>\n                 \n               </der1:DERGroupDispatch>\n            </der1:DERGroupDispatches>\n           \n         </der:Payload>\n      </der:CreateDERGroupDispatches>\n   </soapenv:Body>\n</soapenv:Envelope>',NULL,'success',12,'serviceIn',1,NULL),(73,NULL,'text/xml','2016-06-18 11:58:30',NULL,'UTF-8',NULL,'{}',NULL,NULL,'18bd5cdb-8fb7-4b45-b45e-b337fb841182',NULL,'<soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\"><soap:Body><ns2:DERGroupDispatchesResponseMessage xmlns:ns3=\"http://www.epri.com/2013/DERGroupDispatches#\" xmlns:ns2=\"http://www.epri.com/2016/DERGroupDispatchesMessage\" xmlns=\"http://www.iec.ch/TC57/2011/schema/message\"><ns2:Header><Verb>Create</Verb><Noun>Workorder</Noun><Revision>0.1</Revision><ReplayDetection><Nonce>1234</Nonce><Created>2015-06-12T12:00:00.00-05:00</Created></ReplayDetection><Context>Not Set</Context><Timestamp>2015-06-12T12:00:00.00-05:00</Timestamp><Source>epri</Source><AsyncReplyFlag>false</AsyncReplyFlag><ReplyAddress>http://epri.com/CIM</ReplyAddress><AckRequired>false</AckRequired><User><UserID>epriTest</UserID><Organization>sixc</Organization></User><MessageID>18bd5cdb-8fb7-4b45-b45e-b337fb841182</MessageID><CorrelationID>5056eab4-120c-11e5-9493-1697f925ec7b</CorrelationID><Comment>epri persistence test</Comment><Property><Name>workorder</Name><Value>0.1</Value></Property></ns2:Header><ns2:Reply><Result>OK</Result></ns2:Reply><ns2:Payload><ns3:DERGroupDispatches><ns3:DERGroupDispatch><ns3:DERGroup><ns3:name>d1</ns3:name><ns3:mRID>3344</ns3:mRID></ns3:DERGroup><ns3:RequestedCapability><ns3:capabilityType>RealPower</ns3:capabilityType><ns3:value>1.7</ns3:value><ns3:capabilityUnits>MW</ns3:capabilityUnits><ns3:capabilityMultiplier>0.7</ns3:capabilityMultiplier></ns3:RequestedCapability><ns3:mRID>9988</ns3:mRID></ns3:DERGroupDispatch></ns3:DERGroupDispatches></ns2:Payload></ns2:DERGroupDispatchesResponseMessage></soap:Body></soap:Envelope>',NULL,'success',12,'serviceOut',1,'5056eab4-120c-11e5-9493-1697f925ec7b');
/*!40000 ALTER TABLE `message_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `package_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'CIM DER'),(2,'MSP DER');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_group`
--

DROP TABLE IF EXISTS `package_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_group` (
  `package_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `package_id` int(11) NOT NULL,
  PRIMARY KEY (`package_group_id`),
  KEY `package_group_package_id` (`package_id`) USING BTREE,
  CONSTRAINT `package_group_package_id` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_group`
--

LOCK TABLES `package_group` WRITE;
/*!40000 ALTER TABLE `package_group` DISABLE KEYS */;
INSERT INTO `package_group` VALUES (1,'CIM DER Control',1),(2,'CIM DER Request',1);
/*!40000 ALTER TABLE `package_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160412144600'),('20160417160015'),('20160417160017'),('20160417160021'),('20160417161256'),('20160424232548'),('20160508163842');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_seq_step`
--

DROP TABLE IF EXISTS `test_seq_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_seq_step` (
  `test_seq_step_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_sequence_id` int(11) NOT NULL,
  `in_message_id` int(11) NOT NULL,
  `esb_url` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `harness_url` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swap_corrid_flag` tinyint(1) NOT NULL DEFAULT '0',
  `next_step_id` int(11) DEFAULT '0',
  PRIMARY KEY (`test_seq_step_id`),
  KEY `test_steps_in_message_id` (`in_message_id`) USING BTREE,
  KEY `test_steps_next_step_id` (`next_step_id`) USING BTREE,
  KEY `test_seq_step_test_seq` (`test_sequence_id`) USING BTREE,
  CONSTRAINT `test_seq_step_test_seq` FOREIGN KEY (`test_sequence_id`) REFERENCES `test_sequence` (`test_sequence_id`),
  CONSTRAINT `test_steps_in_message_id` FOREIGN KEY (`in_message_id`) REFERENCES `message` (`message_id`),
  CONSTRAINT `test_steps_next_step_id` FOREIGN KEY (`next_step_id`) REFERENCES `test_seq_step` (`test_seq_step_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_seq_step`
--

LOCK TABLES `test_seq_step` WRITE;
/*!40000 ALTER TABLE `test_seq_step` DISABLE KEYS */;
INSERT INTO `test_seq_step` VALUES (1,2,11,NULL,'http://blah:8080/DERConnect/cim/Forecasts',1,NULL),(2,3,12,'','http://blah:8080/DERConnect/cim/changeDERGroupDispatch',1,2),(3,4,13,'fgdfgf','http://blah:8080/DERConnect/cim/changeDERGro',1,3),(4,6,15,NULL,'http://blah:8080/DERConnect/cim/changeDERGroup',1,NULL),(5,7,16,NULL,'http://blah:8080/DERConnect/cim/changeDERGroup',1,NULL),(6,8,17,NULL,'http://blah:8080/DERConnect/cim/getDERGroupCapabilities',1,NULL),(7,9,18,NULL,'http://blah:8080/DERConnect/cim/getDERGroupStatus',1,NULL),(8,10,19,NULL,'http://blah:8080/DERConnect/cim/getDERGroup',1,NULL),(21,22,11,'ben fill in','http://blah:8080/DERConnect/cim/Forecasts',1,NULL),(22,23,12,'ben fill in','http://blah:8080/DERConnect/cim/changeDERGroupDispatch',1,NULL),(23,24,13,'ben fill in','http://blah:8080/DERConnect/cim/changeDERGroup',1,NULL),(24,26,15,'ben fill in','http://blah:8080/DERConnect/cim/changeDERGroup',1,NULL),(25,27,16,'ben fill in','http://blah:8080/DERConnect/cim/changeDERGroup',1,NULL),(26,28,17,'ben fill in','http://blah:8080/DERConnect/cim/getDERGroupCapabilities',1,NULL),(27,29,18,'ben fill in','http://blah:8080/DERConnect/cim/getDERGroupStatus',1,NULL),(28,30,19,'ben fill in','http://blah:8080/DERConnect/cim/getDERGroup',1,NULL);
/*!40000 ALTER TABLE `test_seq_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_sequence`
--

DROP TABLE IF EXISTS `test_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_sequence` (
  `test_sequence_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'standalone',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`test_sequence_id`),
  KEY `fk_rails_eaa7c84af2` (`user_id`),
  CONSTRAINT `fk_rails_eaa7c84af2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_sequence`
--

LOCK TABLES `test_sequence` WRITE;
/*!40000 ALTER TABLE `test_sequence` DISABLE KEYS */;
INSERT INTO `test_sequence` VALUES (1,'CIM_DER -changedDERGroupStatus)',NULL,'standalone',NULL),(2,'CIM_DER -createDERGroupForecast)','Create DER Group Forecast sync','standalone',NULL),(3,'CIM_DER -createDERGroupDispatch)',NULL,'standalone',NULL),(4,'CIM_DER -changedDERGroup)',NULL,'standalone',NULL),(5,'CIM_DER -createDERGroupCapabilities)',NULL,'standalone',NULL),(6,'CIM_DER -createDERGroup)',NULL,'standalone',NULL),(7,'CIM_DER -deleteDERGroup)',NULL,'standalone',NULL),(8,'CIM_DER -getDERGroupCapabilities)',NULL,'standalone',NULL),(9,'CIM_DER -getDERGroupStatus)',NULL,'standalone',NULL),(10,'CIM_DER -getDERGroup)',NULL,'standalone',NULL),(21,'CIM_DER -changedDERGroupStatus)',NULL,'proxy',2),(22,'CIM_DER -createDERGroupForecast)',NULL,'proxy',2),(23,'CIM_DER -createDERGroupDispatch)',NULL,'proxy',2),(24,'CIM_DER -changedDERGroup)',NULL,'proxy',2),(25,'CIM_DER -createDERGroupCapabilities)',NULL,'proxy',2),(26,'CIM_DER -createDERGroup)',NULL,'proxy',2),(27,'CIM_DER -deleteDERGroup)',NULL,'proxy',2),(28,'CIM_DER -getDERGroupCapabilities)',NULL,'proxy',2),(29,'CIM_DER -getDERGroupStatus)',NULL,'proxy',2),(30,'CIM_DER -getDERGroup)',NULL,'proxy',2),(40,'aSD','asdas','proxy',2),(41,'sff','ww','standalone',2),(42,'dsf','asdf','standalone',2);
/*!40000 ALTER TABLE `test_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `fk_rails_0d9fb09c73` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user@example.com','$2a$10$vkdg23pN8ERRy3cdH1E5z.btVai92PqIr4QqgOUwC/BAEyvBB1lRG',NULL,NULL,NULL,1,'2016-04-19 13:27:25','2016-04-19 13:27:25','::1','','2016-04-17 16:08:25','2016-04-19 13:39:32','User2',3,1),(2,'benj.goodwin@gmail.com','$2a$10$qj7chRDuwPkQ3nAMy5JMD.ZEdeyYurAmVZ1/XiMqJ/qIAH5quvulm',NULL,NULL,'2016-05-08 17:08:36',11,'2016-06-18 15:52:06','2016-05-12 14:06:17','::1','::1','2016-04-17 16:09:29','2016-06-18 15:52:06','Ben goodwin',3,1),(4,'foo21@gmail.com','$2a$10$1kNA1Y/XRHPJAoibT8ZDcO2z.e4/TzTxC3BbyLYBwlx2FY0XKuu.O',NULL,NULL,NULL,1,'2016-04-23 20:50:18','2016-04-23 20:50:18','::1','','2016-04-17 18:44:32','2016-04-23 21:07:52','foo21',0,1),(5,'jack@gmail.com','$2a$10$JmBtsPVth2q/GPyBq9nlNuDjAhAcFPpHx2NfrbQtBbUX4t.Iaj4/a',NULL,NULL,NULL,0,NULL,NULL,'','','2016-04-17 18:51:50','2016-04-17 18:51:50','jack',0,1),(6,'foo45@gmail.com','$2a$10$KRGAnzVVvbRA6zS2gntKBeTEsuHRSumOKfxERL74drTnzzSg3T6JK',NULL,NULL,NULL,0,NULL,NULL,'','','2016-04-17 18:59:22','2016-04-17 18:59:22','foo45',0,2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `default_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `vendor_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'sixc','2016-04-30 16:40:53','http://localhost:8080/foo'),(7,'vendor33','2016-04-23 19:04:40',NULL),(8,'vendor66','2016-04-23 19:04:56',NULL);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_packages`
--

DROP TABLE IF EXISTS `vendor_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_packages` (
  `vendor_packages_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  PRIMARY KEY (`vendor_packages_id`),
  KEY `vendor_package_package_id` (`package_id`) USING BTREE,
  KEY `vendor_package_vendor_id` (`vendor_id`) USING BTREE,
  CONSTRAINT `vendor_package_package_id` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  CONSTRAINT `vendor_package_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_packages`
--

LOCK TABLES `vendor_packages` WRITE;
/*!40000 ALTER TABLE `vendor_packages` DISABLE KEYS */;
INSERT INTO `vendor_packages` VALUES (21,1,1),(22,1,2);
/*!40000 ALTER TABLE `vendor_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_request_message`
--

DROP TABLE IF EXISTS `vendor_request_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_request_message` (
  `vendor_request_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `message_txt` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sent_to_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`vendor_request_message_id`),
  KEY `vendor_request_message_message_id` (`message_id`) USING BTREE,
  KEY `vendor_request_message_vendor_id` (`vendor_id`) USING BTREE,
  CONSTRAINT `vendor_request_message_message_id` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`),
  CONSTRAINT `vendor_request_message_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_request_message`
--

LOCK TABLES `vendor_request_message` WRITE;
/*!40000 ALTER TABLE `vendor_request_message` DISABLE KEYS */;
INSERT INTO `vendor_request_message` VALUES (15,1,15,'none','http://foo.com','Test message'),(16,1,13,'<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:req=\"http://sixthc.com/CIM/Request\" xmlns:der=\"http://iec.ch/TC57/2011/DERGroupMessage\" xmlns:mes=\"http://iec.ch/TC57/2011/schema/message\" xmlns:der1=\"http://www.epri.com/2013/DERGroup#\">\r\n   <soapenv:Header/>\r\n   <soapenv:Body>\r\n      <req:RequestCreateDERGroupPayload>\r\n         <requestURL>?</requestURL>\r\n         <payload>\r\n            <der:Header>\r\n               <mes:Verb>?</mes:Verb>\r\n               <mes:Noun>?</mes:Noun>\r\n               <!--Optional:-->\r\n               <mes:Revision>?</mes:Revision>\r\n               <!--Optional:-->\r\n               <mes:ReplayDetection>\r\n                  <mes:Nonce>?</mes:Nonce>\r\n                  <mes:Created>?</mes:Created>\r\n               </mes:ReplayDetection>\r\n               <!--Optional:-->\r\n               <mes:Context>?</mes:Context>\r\n               <!--Optional:-->\r\n               <mes:Timestamp>?</mes:Timestamp>\r\n               <!--Optional:-->\r\n               <mes:Source>?</mes:Source>\r\n               <!--Optional:-->\r\n               <mes:AsyncReplyFlag>?</mes:AsyncReplyFlag>\r\n               <!--Optional:-->\r\n               <mes:ReplyAddress>?</mes:ReplyAddress>\r\n               <!--Optional:-->\r\n               <mes:AckRequired>?</mes:AckRequired>\r\n               <!--Optional:-->\r\n               <mes:User>\r\n                  <mes:UserID>?</mes:UserID>\r\n                  <!--Optional:-->\r\n                  <mes:Organization>?</mes:Organization>\r\n               </mes:User>\r\n               <!--Optional:-->\r\n               <mes:MessageID>?</mes:MessageID>\r\n               <!--Optional:-->\r\n               <mes:CorrelationID>?</mes:CorrelationID>\r\n               <!--Optional:-->\r\n               <mes:Comment>?</mes:Comment>\r\n               <!--Zero or more repetitions:-->\r\n               <mes:Property>\r\n                  <mes:Name>?</mes:Name>\r\n                  <!--Optional:-->\r\n                  <mes:Value>?</mes:Value>\r\n               </mes:Property>\r\n               <!--You may enter ANY elements at this point-->\r\n            </der:Header>\r\n            <!--Optional:-->\r\n            <der:Request>\r\n               <!--Optional:-->\r\n               <mes:StartTime>?</mes:StartTime>\r\n               <!--Optional:-->\r\n               <mes:EndTime>?</mes:EndTime>\r\n               <!--Zero or more repetitions:-->\r\n               <mes:Option>\r\n                  <mes:name>?</mes:name>\r\n                  <!--Optional:-->\r\n                  <mes:value>?</mes:value>\r\n               </mes:Option>\r\n               <!--Zero or more repetitions:-->\r\n               <mes:ID idType=\"?\" idAuthority=\"?\" kind=\"?\" objectType=\"?\">?</mes:ID>\r\n               <!--You may enter ANY elements at this point-->\r\n            </der:Request>\r\n            <!--Optional:-->\r\n            <der:Payload>\r\n               <der1:DERGroups>\r\n                  <!--1 or more repetitions:-->\r\n                  <der1:DERGroup description=\"?\" comment=\"?\">\r\n                     <!--Optional:-->\r\n                     <der1:extensionsList>\r\n                        <!--1 or more repetitions:-->\r\n                        <der1:extensionsItem>\r\n                           <der1:extName>?</der1:extName>\r\n                           <der1:extValue>?</der1:extValue>\r\n                           <!--Optional:-->\r\n                           <der1:extType>?</der1:extType>\r\n                        </der1:extensionsItem>\r\n                     </der1:extensionsList>\r\n                     <!--Optional:-->\r\n                     <der1:status>\r\n                        <der1:dateTime>?</der1:dateTime>\r\n                        <!--Optional:-->\r\n                        <der1:reason>?</der1:reason>\r\n                        <!--Optional:-->\r\n                        <der1:remark>?</der1:remark>\r\n                        <der1:value>?</der1:value>\r\n                     </der1:status>\r\n                     <der1:name>?</der1:name>\r\n                     <!--Optional:-->\r\n                     <der1:mRID>?</der1:mRID>\r\n                     <!--Zero or more repetitions:-->\r\n                     <der1:Names>\r\n                        <der1:name>?</der1:name>\r\n                        <!--Optional:-->\r\n                        <der1:NameType>\r\n                           <!--Optional:-->\r\n                           <der1:description>?</der1:description>\r\n                           <der1:name>?</der1:name>\r\n                           <!--Optional:-->\r\n                           <der1:NameTypeAuthority>\r\n                              <!--Optional:-->\r\n                              <der1:description>?</der1:description>\r\n                              <der1:name>?</der1:name>\r\n                           </der1:NameTypeAuthority>\r\n                        </der1:NameType>\r\n                     </der1:Names>\r\n                     <!--Zero or more repetitions:-->\r\n                     <der1:DERMember>\r\n                        <!--Optional:-->\r\n                        <der1:mRID>?</der1:mRID>\r\n                        <!--Optional:-->\r\n                        <der1:name>?</der1:name>\r\n                        <!--Optional:-->\r\n                        <der1:Names>\r\n                           <der1:name>?</der1:name>\r\n                           <!--Optional:-->\r\n                           <der1:NameType>\r\n                              <!--Optional:-->\r\n                              <der1:description>?</der1:description>\r\n                              <der1:name>?</der1:name>\r\n                              <!--Optional:-->\r\n                              <der1:NameTypeAuthority>\r\n                                 <!--Optional:-->\r\n                                 <der1:description>?</der1:description>\r\n                                 <der1:name>?</der1:name>\r\n                              </der1:NameTypeAuthority>\r\n                           </der1:NameType>\r\n                        </der1:Names>\r\n                     </der1:DERMember>\r\n                  </der1:DERGroup>\r\n               </der1:DERGroups>\r\n               <!--Optional:-->\r\n               <der:OperationSet>\r\n                  <!--Optional:-->\r\n                  <mes:enforceMsgSequence>?</mes:enforceMsgSequence>\r\n                  <!--Optional:-->\r\n                  <mes:enforceTransactionalIntegrity>?</mes:enforceTransactionalIntegrity>\r\n                  <!--Zero or more repetitions:-->\r\n                  <mes:Operation>\r\n                     <mes:operationId>?</mes:operationId>\r\n                     <!--Optional:-->\r\n                     <mes:noun>?</mes:noun>\r\n                     <!--Optional:-->\r\n                     <mes:verb>?</mes:verb>\r\n                     <!--Optional:-->\r\n                     <mes:elementOperation>false</mes:elementOperation>\r\n                     <!--You may enter ANY elements at this point-->\r\n                  </mes:Operation>\r\n               </der:OperationSet>\r\n               <!--Optional:-->\r\n               <der:Compressed>?</der:Compressed>\r\n               <!--Optional:-->\r\n               <der:Format>?</der:Format>\r\n            </der:Payload>\r\n         </payload>\r\n      </req:RequestCreateDERGroupPayload>\r\n   </soapenv:Body>\r\n</soapenv:Envelope>','foot.com','testing');
/*!40000 ALTER TABLE `vendor_request_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_seq_step_logging`
--

DROP TABLE IF EXISTS `vendor_seq_step_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_seq_step_logging` (
  `vendor_seq_step_logging_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `vendor_test_seq_steps_id` int(11) NOT NULL,
  `in_mess_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `out_mess_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `in_reply_url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tstamp` datetime NOT NULL,
  PRIMARY KEY (`vendor_seq_step_logging_id`),
  KEY `vend_seq_logging_vendor_id` (`vendor_id`) USING BTREE,
  KEY `vend_seq_logging_test_seq_step_id` (`vendor_test_seq_steps_id`) USING BTREE,
  CONSTRAINT `vend_seq_logging_test_seq_step_id` FOREIGN KEY (`vendor_test_seq_steps_id`) REFERENCES `vendor_test_seq_steps` (`vendor_test_seq_steps_id`),
  CONSTRAINT `vend_seq_logging_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_seq_step_logging`
--

LOCK TABLES `vendor_seq_step_logging` WRITE;
/*!40000 ALTER TABLE `vendor_seq_step_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_seq_step_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_test_seq_steps`
--

DROP TABLE IF EXISTS `vendor_test_seq_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_test_seq_steps` (
  `vendor_test_seq_steps_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_test_sequences_id` int(11) NOT NULL,
  `test_seq_step_id` int(11) NOT NULL,
  `out_url` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`vendor_test_seq_steps_id`),
  KEY `vendor_test_seq_steps_test_seq_step_id` (`test_seq_step_id`) USING BTREE,
  KEY `vendor_test_seq_steps_vendor_sequence_id` (`vendor_test_sequences_id`) USING BTREE,
  CONSTRAINT `vendor_test_seq_steps_test_seq_step_id` FOREIGN KEY (`test_seq_step_id`) REFERENCES `test_seq_step` (`test_seq_step_id`),
  CONSTRAINT `vendor_test_seq_steps_vendor_sequence_id` FOREIGN KEY (`vendor_test_sequences_id`) REFERENCES `vendor_test_sequences` (`vendor_test_sequences_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_test_seq_steps`
--

LOCK TABLES `vendor_test_seq_steps` WRITE;
/*!40000 ALTER TABLE `vendor_test_seq_steps` DISABLE KEYS */;
INSERT INTO `vendor_test_seq_steps` VALUES (11,22,21,'vendor2 url'),(12,23,22,'vendor2 url'),(13,24,23,'vendor2 url'),(14,26,24,'vendor2 url'),(15,27,25,'vendor2 url'),(16,28,26,'vendor2 url'),(17,29,27,'vendor2 url'),(19,58,1,'foo23.com/apex');
/*!40000 ALTER TABLE `vendor_test_seq_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_test_sequences`
--

DROP TABLE IF EXISTS `vendor_test_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_test_sequences` (
  `vendor_test_sequences_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `test_sequence_id` int(11) NOT NULL,
  `asynch_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vendor_test_sequences_id`),
  KEY `vendor_test_seq_test_seq_id` (`test_sequence_id`) USING BTREE,
  KEY `vendor_test_seq_vendor_id` (`vendor_id`) USING BTREE,
  CONSTRAINT `vendor_test_seq_test_seq_id` FOREIGN KEY (`test_sequence_id`) REFERENCES `test_sequence` (`test_sequence_id`),
  CONSTRAINT `vendor_test_seq_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_test_sequences`
--

LOCK TABLES `vendor_test_sequences` WRITE;
/*!40000 ALTER TABLE `vendor_test_sequences` DISABLE KEYS */;
INSERT INTO `vendor_test_sequences` VALUES (2,1,2,1),(3,1,3,0),(4,1,4,0),(6,1,6,0),(7,1,7,0),(8,1,8,0),(9,1,9,0),(10,1,10,0),(22,1,22,0),(23,1,23,0),(24,1,24,0),(26,1,26,0),(27,1,27,0),(28,1,28,0),(29,1,29,0),(39,1,10,1),(40,1,22,1),(41,1,1,0),(43,1,1,0),(44,1,2,0),(45,1,2,1),(46,1,2,1),(47,1,2,1),(50,1,2,0),(51,1,2,0),(52,1,2,0),(53,1,2,0),(54,1,1,0),(55,1,2,0),(56,1,2,0),(57,1,2,0),(58,1,2,0);
/*!40000 ALTER TABLE `vendor_test_sequences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-18 15:09:12
