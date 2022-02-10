<?php
    $servidor = "localhost";// servidor
    $usuario = "root";// usuario
    $senha = "";// senha
    $banco = "pokedex";// banco de dados
    $conexao = new mysqli($servidor, $usuario, $senha, $banco);// conexao com o banco de dados
    if(mysqli_connect_errno()){// se houver erro na conexao
        trigger_error((mysqli_connect_error()));// dispara o erro
            exit();// encerra a execucao
        }
        mysqli_set_charset($conexao, 'utf8');// seta o charset
?>