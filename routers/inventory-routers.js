const router = require('express').Router()
const {inventory} = require("../controllers");

// router.get('/', car.getAllCars)
router.get('/', inventory.getAllInventories)
router.delete('/', inventory.resetInventory)
router.post('/', inventory.uploadInventory)

module.exports = router