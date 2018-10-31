<?php

    include 'bdd_connection.php';

    $pdo->exec('SET NAMES UTF8');

    $queryFurniture = $pdo->prepare(
        'SELECT 
            *
        FROM
            mobilier
        ');
    
    $queryFurniture->execute();
    
    $infoFurniture= $queryFurniture->fetchAll();

    $myJSON = json_encode($infoFurniture);

    echo $myJSON;


  
