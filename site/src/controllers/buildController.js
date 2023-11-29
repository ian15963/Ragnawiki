var buildModel = require("../models/buildModel");
var classeModel = require("../models/classeModel")

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
        }else if(data.length == 0){
            res.status(404).send({"Mensagem":"Build não encontrada"})
        }
    }).catch(err => res.sendStatus(500));

}

const saveBuildSkills = (req, res) =>{

    var idAtributo = req.body.idAtributo;
    var idStatus = req.body.idStatus;
    var idClasse = req.body.idClasse;
    var idUsuario = req.body.idUsuario;
    var idBuild = req.body.idBuild;
    var idHabilidade = req.body.idHabilidade;

    buildModel.saveBuildSkills(idBuild, idClasse, idStatus, idAtributo, idUsuario, idHabilidade).then((data) =>{
            if(data.length > 0){
                res.status(201).send("Habilidades salvas com sucesso")
            }
        }
    )

}

const getBuildSkills = (req, res) =>{

    var classeId = req.params.classeId;
    var idUsuario = req.headers.id;
    var idBuild = req.headers.build

    classeModel.getAllSkills(classeId).then((resultado) =>{
        if(resultado.length > 0){
            buildModel.getBuildSkills(idUsuario, idBuild).then((data) => {
                res.json({classe: resultado, mainSkill: data})
            })
        }else if(data.length == 0){
            res.status(404).send("Classe não encontrada na base de dados");
        }
    })

}

const updateDescription = (req, res) => {

    var idBuild = req.body.idBuild;
    var description = req.body.description;

    buildModel.updateDescription(idBuild, description).then(() => {
            res.status(200).send({"Resultado":"Descrição atualizada com sucesso"});
    })

}

const deleteSkills = (req, res) => {

    var idBuild = req.params.idBuild

    buildModel.deleteAllSkills(idBuild).then(data => {
        if(data.length > 0){
            res.status(200).send("Habilidades deletadas com sucesso")
        }
    });

}


const deleteBuild = (req, res) => {

    var idBuild = req.params.idBuild

    buildModel.deleteBuild(idBuild).then(data => {
        if(data.length > 0){
            res.status(200).send("Build deletada com sucesso")
        }
    });

}

const getMetricas = (req, res) => {

    var idClasse = req.params.idClasse;

    buildModel.getMetricas().then(data => {
        if(data.length > 0){
            console.log(data)
            buildModel.getFamousClasses().then(resultado => {
                if(resultado.length > 0){
                    
                    console.log(resultado)
                    res.json({metricas: data, famousClass: resultado});
                }
            })
        }
    })

}

module.exports = {
    saveBuild,
    getBuilds,
    getBuild,
    updateBuildAtributos,
    saveBuildSkills,
    getBuildSkills,
    updateDescription,
    deleteSkills,
    deleteBuild,
    getMetricas
}