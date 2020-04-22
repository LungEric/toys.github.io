<?php

    require 'models/config.php';

    function show_client(){
        $client = "SELECT * FROM client";
        $statement_client = get_db()->query($client);
        $statement_client->execute();
        $statement_client->fetch(PDO::FETCH_ASSOC);
        return $statement_client;
        $statement_client->closeCursor();
    }

    function stat_commande(){
        $commande_st = "SELECT * FROM commande";
        $req_commande = get_db()->query($commande_st);
        $req_commande->execute();
        $req_commande->fetch(PDO::FETCH_ASSOC);
        return $req_commande;
        $req_commande->closeCursor();
    }
    function stat_articles(){
        $item_commande_sql = "SELECT * FROM commande_item";
        $req_commande_item = get_db()->query($item_commande_sql);
        $req_commande_item ->execute();
        $req_commande_item ->fetch(PDO::FETCH_ASSOC);
        return $req_commande_item ;
        $req_commande_item ->closeCursor();
    }

?>