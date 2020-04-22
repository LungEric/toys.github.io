<?php

    require 'models/config.php';

    function get_commande($id){
        $sql = "SELECT * FROM commande WHERE id_c=$id";
        $statement_commande = get_db()->query($sql);
        $statement_commande->execute();
        $statement_commande ->fetch(PDO::FETCH_ASSOC);
        return $statement_commande;
        $statement_commande ->closeCursor();
    }
    function get_articles($id){
        $sql_item_commande = "SELECT * FROM commande_item WHERE id_client_item=$id";
        $statement_commande_item = get_db()->query($sql_item_commande);
        $statement_commande_item->execute();
        $statement_commande_item->fetch(PDO::FETCH_ASSOC);
        return $statement_commande_item;
        $statement_commande_item ->closeCursor();
    }
?>
