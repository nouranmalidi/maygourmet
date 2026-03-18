CREATE TABLE equipe (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(155) NOT NULL, 
    prenom VARCHAR(155) NOT NULL,  
    mail VARCHAR(100), 
    telephone VARCHAR(100) NOT NULL,
    poste VARCHAR(80) NOT NULL,
    adresse_postale VARCHAR(150) NOT NULL,
    presentation VARCHAR(255),
    date_recrutement DATE
);

-- Afficher les tables existante
SHOW TABLES;


-- Ajout de la premiere ligne de notre table equipe
INSERT INTO equipe (nom, prenom, mail, telephone, poste, adresse_postale,presentation, date_recrutement) VALUES 
('SAID', 'FATIMA', 'sfatima@gmail.com', '0639678798', 'Gérante', '4 Rue de la Mosquée 97600 Mamoudzou', 'Passionnée de cuisine traditionnelle', '2015-02-01');

INSERT INTO equipe (nom, prenom, mail, telephone, poste, adresse_postale,presentation, date_recrutement) VALUES 
('ALI', 'SAID', 'a.said@gmail.com', '0639548796', 'Chef cuisinier', '10 Rue mafahaval 97605 Passamainty ', "Chef renommé dans l'océan indien", '2015-02-01');

INSERT INTO equipe (nom, prenom, mail, telephone, poste, adresse_postale,presentation, date_recrutement) VALUES 
('COMBO', 'ALI', 'c.ali@gmail.com', '0639548768', 'Commis de cuisine', '7 Rue doukabé 97640 Sada ', "Personne serieuse très engagé dans l'entreprise", '2015-02-01');

INSERT INTO equipe (nom, prenom, mail, telephone, poste, adresse_postale,presentation, date_recrutement) VALUES 
('KAMA', 'HAMA', 'k.hama@gmail.com', '0639547681', 'Plongeur', '14 Rue alibaba 97680 Combani ', "Appliqué au travail et fais vivre le restaurant", '2015-02-01');


-- Ajout de plusieurs lignes
INSERT INTO equipe (prenom, nom, ville, age)
 VALUES
 ('SAID', 'Armand', 'Saint-Didier-des-Bois', 24),
 ('AHMED', 'Hebert', 'Marigny-le-Châtel', 36),
 ('MAHAMOUD', 'Ribeiro', 'Maillères', 27),
 ('DJANFAR', 'Savary', 'Conie-Molitard', 58);

-- Suppression de d'une ligne
DELETE FROM `equipe`
WHERE `id` = 8


-- Modification d'une ou de plusieurs lignes
UPDATE equipe
SET nom = 'Bernard',
  mail = 'beno976@gmail.com'
WHERE id = 2


UPDATE produit
SET categorie = 'viande'
type_culture = 'non bio'
WHERE id = 1




CREATE TABLE plat (
    plat_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Burger_du_chef VARCHAR(155) NOT NULL, 
    Burger_poulet VARCHAR(155) NOT NULL,  
    sauce VARCHAR(100), 
    Burger_steak VARCHAR(100) NOT NULL,
    Pizza VARCHAR(80) NOT NULL,
    Glace VARCHAR(150) NOT NULL,
    presentation_du_plat VARCHAR(255)
);

--VARCHAR est pour les string equivaut au nombre de caractère utilisable--
--NOT NULL c'est-à-dire qu'il est obligatoire de mettre un champ--
-- Ce champ là n'est pas obligatoire--
-- Voici comment mettre une clé étrangère, j'associe la table fournisseur a la table produit en utilisant l'id_produit !
    -- l'id produit provient de la table produit
    -- REFERENCES indique la table source
CREATE TABLE fournisseur (
    ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR (155) NOT NULL,
    responsable VARCHAR (155) NOT NULL,
    tel VARCHAR (55),
    mail VARCHAR (155) NOT NULL,
    adresse_postale VARCHAR (300),
    FOREIGN KEY (id_produit) REFERENCES produit(id_produit)
);

-- Par default boolean est faux
CREATE TABLE produit (
    id_produit INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR (100) NOT NULL,
    presentation VARCHAR(155),
    prix INT NOT NULL,
    origin VARCHAR (30) NOT NULL,
    categorie VARCHAR (30),
    disponibilite BOOLEAN DEFAULT False, 
    type_culture VARCHAR(30)
    id_fournisseur INT NOT NULL,
    FOREIGN KEY (id_fournisseur) REFERENCES fournisseur (id_fournisseur)
);






INSERT INTO fournisseur (Prix_poulet,Prix_steak,Prix_pizza,Prix_glace,presentation_du_fournisseur,nom_fournisseur) VALUES 
('8.4$ kg', '20$ kg', '8$ unité', '3$ unité', 'Fournissuer acceptant les payment différé mais coriace sur les prix', 'AHMED ABDOU');

--INT c'est pour metrre les chiffres 
CREATE TABLE plat (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_du_plat VARCHAR(155) NOT NULL, 
    ingrédient VARCHAR(155) NOT NULL,  
    prix INT(100) NOT NULL, 
    sauce VARCHAR(100),
    description_du_plat VARCHAR(255)
);

-- Pour les init on mets des point au lieu des virgules pour le prix et on n'itulise pas de devise d'argent ($,£)
INSERT INTO plat (nom_du_plat,ingrédient,prix,sauce,description_du_plat) VALUES 
('Burger spécial du chef', 'salade,tomate,oignon,viande de veau,pain,cornichon', '13.50', 'mayonnaise et piment','Le meilleur plat du chef il le réalise depuis plus de 10 ans.');



-- Pour mettre une clé étrangère avec alter table
alter table fournisseur
add id_produit int not null,
add FOREIGN KEY (id_produit) REFERENCES produit(id_produit);


--Méthode pour supprimer une clé étrangère
--Désactivation de la vérification des clé étrangère
SET FOREIGN_KEY_CHEKS=0;
-- Supprimer la table fournisseur
drop table fournisseur;
-- Réactivation de la clé étrangère
SET FOREIGN_KEY_CHEKS=1;


-- Sélectionner depuis la colonne prix dans la table produit des prix inf a 10
select * from produit where prix < 10 ; -- Un string doit être entre parenthèse

-- Séléctionner depuis la colonne origin dans la table produit un mot qui commence par MAURI
select * from produit where origin like 'Mauri%';

-- Séléctionner depuis la colonne catégorie dans la table produit les viandes
select * from produit where categorie = 'viande';