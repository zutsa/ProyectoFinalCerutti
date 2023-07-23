const express = require('express');
const app = express();
const path = require('path');
const mainRouter = require("./routes/cancionesRoutes.js")
const port = process.env.PORT || 3000;
app.use ("/", mainRouter);
app.listen(port, () => console.log(`Servidor escuchando en el puerto ${port}`));