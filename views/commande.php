<?php
    ob_start();
?>

<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">Utilisateur</h5>
    <p class="card-text">User:<?= $_SESSION['user']?></p>
    <p>ID=<?= $_SESSION['id'] ?></p>
    <p></p>
  </div>
</div>
<div class="jumbotron jumbotron-fluid" method="post">
        <h1 class="display-4">Mes commandes:</h1>
        <hr class="my-4">
        <table>
            <tr>
                <th style="text-align:left;"> Total: </th>
                <th style="text-align:center;" > Date: </th>
            </tr>
            <tbody>
                <?php foreach($list_commande_user as $k=>$commande):?>
                    <tr>
                        <td style="text-align:left;"><?=$commande['total']?>€</td>
                        <td style="text-align:center;"> <?=$commande['date_commande']?></td>       
                    </tr> 
                <?php endforeach?>
            </tbody>
        </table>
        
</div>

<?php
    $title = "shopping_cart";
    $content = ob_get_clean();
    require 'includes/template.php';
?>

