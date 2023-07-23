const info = require("../src/functions.json")
const db = require("../src/database/models")
sequelize = db.sequelize
Sequelize = db.Sequelize
const mainController = {
        functions: (req, res) => {
        res.json(info)
    },
    listado: (req, res) => {
        db.Canciones.findAll()
        .then(canciones => {
            res.send(canciones)
        })
       },
    crear: (req, res) => {
        res.send ("Crear nuevo registro de una cancion");
    },
    cancion: (req, res) =>{
        res.send ("Mostrar cancion " + req.params.idCancion);
    },
    generos: (req, res) =>{
        res.send ("Mostrar listado de todos los géneros con sus canciones");
    }
}
module.exports = mainController;