arrayPokemons = [];
arrayTipos = [];
urlBackend = 'http://localhost/Pokedex/sistema/pokemons.php';
urlImagem = 'http://localhost/Pokedex/frontend/img/pokes/';
urlTreinadores = 'http://localhost/Pokedex/frontend/img/trainers/';
visualizados = 0;
battleVisualization = [5, 10, 15, 20, 25, 30];
treinadores = [
    {
        nome: 'Lucas',
        img: 'missingno.jpg',
        link: 'https://www.youtube.com/lucasdev',
    },
    {
        nome: 'Felipe Deschamps',
        img: 'deschamps.gif',
        link: 'https://www.youtube.com/channel/UCU5JicSrEM5A63jkJ2QvGYw',
    },
    {
        nome: 'Codigo Fonte TV',
        img: 'codigofonte.gif',
        link: 'https://www.youtube.com/user/codigofontetv',
    },
    {
        nome: 'Fábio Akita',
        img: 'akita.gif',
        link: 'https://www.youtube.com/user/AkitaOnRails',
    },
    {
        nome: 'Paulo Torrens',
        img: 'pauloTorrens.gif',
        link: 'https://www.facebook.com/groups/osadpa/',
    }
];
$(function(){
    carregarDados();// carrega os dados do backend
    openNav();// abre o menu
});
function startBattle(){// inicia o audio de batalha
    const audio = document.getElementById('battle');// audio de batalha
    audio.play();// inicia o audio
    const treinador = treinadores[Math.floor(Math.random()*treinadores.length)];// escolhe um treinador aleatoriamente
    const modal = $(".modal-body");// modal de batalha
    const batalha = `<h1>Um ${treinador.nome} selvagem apareceu</h1>
                        <img src="${urlTreinadores}/${treinador.img}"/>
                        <div class="entre-botoes">
                        <a class="btn btn-success" href="${treinador.link}" target="_blank">Conhecer</a>
                        <button class="btn btn-light" onclick="stopBattle();">Fugir</button>
                        </div>`;
    modal.html(batalha);
    $("#modal").fadeIn();
}
function stopBattle(){// para o audio de batalha
    const audio = document.getElementById('battle');// audio de batalha
    audio.currentTime = 0;// volta o audio para o inicio
    audio.pause();// pausa o audio
    $(".modal-body").html('');// limpa o modal
    $("#modal").fadeOut();// esconde o modal
}
function arrayFilter(){// filtra os pokemons de acordo com o tipo selecionado
    const buscaEl = $("#busca");// elemento de busca
    const busca = buscaEl.find("input").val().trim();// valor de busca
    const tipoSelect = buscaEl.find("select").val();// valor do select
    const lista = arrayPokemons// lista de pokemons
        .filter(pokemon => {// filtra os pokemons
            const nome = pokemon.nome.toUpperCase();// converte o nome do pokemon para maiusculo
            const pesquisa = busca.toUpperCase();// converte a busca para maiusculo
            return nome.indexOf(pesquisa) > -1;// retorna true se o nome do pokemon contem a busca
        })
        .filter(pokemon =>{// filtra os pokemons
            const tipos = pokemon.tipos// lista de tipos do pokemon
                .map(tipo => tipo.id);// converte os tipos do pokemon para um array de ids
            return tipos.find(tipo => tipo === tipoSelect || tipoSelect === 'todos');// retorna true se o tipo do pokemon for igual ao selecionado ou se o tipo selecionado for todos
        });// retorna um array de pokemons
    return lista;// retorna o array de pokemons filtrado
};
function openNav(){
    $("#menu").css('width', '100%');// abre o menu
    $("#menu").css('margin-right', '0px');
}
function closeNav(){
    $("#menu").css('width', '0');// fecha o menu
    $("#menu").css('margin-right', '-40px');
}
function criarTipos(){
    const select = $("#busca").find("select");// select de tipos
    select.html('');// limpa o select
    let tipos = "<option value='todos' selected>TODOS</option>";// opção todos
    arrayTipos.forEach(tipo =>{// percorre os tipos
        tipos += `<option value='${tipo.id}'>${tipo.nome}</option>`;// adiciona o tipo no select
    });
    select.html(tipos);// adiciona o select no html
}
function criarTabela(){// cria a tabela de pokemons
    const tbody = $("#lista").find("table").find("tbody");// tbody da tabela
    tbody.html('');// limpa o tbody
    let pokemonsTr = '';// string de pokemons
    const lista = arrayFilter();// lista de pokemons filtrados
    if(lista.length === 0){// se não houver pokemons
        pokemonsTr = `<tr>
                        <td colspan="2" style="text-align: center;">
                            Sem Registros
                        </td>
                    </tr>`;
    }else{// se houver pokemons
        lista.forEach(pokemon =>{// percorre os pokemons
            pokemonsTr += `<tr onclick="abrirDetalhesPokemon($(this))" key="${pokemon.numero_dex}">
                            <td>#${pokemon.numero_dex}</td>
                            <td class='nomePokemon'>${pokemon.nome}</td>
                            </tr>`;
        });
    }
    tbody.html(pokemonsTr);
}
function abrirDetalhesPokemon(tr){
    const numeroDex = tr.attr("key");
    const pokemon = arrayPokemons
        .find(pokemon => Number(pokemon.numero_dex) === Number(numeroDex));
    if(!pokemon){
        console.log(`pokemon ${numeroDex} não encontrado`);
        return false;
    }
    $("td").removeClass("pokemonSelecionado");
    tr.find("td").addClass("pokemonSelecionado");
    visualizados++;// incrementa o numero de visualizações
    if(battleVisualization.indexOf(visualizados) > -1){// se o numero de visualizações for igual a um dos numeros de batalhas
        startBattle();// inicia o audio de batalha
    }
    escreverNaTela(pokemon);// escreve o pokemon na tela
    closeNav();// fecha o menu
}
function pesquisarPorTipo(tipoId){// pesquisa por tipo
    $("#busca").find("select").val(tipoId);// seleciona o tipo
    criarTabela();// cria a tabela
    openNav();// abre o menu
}
function carregarDados(){// carrega os dados do json
    $.ajax({// requisita os dados do json
        url: `${urlBackend}/pokemons`,// url do json
        dataType: 'JSON',// tipo de dados
        success: function (result){// se o json for carregado com sucesso
            if (result.status === 0){// se o status for 0
                console.log(result.msg);// imprime a mensagem de erro
                return;// retorna
            }
            arrayPokemons = result.item;// atribui o array de pokemons
            criarTabela();// cria a tabela
        }
    });
    $.ajax({// requisita os dados do json
        url: `http://localhost/Pokedex/sistema/tipos.php`,
        dataType: 'JSON',
        success: function (result){
            if(result.status === 0){// se o status for 0
                console.log(result.msg);// imprime a mensagem de erro
                return;// retorna
            }
            arrayTipos = result.item;// atribui o array de tipos
            criarTipos();// cria o select de tipos
        }
    });
}
function escreverNaTela({// escreve o pokemon na tela
    numero_dex,
    nome,
    img,
    descricao,
    id_anterior,
    anterior,
    id_proximo,
    proximo,
    tipos,
}){// recebe o pokemon
    const titulo = `${nome} - #${numero_dex}`;// titulo do pokemon
    if(anterior){// se o pokemon tiver um anterior
        const pokemonAnterior = anterior ? anterior : "Nenhum";// pokemon anterior
        const linkAnterior = anterior ? `abrirDetalhesPokemon($("tr[key='${id_anterior}']"))` : "";// link do pokemon anterior
        $("#evoluiDe").find("span").text(pokemonAnterior);// escreve o pokemon anterior
        $("#evoluiDe").find("span").attr("onclick", linkAnterior);// escreve o link do pokemon anterior
        $("#evoluiDe").find("span").addClass('evolucoesPokemon');// adiciona a classe de evolução
    }else{// se o pokemon não tiver um anterior
        $("#evoluiDe").find("span").html('NENHUM');// escreve o pokemon anterior
        $("#evoluiDe").find("span").attr('onclick', '');// escreve o link do pokemon anterior
        $("#evoluiDe").find("span").removeClass('evolucoesPokemon');// remove a classe de evolução
    }
    if(proximo){// se o pokemon tiver um proximo
        const pokemonProximo = proximo ? proximo : "Nenhum";// pokemon proximo
        const linkProximo = proximo ? `abrirDetalhesPokemon($("tr[key='${id_proximo}']"))` : "";// link do pokemon proximo
        $("#evoluiPara").find("span").text(pokemonProximo);// escreve o pokemon proximo
        $("#evoluiPara").find("span").attr("onclick", linkProximo);// escreve o link do pokemon proximo
        $("#evoluiPara").find("span").addClass('evolucoesPokemon');// adiciona a classe de evolução
    }else{// se o pokemon não tiver um proximo
        $("#evoluiPara").find("span").html('NENHUM');// escreve o pokemon proximo
        $("#evoluiPara").find("span").attr('onclick', '');// escreve o link do pokemon proximo
        $("#evoluiPara").find("span").removeClass('evolucoesPokemon');// remove a classe de evolução
    }
    let tiposSpan = '';// tipos do pokemon
    tipos.forEach(tipo =>{// percorre os tipos do pokemon
        const cor = tipo.cor ? `background-color: ${tipo.cor};` : '';// cor do tipo
        const corTexto = tipo.corTexto ? `color: ${tipo.corTexto};` : '';// cor do texto do tipo
        const style = `style="${cor} ${corTexto}"`;// estilo do tipo
        tiposSpan += `<span onclick="pesquisarPorTipo(${tipo.id})" ${style}>
                                ${tipo.nome}
                    </span>`;// adiciona o tipo no span
    });
    $("#titulo").text(titulo);// escreve o titulo do pokemon
    $("#imagem").find("img").attr("src", `${urlImagem}/${img}`);// escreve a imagem do pokemon
    $("#descricao").text(descricao);// escreve a descrição do pokemon
    $("#tipos").html(tiposSpan);// escreve os tipos do pokemon
}