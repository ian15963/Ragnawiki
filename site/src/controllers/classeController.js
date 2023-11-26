var classeModel = require("../models/classeModel");

const getAllClass = (req, res) =>{

    classeModel.getAllClass().then((data) => {
        if(data.length > 0){
            console.log(data)
            res.json({nome: data});
        }else if(data.length == 0){
            res.status(404).send("Classe não encontrada");
        }
    }).catch(err => console.log(err));

}

const getAllSkills = (req, res) =>{

    var classeId = req.params.id;

    classeModel.getAllSkills(classeId).then((data) =>{
        if(data.length > 0){
            res.json({classe: data})
        }else if(data.length == 0){
            res.status(404).send({"Mensagem":"Classe não encontrada na base de dados"});
        }
    }).catch(err => res.send(500));

}

const getClassInformation = (req, res) => {

    var classeId = req.params.id

    classeModel.getClassInformation(classeId).then(data => {
        if(data.length > 0){
            res.json({information: data})
        }else if(data.length == 0){
            res.status(404).send({"Mensagem":"Não Conseguimos encontrar as informações sobre essa classe."})
        }
    }).catch(err => res.send(500));

}

module.exports = {
    getAllClass,
    getAllSkills,
    getClassInformation
}