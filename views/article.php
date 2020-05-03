<?php ob_start() ?>

<?php if(isset($item))?>
<div  class="card border-success mb-3 w-50" >
    <?php foreach($image_prod as $k=>$img_prod){if($item['produit_name']==$img_prod['nom']){$img = $img_prod['image'];}}?>
    <!-- nouvelle carte -->
    <img src="<?php echo ROOT_PATH.'images/'.$img?>" class="card-img-top" alt="<?= $item['produit_name']?>">    
    <div class="card-body">
        <h5 class="card-title">Nom</h5>
        <p class="card-text"><?= $item['produit_name']?></p>
        <h5 class="card-title">Prix</h5>
        <p class="card-text"><?= $item['produit_price'].'€'?></p>
    </div>
    <div class="card-footer bg-transparent border-success">
        <h5 class="card-title">Description</h5>
        <p class="card-text"><?= $item['produit_description']?></p>
    </div>
</div>



<?php
$title=$item['produit_name'];
$content = ob_get_clean();
include 'includes/template.php';
?>

