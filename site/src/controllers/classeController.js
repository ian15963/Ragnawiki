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

    var classeId = req.headers.id;

    classeModel.getAllSkills(classeId).then((data) =>{
        if(data.length > 0){
            res.json({classe: data})
        }else if(data.length == 0){
            res.status(404).send("Classe não encontrada na base de dados");
        }
    })

}

module.exports = {
    getAllClass,
    getAllSkills
}