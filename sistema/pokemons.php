<?php
    require_once("../conexao.php");// conexao com o banco de dados
    function buscarTiposPokemon($idPokemon, $conexao){// função para buscar os tipos de um pokemon
        $sqlTipos = "SELECT t.id, t.nome, t.cor, t.corTexto FROM tipos t JOIN pokemons_tipos tp ON tp.id_tipo = t.id WHERE tp.id_pokemon = '$idPokemon'";// query para buscar os tipos de um pokemon
        $resultTipos = $conexao->query($sqlTipos);// resultado da query
        $arrayTipos = array();// array para armazenar os tipos
        while($listTipos = $resultTipos->fetch_assoc()){// enquanto houver tipos
            array_push($arrayTipos, $listTipos);// adiciona o tipo no array
        }
        return $arrayTipos;// retorna o array
    }
    $tipo = isset($_GET["tipo"]) ? htmlspecialchars($_GET["tipo"]) : NULL;// verifica se o tipo foi passado por get
    $extraQuery = $tipo ? "WHERE lower(t.nome) = lower('$tipo')" : "";// se o tipo foi passado, adiciona a query
    $sql = "SELECT  p.numero_dex, p.nome, p.img, p.descricao, ant.numero_dex id_anterior, ant.nome anterior, prox.numero_dex id_proximo, prox.nome proximo FROM pokemons p LEFT JOIN pokemons ant ON ant.numero_dex = p.anterior LEFT JOIN pokemons prox ON p.numero_dex = prox.anterior LEFT JOIN pokemons_tipos tp ON tp.id_pokemon = p.numero_dex LEFT JOIN tipos t ON t.id = tp.id_tipo $extraQuery GROUP BY p.numero_dex";// query para buscar os pokemons
    if(!$result = $conexao->query($sql)){// se a query falhar
        //echo "Erro: " . $conexao->error;// mostra o erro
        $retorno["status"] = 0;// status de erro
        $retorno["qtd"] = 0;// quantidade de pokemons
        $retorno["msg"] = "Erro ". $conexao->error;// mensagem de erro
        $retorno["item"] = [];// array de pokemons
    }else{// se a query não falhar
        /*$retorno["status"] = 1;// status de sucesso
        $retorno["qtd"] = $result->num_rows;// quantidade de pokemons
        $retorno["item"] = [];// array de pokemons
        while($list = $result->fetch_assoc()){// enquanto houver pokemons
            $list["tipos"] = buscarTiposPokemon($list["numero_dex"], $conexao);// busca os tipos do pokemon
            array_push($retorno["item"], $list);// adiciona o pokemon no array
        }*/
        $tmp_array = array();// array temporario
        $retorno["status"] = 1;// status de sucesso
        $retorno["qtd"] = $result->num_rows;// quantidade de pokemons
        while($list = $result->fetch_assoc()){// enquanto houver pokemons
            $list["tipos"] = buscarTiposPokemon($list["numero_dex"], $conexao);// busca os tipos do pokemon
            array_push($tmp_array, $list);// adiciona o pokemon no array
        }
        $retorno["item"] = $tmp_array;// retorna o array
    }
    $json = json_encode($retorno, JSON_UNESCAPED_UNICODE);// converte o array para json
    exit($json);// retorna o json
?>