var database = require("../database/config");


const saveBuild = (nome, forca, agilidade, vitalidade, inteligencia, destreza, sorte, ataque, ataquem, defesa, defesam, precisao, esquiva, critico, nivel, pontos, id, idClasse) => {    

    var instrucao = `call inserirDados('${nome}',${forca}, ${agilidade}, ${vitalidade}, ${inteligencia},${destreza}, ${sorte}, ${ataque}, ${ataquem}, ${defesa}, ${defesam}, ${precisao}, ${esquiva}, ${critico}, ${nivel}, ${pontos}, ${id}, ${idClasse});`

    console.log(instrucao)
    return database.executar(instrucao);
}

const getAll = (id) =>{

    var instrucao = `SELECT b.nome as 'nomeBuild', c.nome as 'nomeClasse', b.idBuild FROM build as b JOIN classe as c ON b.fkClasse = c.idClasse WHERE b.fkUsuario = ${id};`;

    return database.executar(instrucao);
}

const updateBuild = (nome, idClasse, idBuild) =>{

    var instrucao = `UPDATE build set nome = '${nome}', fkClasse = ${idClasse} WHERE idBuild = ${idBuild};`

    return database.executar(instrucao);

}

const updateAtributos = (forca, agilidade, vitalidade, inteligencia, destreza, sorte, ataque, ataquem, defesa, defesam, precisao, esquiva, critico, nivel, pontos, idAtributo, idStatus) =>{

    var instrucao = `call atualizarDados(${forca}, ${agilidade}, ${vitalidade}, ${inteligencia}, ${destreza}, ${sorte}, ${ataque}, ${ataquem}, ${defesa}, ${defesam}, ${precisao}, ${esquiva}, ${critico}, ${nivel}, ${pontos}, ${idStatus}, ${idAtributo});`

    return database.executar(instrucao);
}

const getOne = (idBuild, idUsuario) =>{

    var instrucao = `SELECT c.idClasse, c.nome as 'nomeClasse', ab.*, sb.*, b.nome as 'nomeBuild' FROM build as b JOIN atributos_build as ab ON b.fkAtributo = ab.idAtributo JOIN status_build as sb ON b.fkStatus = sb.idStatus 
    JOIN classe as c ON b.fkClasse = c.idClasse JOIN usuario as u ON u.id = b.fkUsuario WHERE b.idBuild = ${idBuild} AND u.id = ${idUsuario};`;

    return database.executar(instrucao)
}

const saveBuildSkills = () =>{
    
}


module.exports = {
    saveBuild,
    getAll,
    getOne,
    updateAtributos,
    updateBuild
}