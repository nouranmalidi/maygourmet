// Ici je vais codder mon serveur
// require ressemble a import pour importer un module. 
// Le module HTTP est stocké dans la variable http.

const http = require('http') // C'est http qui va créer un serveur

// J'importe l'application express app.js
const app = require('./app');


const numeroPort = 3004;

const serveur = http.createServer(app);

serveur.listen(numeroPort, ()=> {
    console.log("Le serveur de MayGourmet est à l'écoute sur le port", numeroPort)
})

