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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `ProductionID` int DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `idx_unique_customer_email` (`Email`),
  KEY `idx_customer_name` (`CustomerName`),
  KEY `idx_production_id` (`ProductionID`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`ProductionID`) REFERENCES `production` (`ProductionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'AutoPlant Kyiv LLC','+380443334455','info@autoplant.ua','Kyiv Industrial Zone 1',1),(2,'BuildCorp Ukraine','+380562445566','orders@buildcorp.ua','Dnipro Construction Ave 45',3),(3,'ElectroTech Solutions','+380443778899','contact@electrotech.ua','Kyiv Technology Park 12',6),(4,'Furniture Masters Ltd','+380322667788','sales@furnituremasters.ua','Lviv Craft Street 33',4),(5,'ChemIndustry Pro','+380482556677','procurement@chemindustry.ua','Odesa Port Road 28',5),(6,'MetalConstruct Group','+380612889900','info@metalconstruct.ua','Zaporizhzhia Industrial District 7',9),(7,'PackSolutions Ukraine','+380432334455','orders@packsolutions.ua','Vinnytsia Logistics Center 15',7),(8,'TechTools Company','+380532778899','sales@techtools.ua','Poltava Industrial Park 22',8),(9,'PlasticWorks Ltd','+380572445566','info@plasticworks.ua','Kharkiv Production Zone 18',10),(11,'WireNet Solutions','+380443889900','orders@wirenet.ua','Kyiv Electronics Hub 25',2);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE KEY `idx_unique_employee_email` (`Email`),
  KEY `idx_first_name` (`FirstName`),
  KEY `idx_last_name` (`LastName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Ivan','Kovalenko','ivan.kovalenko@company.ua'),(2,'Olga','Shevchenko','olga.shevchenko@company.ua'),(3,'Petro','Bondarenko','petro.bondarenko@company.ua'),(4,'Anna','Tkachenko','anna.tkachenko@company.ua'),(5,'Mykola','Marchenko','mykola.marchenko@company.ua'),(6,'Natalia','Kravchenko','natalia.kravchenko@company.ua'),(7,'Viktor','Moroz','viktor.moroz@company.ua'),(8,'Iryna','Pavlenko','iryna.pavlenko@company.ua'),(9,'Sergiy','Lytvyn','sergiy.lytvyn@company.ua'),(10,'Tetiana','Melnyk','tetiana.melnyk@company.ua'),(11,'Andriy','Kravets','andriy.kravets@company.ua'),(12,'Yulia','Savchenko','yulia.savchenko@company.ua');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `EquipmentID` int NOT NULL,
  `EquipmentType` varchar(100) NOT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `Condition` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EquipmentID`),
  KEY `idx_equipment_type` (`EquipmentType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'CNC Milling Machine','Haas VF-2','2023-05-15','Excellent'),(2,'Industrial Welding Robot','KUKA KR 16','2022-08-20','Good'),(3,'Hydraulic Press','Schuler SMG 630','2021-11-10','Good'),(4,'Injection Molding Machine','Engel Victory 200','2023-03-25','Excellent'),(5,'Laser Cutting System','Trumpf TruLaser 3030','2023-07-12','Excellent'),(6,'Assembly Line Conveyor','FlexLink X85','2022-01-18','Fair'),(7,'Packaging Automation Line','Bosch SVE 2520','2023-09-05','Excellent'),(8,'Industrial Lathe','DMG CTX 310','2020-06-30','Good'),(9,'Paint Spray Booth','Global Finishing GFS-2000','2022-12-14','Good'),(10,'Forklift','Toyota 8FBE20','2021-04-22','Fair');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `equipmentmaintenanceview`
--

