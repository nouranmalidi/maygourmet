// Ici, nous créons nottre application EpressJS

// J'importe le framework ExpressJS
const console = require('console');
const express = require ('express');



// J'initialise une application express
const app = express();


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

  res.render('accueil'); //res.render chercher un fichier dans ./views

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