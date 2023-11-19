var express = require("express")
var router = express.Router();
var buildController = require("../controllers/buildController")

router.post("/save", (req, res) => {
    buildController.saveBuild(req, res)
})

router.put("/update/atributos", (req, res) => {
    buildController.updateBuildAtributos(req,res);
})

router.get("/getAll/:idUsuario", (req,res) =>{
    buildController.getBuilds(req,res)
})

router.get("/getOne/:idBuild", (req, res) => {
    buildController.getBuild(req,res);
})

module.exports = router;