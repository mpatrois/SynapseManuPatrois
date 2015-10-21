-- HSQLDB DML v1.0.0 for Unit Test Validation
-- Each class must have a commented block that insert data needed for tests

-- Class : ResourceDao -----------------------------------------------------
-- Resources Insertion
INSERT INTO resources (name, path, sort) VALUES('Accueil', '/', 1);
INSERT INTO resources (name, path, sort) VALUES('News', '/news/', 2);
INSERT INTO resources (name, path, sort) VALUES('Videos', '/videos/', 4);
INSERT INTO resources (name, path, sort) VALUES('Blogs', '/blogs/', 5);
-- Groups Insertion
INSERT INTO groups (name) VALUES('Webmaster');
INSERT INTO groups (name) VALUES('Administrator');
INSERT INTO groups (name) VALUES('Guild');
INSERT INTO groups (name) VALUES('Guest');
-- Resource binding to a Group
INSERT INTO groups_resources (id_group, id_resource) VALUES(4, 1);
INSERT INTO groups_resources (id_group, id_resource) VALUES(3, 2);
INSERT INTO groups_resources (id_group, id_resource) VALUES(2, 3);
INSERT INTO groups_resources (id_group, id_resource) VALUES(1, 4);
-----------------------------------------------------------------------------

-- Class : ClazzDao ---------------------------------------------------------
-- Clazz Insertion
INSERT INTO classes (name, img) VALUES('Chaman', '/resources/img/classes/shaman.png');
INSERT INTO classes (name, img) VALUES('Chasseur', '/resources/img/classes/hunt.png');
INSERT INTO classes (name, img) VALUES('Chevalier de la mort', '/resources/img/classes/dk.png');
INSERT INTO classes (name, img) VALUES('Démoniste', '/resources/img/classes/warlock.png');
INSERT INTO classes (name, img) VALUES('Voleur', '/resources/img/classes/steal.png');
-- Race Insertion
--INSERT INTO races (name) VALUES('Elfe de sang');
--INSERT INTO races (name) VALUES('Gobelin');
--INSERT INTO races (name) VALUES('Mort vivant');
--INSERT INTO races (name) VALUES('Mort vivant');
INSERT INTO `races` (name) VALUES ('Elfe de sang'),('Gobelin'),('Mort vivant'),('Orc'),('Pandaren'),('Tauren'),('Troll');
-- Clazz binding to a Race
INSERT INTO races_classes (id_race, id_class) VALUES(1, 2);
INSERT INTO races_classes (id_race, id_class) VALUES(1, 3);
INSERT INTO races_classes (id_race, id_class) VALUES(1, 4);
INSERT INTO races_classes (id_race, id_class) VALUES(2, 1);
INSERT INTO races_classes (id_race, id_class) VALUES(2, 2);
INSERT INTO races_classes (id_race, id_class) VALUES(2, 3);
INSERT INTO races_classes (id_race, id_class) VALUES(2, 4);
INSERT INTO races_classes (id_race, id_class) VALUES(3, 2);
INSERT INTO races_classes (id_race, id_class) VALUES(3, 3);
INSERT INTO races_classes (id_race, id_class) VALUES(3, 4);
-----------------------------------------------------------------------------

-- Class : RealmDao ---------------------------------------------------------
-- Realm Insertion
INSERT INTO realms (name) VALUES('Krasus');
INSERT INTO realms (name) VALUES('Eitrigg');
INSERT INTO realms (name) VALUES('Sargeras');
INSERT INTO realms (name) VALUES('Ysondre');
-----------------------------------------------------------------------------

-- Class : SpecializationDao ------------------------------------------------
-- Clazz Insertion
INSERT INTO classes (name, img) VALUES('Voleur', '/resources/img/classes/voleur.png');
-- Roles Insertion
INSERT INTO roles (name) VALUES('Tank');
INSERT INTO roles (name) VALUES('Range');
INSERT INTO roles (name) VALUES('Melee');
INSERT INTO roles (name) VALUES('Heal');
-- Specialization Insertion
INSERT INTO specializations (id_class, id_role, name, img, recruiting) VALUES(1, 3, 'Combat', '/resources/img/specs/combat.png', 0);
INSERT INTO specializations (id_class, id_role, name, img, recruiting) VALUES(1, 3, 'Assassinat', '/resources/img/specs/assassinat.png', 0);
INSERT INTO specializations (id_class, id_role, name, img, recruiting) VALUES(1, 3, 'Finesse', '/resources/img/specs/finesse.png', 0);
-----------------------------------------------------------------------------

