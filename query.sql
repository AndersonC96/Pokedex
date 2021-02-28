SELECT  p.numero_dex,
        p.nome,
        p.img,
        p.descricao,
        GROUP_CONCAT(t.nome) tipos,
        ant.numero_dex id_anterior,
        ant.nome anterior,
        prox.numero_dex id_proximo,
        prox.nome proximo 
FROM pokemons p 
LEFT JOIN pokemons ant ON ant.numero_dex = p.anterior 
LEFT JOIN pokemons prox ON p.numero_dex = prox.anterior 
LEFT JOIN pokemons_tipos tp ON tp.id_pokemon = p.numero_dex 
LEFT JOIN tipos t ON t.id = tp.id_tipo 
GROUP BY p.numero_dex;