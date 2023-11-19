var express = require("express");
var router = express.Router();

router.get("/", function (req, res) {
    res.render("index");
});

router.get("/classes", (req, res) => {
    res.sendFile(`${__dirname}/public/classes.html`)
})

router.get("/classes/:idClasse", (req, res) => {
    res.sendFile(`${__dirname}/public/classe.html`)
})

router.get("/builds", (req, res) =>{
    res.sendFile(`${__dirname}/public/build/builds.html`)
})

router.get("/build/:idBuild", (req,res) =>{
    res.sendFile(`${__dirname}/public/build/build.html`)
})

router.get("build/newBuild", (req, res) =>{
    res.sendFile(`${__dirname}/public/build/build.html`)
})

module.exports = router;