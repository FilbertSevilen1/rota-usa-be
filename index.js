const express = require('express')
const dotenv = require('dotenv')
const cors = require('cors')

dotenv.config()

const database = require('./config')
const app = express();

function urlRequestLogger (req, res, next) {
    console.log(`${req.method} : ${req.url}`)
    next()
}

// config middleware
app.use(express.json())
app.use(cors()) //yg dikasih liat apa aja
app.use(urlRequestLogger)
app.use(express.static('public'))
app.use('/files', express.static(require("path").join(__dirname, 'storages')))

// test database connection
database.connect((error) => {
    if (error) {
        console.log('error : ', error)
    }
    console.log(`database is connected, threadId : ${database.threadId}.`)
})

app.get('/', (req, res) => res.status(200).send('<h1>Welcome to My RESTAPIs</h1>'))

const routers = require('./routers')
app.use('/api/car', routers.car_routers)
app.use('/api/brand', routers.brand_routers)

const PORT = process.env.PORT || 3000
app.listen(PORT, () => console.log(`API is running at port : ${PORT}.`))
