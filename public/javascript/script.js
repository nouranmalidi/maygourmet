
    function supprimer(id) {
       const routeComplete = '/api/equipe/'+ id;

       fetch(
        routeComplete, {method: "DELETE"}
       ).then(
        (reponse) => response.json()
       ).then(
        (donnee) => window.location.href = donnee.routeAccueil
       ).catch((erreur) => console.log(erreur)
       )
    };

    // Récupérer le modal
let modal = document.getElementById("myModal");

// Récupérer le bouton qui ouvre le modal
let btn = document.getElementById("myBtn");

// Récupérer l'élement <span> de la classe .close qui ferme le modal
let span = document.getElementsByClassName("close")[0];

// Lorsque l'utilisateur clique sur le bouton, le modal s'ouvre
btn.onclick = function() {
  modal.style.display = "block";
};

// Lorsque je clique en dehors de la fenêtre, la fenêtre se ferme
span.onclick = function() {
  modal.style.display = "none";
}

window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

function modifier(id) {
       const routeComplete = '/api/equipe/'+ id;

       fetch(
        routeComplete, {method: "PUT"}
       ).then(
        (reponse) => response.json()
       ).then(
        (donnee) => window.location.href = donnee.routeAccueil
       ).catch((erreur) => console.log(erreur)
       )
    };


    // Récupération du bouton qui ouvre le modal modification
    let boutonModalModifier = document.querySelectorAll("#boutonModifier");
    
    // Lorsque l'utilisateur clique sur le bouton, le modal s'ouvre
    boutonModalModifier.onclick = function() {
      modal.style.display = "block";
    };