-- Class : UserDao ----------------------------------------------------------
-- Race Insertion
INSERT INTO races (name) VALUES('Tauren');
-- Class Insertion
INSERT INTO classes (name, img) VALUES('Druide', '/resources/img/classes/druid.png');
-- Role Insertion
INSERT INTO roles (name) VALUES('Melee');
-- Specialization Insertion
INSERT INTO specializations (id_class, id_role, name, img, recruiting) VALUES(1, 1, 'Combat', '/resources/img/specs/combat.png', 0);
-- Group Insertion
INSERT INTO groups (name) VALUES('Administrator');
-- Realm Insertion
INSERT INTO realms (name) VALUES('Krasus');
-- User Insertion
INSERT INTO users (name, surname, birth, mail, password, nickname, id_race, id_class, id_spec, active, legals, id_group, id_realm, avatar_forum) VALUES('Airouche', 'Meidi', '1988-11-13', 'meidi.airouche@gmail.com', 'uNnXXu939f00JTSF/3CG0A==', 'Squash', 1, 1, 1, 1, 1, 1, 1, '/resources/img/default_avatar.png');
INSERT INTO users (name, surname, birth, mail, password, nickname, id_race, id_class, id_spec, active, legals, id_group, id_realm, avatar_forum) VALUES('Airouche', 'Meidi', '1988-11-13', 'mednnet@wanadoo.fr', 'uNnXXu939f00JTSF/3CG0A==', 'XtremZ', 1, 1, 1, 1, 1, 1, 1, '/resources/img/default_avatar.png');
INSERT INTO users (name, surname, birth, mail, password, nickname, id_race, id_class, id_spec, active, legals, id_group, id_realm, avatar_forum) VALUES('Airouche', 'Meidi', '1988-11-13', 'inactive@test.fr', 'uNnXXu939f00JTSF/3CG0A==', 'Inactive', 1, 1, 1, 1, 1, 1, 1, '/resources/img/default_avatar.png');
INSERT INTO users (name, surname, birth, mail, password, nickname, id_race, id_class, id_spec, active, legals, id_group, id_realm, avatar_forum) VALUES('Airouche', 'Meidi', '1988-11-13', 'update@test.fr', 'uNnXXu939f00JTSF/3CG0A==', 'Update', 1, 1, 1, 1, 1, 1, 1, '/resources/img/default_avatar.png');
-----------------------------------------------------------------------------

-- Class : ForumDao ---------------------------------------------------------
-- Group Insertion
INSERT INTO groups (name) VALUES('Webmaster');
INSERT INTO groups (name) VALUES('Administrator');
INSERT INTO groups (name) VALUES('Guild');
INSERT INTO groups (name) VALUES('Guest');
-- Forum Insertion
INSERT INTO f_forum (name, description) VALUES('Candidature', NULL);
INSERT INTO f_forum (name, description) VALUES('Officiers & Admins', NULL);
INSERT INTO f_forum (name, description) VALUES('A lire', NULL);
-- Forum binding to Group
INSERT INTO f_groups_forums (id_group, id_forum) VALUES(2, 1);
INSERT INTO f_groups_forums (id_group, id_forum) VALUES(2, 2);
INSERT INTO f_groups_forums (id_group, id_forum) VALUES(2, 3);
INSERT INTO f_groups_forums (id_group, id_forum) VALUES(4, 1);
-- ForumCategory Insertion
INSERT INTO f_categories (name, description, id_forum) VALUES('Apply', 'Pour nous rejoindre, c''est ici !', 1);
INSERT INTO f_categories (name, description, id_forum) VALUES('Postulation Acceptée', 'Votre candidature est validée', 1);
-- ForumPost Insertion
INSERT INTO f_posts (title, content, date_create, date_update, id_user_update, id_user, id_cat, locked) VALUES('Title1', 'Content1', '2015-01-06 14:16:24', '2015-01-06 14:16:24', 1, 1, 1, 1);
-----------------------------------------------------------------------------

