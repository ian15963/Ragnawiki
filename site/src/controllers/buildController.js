var buildModel = require("../models/buildModel");

const saveBuild = (req, res) => {

    var forca = req.body.forcaPersonagem;
    var agilidade = req.body.agilidadePersonagem;
    var vitalidade = req.body.vitalidadePersonagem;
    var inteligencia = req.body.inteligenciaPersonagem;
    var destreza = req.body.destrezaPersonagem;
    var sorte = req.body.sortePersonagem;
    var ataque = req.body.ataquePersonagem;
    var ataqueMagico = req.body.ataqueMagicoPersonagem;
    var defesa = req.body.defesaPersonagem;
    var defesaMagica = req.body.defesaMagicaPersonagem;
    var precisao = req.body.precisaoPersonagem;
    var esquiva = req.body.esquivaPersonagem;
    var critico = req.body.criticoPersonagem;


    buildModel.saveBuild(forca, agilidade, vitalidade, destreza, sorte, ataque, ataqueMagico, defesa, defesaMagica, precisao, esquiva, critico).then((data) => {
        if(data.length > 0){
            res.json({build: data})
        }else if(data.length == 0){
            res.status(400).send("Não foi possível salvar a build, por favor verifique os atributos e status");
        }
    }).catch(err => console.log(err))


}

module.exports = {
    saveBuild
}