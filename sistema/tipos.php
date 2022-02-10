<?php
    require_once("../conexao.php");// conexao com o banco de dados
    $sql = "SELECT id, nome FROM tipos";// query para buscar os tipos
    $result = $conexao->query($sql);// resultado da query
    if(!$result = $conexao->query($sql)){// se a query falhar
        $retorno["status"] = 0;// status de erro
        $retorno["qtd"] = 0;// quantidade de tipos
        $retorno["msg"] = "Erro ". $conexao->error;// mensagem de erro
        $retorno["item"] = [];// array de tipos
    }else{// se a query não falhar
        $tmp_array = array();// array temporario
        $retorno["status"] = 1;// status de sucesso
        $retorno["qtd"] = $result->num_rows;// quantidade de tipos
        while($list = $result->fetch_assoc()){// enquanto houver tipos
            array_push($tmp_array, $list);// adiciona o tipo no array
        }
        $retorno["item"] = $tmp_array;// retorna o array
    }
    $json = json_encode($retorno, JSON_UNESCAPED_UNICODE);// converte o array para json
    exit($json);// retorna o json
?>
