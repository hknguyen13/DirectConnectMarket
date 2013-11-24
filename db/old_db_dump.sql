BEGIN TRANSACTION;
DROP TABLE "items";
CREATE TABLE "items" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "category" varchar(255), "subcategory" varchar(255), "description" varchar(256), "picture" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO items VALUES(1,'Spinach, flat leaf','Vegetable','spinach','Flat spinach has broad, smooth leaves that are easier to clean than Savoy. This type is often grown for canned and frozen spinach, as well as soups, baby foods, and processed foods.','http://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Espinac_5nov.JPG/220px-Espinac_5nov.JPG','2013-11-23 22:40:28.327304','2013-11-23 22:40:28.327304');
INSERT INTO items VALUES(2,'Spinach, savoy','Vegetable','spinach','Savoy has dark green, crinkly and curly leaves. It is the type sold in fresh bunches in most supermarkets in the United States. One heirloom variety of savoy is Bloomsdale, which is somewhat resistant to bolting. Other common heirloom varieties are Merlo Nero (a mild variety from Italy) and Viroflay (a very large spinach with great yields).','http://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Espinac_5nov.JPG/220px-Espinac_5nov.JPG','2013-11-23 22:40:28.327304','2013-11-23 22:40:28.327304');
INSERT INTO items VALUES(3,'Tomato, roma','Vegetable','tomato','Roma tomatoes are generally used for canning and cooking into tomato sauces','http://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Plum_Tomatoes%2C_Lexington_MA.jpg/250px-Plum_Tomatoes%2C_Lexington_MA.jpg','2013-11-23 22:40:28.327304','2013-11-23 22:40:28.327304');
DROP TABLE "markets";
CREATE TABLE "markets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "street" varchar(255), "city" varchar(255), "state" varchar(255), "day" varchar(255), "starttime" time, "endtime" time, "created_at" datetime, "updated_at" datetime);
INSERT INTO markets VALUES(1,'Lexington Newtown','123 Newtown Pike','Lexington','KY','Saturday','2013-11-23 08:00:00.000000','2013-11-23 13:00:00.000000','2013-11-23 21:43:55.029255','2013-11-23 21:43:55.029255');
INSERT INTO markets VALUES(2,'Georgetown Market','321 McDonald Way','Georgetown','KY','Friday','2013-11-23 08:00:00.000000','2013-11-23 12:00:00.000000','2013-11-23 21:46:06.416576','2013-11-23 21:46:06.416576');
DROP TABLE "orders";
CREATE TABLE "orders" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "market_id" integer, "item_id" integer, "buysell" boolean, "price" float, "unit" varchar(255), "quantity" float, "orderexpire" date, "delivery" date, "freshdate" date, "created_at" datetime, "updated_at" datetime);
INSERT INTO orders VALUES(1,1,1,1,'t',5.00,'/lb',20.0,'2013-11-29','2013-11-30','2013-12-07','2013-11-30 02:13:20.240518','2013-11-24 02:13:20.240518');
INSERT INTO orders VALUES(2,2,1,1,'f',4.75,'/lb', 2.0,'2013-11-29','2013-11-30','2013-12-07','2013-11-24 13:48:06.691957','2013-11-24 13:48:06.691957');
INSERT INTO orders VALUES(3,3,1,1,'f',4.78,'/lb',10.0,'2013-11-29','2013-11-30','2013-12-07','2013-11-24 13:48:06.691957','2013-11-24 13:48:06.691957');
INSERT INTO orders VALUES(4,1,1,1,'t',4.95,'/lb',10.0,'2013-11-29','2013-12-01','2013-12-08','2013-11-24 13:48:06.691957','2013-11-24 13:48:06.691957');
INSERT INTO orders VALUES(5,3,1,1,'f',4.80,'/lb', 3.0,'2013-11-29','2013-11-30','2013-12-07','2013-11-24 13:48:06.691957','2013-11-24 13:48:06.691957');
INSERT INTO orders VALUES(6,1,1,1,'f',4.82,'/lb', 2.0,'2013-11-29','2013-11-30','2013-12-07','2013-11-24 13:48:06.691957','2013-11-24 13:48:06.691957');
DROP TABLE "schema_migrations";
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO schema_migrations VALUES(20131123185132);
INSERT INTO schema_migrations VALUES(20131123213844);
INSERT INTO schema_migrations VALUES(20131123222959);
INSERT INTO schema_migrations VALUES(20131124002700);
INSERT INTO schema_migrations VALUES(20131124020506);
DROP TABLE "users";
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "firstname" varchar(255), "lastname" varchar(255), "email" varchar(255), "password" varchar(255), "phone" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO users VALUES(1,'Gary','Gardner','ggardner@directconnectmarket.com','aoeu','859.555.1212','2013-11-23 19:06:07.808338','2013-11-23 19:06:07.808338');
INSERT INTO users VALUES(2,'Tom','Tomato','ttomato@directconnectmarket.com','aoeu','859.555.1213','2013-11-23 19:34:28.568826','2013-11-23 19:34:28.568826');
INSERT INTO users VALUES(3,'Sam','Spud','sspud@directconnectmarket.com','aoeu','859.555.1213','2013-11-23 19:34:28.568826','2013-11-23 19:34:28.568826');
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;
