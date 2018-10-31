<?php

	//	Connexion à la base de données
	$pdo = new PDO
	(
		'mysql:host=localhost;dbname=prouve;charset=UTF8',
		'ProuveProjet!',
		'DbfAL7d5GmwjSS5R',
	    [
	    	PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
	        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
	    ]
    );