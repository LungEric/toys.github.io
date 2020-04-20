<?php
// La variable data est une liste contenant l'ensemble des données. 1 élément = 1 donnée.
// A terme, les données seront récupérées depuis une db et injectées dans des objets php

include 'models/config.php';
// Connection DB.

$sql_demande = "SELECT * FROM produit" ;
$gundam_querry = get_db()->query($sql_demande);  

$list_data = $gundam_querry->fetchAll(PDO::FETCH_ASSOC);

function all_items(){
    global $list_data;
    // Pour voir les tableau associatives 
    // echo '<br>'.print_r($list_data).'<br>';
    return $list_data;
}

function item($article){
    $sql_demande = "SELECT * FROM produit" ;
    $gundam_querry = get_db()->query($sql_demande);  
    while($results = $gundam_querry->fetch(PDO::FETCH_ASSOC)){
        if(strtolower($results['produit_name'])==strtolower($article)){
            return $results; 
        }
    }
}


?>