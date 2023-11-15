var express = require("express")
var router = express.Router();

var classeController = require("../controllers/classeController")

router.get("/all-classes", (req, res) => {
    classeController.getAllClass(req, res);
})

router.get("/skills/:id", (req, res) => {
    classeController.getAllSkills(req,res);
})

router.get("/information/:id", (req, res) => {
    classeController.getClassInformation(req, res);
})

module.exports = router;