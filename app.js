// Ici, nous créons nottre application EpressJS

// J'importe le framework ExpressJS
const console = require('console');
const express = require ('express');

// J'importe le pilote Mysql2 utlisé pour intorroger la BDD MySQL
const mysql2 = require('mysql2');

// J'importe le pilote express-myconnexion utilisé pour se connecter à la BDD
const myConnection = require('express-myconnection');

// J'initialise une application express
const app = express();


// Je configure les éléments attendus pour me connecter à MySQL 
const optionsConnectionBaseDeDonnees = {
  host: "localhost",
  user: "root",
  password: "Sardines123@",
  database: "maygourmet",
  port: "3306"
};

// Middleware pour se connecter à la BDD MySQL, "pool" est une stratégie de connection à la BDD MySQL
app.use(myConnection(mysql2, optionsConnectionBaseDeDonnees, "pool"));

// Je précise que les vues sont dans le dossier views
app.set('views', './views'); 


// Je précise que nous utilisons le moteur EJS pour les vues
app.set('view engine', 'ejs');


// Je précise que j'utilise le dossier 'public' qui contient les fichiers statics
app.use(express.static('public'));

// API ROUTE pour la racine 
app.get('/', (req,res) => {   // Pas de next car c'est des route et pas des middleware
    res.write("<h1> Bienvenue chey May Gourmet </h1>");
    res.end();
});


// API ROUTE pour la page d'accueil
app.get('/api/accueil', (req, res) => {
  console.log("Je passe dans /api/accueil");


// 1. Je me connecte à la BDD grâce à la méthode getConnection()
  req.getConnection((erreur, connection) => {
    if (erreur) { // Je vérifie si il y'a une erreur lors de la connexion à la BDD
      console.log(erreur);
    } else {
      connection.query("SELECT * FROM equipe", [], (err,resultatEquipe) => {
        if (err) {
          console.log("Erreur dans la requête SQL SELECT : ", err);
        } else {
          console.log("Mon équipe : ", resultatEquipe);

          // Je retourne au client le résultat de la requête SQL
          res.render ("equipe", {resultatEquipe});
        }
      });
    }
  });

  //res.render('accueil'); //res.render chercher un fichier dans ./views

  // Le type d'encodage du texte retourné en réponse
//res.writeHead(200, { "content-type": "text/html;charset=utf-8"});

// Le contenu qui sera affiché côté navigateur web
//res.write("<p> Je suis à l'accueil<p>");

// Fin de la réponse
//res.end();

});

// API ROUTE pour la page equipe
app.get('/api/equipe', (req, res) => {
  console.log("Je passe dans /api/equipe");

  res.render('equipe'); //res.render chercher un fichier dans ./views

});




module.exports = app;