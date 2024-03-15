const router = require('express').Router()
const {car} = require("../controllers");

// router.get('/', car.getAllCars)
router.get('/', car.getAllCarsImage)

module.exports = router