var database = require("../database/config")

const getAllClass = () =>{

    var instrucao = `SELECT nome, tipo FROM classe;`
    return database.executar(instrucao);
}

// para cada (habilidade): createDiv 


const getAllSkills = (id) =>{
    
    var instrucao = `SELECT h.nome as 'nomeSkill', c.nome as 'nomeClasse', c.descricao FROM classe_habilidade as ch 
    JOIN classe as c ON ch.fkClasse = c.idClasse JOIN habilidade as h ON ch.fkHabilidade = h.idHabilidade 
    WHERE fkClasse=${id};`
    
    console.log(instrucao)
    return database.executar(instrucao);

}

module.exports = {
    getAllClass,
    getAllSkills
}
