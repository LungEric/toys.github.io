<?php
    ob_start (); 
?>
<div class="jumbotron">
    <h1 class="display-4">Bienvenue , sur le site de vente de jouet</h1>
    <p class="lead">Ici nous vendons les jouets Gundam </p>
    <a type="button" class="btn btn-primary" href="<?=ROOT_PATH?>article">Catalogue des articles</a>
</div>

<?php
$title="Bienvenue";
$content=ob_get_clean();
include 'includes/template.php';
?>