-- Class : RaidDao -----------------------------------------------------------
-- Extension Insertion
INSERT INTO extensions (name, imageUrl, version_x, version_y, version_z) VALUES('Mist of Pandaria', '', 5, 0, 0);
INSERT INTO extensions (name, imageUrl, version_x, version_y, version_z) VALUES('Warlords of Draenor', '/resources/img/wod_logo.png', 6, 0, 0);
-- Patch Insertion
INSERT INTO patches (name, version_x, version_y, version_z, id_extension) VALUES('Siège d''Orgrimmar', 5, 4, 0, 1);
INSERT INTO patches (name, version_x, version_y, version_z, id_extension) VALUES('Blackrock Foundry', 6, 1, 0, 2);
-- Raid Insertion
INSERT INTO raids (name, acronym, imageUrl, id_patch) VALUES('Cognefort', 'HML', '/resources/img/cognefort.png', 1);
INSERT INTO raids (name, acronym, imageUrl, id_patch) VALUES('Fonderie de Rochenoire', 'BRF', '/resources/img/blackrock.png', 2);
-----------------------------------------------------------------------------

-- Class : PatchDao ---------------------------------------------------------
-- Extension Insertion
INSERT INTO extensions (name, imageUrl, version_x, version_y, version_z) VALUES('Mist of Pandaria', '', 5, 0, 0);
INSERT INTO extensions (name, imageUrl, version_x, version_y, version_z) VALUES('Warlords of Draenor', '/resources/img/wod_logo.png', 6, 0, 0);
-- Patch Insertion
INSERT INTO patches (name, version_x, version_y, version_z, id_extension) VALUES('Siège d''Orgrimmar', 5, 4, 0, 1);
INSERT INTO patches (name, version_x, version_y, version_z, id_extension) VALUES('Blackrock Foundry', 6, 1, 0, 2);
-----------------------------------------------------------------------------

-- Class : VideoDao ---------------------------------------------------------
-- Video Insertion
INSERT INTO videos (title, description, integrationCode) VALUES('Sha de l''orgueil 25 HM', 'Synapse vs Sha de l''orgueil 25 HM', '<iframe width="350" height="200" src="//www.youtube.com/embed/WkdxUwTfwFY" frameborder="0" allowfullscreen></iframe>');
INSERT INTO videos (title, description, integrationCode) VALUES('Galakras 25 HM', 'Synapse vs Galakras 25 HM', '<iframe width="350" height="200" src="//www.youtube.com/embed/WEXsxqWNwuc?list=PLMsBsUQb5mfJ65jY0GyFMz8R-2b23DU64" frameborder="0" allowfullscreen></iframe>');
INSERT INTO videos (title, description, integrationCode) VALUES('Video 3', 'Video 3', '<iframe width="350" height="200" src="//www.youtube.com/embed/WEXsxqWNwuc?list=PLMsBsUQb5mfJ65jY0GyFMz8R-2b23DU64" frameborder="0" allowfullscreen></iframe>');
-----------------------------------------------------------------------------

