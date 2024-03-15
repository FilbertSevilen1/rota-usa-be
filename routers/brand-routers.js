const router = require('express').Router()
const {brand} = require("../controllers");

router.get('/', brand.getAllBrands)

module.exports = router