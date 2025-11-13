<?php
include("INC/composants/header.php");
?>


<h1 class="text-2xl font-extrabold">Liste de mes compétences</h1>

<?php
include("INC/connexion.php");
$requete = 'SELECT * from competences;';
$reponse = $bdd->query($requete);
$competences = $reponse->fetchAll();
?>
<ul class="list-disc pl-6 space-y-2">
    <?php foreach($competences as $c){ ?>
        <li>
            <?php echo $c['nom'] ?> <br>
            <?php echo $c['niveau'] ?> 
        </li>
    <?php } ?>
</ul>
<?php
include("inc/composants/footer.php");
?>