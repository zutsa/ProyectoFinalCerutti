jsx
import React, { useEffect, useState } from 'react';
 function App() {
  const [canciones, setCanciones] = useState([]);
  const [generos, setGeneros] = useState([]);
   useEffect(() => {
    fetch('http://localhost:3000/canciones')
      .then((response) => response.json())
      .then((data) => setCanciones(data));
     fetch('http://localhost:3000/generos')
      .then((response) => response.json())
      .then((data) => setGeneros(data));
  }, []);
   return (
    <div>
      <h1>Listado de Canciones</h1>
      <ul>
        {canciones.map((cancion) => (
          <li key={cancion.id}>{cancion.titulo}</li>
        ))}
      </ul>
       <h1>Listado de Géneros con sus Canciones</h1>
      <ul>
        {generos.map((genero) => (
          <li key={genero.id}>
            {genero.name}
            <ul>
              {genero.Canciones.map((cancion) => (
                <li key={cancion.id}>{cancion.titulo}</li>
              ))}
            </ul>
          </li>
        ))}
      </ul>
    </div>
  );
}
 export default App;