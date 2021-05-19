-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.24
use smbms;
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
-- Table structure for table `drug`
--

DROP TABLE IF EXISTS `drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug` (
  `id` varchar(100) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `obj_cls` varchar(100) DEFAULT NULL,
  `drug_url` varchar(100) DEFAULT NULL,
  `biomarker` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `drug_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug`
--

LOCK TABLES `drug` WRITE;
/*!40000 ALTER TABLE `drug` DISABLE KEYS */;
INSERT INTO `drug` VALUES ('PA10026','aripiprazole','Chemical','/chemical/PA10026',1),('PA10040','cetuximab','Chemical','/chemical/PA10040',1),('PA10066','duloxetine','Chemical','/chemical/PA10066',1),('PA10074','escitalopram','Chemical','/chemical/PA10074',1),('PA10075','esomeprazole','Chemical','/chemical/PA10075',1),('PA10084','fosamprenavir','Chemical','/chemical/PA10084',0),('PA10176','rasburicase','Chemical','/chemical/PA10176',1),('PA10202','telithromycin','Chemical','/chemical/PA10202',0),('PA10229','vardenafil','Chemical','/chemical/PA10229',0),('PA10233','voriconazole','Chemical','/chemical/PA10233',1),('PA10251','atazanavir','Chemical','/chemical/PA10251',0),('PA10352','palonosetron','Chemical','/chemical/PA10352',1),('PA10715','sulfamethoxazole / trimethoprim','Chemical','/chemical/PA10715',1),('PA10799','anakinra','Chemical','/chemical/PA10799',1),('PA10804','imatinib','Chemical','/chemical/PA10804',1),('PA10819','gamma hydroxybutyric acid','Chemical','/chemical/PA10819',1),('PA10888','clobazam','Chemical','/chemical/PA10888',1),('PA10892','gliclazide','Chemical','/chemical/PA10892',0),('PA128406956','fluorouracil','Chemical','/chemical/PA128406956',1),('PA131301952','gefitinib','Chemical','/chemical/PA131301952',1),('PA134308647','rosuvastatin','Chemical','/chemical/PA134308647',1),('PA134687907','formoterol','Chemical','/chemical/PA134687907',1),('PA134687924','erlotinib','Chemical','/chemical/PA134687924',1),('PA134687947','eletriptan','Chemical','/chemical/PA134687947',0),('PA134688071','atomoxetine','Chemical','/chemical/PA134688071',1),('PA135057240','bupivacaine','Chemical','/chemical/PA135057240',1),('PA140222719','tetrabenazine','Chemical','/chemical/PA140222719',1),('PA142650384','pitavastatin','Chemical','/chemical/PA142650384',0),('PA143487910','aliskiren','Chemical','/chemical/PA143487910',0),('PA151958426','nebivolol','Chemical','/chemical/PA151958426',1),('PA151958574','posaconazole','Chemical','/chemical/PA151958574',0),('PA152241907','lapatinib','Chemical','/chemical/PA152241907',1),('PA153619853','dronedarone','Chemical','/chemical/PA153619853',0),('PA154410481','prasugrel','Chemical','/chemical/PA154410481',1),('PA161199368','iloperidone','Chemical','/chemical/PA161199368',1),('PA162363968','lenalidomide','Chemical','/chemical/PA162363968',1),('PA162372840','sunitinib','Chemical','/chemical/PA162372840',0),('PA162372878','dasatinib','Chemical','/chemical/PA162372878',1),('PA162373091','panitumumab','Chemical','/chemical/PA162373091',1),('PA163518919','paliperidone','Chemical','/chemical/PA163518919',1),('PA163522472','darunavir','Chemical','/chemical/PA163522472',0),('PA163522473','tipranavir','Chemical','/chemical/PA163522473',0),('PA164712951','Opium derivatives and expectorants','Chemical','/chemical/PA164712951',0),('PA164713150','Parathyroid Hormones And Analogues','Chemical','/chemical/PA164713150',1),('PA164713397','Vitamin B-complex with vitamin C','Chemical','/chemical/PA164713397',0),('PA164743977','arformoterol','Chemical','/chemical/PA164743977',1),('PA164744510','lofexidine','Chemical','/chemical/PA164744510',1),('PA164746007','ranolazine','Chemical','/chemical/PA164746007',0),('PA164746311','everolimus','Chemical','/chemical/PA164746311',1),('PA164746384','nalidixic acid','Chemical','/chemical/PA164746384',1),('PA164746757','tolterodine','Chemical','/chemical/PA164746757',1),('PA164746820','fosphenytoin','Chemical','/chemical/PA164746820',1),('PA164747170','fulvestrant','Chemical','/chemical/PA164747170',1),('PA164747674','goserelin','Chemical','/chemical/PA164747674',1),('PA164748364','tositumomab','Chemical','/chemical/PA164748364',0),('PA164748728','mycophenolic acid','Chemical','/chemical/PA164748728',1),('PA164748741','mepivacaine','Chemical','/chemical/PA164748741',1),('PA164749136','desflurane','Chemical','/chemical/PA164749136',1),('PA164749431','gemtuzumab ozogamicin','Chemical','/chemical/PA164749431',1),('PA164750594','denileukin diftitox','Chemical','/chemical/PA164750594',1),('PA164754753','alglucosidase alfa','Chemical','/chemical/PA164754753',1),('PA164754754','cevimeline','Chemical','/chemical/PA164754754',1),('PA164768835','maraviroc','Chemical','/chemical/PA164768835',0),('PA164769056','tiotropium','Chemical','/chemical/PA164769056',0),('PA164774901','darifenacin','Chemical','/chemical/PA164774901',1),('PA164774902','tolazamide','Chemical','/chemical/PA164774902',1),('PA164776637','eculizumab','Chemical','/chemical/PA164776637',1),('PA164776964','desloratadine','Chemical','/chemical/PA164776964',0),('PA164777036','hydroxychloroquine','Chemical','/chemical/PA164777036',1),('PA164781042','flucloxacillin','Chemical','/chemical/PA164781042',0),('PA164781375','ibritumomab','Chemical','/chemical/PA164781375',0),('PA164783479','divalproex sodium','Chemical','/chemical/PA164783479',0),('PA164784002','sertindole','Chemical','/chemical/PA164784002',0),('PA164784024','peginterferon alfa-2b','Chemical','/chemical/PA164784024',1),('PA164888966','raltegravir','Chemical','/chemical/PA164888966',1),('PA164920420','olaparib','Chemical','/chemical/PA164920420',1),('PA164924493','axitinib','Chemical','/chemical/PA164924493',0),('PA165110439','ixabepilone','Chemical','/chemical/PA165110439',1),('PA165290928','drospirenone / ethinyl estradiol','Chemical','/chemical/PA165290928',1),('PA165290929','ethinyl estradiol / norelgestromin','Chemical','/chemical/PA165290929',0),('PA165290933','pertuzumab','Chemical','/chemical/PA165290933',1),('PA165291472','neratinib','Chemical','/chemical/PA165291472',1),('PA165291492','pazopanib','Chemical','/chemical/PA165291492',1),('PA165291493','ofatumumab','Chemical','/chemical/PA165291493',0),('PA165374673','ticagrelor','Chemical','/chemical/PA165374673',1),('PA165906891','cabozantinib','Chemical','/chemical/PA165906891',1),('PA165946122','crizotinib','Chemical','/chemical/PA165946122',1),('PA165946873','vemurafenib','Chemical','/chemical/PA165946873',1),('PA165948902','boceprevir','Chemical','/chemical/PA165948902',1),('PA165948903','brentuximab vedotin','Chemical','/chemical/PA165948903',1),('PA165950341','ivacaftor','Chemical','/chemical/PA165950341',1),('PA165958345','nilotinib','Chemical','/chemical/PA165958345',1),('PA165958348','indacaterol','Chemical','/chemical/PA165958348',1),('PA165958354','telaprevir','Chemical','/chemical/PA165958354',1),('PA165958360','rivaroxaban','Chemical','/chemical/PA165958360',1),('PA165958374','desvenlafaxine','Chemical','/chemical/PA165958374',1),('PA165958376','fesoterodine','Chemical','/chemical/PA165958376',1),('PA165958401','cabazitaxel','Chemical','/chemical/PA165958401',0),('PA165958402','carglumic acid','Chemical','/chemical/PA165958402',1),('PA165958441','trastuzumab emtansine','Chemical','/chemical/PA165958441',1),('PA165963961','pegloticase','Chemical','/chemical/PA165963961',1),('PA165971474','belinostat','Chemical','/chemical/PA165971474',1),('PA165980594','ponatinib','Chemical','/chemical/PA165980594',1),('PA165981154','afatinib','Chemical','/chemical/PA165981154',1),('PA165981594','eltrombopag','Chemical','/chemical/PA165981594',1),('PA166048654','ustekinumab','Chemical','/chemical/PA166048654',1),('PA166110257','dexlansoprazole','Chemical','/chemical/PA166110257',1),('PA166114316','sodium phenylbutyrate','Chemical','/chemical/PA166114316',1),('PA166114904','belimumab','Chemical','/chemical/PA166114904',0),('PA166114906','bosutinib','Chemical','/chemical/PA166114906',1),('PA166114911','dabrafenib','Chemical','/chemical/PA166114911',1),('PA166114922','lomitapide','Chemical','/chemical/PA166114922',0),('PA166114925','mafenide','Chemical','/chemical/PA166114925',1),('PA166114927','mipomersen','Chemical','/chemical/PA166114927',0),('PA166114929','homoharringtonine','Chemical','/chemical/PA166114929',0),('PA166114943','regorafenib','Chemical','/chemical/PA166114943',1),('PA166114961','dolutegravir','Chemical','/chemical/PA166114961',1),('PA166115361','sodium nitrite','Chemical','/chemical/PA166115361',1),('PA166115364','trametinib','Chemical','/chemical/PA166115364',1),('PA166115366','velaglucerase alfa','Chemical','/chemical/PA166115366',0),('PA166115580','tafenoquine','Chemical','/chemical/PA166115580',1),('PA166118341','vandetanib','Chemical','/chemical/PA166118341',0),('PA166121346','ibrutinib','Chemical','/chemical/PA166121346',1),('PA166122586','afutuzumab','Chemical','/chemical/PA166122586',0),('PA166122590','simeprevir','Chemical','/chemical/PA166122590',1),('PA166122593','sofosbuvir','Chemical','/chemical/PA166122593',1),('PA166122595','vortioxetine','Chemical','/chemical/PA166122595',1),('PA166123386','ruxolitinib','Chemical','/chemical/PA166123386',0),('PA166123389','fampridine','Chemical','/chemical/PA166123389',0),('PA166123415','ivabradine','Chemical','/chemical/PA166123415',0),('PA166123486','eliglustat','Chemical','/chemical/PA166123486',1),('PA166124615','pembrolizumab','Chemical','/chemical/PA166124615',1),('PA166124616','ceritinib','Chemical','/chemical/PA166124616',1),('PA166128167','daclatasvir','Chemical','/chemical/PA166128167',1),('PA166129466','lonafarnib','Chemical','/chemical/PA166129466',1),('PA166129522','nivolumab','Chemical','/chemical/PA166129522',1),('PA166129523','atezolizumab','Chemical','/chemical/PA166129523',1),('PA166129524','blinatumomab','Chemical','/chemical/PA166129524',1),('PA166131610','niraparib','Chemical','/chemical/PA166131610',1),('PA166131626','osimertinib','Chemical','/chemical/PA166131626',1),('PA166151992','dapoxetine','Chemical','/chemical/PA166151992',0),('PA166152935','ivacaftor / lumacaftor','Chemical','/chemical/PA166152935',1),('PA166152940','tolperisone','Chemical','/chemical/PA166152940',0),('PA166153431','flibanserin','Chemical','/chemical/PA166153431',1),('PA166153469','palbociclib','Chemical','/chemical/PA166153469',1),('PA166153470','ribociclib','Chemical','/chemical/PA166153470',1),('PA166153471','abemaciclib','Chemical','/chemical/PA166153471',1),('PA166153472','lenvatinib','Chemical','/chemical/PA166153472',1),('PA166153473','venetoclax','Chemical','/chemical/PA166153473',1),('PA166153491','brivaracetam','Chemical','/chemical/PA166153491',1),('PA166159062','elosulfase alfa','Chemical','/chemical/PA166159062',1),('PA166159961','alirocumab','Chemical','/chemical/PA166159961',0),('PA166160002','dasabuvir / ombitasvir / paritaprevir / ritonavir','Chemical','/chemical/PA166160002',1),('PA166160006','lesinurad','Chemical','/chemical/PA166160006',1),('PA166160027','evolocumab','Chemical','/chemical/PA166160027',0),('PA166160044','cobimetinib','Chemical','/chemical/PA166160044',1),('PA166160048','lacosamide','Chemical','/chemical/PA166160048',1),('PA166160050','alectinib','Chemical','/chemical/PA166160050',1),('PA166160053','brexpiprazole','Chemical','/chemical/PA166160053',1),('PA166160055','cholic acid','Chemical','/chemical/PA166160055',0),('PA166160060','dinutuximab','Chemical','/chemical/PA166160060',1),('PA166161216','aripiprazole lauroxil','Chemical','/chemical/PA166161216',1),('PA166163260','moviprep','Chemical','/chemical/PA166163260',0),('PA166163408','ombitasvir / paritaprevir / ritonavir','Chemical','/chemical/PA166163408',1),('PA166163411','dasabuvir','Chemical','/chemical/PA166163411',0),('PA166163416','sofosbuvir / velpatasvir','Chemical','/chemical/PA166163416',1),('PA166163418','rucaparib','Chemical','/chemical/PA166163418',1),('PA166163427','ledipasvir / sofosbuvir','Chemical','/chemical/PA166163427',1),('PA166163432','eteplirsen','Chemical','/chemical/PA166163432',1),('PA166163434','olaratumab','Chemical','/chemical/PA166163434',1),('PA166163438','elbasvir / grazoprevir','Chemical','/chemical/PA166163438',1),('PA166163482','brigatinib','Chemical','/chemical/PA166163482',1),('PA166169875','avelumab','Chemical','/chemical/PA166169875',1),('PA166169879','cerliponase alfa','Chemical','/chemical/PA166169879',1),('PA166169881','deutetrabenazine','Chemical','/chemical/PA166169881',1),('PA166169883','durvalumab','Chemical','/chemical/PA166169883',1),('PA166169917','midostaurin','Chemical','/chemical/PA166169917',1),('PA166170051','valbenazine','Chemical','/chemical/PA166170051',1),('PA166175998','dextromethorphan / quinidine','Chemical','/chemical/PA166175998',1),('PA166176008','erythromycin ethylsuccinate / sulfisoxazole acetyl','Chemical','/chemical/PA166176008',1),('PA166176017','hydralazine / isosorbide dinitrate','Chemical','/chemical/PA166176017',1),('PA166176018','lidocaine / prilocaine','Chemical','/chemical/PA166176018',1),('PA166176020','sodium benzoate / sodium phenylacetate','Chemical','/chemical/PA166176020',0),('PA166176022','isoniazid / pyrazinamide / rifampin','Chemical','/chemical/PA166176022',1),('PA166176027','fluoxetine / olanzapine','Chemical','/chemical/PA166176027',0),('PA166176033','efavirenz / emtricitabine / tenofovir disoproxil','Chemical','/chemical/PA166176033',0),('PA166177476','cariprazine','Chemical','/chemical/PA166177476',1),('PA166177484','enasidenib','Chemical','/chemical/PA166177484',1),('PA166177510','inotuzumab ozogamicin','Chemical','/chemical/PA166177510',1),('PA166177513','mirabegron','Chemical','/chemical/PA166177513',1),('PA166177517','sofosbuvir / velpatasvir / voxilaprevir','Chemical','/chemical/PA166177517',1),('PA166177519','umeclidinium','Chemical','/chemical/PA166177519',1),('PA166179845','ivacaftor / tezacaftor','Chemical','/chemical/PA166179845',1),('PA166179849','avatrombopag','Chemical','/chemical/PA166179849',1),('PA166179867','binimetinib','Chemical','/chemical/PA166179867',1),('PA166179872','encorafenib','Chemical','/chemical/PA166179872',1),('PA166182002','amifampridine phosphate','Chemical','/chemical/PA166182002',1),('PA166182279','dacomitinib','Chemical','/chemical/PA166182279',1),('PA166182348','elagolix','Chemical','/chemical/PA166182348',1),('PA166182707','ivosidenib','Chemical','/chemical/PA166182707',1),('PA166182718','ipilimumab','Chemical','/chemical/PA166182718',1),('PA166182720','erdafitinib','Chemical','/chemical/PA166182720',1),('PA166182723','eribulin','Chemical','/chemical/PA166182723',1),('PA166182733','larotrectinib sulfate','Chemical','/chemical/PA166182733',1),('PA166182735','lidocaine and tetracaine','Chemical','/chemical/PA166182735',1),('PA166182736','siponimod','Chemical','/chemical/PA166182736',1),('PA166182740','talazoparib','Chemical','/chemical/PA166182740',1),('PA166182743','lorlatinib','Chemical','/chemical/PA166182743',1),('PA166182748','lusutrombopag','Chemical','/chemical/PA166182748',1),('PA166182756','inotersen','Chemical','/chemical/PA166182756',1),('PA166182761','duvelisib','Chemical','/chemical/PA166182761',1),('PA166182763','emapalumab','Chemical','/chemical/PA166182763',1),('PA166182767','gilteritinib','Chemical','/chemical/PA166182767',1),('PA166182783','articaine / epinephrine','Chemical','/chemical/PA166182783',1),('PA166182881','migalastat','Chemical','/chemical/PA166182881',1),('PA166182882','nusinersen','Chemical','/chemical/PA166182882',1),('PA166182883','ospemifene','Chemical','/chemical/PA166182883',1),('PA166182885','oxymetazoline and tetracaine','Chemical','/chemical/PA166182885',1),('PA166183785','amlodipine / atorvastatin / perindopril arginine','Chemical','/chemical/PA166183785',0),('PA166183787','fluorouracil / salicylic acid','Chemical','/chemical/PA166183787',0),('PA166183788','metabutethamine','Chemical','/chemical/PA166183788',0),('PA166184057','bisoprolol fumarate / perindopril arginine','Chemical','/chemical/PA166184057',0),('PA166184059','carbasalate calcium','Chemical','/chemical/PA166184059',0),('PA166184061','acetaminophen / codeine','Chemical','/chemical/PA166184061',0),('PA166184081','nicorandil','Chemical','/chemical/PA166184081',0),('PA166184233','vernakalant','Chemical','/chemical/PA166184233',0),('PA166184235','umeclidinium / vilanterol','Chemical','/chemical/PA166184235',0),('PA166184379','letermovir','Chemical','/chemical/PA166184379',0),('PA166184495','ezetimibe / simvastatin','Chemical','/chemical/PA166184495',0),('PA166184496','acetaminophen / tramadol','Chemical','/chemical/PA166184496',0),('PA166184497','Paracetamol, combinations excl. Psycholeptics (Vicks MediNait Sirup)','Chemical','/chemical/PA166184497',0),('PA166184498','ezetimibe / rosuvastatin','Chemical','/chemical/PA166184498',0),('PA166184501','lamivudine / abacavir','Chemical','/chemical/PA166184501',0),('PA166184503','zidovudine / lamivudine / abacavir','Chemical','/chemical/PA166184503',0),('PA166184505','dolutegravir / abacavir / lamivudine','Chemical','/chemical/PA166184505',0),('PA166184523','alpelisib','Chemical','/chemical/PA166184523',1),('PA166184558','ramucirumab','Chemical','/chemical/PA166184558',1),('PA166184562','tafamidis','Chemical','/chemical/PA166184562',1),('PA166184566','tipiracil / trifluridine','Chemical','/chemical/PA166184566',1),('PA166185150','amifampridine','Chemical','/chemical/PA166185150',1),('PA166185163','pitolisant','Chemical','/chemical/PA166185163',1),('PA166189801','crizanlizumab-tmca','Chemical','/chemical/PA166189801',1),('PA166189802','voxelotor','Chemical','/chemical/PA166189802',1),('PA166189803','upadacitinib','Chemical','/chemical/PA166189803',1),('PA166190001','luspatercept-aamt','Chemical','/chemical/PA166190001',1),('PA166190041','elexacaftor / tezacaftor / ivacaftor','Chemical','/chemical/PA166190041',1),('PA166190121','enfortumab vedotin','Chemical','/chemical/PA166190121',1),('PA166190161','entrectinib','Chemical','/chemical/PA166190161',1),('PA166190221','estradiol / progesterone','Chemical','/chemical/PA166190221',1),('PA166190621','fam-trastuzumab deruxtecan-nxki','Chemical','/chemical/PA166190621',1),('PA166190681','givosiran','Chemical','/chemical/PA166190681',1),('PA166190721','golodirsen','Chemical','/chemical/PA166190721',1),('PA166223601','oliceridine','Chemical','/chemical/PA166223601',0),('PA166223903','avapritinib','Chemical','/chemical/PA166223903',1),('PA166224201','capmatinib','Chemical','/chemical/PA166224201',1),('PA166224921','inebilizumab-cdon','Chemical','/chemical/PA166224921',1),('PA166224941','isatuximab-irfc','Chemical','/chemical/PA166224941',1),('PA166224981','dotatate lutenium lu-177','Chemical','/chemical/PA166224981',1),('PA166225041','rimegepant','Chemical','/chemical/PA166225041',1),('PA166225061','sacituzumab govitecan-hziy','Chemical','/chemical/PA166225061',1),('PA166225084','selpercatinib','Chemical','/chemical/PA166225084',1),('PA166225141','tucatinib','Chemical','/chemical/PA166225141',1),('PA166235241','margetuximab','Chemical','/chemical/PA166235241',1),('PA166235281','lumasiran','Chemical','/chemical/PA166235281',1),('PA166235301','metreleptin','Chemical','/chemical/PA166235301',1),('PA166235321','pralsetinib','Chemical','/chemical/PA166235321',1),('PA166235322','risdiplam','Chemical','/chemical/PA166235322',1),('PA166235323','satralizumab','Chemical','/chemical/PA166235323',1),('PA166235341','setmelanotide','Chemical','/chemical/PA166235341',1),('PA166236421','viltolarsen','Chemical','/chemical/PA166236421',1),('PA166238763','synthetic conjugated estrogens, A','Chemical','/chemical/PA166238763',1),('PA448004','abacavir','Chemical','/chemical/PA448004',1),('PA448015','acetaminophen','Chemical','/chemical/PA448015',0),('PA448320','allopurinol','Chemical','/chemical/PA448320',0),('PA448385','amitriptyline','Chemical','/chemical/PA448385',1),('PA448405','amoxapine','Chemical','/chemical/PA448405',1),('PA448408','amphetamine','Chemical','/chemical/PA448408',1),('PA448432','anastrozole','Chemical','/chemical/PA448432',1),('PA448486','arsenic trioxide','Chemical','/chemical/PA448486',1),('PA448497','aspirin','Chemical','/chemical/PA448497',0),('PA448500','atorvastatin','Chemical','/chemical/PA448500',0),('PA448515','azathioprine','Chemical','/chemical/PA448515',1),('PA448687','bupropion','Chemical','/chemical/PA448687',1),('PA448691','busulfan','Chemical','/chemical/PA448691',1),('PA448771','capecitabine','Chemical','/chemical/PA448771',1),('PA448785','carbamazepine','Chemical','/chemical/PA448785',1),('PA448809','carisoprodol','Chemical','/chemical/PA448809',1),('PA448817','carvedilol','Chemical','/chemical/PA448817',1),('PA448866','ceftriaxone','Chemical','/chemical/PA448866',1),('PA448871','celecoxib','Chemical','/chemical/PA448871',1),('PA448946','chloroprocaine','Chemical','/chemical/PA448946',1),('PA448948','chloroquine','Chemical','/chemical/PA448948',1),('PA448966','chlorpropamide','Chemical','/chemical/PA448966',1),('PA449009','ciprofloxacin','Chemical','/chemical/PA449009',0),('PA449014','cisplatin','Chemical','/chemical/PA449014',1),('PA449015','citalopram','Chemical','/chemical/PA449015',1),('PA449048','clomipramine','Chemical','/chemical/PA449048',1),('PA449053','clopidogrel','Chemical','/chemical/PA449053',1),('PA449061','clozapine','Chemical','/chemical/PA449061',1),('PA449088','codeine','Chemical','/chemical/PA449088',1),('PA449211','dapsone','Chemical','/chemical/PA449211',1),('PA449233','desipramine','Chemical','/chemical/PA449233',1),('PA449273','dextromethorphan','Chemical','/chemical/PA449273',0),('PA449283','diazepam','Chemical','/chemical/PA449283',1),('PA449383','docetaxel','Chemical','/chemical/PA449383',1),('PA449394','donepezil','Chemical','/chemical/PA449394',1),('PA449409','doxepin','Chemical','/chemical/PA449409',1),('PA449421','dronabinol','Chemical','/chemical/PA449421',1),('PA449441','efavirenz','Chemical','/chemical/PA449441',1),('PA449461','enflurane','Chemical','/chemical/PA449461',0),('PA449563','exemestane','Chemical','/chemical/PA449563',1),('PA449594','fenofibrate','Chemical','/chemical/PA449594',0),('PA449654','flucytosine','Chemical','/chemical/PA449654',0),('PA449673','fluoxetine','Chemical','/chemical/PA449673',1),('PA449683','flurbiprofen','Chemical','/chemical/PA449683',1),('PA449685','flutamide','Chemical','/chemical/PA449685',1),('PA449690','fluvoxamine','Chemical','/chemical/PA449690',1),('PA449726','galantamine','Chemical','/chemical/PA449726',1),('PA449761','glimepiride','Chemical','/chemical/PA449761',1),('PA449762','glipizide','Chemical','/chemical/PA449762',1),('PA449782','glibenclamide','Chemical','/chemical/PA449782',0),('PA449841','haloperidol','Chemical','/chemical/PA449841',0),('PA449969','imipramine','Chemical','/chemical/PA449969',1),('PA449977','indinavir','Chemical','/chemical/PA449977',0),('PA450085','irinotecan','Chemical','/chemical/PA450085',1),('PA450106','isoflurane','Chemical','/chemical/PA450106',1),('PA450112','isoniazid','Chemical','/chemical/PA450112',0),('PA450125','isosorbide dinitrate','Chemical','/chemical/PA450125',1),('PA450126','isosorbide mononitrate','Chemical','/chemical/PA450126',1),('PA450180','lansoprazole','Chemical','/chemical/PA450180',1),('PA450196','letrozole','Chemical','/chemical/PA450196',1),('PA450268','losartan','Chemical','/chemical/PA450268',0),('PA450338','meclizine','Chemical','/chemical/PA450338',1),('PA450348','mefloquine','Chemical','/chemical/PA450348',0),('PA450353','meloxicam','Chemical','/chemical/PA450353',1),('PA450379','mercaptopurine','Chemical','/chemical/PA450379',1),('PA450457','methylene blue','Chemical','/chemical/PA450457',1),('PA450475','metoclopramide','Chemical','/chemical/PA450475',1),('PA450480','metoprolol','Chemical','/chemical/PA450480',1),('PA450529','mivacurium chloride','Chemical','/chemical/PA450529',1),('PA450530','modafinil','Chemical','/chemical/PA450530',1),('PA450555','moxifloxacin','Chemical','/chemical/PA450555',0),('PA450603','nefazodone','Chemical','/chemical/PA450603',1),('PA450606','nelfinavir','Chemical','/chemical/PA450606',0),('PA450640','nitrofurantoin','Chemical','/chemical/PA450640',1),('PA450644','nitroglycerin','Chemical','/chemical/PA450644',0),('PA450654','norfloxacin','Chemical','/chemical/PA450654',0),('PA450657','nortriptyline','Chemical','/chemical/PA450657',1),('PA450684','ofloxacin','Chemical','/chemical/PA450684',0),('PA450688','olanzapine','Chemical','/chemical/PA450688',0),('PA450704','omeprazole','Chemical','/chemical/PA450704',1),('PA450705','ondansetron','Chemical','/chemical/PA450705',1),('PA450732','oxcarbazepine','Chemical','/chemical/PA450732',1),('PA450741','oxycodone','Chemical','/chemical/PA450741',0),('PA450774','pantoprazole','Chemical','/chemical/PA450774',1),('PA450801','paroxetine','Chemical','/chemical/PA450801',1),('PA450877','perindopril','Chemical','/chemical/PA450877',0),('PA450882','perphenazine','Chemical','/chemical/PA450882',1),('PA450947','phenytoin','Chemical','/chemical/PA450947',1),('PA450965','pimozide','Chemical','/chemical/PA450965',1),('PA450970','pioglitazone','Chemical','/chemical/PA450970',0),('PA450985','piroxicam','Chemical','/chemical/PA450985',1),('PA451089','pravastatin','Chemical','/chemical/PA451089',0),('PA451101','prilocaine','Chemical','/chemical/PA451101',0),('PA451103','primaquine','Chemical','/chemical/PA451103',1),('PA451106','probenecid','Chemical','/chemical/PA451106',1),('PA451108','procainamide','Chemical','/chemical/PA451108',1),('PA451131','propafenone','Chemical','/chemical/PA451131',1),('PA451145','propranolol','Chemical','/chemical/PA451145',1),('PA451168','protriptyline','Chemical','/chemical/PA451168',1),('PA451209','quinidine','Chemical','/chemical/PA451209',1),('PA451213','quinine','Chemical','/chemical/PA451213',1),('PA451216','rabeprazole','Chemical','/chemical/PA451216',1),('PA451221','raloxifene','Chemical','/chemical/PA451221',1),('PA451257','risperidone','Chemical','/chemical/PA451257',1),('PA451260','ritonavir','Chemical','/chemical/PA451260',0),('PA451261','rituximab','Chemical','/chemical/PA451261',1),('PA451271','ropivacaine','Chemical','/chemical/PA451271',1),('PA451341','sevoflurane','Chemical','/chemical/PA451341',1),('PA451346','sildenafil','Chemical','/chemical/PA451346',0),('PA451363','simvastatin','Chemical','/chemical/PA451363',0),('PA451365','sirolimus','Chemical','/chemical/PA451365',0),('PA451521','succimer','Chemical','/chemical/PA451521',1),('PA451522','succinylcholine','Chemical','/chemical/PA451522',1),('PA451539','sulfadiazine','Chemical','/chemical/PA451539',1),('PA451547','sulfasalazine','Chemical','/chemical/PA451547',1),('PA451578','tacrolimus','Chemical','/chemical/PA451578',0),('PA451581','tamoxifen','Chemical','/chemical/PA451581',1),('PA451583','tamsulosin','Chemical','/chemical/PA451583',1),('PA451614','terbinafine','Chemical','/chemical/PA451614',0),('PA451663','thioguanine','Chemical','/chemical/PA451663',1),('PA451666','thioridazine','Chemical','/chemical/PA451666',1),('PA451690','timolol','Chemical','/chemical/PA451690',0),('PA451718','tolbutamide','Chemical','/chemical/PA451718',1),('PA451731','toremifene','Chemical','/chemical/PA451731',1),('PA451735','tramadol','Chemical','/chemical/PA451735',1),('PA451743','trastuzumab','Chemical','/chemical/PA451743',1),('PA451746','tretinoin','Chemical','/chemical/PA451746',1),('PA451791','trimipramine','Chemical','/chemical/PA451791',1),('PA451846','valproic acid','Chemical','/chemical/PA451846',1),('PA451866','venlafaxine','Chemical','/chemical/PA451866',1),('PA451879','vincristine','Chemical','/chemical/PA451879',1),('PA451898','vitamin c','Chemical','/chemical/PA451898',0),('PA451906','warfarin','Chemical','/chemical/PA451906',1),('PA451978','zonisamide','Chemical','/chemical/PA451978',0),('PA452200','antithrombotic agents','Chemical','/chemical/PA452200',0),('PA452615','moclobemide','Chemical','/chemical/PA452615',0),('PA452629','zuclopenthixol','Chemical','/chemical/PA452629',0),('PA452632','acenocoumarol','Chemical','/chemical/PA452632',0);
/*!40000 ALTER TABLE `drug` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-05 15:30:17
