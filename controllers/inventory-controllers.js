const database = require("../config").promise()
const bcrypt = require("bcrypt");

module.exports.getAllInventories = async(req,res) =>{
    try{
        const GET_ALL_INVENTORIES = "SELECT item_name as Name, item_stock as Stock FROM inventories"
        const [BRANDS] = await database.execute(GET_ALL_INVENTORIES)
        
        res.status(200).send(BRANDS)
        // await database.end();
    }
    catch(error){
        console.log('error : ',error);
        res.status(500).send(`Internal service error: ${error}`)
    }
}

module.exports.resetInventory = async(req,res) =>{
    try{
        const DELETE_INVENTORIES = "TRUNCATE TABLE inventories"
        await database.execute(DELETE_INVENTORIES)
        
        res.status(200).send("Reset Success")
        // await database.end();
    }
    catch(error){
        console.log('error : ',error);
        res.status(500).send(`Internal service error: ${error}`)
    }
}

module.exports.uploadInventory = async(req,res)=>{
    try{
        const DELETE_INVENTORIES = "TRUNCATE TABLE inventories"
        await database.execute(DELETE_INVENTORIES)

        const body = req.body.items
        console.log(body)
        
        const items = body.map(item => [item.Name, item.Stock]);
        const placeholders = items.map(() => "(?, ?)").join(", ");
        const INSERT_INVENTORY = `INSERT INTO inventories (item_name, item_stock) VALUES ${placeholders}`;

        // Flatten the items array to match the placeholders
        const values = items.flat();
        await database.execute(INSERT_INVENTORY, values);
        
        res.status(200).send("Upload Success")
        // await database.end();
    }
    catch(error){
        console.log('error : ',error);
        res.status(500).send(`Internal service error: ${error}`)
    }
}