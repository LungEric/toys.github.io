<?php
    ob_start();
?>

<div class="jumbotron jumbotron-fluid" method="post" >
        <h1 class="display-4">Catalogue des produits</h1>
        <hr class="my-4">
        <?php foreach($list as $article_shop):?>
            <form method="post">
                <div class="card text-center " >
                    <div class="card-header" name="produit" value="<?=$article_shop['produit_name']?>">
                        <?=$article_shop['produit_name']?>
                    </div>
                    <?php
                        foreach($img_shop as $k=>$shop){
                            if($article_shop['produit_name']==$shop['nom']){
                                $shop_image = $shop['image'];
                            }
                        }
                    ?>
                    <!-- Image -->
                    <div> 
                        <img src="<?php echo ROOT_PATH.'images/'. $shop_image?>" alt="myPic" width='200' />
                    </div>
                    <div class="card-body">
                        <h5 class="card-title" name="prix" value="<?=$article_shop['produit_price']?>" ><?=$article_shop['produit_price'].'€'?></h5>
                        <p class="card-text"><?=$article_shop['produit_description']?></p>
                    </div>
                    <div class="cart-action">
                    <div >
                        <input class="input_display" name="quantite" type="number" value="<?=$value['quantite'];?>" min="1" max="
">
                    </div>
                        <input type="hidden" name="ref_id" value="<?=$article_shop['id_produit']?>"/>
                        <input type="submit" name="ajouter" value="ajouter" class="btnAddAction" />
                    </div>
                </div>
            </form>
        <?php endforeach?>
        </div>
</div>

<!--  -->
<!-- Panier -->
<!--  -->
<div class="jumbotron jumbotron-fluid">
    <h1 >Shopping cart</h1>
    <table cellpadding="10" cellspacing="1">
    <tbody>
        <tr>
            <th style="text-align:left;">Nom</th>
            <th style="text-align:left;">Reférece produit</th>
            <th style="text-align:right;" width="5%">Quantité</th>
            <th style="text-align:right;" width="10%">Prix</th>
            <th style="text-align:right;" width="10%">Total quantité</th>
            <th style="text-align:right;" width="10%">Total</th>
        </tr>
        <?php if(isset($_SESSION['panier'])&&!empty($_SESSION['panier'])){?>
        <?php foreach($_SESSION['panier'] as $key => $valeur):?>
        <tr>
            <td style="text-align:left;"><?php print $valeur['nom']?></td>
            <td style="text-align:left;"><?php print $valeur['ref']?></td>
            <td style="text-align:right;" width="5%"><?php print $valeur['quantite']?> </td>
            <td style="text-align:right;" width="10%"><?php print $valeur['prix']?> €</td>
            <td style="text-align:right;" width="10%"><?php print $total_quantité = $valeur['quantite']?></td>
            <td style="text-align:right;" width="10%"><?php print $total_prix = $valeur['quantite']*$valeur['prix']?>€</td>
            <td>
                <form method="post">
                    <input type="hidden" name="remove_ref" value="<?=$valeur['ref']?>"/>
                    <input type="submit" value="retirer" class="btnAddAction" />
                </form>
            </td>
        </tr>   
    </tbody>
    <?php $total_panier += $total_prix?>  
    <?php endforeach ?>
    <?php }?>
    <form method="post">
        <div>
            <th >Total du panier</th>
            <td style="text-align:right;" width="10%"><?php if(isset($total_panier)){echo $total_panier;$_SESSION['total'] = $total_panier;}?> €</td>
        </div>
        <td>
            <input type="submit" name="valider" value="valider" class="btnAddAction" />
        </td> 
        <td>
            <input type="submit" name="vider" value="vider" class="btnAddAction" />
        </td> 
    </form>
</div>
<?php
    $title = "shopping_cart";
    $content = ob_get_clean();
    require 'includes/template.php';
?>
