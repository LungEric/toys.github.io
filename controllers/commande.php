<?php

    require 'models/commande.php';

    $list_commande_user = get_commande($_SESSION['id']);


    require 'views/commande.php';

?>