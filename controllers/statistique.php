<?php

    require 'models/statistique.php';

    $clients=show_client();
    $facture=stat_commande();
    $produit_commander=stat_articles();

    require 'views/statistique.php';

?>