-- Class : ArticleDao -------------------------------------------------------
-- ArticleType Insertion
INSERT INTO articles_types (name) VALUES('Blog');
INSERT INTO articles_types (name) VALUES('News');
INSERT INTO articles_types (name) VALUES('About');
-- Article Insertion
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('blog1', 'Description1', 'Content1', '2014-11-21', '2014-11-21', 1, '/resources/img/blog1.png', NULL, '/resources/img/header2.jpg', 1);
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('blog2', 'Description', 'Content', '2014-11-21', '2014-11-21', 1, '/resources/img/blog1.png', NULL, '/resources/img/header2.jpg', 1);
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('blog3', 'Description', 'Content', '2014-11-21', '2014-11-21', 1, '/resources/img/blog1.png', NULL, '/resources/img/header2.jpg', 1);
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('blog4', 'Description', 'Content', '2014-11-21', '2014-11-21', 1, '/resources/img/blog1.png', NULL, '/resources/img/header2.jpg', 1);
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('blog5', 'Description', 'Content', '2014-11-21', '2014-11-21', 1, '/resources/img/blog1.png', NULL, '/resources/img/header2.jpg', 1);
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('About', 'AboutDescription', 'AboutContent', '2014-11-21', '2014-11-21', 3, '/resources/img/blog1.png', NULL, '/resources/img/header2.jpg', 1);
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('Prom1', 'Description1', 'Content1', '2014-11-22', '2014-11-22', 2, '/resources/img/ascension.png', '/resources/img/banner1.jpg', '/resources/img/header2.jpg', 1);
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('Prom2', 'Description2', 'Content2', '2014-11-22', '2014-11-22', 2, '/resources/img/ascension.png', '/resources/img/banner1.jpg', '/resources/img/header2.jpg', 1);
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('Prom3', 'Description3', 'Content3', '2014-11-22', '2014-11-22', 2, '/resources/img/ascension.png', '/resources/img/banner1.jpg', '/resources/img/header2.jpg', 1);
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('Prom4', 'Description4', 'Content4', '2014-11-22', '2014-11-22', 2, '/resources/img/ascension.png', '/resources/img/banner1.jpg', '/resources/img/header2.jpg', 1);
INSERT INTO articles (title, description, content, date_create, date_update, id_article_type, imageUrl, cover, ImageHeader, id_user) VALUES('Prom5', 'Description5', 'Content5', '2014-11-22', '2014-11-22', 2, '/resources/img/ascension.png', '/resources/img/banner1.jpg', '/resources/img/header2.jpg', 1);
-- Groups Articles Insertion
INSERT INTO groups_articles(id_group, id_article) VALUES(1,1);
INSERT INTO groups_articles(id_group, id_article) VALUES(1,2);
INSERT INTO groups_articles(id_group, id_article) VALUES(1,3);
INSERT INTO groups_articles(id_group, id_article) VALUES(1,4);
INSERT INTO groups_articles(id_group, id_article) VALUES(1,5);
INSERT INTO groups_articles(id_group, id_article) VALUES(1,6);
INSERT INTO groups_articles(id_group, id_article) VALUES(1,7);
INSERT INTO groups_articles(id_group, id_article) VALUES(1,8);
INSERT INTO groups_articles(id_group, id_article) VALUES(1,9);
INSERT INTO groups_articles(id_group, id_article) VALUES(1,10);
INSERT INTO groups_articles(id_group, id_article) VALUES(1,11);
-----------------------------------------------------------------------------



