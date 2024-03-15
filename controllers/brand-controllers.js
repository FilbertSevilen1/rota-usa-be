const database = require("../config").promise()
const bcrypt = require("bcrypt");

module.exports.getAllBrands = async(req,res) =>{
    try{
        const GET_ALL_BRANDS = "SELECT * FROM brands"
        const [BRANDS] = await database.execute(GET_ALL_BRANDS)
        res.status(200).send(BRANDS)
    }
    catch(error){
        console.log('error : ',error);
        res.status(500).send(`Internal service error: ${error}`)
    }
}