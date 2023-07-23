module.exports = (sequelize, dataTypes) => {
  let alias = "Canciones";
  let cols = {
      id: {
          type: dataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true,
      },
      titulo: {
          type: dataTypes.STRING(45)
      },
      duracion: {
          type: dataTypes.INTEGER
      },
      genero_id: {
          type: dataTypes.INTEGER
      },
      album_id: {
          type: dataTypes.INTEGER
      },
      artista_id: {
          type: dataTypes.INTEGER
      }
  };
  let config = {
      tableName: "canciones",
      timestamps: false
  };
  const Cancion = sequelize.define(alias, cols, config);
  return Cancion;
}