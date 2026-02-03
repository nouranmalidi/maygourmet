CREATE TABLE equipe (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(155) NOT NULL, --VARCHAR est pour les string equivaut au nombre de caractère utilisable--
    prenom VARCHAR(155) NOT NULL,  --NOT NULL c'est-à-dire qu'il est obligatoire de mettre un champ--
    mail VARCHAR(100), -- Ce champ là n'est pas obligatoire--
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