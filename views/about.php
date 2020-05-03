<?php
    ob_start(); 
?>

<<div class="jumbotron">
    <h1 class="display-4">About</h1>
    <p class="lead">Bienvenue sur le Gundam shop ou on vent des maquettes Gundam pour les Connaisseurs</p>
</div>

<?php
    $title = "About la société" ;
    $content = ob_get_clean(); 
    include 'includes/template.php'; 
?>