
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

let modal = document.getElementById("myModal");

let btn = document.getElementById("myBtn");

let span = document.getElementsByClassName("close")[0];

btn.onclick = function() {
  modal.style.display = "block";
}

span.onclick = function() {
  modal.style.display = "none";
}

window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

