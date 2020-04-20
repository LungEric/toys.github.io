<?php
    ob_start();
?>

<div class="jumbotron jumbotron-fluid" method="post" >
        <h1 class="display-4">Mes commandes passées</h1>
        <hr class="my-4">
        <?php foreach($list as $article_shop):?>
            <form method="post">
                <div class="card text-center " >
                    <div class="card-header" name="produit" value="<?=$article_shop['produit_name']?>">
                        <?=$article_shop['produit_name']?>
                    </div>
                    <div name="image" value="<?php echo ROOT_PATH.'images/'.$article_shop['produit_image']?>"> 
                        <img src="<?php echo ROOT_PATH.'images/'.$article_shop['produit_image']?>" alt="myPic" width='200' />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title" name="prix" value="<?=$article_shop['produit_price']?>" ><?=$article_shop['produit_price'].'€'?></h5>
                        <p class="card-text"><?=$article_shop['produit_description']?></p>
                    </div>
                    <div class="cart-action">
                    <div >
                        <input class="input_display" name="quantite" type="number" value="<?=$value['quantite'];?>" min="1" max="
                        <?php if($current_max_input_value == 0){ echo $max_input_number; }else{ echo $current_max_input_value; };?>">
                    </div>
                        <input type="hidden" name="ref_id" value="<?=$article_shop['id_produit']?>"/>
                        <input type="submit" name="ajouter" value="ajouter" class="btnAddAction" />
                    </div>
                </div>
            </form>
        <?php endforeach?>
        </div>
</div>

<?php
    $title = "shopping_cart";
    $content = ob_get_clean();
    require 'includes/template.php';
?>
