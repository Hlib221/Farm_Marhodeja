-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: farmmarhodeja
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'AutoPlant Kyiv LLC','+380443334455','info@autoplant.ua','Kyiv Industrial Zone 1',1),(2,'BuildCorp Ukraine','+380562445566','orders@buildcorp.ua','Dnipro Construction Ave 45',3),(3,'ElectroTech Solutions','+380443778899','contact@electrotech.ua','Kyiv Technology Park 12',6),(4,'Furniture Masters Ltd','+380322667788','sales@furnituremasters.ua','Lviv Craft Street 33',4),(5,'ChemIndustry Pro','+380482556677','procurement@chemindustry.ua','Odesa Port Road 28',5),(6,'MetalConstruct Group','+380612889900','info@metalconstruct.ua','Zaporizhzhia Industrial District 7',9),(7,'PackSolutions Ukraine','+380432334455','orders@packsolutions.ua','Vinnytsia Logistics Center 15',7),(8,'TechTools Company','+380532778899','sales@techtools.ua','Poltava Industrial Park 22',8),(9,'PlasticWorks Ltd','+380572445566','info@plasticworks.ua','Kharkiv Production Zone 18',10),(11,'WireNet Solutions','+380443889900','orders@wirenet.ua','Kyiv Electronics Hub 25',2);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Ivan','Kovalenko','ivan.kovalenko@company.ua'),(2,'Olga','Shevchenko','olga.shevchenko@company.ua'),(3,'Petro','Bondarenko','petro.bondarenko@company.ua'),(4,'Anna','Tkachenko','anna.tkachenko@company.ua'),(5,'Mykola','Marchenko','mykola.marchenko@company.ua'),(6,'Natalia','Kravchenko','natalia.kravchenko@company.ua'),(7,'Viktor','Moroz','viktor.moroz@company.ua'),(8,'Iryna','Pavlenko','iryna.pavlenko@company.ua'),(9,'Sergiy','Lytvyn','sergiy.lytvyn@company.ua'),(10,'Tetiana','Melnyk','tetiana.melnyk@company.ua'),(11,'Andriy','Kravets','andriy.kravets@company.ua'),(12,'Yulia','Savchenko','yulia.savchenko@company.ua');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'CNC Milling Machine','Haas VF-2','2023-05-15','BROKEN - Under Repair'),(2,'Industrial Welding Robot','KUKA KR 16','2022-08-20','Is Repairing'),(3,'Hydraulic Press','Schuler SMG 630','2021-11-10','Is Repairing'),(4,'Injection Molding Machine','Engel Victory 200','2023-03-25','Excellent'),(5,'Laser Cutting System','Trumpf TruLaser 3030','2023-07-12','Is Repairing'),(6,'Assembly Line Conveyor','FlexLink X85','2022-01-18','Fair'),(7,'Packaging Automation Line','Bosch SVE 2520','2023-09-05','Excellent'),(8,'Industrial Lathe','DMG CTX 310','2020-06-30','Good'),(9,'Paint Spray Booth','Global Finishing GFS-2000','2022-12-14','Is Repairing'),(10,'Forklift','Toyota 8FBE20','2021-04-22','Fair');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipmentsummary`
--

