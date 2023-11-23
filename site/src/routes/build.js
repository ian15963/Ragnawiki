var express = require("express")
var router = express.Router();
var buildController = require("../controllers/buildController")

router.post("/save", (req, res) => {
    buildController.saveBuild(req, res)
})

router.post("/skills", (req, res) =>{
    buildController.saveBuildSkills(req,res);
})

router.get("/get/metricas/:idClasse", (req, res) => {
    buildController.getMetricas(req, res)
})

router.put("/update/atributos", (req, res) => {
    buildController.updateBuildAtributos(req,res);
})

router.put("/update/descricao", (req, res) => {
    buildController.updateDescription(req, res);
})

router.delete("/delete/skills/:idBuild", (req, res) => {
    buildController.deleteSkills(req, res);
})

router.delete("/delete/:idBuild", (req, res) => {
    buildController.deleteBuild(req,res);
})

router.get("/getAll/:idUsuario", (req,res) =>{
    buildController.getBuilds(req,res)
})

router.get("/getOne/:idBuild", (req, res) => {
    buildController.getBuild(req,res);
})

router.get("/skills/:classeId", (req,res) => {
    buildController.getBuildSkills(req,res);
})

module.exports = router;