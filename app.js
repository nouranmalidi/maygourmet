// Ici, nous créons nottre application EpressJS

// J'importe le framework ExpressJS
const console = require('console');
const express = require ('express');



// J'initialise une application express
const app = express();


// API ROUTE pour la racine 
app.get('/', (req,res) => {   // Pas de next car c'est des route et pas des middleware
    res.write("<h1> Bienvenue chey May Gourmet </h1>");
    res.end();
});


// API ROUTE pour la page d'accueil
app.get('/api/accueil', (req, res) => {
  console.log("Je passe dans /api/accueil");

// Le type d'encodage du texte retourné en réponse
res.writeHead(200, { "content-type": "text/html;charset=utf-8"});

// Le contenu qui sera affiché côté navigateur web
res.write("<p> Je suis à l'accueil<p>");

// Fin de la réponse
res.end();

});

module.exports = app;