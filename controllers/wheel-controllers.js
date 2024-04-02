const database = require("../config").promise()
const bcrypt = require("bcrypt");

module.exports.getAllWheels = async(req,res) =>{
    try{
        const name = req.query._name || ""
        const filter = req.query._filter || ""
        const sort = req.query._sort || ""

        console.log(name)

        const GET_ALL_WHEELS = `SELECT * FROM wheels WHERE wheel_name LIKE '%${name}%' && is_active = 1 ORDER BY wheel_name`
        let [WHEELS] = await database.execute(GET_ALL_WHEELS)
        for(let i=0;i<WHEELS.length;i++){
            const GET_WHEELS_DETAILS = "SELECT * FROM wheels_details WHERE wheel_id = ? && is_active = 1"
            const [DETAILS] = await database.execute(GET_WHEELS_DETAILS, [WHEELS[i].wheel_id]);

            const GET_SIZES = "SELECT * FROM sizes WHERE wheel_id = ?"
            const [SIZES] = await database.execute(GET_SIZES, [WHEELS[i].wheel_id]);

            for(let j=0;j<SIZES.length;j++){
                const GET_OFFSET = "SELECT * FROM offsets WHERE size_id = ?"
                const [OFFSET] = await database.execute(GET_OFFSET, [SIZES[j].size_id]);

                for(let k=0;k<OFFSET.length;k++){
                    const GET_BOLT = "SELECT * FROM bolts WHERE offset_id = ?"
                    const [BOLT] = await database.execute(GET_BOLT, [OFFSET[k].offset_id]);
                    OFFSET[k] = {
                        ...OFFSET[k],
                        bolt_details:BOLT
                    }
                }

                SIZES[j] = {
                    ...SIZES[j],
                    offset_details:OFFSET
                }
            }

            WHEELS[i] = {
                ...WHEELS[i],
                wheel_details:DETAILS,
                size_details:SIZES,
            }
        }
        res.status(200).send(WHEELS)
    }
    catch(error){
        console.log('error : ',error);
        res.status(500).send(`Internal service error: ${error}`)
    }
}

module.exports.getWheelById = async(req,res) =>{
    const body = req.body
    try{
        console.log(body)
        const GET_ALL_WHEELS = "SELECT * FROM wheels WHERE wheel_id = ? && is_active = 1 ORDER BY wheel_name"
        let [WHEELS] = await database.execute(GET_ALL_WHEELS, [body.wheel_id])
        for(let i=0;i<WHEELS.length;i++){
            const GET_WHEELS_DETAILS = "SELECT * FROM wheels_details WHERE wheel_id = ? && is_active = 1"
            const [DETAILS] = await database.execute(GET_WHEELS_DETAILS, [WHEELS[i].wheel_id]);

            const GET_SIZES = "SELECT * FROM sizes WHERE wheel_id = ?"
            const [SIZES] = await database.execute(GET_SIZES, [WHEELS[i].wheel_id]);

            console.log(SIZES)

            for(let j=0;j<SIZES.length;j++){
                const GET_OFFSET = "SELECT * FROM offsets WHERE size_id = ?"
                const [OFFSET] = await database.execute(GET_OFFSET, [SIZES[j].size_id]);

                for(let k=0;k<OFFSET.length;k++){
                    console.log("Offset", OFFSET[k])
                    const GET_BOLT = "SELECT * FROM bolts WHERE offset_id = ?"
                    const [BOLT] = await database.execute(GET_BOLT, [OFFSET[k].offset_id]);
                    OFFSET[k] = {
                        ...OFFSET[k],
                        bolt_details:BOLT
                    }
                }

                SIZES[j] = {
                    ...SIZES[j],
                    offset_details:OFFSET
                }
            }

            WHEELS[i] = {
                ...WHEELS[i],
                wheel_details:DETAILS,
                size_details:SIZES,
            }
        }
        res.status(200).send(WHEELS)
    }
    catch(error){
        console.log('error : ',error);
        res.status(500).send(`Internal service error: ${error}`)
    }
}