LOCK TABLES `equipmentsummary` WRITE;
/*!40000 ALTER TABLE `equipmentsummary` DISABLE KEYS */;
INSERT INTO `equipmentsummary` VALUES ('Assembly Line Conveyor',480.00,'Sample Inventory','Sample Supplier'),('CNC Milling Machine',600.00,'Sample Inventory','Sample Supplier'),('Forklift',190.00,'Sample Inventory','Sample Supplier'),('Hydraulic Press',320.00,'Sample Inventory','Sample Supplier'),('Industrial Lathe',380.00,'Sample Inventory','Sample Supplier'),('Industrial Welding Robot',630.00,'Sample Inventory','Sample Supplier'),('Injection Molding Machine',1130.00,'Sample Inventory','Sample Supplier'),('Laser Cutting System',150.00,'Sample Inventory','Sample Supplier'),('Packaging Automation Line',520.00,'Sample Inventory','Sample Supplier'),('Paint Spray Booth',220.00,'Sample Inventory','Sample Supplier');
/*!40000 ALTER TABLE `equipmentsummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'Alfa Insurance Ukraine','INS-2024-001','2024-01-01','2025-12-31'),(2,'PZU Ukraine','INS-2024-002','2024-02-15','2026-02-14'),(3,'INGO Ukraine','INS-2024-003','2024-03-01','2025-02-28'),(4,'ARX Insurance','INS-2024-004','2024-04-10','2026-04-09'),(5,'USI Group','INS-2024-005','2024-05-20','2025-05-19'),(6,'TAS Insurance','INS-2024-006','2024-06-01','2026-05-31'),(7,'Unika Insurance','INS-2024-007','2024-07-15','2025-07-14'),(8,'Kniazha Insurance','INS-2024-008','2024-08-01','2026-07-31'),(9,'Vuso Insurance','INS-2024-009','2024-09-10','2025-09-09'),(10,'Universalna Insurance','INS-2024-010','2024-10-01','2026-09-30');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Wheat Seeds',50.00,'Seeds',100.00,'2025-01-15'),(2,'NPK Fertilizer',200.00,'Fertilizers',50.00,'2025-02-10'),(3,'Tomatoes',30.00,'Vegetables',150.00,'2025-03-01'),(4,'Apples',25.00,'Fruits',200.00,'2025-03-05'),(5,'Corn Seeds',55.00,'Seeds',120.00,'2025-01-20'),(6,'Complex Fertilizer',180.00,'Fertilizers',60.00,'2025-02-15'),(7,'Cucumbers',20.00,'Vegetables',180.00,'2025-03-03'),(8,'Pears',28.00,'Fruits',100.00,'2025-03-07'),(9,'Sunflower Seeds',45.00,'Seeds',90.00,'2025-01-25'),(10,'Organic Fertilizer',150.00,'Fertilizers',70.00,'2025-02-18');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1,'2025-01-15','Regular maintenance and oil change',250.00,1,1),(2,'2025-01-20','Software update and calibration',180.00,2,2),(3,'2025-02-01','Hydraulic system check',320.00,3,3),(4,'2025-02-10','Heating element replacement',450.00,4,4),(5,'2025-02-15','Lens cleaning and alignment',150.00,5,5),(6,'2025-02-20','Belt replacement and lubrication',280.00,1,6),(7,'2025-03-01','Control panel repair',520.00,6,7),(8,'2025-03-05','Chuck replacement',380.00,7,8),(9,'2025-03-10','Filter replacement',220.00,8,9),(10,'2025-03-15','Battery replacement',190.00,9,10),(11,'2025-03-20','Annual safety inspection',350.00,2,1),(12,'2025-04-01','Cooling system maintenance',290.00,3,2),(13,'2025-04-10','Emergency repair motor failure',680.00,10,4),(14,'2025-04-15','Preventive maintenance',200.00,4,6),(15,'2025-04-20','Software diagnostics',160.00,11,2),(16,'2025-10-22','EMERGENCY: CNC Milling Machine breakdown',310.48,12,1),(17,'2025-10-22','EMERGENCY: Laser Cutting System breakdown',492.23,5,5),(18,'2025-10-22','EMERGENCY: CNC Milling Machine breakdown',429.70,6,1),(19,'2025-10-22','EMERGENCY: CNC Milling Machine breakdown',471.79,7,1),(20,'2025-10-22','EMERGENCY: CNC Milling Machine breakdown',269.86,8,1),(21,'2025-10-22','EMERGENCY: Laser Cutting System breakdown',333.93,9,5),(22,'2025-10-22','EMERGENCY: Hydraulic Press breakdown',360.09,10,3),(23,'2025-10-22','EMERGENCY: Laser Cutting System breakdown',298.65,11,5),(24,'2025-10-22','EMERGENCY: Hydraulic Press breakdown',212.97,12,3),(25,'2025-10-22','EMERGENCY: Paint Spray Booth breakdown',268.89,1,9),(26,'2025-10-22','EMERGENCY: Industrial Welding Robot breakdown',205.55,2,2),(27,'2025-10-22','EMERGENCY: Hydraulic Press breakdown',321.08,3,3),(28,'2025-10-22','EMERGENCY: Paint Spray Booth breakdown',488.74,4,9),(29,'2025-10-22','EMERGENCY: Paint Spray Booth breakdown',380.47,5,9),(30,'2025-10-22','EMERGENCY: Paint Spray Booth breakdown',236.11,6,9),(31,'2025-10-22','EMERGENCY: Hydraulic Press breakdown',439.14,7,3),(32,'2025-10-22','EMERGENCY: Laser Cutting System breakdown',387.39,8,5),(33,'2025-10-22','EMERGENCY: Industrial Welding Robot breakdown',419.53,9,2);
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payroll`
--

LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
INSERT INTO `payroll` VALUES (1,1,45000,'2025-01-31',2000.00),(2,2,38000,'2025-01-31',1500.00),(3,3,42000,'2025-01-31',1800.00),(4,4,35000,'2025-01-31',1200.00),(5,5,48000,'2025-01-31',2200.00),(6,6,40000,'2025-01-31',1600.00),(7,7,44000,'2025-01-31',1900.00),(8,8,36000,'2025-01-31',1400.00),(9,9,41000,'2025-01-31',1700.00),(10,10,39000,'2025-01-31',1500.00),(11,1,45000,'2025-02-28',2500.00),(12,2,38000,'2025-02-28',1500.00),(13,3,42000,'2025-02-28',2000.00),(14,4,35000,'2025-02-28',1200.00),(15,5,48000,'2025-02-28',2400.00),(16,11,46000,'2025-01-31',2100.00),(17,12,37000,'2025-01-31',1300.00),(18,11,46000,'2025-02-28',2300.00),(19,12,37000,'2025-02-28',1400.00),(20,10,39000,'2025-02-28',1600.00);
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES (1,'Steel Frame Assembly','2025-01-10','2025-02-15','Completed',1),(2,'Wire Harness Production','2025-02-01','2025-03-10','Active',2),(3,'Plastic Container Manufacturing','2025-01-15','2025-02-20','Completed',3),(4,'Wooden Furniture Set','2025-02-05','2025-03-25','Active',4),(5,'Chemical Processing Batch A','2025-01-20','2025-02-28','Active',5),(6,'Electronic Device Assembly','2025-02-10','2025-04-01','Planning',6),(7,'Packaging Line Setup','2025-01-25','2025-02-25','Completed',7),(8,'Tool Manufacturing Process','2025-02-15','2025-04-10','Active',8),(9,'Aluminum Window Frames','2025-01-30','2025-03-15','Active',9),(10,'Plastic Parts Molding','2025-02-20','2025-03-30','Planning',10);
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (2,'\'БудМайстер ЛТД\'','\'Петров Петро\'','\'+380672345678\'','\'petrov@buildmaster.ua\'','\'Львів пр Франка 25\'','\'Будівництво\'\n\r'),(3,'\'АгроПро Компанія\'','\'Сидоренко Ольга\'','\'+380933456789\'','\'sidorenko@agripro.ua\'','\'Харків вул Сумська 45\'','\'Сільгосп\'\n\r'),(4,'\'МеталВоркс Інк\'','\'Коваленко Микола\'','\'+380504567890\'','\'kovalenko@metalworks.ua\'','\'Дніпро пр Гагаріна 12\'','\'Метал\'\n\r'),(5,'\'ПластікТех Рішення\'','\'Шевченко Анна\'','\'+380675678901\'','\'shevchenko@plastictech.ua\'','\'Одеса вул Дерибасівська 8\'','\'Пластик\'\n\r'),(6,'\'ДревКрафт Україна\'','\'Бондаренко Віктор\'','\'+380936789012\'','\'bondarenko@woodcraft.ua\'','\'Запоріжжя пр Соборний 33\'','\'Дерево\'\n\r'),(7,'\'ХімПостач Про\'','\'Ткаченко Наталія\'','\'+380507890123\'','\'tkachenko@chemsupply.ua\'','\'Вінниця вул Соборна 17\'','\'Хімікати\'\n\r'),(8,'\'ІнструментМайстер\'','\'Марченко Сергій\'','\'+380678901234\'','\'marchenko@toolmaster.ua\'','\'Полтава вул Короленка 22\'','\'Інструменти\'\n\r'),(9,'\'ПакуванняПро ЛТД\'','\'Кравченко Ірина\'','\'+380939012345\'','\'kravchenko@packagepro.ua\'','\'Чернігів пр Миру 14\'','\'Упаковка\'\n\r'),(10,'\'ЕнергоТех Рішення\'','\'Мороз Андрій\'','\'+380500123456\'','\'moroz@energytech.ua\'','\'Суми вул Харківська 29\'','\'Енергетика\n');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-22 12:18:03