INSERT INTO `specializations` VALUES (1,6,'Protection','/resources/img/specs/protection_war.png',0,1),(2,6,'Armes','/resources/img/specs/arms.png',0,3),(3,6,'Fureur','/resources/img/specs/fury.png',0,3),(4,9,'Protection','/resources/img/specs/protection_pal.png',0,1),(5,9,'Vindicte','/resources/img/specs/ret.png',1,3),(6,9,'Sacré','/resources/img/specs/holy_pal.png',0,4),(7,2,'Précision','/resources/img/specs/markmanship.png',0,2),(8,2,'Bêtes','/resources/img/specs/beast.png',0,2),(9,2,'Survie','/resources/img/specs/survival.png',0,2),(10,11,'Combat','/resources/img/specs/combat.png',0,3),(11,11,'Assassinat','/resources/img/specs/assa.png',1,3),(12,11,'Finesse','/resources/img/specs/subtlty.png',1,3),(13,10,'Sacré','/resources/img/specs/holy_priest.png',0,4),(14,10,'Discipline','/resources/img/specs/discipline.png',0,4),(15,10,'Ombre','/resources/img/specs/shadow.png',1,2),(16,3,'Sang','/resources/img/specs/blood.png',0,1),(17,3,'Givre','/resources/img/specs/frost_dk.png',0,3),(18,3,'Impie','/resources/img/specs/unholy.png',1,3),(19,1,'Elémentaire','/resources/img/specs/elemental.png',1,2),(20,1,'Amélioration','/resources/img/specs/enhancement.png',0,3),(21,1,'Restauration','/resources/img/specs/restoration_sham.png',0,4),(22,7,'Arcane','/resources/img/specs/arcane.png',0,2),(23,7,'Feu','/resources/img/specs/fire.png',0,2),(24,7,'Givre','/resources/img/specs/frost_mage.png',0,2),(25,4,'Affliction','/resources/img/specs/affliction.png',0,2),(26,4,'Démonologie','/resources/img/specs/demonology.png',1,2),(27,4,'Destruction','/resources/img/specs/destruction.png',0,2),(28,8,'Maître brasseur','/resources/img/specs/brewmaster.png',0,1),(29,8,'Tisse-brume','/resources/img/specs/mistweaver.png',1,4),(30,8,'Marche-vent','/resources/img/specs/windwalker.png',1,3),(31,5,'Equilibre','/resources/img/specs/balance.png',1,2),(32,5,'Combat farouche','/resources/img/specs/feral.png',0,3),(33,5,'Gardien','/resources/img/specs/guardian.png',0,1),(34,5,'Restauration','/resources/img/specs/restoration_drood.png',0,4);
INSERT INTO `classes` VALUES (1,'Chaman','/resources/img/classes/shaman.png'),(2,'Chasseur','/resources/img/classes/hunt.png'),(3,'Chevalier de la mort','/resources/img/classes/dk.png'),(4,'Démoniste','/resources/img/classes/warlock.png'),(5,'Druide','/resources/img/classes/drood.png'),(6,'Guerrier','/resources/img/classes/war.png'),(7,'Mage','/resources/img/classes/mage.png'),(8,'Moine','/resources/img/classes/monk.png'),(9,'Paladin','/resources/img/classes/paladin.png'),(10,'Prêtre','/resources/img/classes/priest.png'),(11,'Voleur','/resources/img/classes/rogue.png');
INSERT INTO `users` VALUES (1,'Airouche','Meidi','1988-11-13','meidi.airouche@gmail.com','uNnXXu939f00JTSF/3CG0A==','Werdz',6,5,32,1,1,1,19,'http://eu.battle.net/static-render/eu/voljin/215/98375639-avatar.jpg','0631396304'),(2,'Emon','Meda',NULL,'yggdra@free.fr','hNFN0VQVGJVUO3M1gznyvA==','Medaemon',2,4,26,1,1,1,1,'http://eu.battle.net/static-render/eu/eitrigg/214/70656214-avatar.jpg',NULL),(45,'','Aurelien','1981-08-14','aurelien.ramel@yahoo.fr','fqGRZrPUF82nqcSOP/zi2g==','Mynotor',7,5,31,1,1,3,2,'http://eu.battle.net/static-render/eu/eitrigg/137/59694985-avatar.jpg',NULL),(49,'Gengiskhan','Karim','1965-11-08','karim.ghezouti@free.fr','d96mjl61mdl/W/cuuAJvOg==','Gengiskhan',7,10,14,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/91/70657115-avatar.jpg',NULL),(50,'robert','garnier','1991-10-28','qe61260@gmail.com','+xMum6dHD2Ieucb/0A6/KA==','lacante',2,6,1,1,1,4,1,'http://eu.battle.net/static-render/eu/eitrigg/64/70655808-avatar.jpg',NULL),(51,'Gerard','Menvusa','2004-02-29','philemon.vic@outlook.fr','KGAvIODTM8E+Y/R9ivvamA==','Phyllch',7,7,24,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/54/74325814-avatar.jpg',NULL),(52,'Samuel','Fisher','1989-08-22','samuel.poissonnier@hotmail.fr','ZP6Bf3YZj46gv4KtmIXSOg==','Zuhll',7,1,21,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/62/70655806-avatar.jpg',NULL),(53,'','',NULL,'theoktm@live.fr','w1N/mV7+j4tY9Yvy0c8urw==','Malandro',6,6,3,0,1,4,1,'/resources/img/default_avatar.png',NULL),(54,'Lacouchie','Laurine','2014-12-14','laubellamy.l@gmail.com','GK0X0h1hW8fPLpoC5CWzig==','Astesa',1,9,6,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/108/72595052-avatar.jpg',NULL),(56,'','Axel','1987-09-10','wow_ip3@hotmail.fr','rtaiEnaiA5984j18tfEccQ==','Ulik',4,6,1,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/212/70655956-avatar.jpg',NULL),(59,'','','1991-09-24','ytrezarhatake@hotmail.fr','0TfOv4iI9OouQvK4oYpGVg==','Ytrezar',7,1,20,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/55/70655799-avatar.jpg',NULL),(60,'Klein-Sujka','Romain','1994-02-03','Klein-Sujka@Hotmail.Fr','KwINW7C/zv4Is0+DzROMcA==','Iranùs',4,2,7,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/197/70656453-avatar.jpg','0782378710'),(61,'Bisson','Quentin','1985-07-12','quentin162@gmail.com','pMFLQRN6aryZscG3w5MGQooI8L+djsiLBCNd7ZFnSO8=','Huachiree',5,8,28,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/21/70459157-avatar.jpg',NULL),(62,'Ali Le Castel','Timothée','1992-10-26','tim26bis@gmail.com','c1p7sn6nBBnkNIThgsRF4A==','Unthuwa',4,2,9,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/8/70656776-avatar.jpg',NULL),(63,'Menvusa','Gerard','1990-11-21','philemon.vic@gmail.com','/KUlIbgAmu9y6s/5TrGT4w==','Phyllch',7,7,24,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/54/74325814-avatar.jpg',NULL),(64,'Souze','Anthony','1985-01-14','Enel.game@hotmail.com','ukUleUhjRk18jBrtQn/XKw==','Souze',7,2,7,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/131/70534531-avatar.jpg',NULL),(65,'','Steven','2015-01-04','stevenbrenot@yahoo.fr','4ChGtvRZQysTX14GRniSyu9fW0wb6YVnsEYgogo9w/w=','Lucý',4,1,20,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/191/70655935-avatar.jpg',NULL),(66,'','','1989-04-17','puccowow@gmail.com','iKSiJmmG0B44SS+vb3k3eg==','Pucco',5,1,19,1,1,3,2,'http://eu.battle.net/static-render/eu/eitrigg/204/61562060-avatar.jpg',NULL),(67,'','Vincent','2015-01-07','vincenthernandez78820@hotmail.fr','CQn03DkEIm+SJAnM3Kwc5Q==','Djîdâne',4,2,7,1,1,3,1,'/resources/img/default_avatar.png',NULL),(68,'','','1989-06-22','archaolelus@hotmail.com','MLv38k294ntrxqntptgbsQ==','Incauming',4,4,27,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/158/70657438-avatar.jpg',NULL),(69,'','','1982-12-01','michelbenjamin2211@neuf.fr','rIdy135s9KrfWKSKs5fvbg==','Hïsoka',6,3,16,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/184/70655672-avatar.jpg',NULL),(70,'','JC',NULL,'supervigo01@gmail.com','CPoTouczGljpC7myQ+vgKw==','Super',3,8,30,1,1,4,1,'/resources/img/default_avatar.png',NULL),(71,'','','1987-09-10','axel.habeillon@gmail.com','Lkpoa6gfUzXfY2w7vcvJ/A==','Ulik',4,6,1,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/212/70655956-avatar.jpg',NULL),(72,'','',NULL,'micka.gicquel@gmail.com','yRBXs/t6IJ/0eu6iTovaYg==','Lingott',2,1,21,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/241/70657009-avatar.jpg',NULL),(73,'bond','james','1988-01-22','dru.samuel@voila.fr','FLfz5lDHF/legMBdiXg4VQ==','Epidemie',1,9,6,1,1,3,1,'/resources/img/default_avatar.png',NULL),(74,'','','1992-11-09','troux33@hotmail.fr','72rQnxTyaYCnq67G8EqxNg==','Dounie',5,8,29,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/96/70655584-avatar.jpg',NULL),(75,'Chanaron','Jean-Marie','1983-12-02','Chanaron@gmail.com','44lajhR85a3HcR47kTiGyQ==','Katalog',7,7,23,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/252/70313724-avatar.jpg',NULL),(76,'Tiers','Baptiste','1992-09-17','darkjuin@hotmail.fr','8+zdSe8Wljr83VCGVgeb/A==','Vewÿnètte',3,10,15,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/174/95944878-avatar.jpg',NULL),(77,'FAGEO','','1987-11-18','thomas.fageol@gmail.com','qF4/GADc3I5UZsP8h5oIsQ==','Kirelis',7,5,33,1,1,4,1,'/resources/img/default_avatar.png',NULL),(78,'Oliv','Oliv','1965-07-19','omontaldo@gmail.com','WjIy9B3zarLouLFtnPkfPg==','Oliwia',7,10,14,1,1,2,1,'http://eu.battle.net/static-render/eu/eitrigg/216/70656216-avatar.jpg',NULL),(79,'','Mike','1991-09-04','mi_ky_62@hotmail.fr','XCfF8rSvhWp2kUI7yZRYJg==','Xero',6,9,5,1,1,4,1,'/resources/img/default_avatar.png',NULL),(80,'','Martin','1984-08-11','avalin73@free.fr','djb4H5JHO5z7g/Exy+jbsQ==','shulshen',4,7,24,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/230/70654950-avatar.jpg',NULL),(81,'Désirant','Thomas','1998-01-12','Destom@hotmail.be','xxdssocXdrmH+X8604XnQg==','Exemiuss',7,2,7,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/246/70658038-avatar.jpg',NULL),(82,'Caron','Alex','1990-02-09','alex_2_feu@hotmail.fr','Xdd6vvbVKdlPRSOEsNc7FQ==','Lebigbang',7,5,31,1,1,4,1,'/resources/img/default_avatar.png',NULL),(83,'','','1988-03-22','spygaw22@hotmail.fr','I3hipPYb7so9+XgJKNGySg==','warstaro',6,6,2,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/203/69891019-avatar.jpg',NULL),(84,'','','1997-07-15','zarkkrasus@gmail.com','8/PO5buijKSVbolWbaUOCQ==','Zarkk',7,4,26,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/244/70656500-avatar.jpg',NULL),(85,'Narda','Narda','1987-05-16','benj.michel@free.fr','YJ/xmwC8Geek/JFUyBYjcw==','Narda',5,10,15,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/53/70655029-avatar.jpg',NULL),(86,'Gaahara','Ludo','1979-02-09','bureau-ludovic@hotmail.fr','KiwfOUAIJLe2i2T0Xvcwxw==','Gaaha',1,10,15,1,1,3,1,'/resources/img/default_avatar.png',NULL),(87,'Bellagrume','elsa','1989-04-17','elsjou@laposte.net','OfefGdZcMtz2KSBG7CTq4Q==','Bellagrume',7,5,34,1,1,3,2,'http://eu.battle.net/static-render/eu/eitrigg/188/61649852-avatar.jpg',NULL),(88,'','','1994-11-06','guillaume.salomez@hotmail.fr','OOGlgyfEjZDmkIik8fGWWg==','Dante',4,3,17,1,1,4,1,'http://eu.battle.net/static-render/eu/eitrigg/166/70658470-avatar.jpg',NULL),(89,'','Quentin','1996-07-07','robineau.quentin@orange.fr','D7jicivMO4bAMjFgVKSXAw==','Vyrkung',4,6,3,1,1,3,1,'http://eu.battle.net/static-render/eu/eitrigg/156/70656668-avatar.jpg',NULL),(90,'daima','gerard','1980-07-22','tonkulol@outlook.fr','CfFkmX4SE65KOcUpfy1LkA==','daima',2,7,22,0,1,4,1,'/resources/img/default_avatar.png',NULL),(91,'Yvone','Gerard','1980-07-22','tonku@outlook.fr','CfFkmX4SE65KOcUpfy1LkA==','Daima',2,7,22,0,1,4,17,'/resources/img/default_avatar.png',NULL);