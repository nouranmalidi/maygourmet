
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

function modifier(params) {
    if (!modal) {
        console.error("Modal not found");
        return;
    }
    const [id, nom, prenom, mail, tel, poste, adresse, pres, date] = params;
    
    modal.style.display = "block";
    
    document.getElementById("id").value = id;
    document.getElementById("nom").value = nom;
    document.getElementById("prenom").value = prenom;
    document.getElementById("mail").value = mail;
    document.getElementById("telephone").value = tel;
    document.getElementById("poste").value = poste;
    document.getElementById("a_postale").value = adresse;
    document.getElementById("presentation").value = pres;
    if(date) {
        document.getElementById("d_recrutement").value = date;
    }
};


