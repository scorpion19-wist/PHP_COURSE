<?php

include "INC/composants/header.php";

?>

<h1 class="text-2xl font-extrabold">Liste de mes compétences</h1>

<?php
include("INC/connexions.php");

$sql_requete = "SELECT * FROM competences";
$resultat = $connexion->query($sql_requete);
$competences = $resultat->fetchAll();

?>

