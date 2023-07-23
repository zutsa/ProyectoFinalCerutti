const express = require ("express");
const router = express.Router();
//
const cancionesController = require("../controllers/cancionesController.js")

//
router.get("/", cancionesController.functions);
router.get("/canciones", cancionesController.listado);
router.post("/canciones", cancionesController.crear);
router.get("/canciones/:idCancion", cancionesController.cancion);
router.get("/generos", cancionesController.generos);

//

module.exports = router;