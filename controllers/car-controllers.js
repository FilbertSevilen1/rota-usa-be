const database = require("../config").promise()
const bcrypt = require("bcrypt");

// module.exports.getAllCars = async(req,res) =>{
//     try{
//         const GET_ALL_CARS = "SELECT * FROM cars";
//         const [CARS] = database.execute(GET_ALL_CARS);
//         res.status(200).send("Cars");
//     }
//     catch(error){
//         console.log('error : ',error);
//         res.status(500).send(`Internal service error: ${error}`)
//     }
// }
module.exports.getAllCarsImage = async(req,res) =>{
    try{
        const GET_ALL_CARS = "SELECT * FROM cars";
        const [CARS] = await database.execute(GET_ALL_CARS);

        for(let i=0;i<CARS.length;i++){
            const GET_CARS_IMAGE = "SELECT car_color_image FROM cars_details WHERE car_id = ?";
            const [CARS_DETAILS] = await database.execute(GET_CARS_IMAGE, [CARS[i].car_id])

            CARS[i] = {...CARS[i],
                car_image : CARS_DETAILS[0].car_color_image
            }
            
            let images = []
            CARS_DETAILS.forEach(item => {
                images.push(item.car_color_image)
            });

            CARS[i] = {...CARS[i],
                car_details:images
            }
            console.log(CARS[i])
        }

        
        res.status(200).send(CARS);
    }
    catch(error){
        console.log('error : ',error);
        res.status(500).send(`Internal service error: ${error}`)
    }
}