DROP TABLE IF EXISTS `equipmentmaintenanceview`;
/*!50001 DROP VIEW IF EXISTS `equipmentmaintenanceview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `equipmentmaintenanceview` AS SELECT 
 1 AS `EquipmentName`,
 1 AS `MaintenanceCost`,
 1 AS `InventoryName`,
 1 AS `SupplierName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `equipmentsummary`
--

DROP TABLE IF EXISTS `equipmentsummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipmentsummary` (
  `EquipmentName` varchar(100) NOT NULL,
  `MaintenanceCost` decimal(32,2) NOT NULL DEFAULT '0.00',
  `InventoryName` varchar(16) NOT NULL DEFAULT '',
  `SupplierName` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmentsummary`
--

LOCK TABLES `equipmentsummary` WRITE;
/*!40000 ALTER TABLE `equipmentsummary` DISABLE KEYS */;
INSERT INTO `equipmentsummary` VALUES ('Assembly Line Conveyor',480.00,'Sample Inventory','Sample Supplier'),('CNC Milling Machine',600.00,'Sample Inventory','Sample Supplier'),('Forklift',190.00,'Sample Inventory','Sample Supplier'),('Hydraulic Press',320.00,'Sample Inventory','Sample Supplier'),('Industrial Lathe',380.00,'Sample Inventory','Sample Supplier'),('Industrial Welding Robot',630.00,'Sample Inventory','Sample Supplier'),('Injection Molding Machine',1130.00,'Sample Inventory','Sample Supplier'),('Laser Cutting System',150.00,'Sample Inventory','Sample Supplier'),('Packaging Automation Line',520.00,'Sample Inventory','Sample Supplier'),('Paint Spray Booth',220.00,'Sample Inventory','Sample Supplier');
/*!40000 ALTER TABLE `equipmentsummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `InsuranceID` int NOT NULL,
  `CompanyName` varchar(100) DEFAULT NULL,
  `PolicyNumber` varchar(50) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`InsuranceID`),
  UNIQUE KEY `idx_unique_policy_number` (`PolicyNumber`),
  KEY `idx_company_name` (`CompanyName`),
  KEY `idx_policy_number` (`PolicyNumber`),
  CONSTRAINT `chk_insurance_dates` CHECK ((`EndDate` >= `StartDate`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'Alfa Insurance Ukraine','INS-2024-001','2024-01-01','2025-12-31'),(2,'PZU Ukraine','INS-2024-002','2024-02-15','2026-02-14'),(3,'INGO Ukraine','INS-2024-003','2024-03-01','2025-02-28'),(4,'ARX Insurance','INS-2024-004','2024-04-10','2026-04-09'),(5,'USI Group','INS-2024-005','2024-05-20','2025-05-19'),(6,'TAS Insurance','INS-2024-006','2024-06-01','2026-05-31'),(7,'Unika Insurance','INS-2024-007','2024-07-15','2025-07-14'),(8,'Kniazha Insurance','INS-2024-008','2024-08-01','2026-07-31'),(9,'Vuso Insurance','INS-2024-009','2024-09-10','2025-09-09'),(10,'Universalna Insurance','INS-2024-010','2024-10-01','2026-09-30');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `InventoryID` int NOT NULL,
  `ItemName` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Quantity` decimal(10,2) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  PRIMARY KEY (`InventoryID`),
  KEY `idx_item_name` (`ItemName`),
  KEY `idx_purchase_date` (`PurchaseDate`),
  KEY `idx_category` (`Category`),
  KEY `idx_inventory_category_quantity` (`Category`,`Quantity`),
  CONSTRAINT `inventory_chk_1` CHECK ((`Quantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Wheat Seeds',50.00,'Seeds',100.00,'2025-01-15'),(2,'NPK Fertilizer',200.00,'Fertilizers',50.00,'2025-02-10'),(3,'Tomatoes',30.00,'Vegetables',150.00,'2025-03-01'),(4,'Apples',25.00,'Fruits',200.00,'2025-03-05'),(5,'Corn Seeds',55.00,'Seeds',120.00,'2025-01-20'),(6,'Complex Fertilizer',180.00,'Fertilizers',60.00,'2025-02-15'),(7,'Cucumbers',20.00,'Vegetables',180.00,'2025-03-03'),(8,'Pears',28.00,'Fruits',100.00,'2025-03-07'),(9,'Sunflower Seeds',45.00,'Seeds',90.00,'2025-01-25'),(10,'Organic Fertilizer',150.00,'Fertilizers',70.00,'2025-02-18');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `MaintenanceID` int NOT NULL,
  `Date` text NOT NULL,
  `Description` text,
  `Cost` decimal(10,2) DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `EquipmentID` int DEFAULT NULL,
  PRIMARY KEY (`MaintenanceID`),
  KEY `idx_equipment_id_maintenance` (`EquipmentID`),
  KEY `idx_employee_id_maintenance` (`EmployeeID`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`EquipmentID`) REFERENCES `equipment` (`EquipmentID`),
  CONSTRAINT `maintenance_chk_1` CHECK ((`Cost` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1,'2025-01-15','Regular maintenance and oil change',250.00,1,1),(2,'2025-01-20','Software update and calibration',180.00,2,2),(3,'2025-02-01','Hydraulic system check',320.00,3,3),(4,'2025-02-10','Heating element replacement',450.00,4,4),(5,'2025-02-15','Lens cleaning and alignment',150.00,5,5),(6,'2025-02-20','Belt replacement and lubrication',280.00,1,6),(7,'2025-03-01','Control panel repair',520.00,6,7),(8,'2025-03-05','Chuck replacement',380.00,7,8),(9,'2025-03-10','Filter replacement',220.00,8,9),(10,'2025-03-15','Battery replacement',190.00,9,10),(11,'2025-03-20','Annual safety inspection',350.00,2,1),(12,'2025-04-01','Cooling system maintenance',290.00,3,2),(13,'2025-04-10','Emergency repair motor failure',680.00,10,4),(14,'2025-04-15','Preventive maintenance',200.00,4,6),(15,'2025-04-20','Software diagnostics',160.00,11,2);
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll`
--

DROP TABLE IF EXISTS `payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll` (
  `PayrollID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `Salary` float DEFAULT NULL,
  `PayDate` date DEFAULT NULL,
  `Bonus` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`PayrollID`),
  KEY `idx_employee_id_payroll` (`EmployeeID`),
  KEY `idx_pay_date` (`PayDate`),
  KEY `idx_payroll_employee_date` (`EmployeeID`,`PayDate`),
  CONSTRAINT `payroll_chk_1` CHECK ((`Salary` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll`
--

LOCK TABLES `payroll` WRITE;
/*!40000 ALTER TABLE `payroll` DISABLE KEYS */;
INSERT INTO `payroll` VALUES (1,1,45000,'2025-01-31',2000.00),(2,2,38000,'2025-01-31',1500.00),(3,3,42000,'2025-01-31',1800.00),(4,4,35000,'2025-01-31',1200.00),(5,5,48000,'2025-01-31',2200.00),(6,6,40000,'2025-01-31',1600.00),(7,7,44000,'2025-01-31',1900.00),(8,8,36000,'2025-01-31',1400.00),(9,9,41000,'2025-01-31',1700.00),(10,10,39000,'2025-01-31',1500.00),(11,1,45000,'2025-02-28',2500.00),(12,2,38000,'2025-02-28',1500.00),(13,3,42000,'2025-02-28',2000.00),(14,4,35000,'2025-02-28',1200.00),(15,5,48000,'2025-02-28',2400.00),(16,11,46000,'2025-01-31',2100.00),(17,12,37000,'2025-01-31',1300.00),(18,11,46000,'2025-02-28',2300.00),(19,12,37000,'2025-02-28',1400.00),(20,10,39000,'2025-02-28',1600.00);
/*!40000 ALTER TABLE `payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production` (
  `ProductionID` int NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `InventoryID` int DEFAULT NULL,
  PRIMARY KEY (`ProductionID`),
  KEY `idx_product_name` (`ProductName`),
  KEY `idx_status` (`Status`),
  KEY `idx_start_date` (`StartDate`),
  KEY `idx_inventory_id` (`InventoryID`),
  KEY `idx_production_status_date` (`Status`,`StartDate`),
  CONSTRAINT `fk_production_inventory` FOREIGN KEY (`InventoryID`) REFERENCES `inventory` (`InventoryID`),
  CONSTRAINT `chk_production_dates` CHECK ((`EndDate` >= `StartDate`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES (1,'Steel Frame Assembly','2025-01-10','2025-02-15','Completed',1),(2,'Wire Harness Production','2025-02-01','2025-03-10','Active',2),(3,'Plastic Container Manufacturing','2025-01-15','2025-02-20','Completed',3),(4,'Wooden Furniture Set','2025-02-05','2025-03-25','Active',4),(5,'Chemical Processing Batch A','2025-01-20','2025-02-28','Active',5),(6,'Electronic Device Assembly','2025-02-10','2025-04-01','Planning',6),(7,'Packaging Line Setup','2025-01-25','2025-02-25','Completed',7),(8,'Tool Manufacturing Process','2025-02-15','2025-04-10','Active',8),(9,'Aluminum Window Frames','2025-01-30','2025-03-15','Active',9),(10,'Plastic Parts Molding','2025-02-20','2025-03-30','Planning',10);
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` int NOT NULL,
  `SupplierName` varchar(100) NOT NULL,
  `ContactName` varchar(100) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`),
  UNIQUE KEY `idx_unique_supplier_email` (`Email`),
  KEY `idx_product_type` (`ProductType`),
  KEY `idx_supplier_name` (`SupplierName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (2,'\'БудМайстер ЛТД\'','\'Петров Петро\'','\'+380672345678\'','\'petrov@buildmaster.ua\'','\'Львів пр Франка 25\'','\'Будівництво\'\n\r'),(3,'\'АгроПро Компанія\'','\'Сидоренко Ольга\'','\'+380933456789\'','\'sidorenko@agripro.ua\'','\'Харків вул Сумська 45\'','\'Сільгосп\'\n\r'),(4,'\'МеталВоркс Інк\'','\'Коваленко Микола\'','\'+380504567890\'','\'kovalenko@metalworks.ua\'','\'Дніпро пр Гагаріна 12\'','\'Метал\'\n\r'),(5,'\'ПластікТех Рішення\'','\'Шевченко Анна\'','\'+380675678901\'','\'shevchenko@plastictech.ua\'','\'Одеса вул Дерибасівська 8\'','\'Пластик\'\n\r'),(6,'\'ДревКрафт Україна\'','\'Бондаренко Віктор\'','\'+380936789012\'','\'bondarenko@woodcraft.ua\'','\'Запоріжжя пр Соборний 33\'','\'Дерево\'\n\r'),(7,'\'ХімПостач Про\'','\'Ткаченко Наталія\'','\'+380507890123\'','\'tkachenko@chemsupply.ua\'','\'Вінниця вул Соборна 17\'','\'Хімікати\'\n\r'),(8,'\'ІнструментМайстер\'','\'Марченко Сергій\'','\'+380678901234\'','\'marchenko@toolmaster.ua\'','\'Полтава вул Короленка 22\'','\'Інструменти\'\n\r'),(9,'\'ПакуванняПро ЛТД\'','\'Кравченко Ірина\'','\'+380939012345\'','\'kravchenko@packagepro.ua\'','\'Чернігів пр Миру 14\'','\'Упаковка\'\n\r'),(10,'\'ЕнергоТех Рішення\'','\'Мороз Андрій\'','\'+380500123456\'','\'moroz@energytech.ua\'','\'Суми вул Харківська 29\'','\'Енергетика\n');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `equipmentmaintenanceview`
--

/*!50001 DROP VIEW IF EXISTS `equipmentmaintenanceview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `equipmentmaintenanceview` AS select `e`.`EquipmentType` AS `EquipmentName`,coalesce(sum(`m`.`Cost`),0) AS `MaintenanceCost`,(case when (`e`.`EquipmentID` <= 10) then (select `inventory`.`ItemName` from `inventory` where (`inventory`.`InventoryID` = `e`.`EquipmentID`)) else 'Other Inventory' end) AS `InventoryName`,(case when (`e`.`EquipmentID` <= 10) then coalesce((select `suppliers`.`SupplierName` from `suppliers` where (`suppliers`.`SupplierID` = `e`.`EquipmentID`)),'BuildMaster Ltd') else 'Other Supplier' end) AS `SupplierName` from (`equipment` `e` left join `maintenance` `m` on((`e`.`EquipmentID` = `m`.`EquipmentID`))) group by `e`.`EquipmentID`,`e`.`EquipmentType` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-22 10:35:03
