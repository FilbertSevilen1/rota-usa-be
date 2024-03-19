const router = require('express').Router()
const {wheel} = require("../controllers");

// router.get('/', car.getAllCars)
router.get('/', wheel.getAllWheels)
router.post('/', wheel.getWheelById)

module.exports = router