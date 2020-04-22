<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="<?=ROOT_PATH?>public/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?=ROOT_PATH?>public/css/sticky-footer-navbar.css">
        <script src="<?=ROOT_PATH?>public/js/jquery-3.4.1.slim.min.js"></script>
        <script src="<?=ROOT_PATH?>public/js/popper.min.js"></script>
        <script src="<?=ROOT_PATH?>public/js/bootstrap.min.js"></script>
        <title><?php echo $title; ?></title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark">
            <a class="navbar-brand" href="<?=ROOT_PATH?>">Gundam Toys</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<?=ROOT_PATH?>article">Les articles</a></li>
                </ul>
            </div>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<?=ROOT_PATH?>about">about</a></li>
                </ul>
            </div>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<?=ROOT_PATH?>inscription">Inscription</a></li>
                </ul>
            </div>
            <?php if(empty($_SESSION['user'])):?>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<?=ROOT_PATH?>login">Connection</a></li>
                </ul>
            </div>
            <?php elseif($_SESSION['user']=="admin"):?>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<?=ROOT_PATH?>admin">administrateur</a></li>
                </ul>
            </div>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<?=ROOT_PATH?>statistique">statistique</a></li>
                </ul>
            </div>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<?=ROOT_PATH?>logout">Déconnection</a></li>
                </ul>
            </div>
            <?php else:?>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<?=ROOT_PATH?>shopping_cart">Shopping cart</a></li>
                </ul>
            </div>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<?=ROOT_PATH?>commande">commandes</a></li>
                </ul>
            </div>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<?=ROOT_PATH?>logout">Déconnection</a></li>
                </ul>
            </div>
            <!-- Voir pour le bouton quand on est connecter -->
            <span class="oi oi-aperture" title="icon name" aria-hidden="true" alt="connected"></span>
            <?php endif?>
        </nav>
        <main role="main" class="container">
        <?php
            echo $content 
        ?>
        <!-- Code test pour le bootstrap -->
            <!-- <div class="card w-50 p-3">
            <div class="card-body">
                <h5 class="card-title">Hello world</h5>
                <p class="card-text">Content</p>
            </div> -->
        <!-- javascript to run ChartJS with SQL data (JS to generate chart must come AFTER canvas HTML) -->
        <script src="bar.js"></script>
        </div>
        </main>
        <footer class="footer">
            <div class="container">
                <span class="text-muted">Gundam Toys</span>
            </div>
        </footer>
    </body>
</html>