var express = require("express")
var router = express.Router();
var buildController = require("../controllers/buildController")

router.post("/save", (req, res) => {
    buildController.saveBuild(req, res)
})


module.exports = router;