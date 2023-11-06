var database = require("../database/config")

const getAllClass = () =>{

    var instrucao = `SELECT nome, tipo FROM classe;`
    return database.executar(instrucao);
}

// para cada (habilidade): createDiv 


const getAllSkills = (id) =>{
    
    var instrucao = `SELECT h.nome as 'nomeSkill', c.nome as 'nomeClasse', c.descricao FROM habilidade as h 
    JOIN classe as c ON h.fkClasse = c.idClasse WHERE h.fkClasse = ${id};`;
    
    console.log(instrucao)
    return database.executar(instrucao);

}

module.exports = {
    getAllClass,
    getAllSkills
}
