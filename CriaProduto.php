<?php 
	require_once("class/Produto.php");

	$livro = new Produto();

	$livro->nome = "Livro de PHP e POO";

	var_dump($livro);
 ?>