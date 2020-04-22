<?php
    ob_start();

?>

<div class="jumbotron">

    <h1 class="display-4">Statistique</h1>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Les commandes clients</h5>
            <p class="card-text">Content</p>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
        <h5 class="card-title">Les articles</h5>
        <p class="card-text">Content</p>
    </div>

</div>


<!-- this DIV will display the chart canvas -->
<div class="chart-container">
  <canvas id="bar-chartcanvas"></canvas>
  <!-- Lien du cdn pour chartjs-->
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
  <!-- Script TEST -->
  <script>
  var ctx = document.getElementById('myChart').getContext('2d');
    var chart = new Chart(ctx, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
        datasets: [{
            label: 'My First dataset',
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: [0, 10, 5, 2, 20, 30, 45]
        }]
    },

    // Configuration options go here
    options: {}
    });
  </script>
</div>





<?php

    $title = "statistique";
    $content = ob_get_clean();
    require 'includes/template_chartjs.php';

?>
