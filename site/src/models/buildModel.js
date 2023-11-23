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

    console.log(instrucao)

    return database.executar(instrucao);

}

const updateAtributos = (forca, agilidade, vitalidade, inteligencia, destreza, sorte, ataque, ataquem, defesa, defesam, precisao, esquiva, critico, nivel, pontos, idAtributo, idStatus) =>{

    var instrucao = `call atualizarDados(${forca}, ${agilidade}, ${vitalidade}, ${inteligencia}, ${destreza}, ${sorte}, ${ataque}, ${ataquem}, ${defesa}, ${defesam}, ${precisao}, ${esquiva}, ${critico}, ${nivel}, ${pontos}, ${idStatus}, ${idAtributo});`

    console.log(instrucao)

    return database.executar(instrucao);
}

const getOne = (idBuild, idUsuario) =>{

    var instrucao = `SELECT c.idClasse, c.nome as 'nomeClasse', ab.*, sb.*, b.nome as 'nomeBuild', b.descricao FROM build as b JOIN atributos_build as ab ON b.fkAtributo = ab.idAtributo JOIN status_build as sb ON b.fkStatus = sb.idStatus 
    JOIN classe as c ON b.fkClasse = c.idClasse JOIN usuario as u ON u.id = b.fkUsuario WHERE b.idBuild = ${idBuild} AND u.id = ${idUsuario};`;

    return database.executar(instrucao)
}

const saveBuildSkills = (idBuild, idClasse, idStatus, idAtributo, idUsuario, idHabilidade) =>{

    var instrucao = `INSERT INTO habilidades_principais VALUES (${idBuild}, ${idClasse}, ${idStatus}, ${idAtributo}, ${idUsuario}, ${idHabilidade});`;

    console.log(instrucao)
    
    return database.executar(instrucao)
}

const getBuildSkills = (idUsuario, idBuild) =>{

    var instrucao = `SELECT h.* FROM habilidades_principais as hp  JOIN habilidade as h ON hp.fkHabilidade = h.idHabilidade JOIN classe as c ON hp.fkClasse = c.idClasse WHERE hp.fkUsuario = ${idUsuario} AND hp.fkBuild = ${idBuild};
    `

    console.log(instrucao)

    return database.executar(instrucao)
}

const updateDescription = (idBuild, description) => {

    var instrucao = `UPDATE build set descricao = '${description}' WHERE idBuild = ${idBuild}`;

    console.log(instrucao)

    return database.executar(instrucao);

}

const deleteAllSkills = (idBuild) => {

    var instrucao = `DELETE FROM habilidades_principais WHERE fkBuild = ${idBuild}`;

    console.log(instrucao);

    return database.executar(instrucao)

}

const deleteBuild = (idBuild) => {

    var instrucao = `DELETE FROM build WHERE idBuild = ${idBuild}`;

    console.log(instrucao);

    return database.executar(instrucao);

}

const getMetricas = () => {

    var instrucao = `call metricas_build();`;

    return database.executar(instrucao);

}

const getFamousClasses = () =>{

    var instrucao = `SELECT c.nome, count(build.fkClasse) as totalClasse FROM build JOIN classe as c ON build.fkClasse = c.idClasse GROUP BY build.fkClasse 
    ORDER BY count(build.fkClasse) DESC LIMIT 5;`

    console.log(instrucao)

    return database.executar(instrucao);
}

const getFamousHabilitiesPerClass = (idClasse) => {

    var instrucao = `SELECT h.nome FROM habilidades_principais as ph JOIN habilidade as h ON h.idHabilidade = ph.fkHabilidade WHERE ph.fkClasse = ${idClasse} limit 3;
    `;

    console.log(instrucao);

    database.executar(instrucao)
}


module.exports = {
    saveBuild,
    getAll,
    getOne,
    updateAtributos,
    updateBuild,
    saveBuildSkills,
    getBuildSkills,
    updateDescription,
    deleteAllSkills,
    deleteBuild,
    getMetricas,
    getFamousClasses,
    getFamousHabilitiesPerClass
}