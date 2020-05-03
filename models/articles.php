<?php

include 'models/config.php';

$sql_demande = "SELECT * FROM produit" ;
$gundam_querry = get_db()->query($sql_demande);  

$list_data = $gundam_querry->fetchAll(PDO::FETCH_ASSOC);

function all_items(){
    global $list_data;
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

function images(){
    $sql_image="SELECT * FROM image ";
    $image_prepare = get_db()->prepare($sql_image);
    $image_prepare->execute();
    $result_image = $image_prepare->fetchAll();
    $image_prepare->closeCursor();
    return $result_image;
}

?>