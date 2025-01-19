const car = require('./car-controllers');
const brand = require('./brand-controllers')
const wheel = require('./wheel-controllers');
const inventory = require('./inventory-controllers')
const user = require('./user-controllers')
module.exports = {
    car,
    brand,
    wheel,
    inventory,
    user
}