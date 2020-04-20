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
    function get_articles(){
        
    }
?>