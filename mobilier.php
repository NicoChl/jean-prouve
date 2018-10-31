<?php

    include 'bdd_connection.php';

    $pageTitle = 'Mobilier';
    $template = 'mobilierView';
    $file = 'mobilier.php';

    $pdo->exec('SET NAMES UTF8');

    $queryImage = $pdo->prepare(
        'SELECT 
            *
        FROM
            mobilier
        ORDER BY
            date ASC
        ');
    
    $queryImage->execute();
    
    $infoImage = $queryImage->fetchAll(PDO::FETCH_ASSOC);

    include 'templates/layoutView.phtml';


    