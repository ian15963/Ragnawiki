var database = require("../database/config")

const getAllClass = () =>{

    var instrucao = `SELECT idClasse, nome, tipo FROM classe;`
    return database.executar(instrucao);
}

// para cada (habilidade): createDiv 
const getAllSkills = (id) =>{
    
    var instrucao = `SELECT h.nome as 'nomeSkill' FROM classe_habilidade as ch JOIN habilidade as h ON ch.fkHabilidade = h.idHabilidade WHERE ch.fkClasse = ${id};
    ;`
    
    console.log(instrucao)
    return database.executar(instrucao);
}

const getClassInformation = (id) =>{

    var instrucao = `SELECT c.nome as 'nomeClasse', b.*, c.descricao, ca.nome as 'classeAnterior', c.tipo FROM classe as c LEFT JOIN classe as ca ON c.classeAnterior = ca.idClasse JOIN bonus as b ON b.idBonus = c.fkBonus WHERE c.idClasse = ${id}`;
    console.log(instrucao)

    return database.executar(instrucao);

}

module.exports = {
    getAllClass,
    getAllSkills,
    getClassInformation
}
