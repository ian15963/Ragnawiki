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
    var nivel = req.body.nivelPersonagem;
    var pontos = req.body.pontosDeAtributos;
    var id = req.body.id;
    var idClasse = req.body.idClasse
    var nomeDaBuild = req.body.nomeBuild

    buildModel.saveBuild(nomeDaBuild,forca, agilidade, vitalidade, inteligencia, destreza, sorte, ataque, ataqueMagico, defesa, defesaMagica, precisao, esquiva, critico, nivel, pontos, id, idClasse).then((data) => {
        if(data.length > 0){
            res.json({build: data})
        }else if(data.length == 0){
            res.status(400).send("Não foi possível salvar a build, por favor verifique os atributos e status");
        }
    }).catch(err => console.log(err))
}

const getBuilds = (req, res) =>{

    var idUsuario = req.params.idUsuario;

    buildModel.getAll(idUsuario).then(data => {
        if(data.length > 0){
            res.json({builds: data});
        }
    })

}

const updateBuildAtributos = (req, res) =>{

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
    var nivel = req.body.nivelPersonagem;
    var pontos = req.body.pontosDeAtributos;
    var idAtributo = req.body.idAtributo;
    var idStatus = req.body.idStatus
    var nome = req.body.nomeBuild;
    var idClasse = req.body.idClasse;
    var idBuild = req.body.idBuild;


    buildModel.updateAtributos(forca, agilidade, vitalidade, inteligencia, destreza, sorte, ataque, ataqueMagico, defesa, defesaMagica, precisao, esquiva, critico, nivel, pontos, idAtributo, idStatus).then((data) => {
        if(data.length > 0){
            buildModel.updateBuild(nome,idClasse, idBuild).then(() => {
                res.status(200).send({"Resposta": "Build Atualizada com sucesso"})
            }
            ).catch(err => console.log(err))
        }else if(data.length == 0){
            res.status(400).send("Não foi possível salvar a build, por favor verifique os atributos e status");
        }
    }).catch(err => console.log(err))

}

const getBuild = (req, res) =>{

    var idBuild = req.params.idBuild;
    var idUsuario = req.headers.id

    buildModel.getOne(idBuild, idUsuario).then(data => {
        if(data.length > 0){
            res.json({build: data})
        }
    });

}

module.exports = {
    saveBuild,
    getBuilds,
    getBuild,
    updateBuildAtributos
}