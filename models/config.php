<?php
     function get_db(){
          $connect_user_db = new PDO("mysql:host=localhost;dbname=gundam","root",""); 
          $connect_user_db -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
          return $connect_user_db;
     }
?>