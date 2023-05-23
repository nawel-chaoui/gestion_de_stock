COMMANDE POUR CREATION VIA TERMINAL MYSQL

mysql> CREATE DATABASE boutique;      #création db
Query OK, 1 row affected (0.01 sec)

mysql> USE boutique;                  # selectionner la db
Database changed

mysql> CREATE TABLE categorie (id INT AUTO_INCREMENT PRIMARY KEY,nom VARCHAR(255) NOT NULL);
Query OK, 0 rows affected (0.02 sec)               # crea de la 1er table

mysql> CREATE TABLE produit (id INT AUTO_INCREMENT PRIMARY KEY,nom VARCHAR(255) NOT NULL,description TEXT,prix INT NOT NULL,quantite INT NOT NULL,id_categorie INT NOT NULL,FOREIGN KEY (id_categorie) REFERENCES categorie(id));
Query OK, 0 rows affected (0.02 sec)               # crea 2eme table + liaison des id par foreign key

 # ajout des valeurs
mysql> INSERT INTO categorie (nom) VALUES ('Fruits et légumes'), ('Epicerie'), ('Produits frais');
Query OK, 3 rows affected (0.01 sec)              # ajout des valeurs
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO produit (nom, description, prix, quantite, id_categorie) VALUES ('Pomme', 'Pomme Granny acidulé', 0.8
5, 35, 1);
Query OK, 1 row affected (0.01 sec)

mysql>  INSERT INTO produit (nom, description, prix, quantite, id_categorie) VALUES ('Comté', 'Fromage comté AOP 500g',
5, 24, 2);
Query OK, 1 row affected (0.01 sec)

mysql>  INSERT INTO produit (nom, description, prix, quantite, id_categorie) VALUES ('Céréales Cornflakes', 'Paquet de céréale flocons 1kg', 3, 52, 2);
Query OK, 1 row affected (0.01 sec)

mysql>  INSERT INTO produit (nom, description, prix, quantite, id_categorie) VALUES ('Tomates cerises', 'Sachet de 500g de tomates cerises', 3, 26, 1);
Query OK, 1 row affected (0.01 sec)

mysql>  INSERT INTO produit (nom, description, prix, quantite, id_categorie) VALUES ('Lait', 'Bouteille de lait entier d
e vache 1L', 2, 14, 3);
Query OK, 1 row affected 

# enregistrement de la Database
mysqldump -u root -p boutique > dbboutique.sql;

