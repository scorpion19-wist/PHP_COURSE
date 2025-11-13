<?php
include("INC/composants/header.php");
?>
<h1 class="text-2xl font-extrabold"> mes compétences </h1>
<?php
include("INC/connexions.php");
$sql_requete = 'SELECT * FROM competences;';
$resultat = $bdd->query($sql_requete);
$competences = $resultat->fetchAll();

?>
<ul class="list-disc pl-6 space-y-2">
    <?php foreach ($competences as $c) { ?>
        <li>
            <?php echo $c['nom']; ?> <br>
            <?php echo $c['niveau']; ?>
        </li>
    <?php } ?>
</ul>

<?php
include("INC/composants/footer.php");

?>