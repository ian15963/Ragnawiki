var database = require("../database/config");


const saveBuild = (forca, agilidade, vitalidade, destreza, sorte, ataque, ataquem, defesa, defesam, precisao, esquiva, critico) => {    
    var instrucao = `call inserirDados(${forca}, ${agilidade}, ${vitalidade}, ${destreza}, ${sorte}, ${ataque}, ${ataquem}, ${defesa}, ${defesam}, ${precisao}, ${esquiva}, ${critico});`

    console.log(instrucao)
    return database.executar(instrucao);
}


module.exports = {
    saveBuild
}