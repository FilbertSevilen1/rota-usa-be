const router = require('express').Router()
const {user} = require("../controllers");

router.get('/', user.loginUser)

module.exports = router