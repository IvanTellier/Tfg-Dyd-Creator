//Variables del proyecto
const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');



// Ruta para obtener los datos de la tablas
router.get('/add', async (req, res) => {
    try {
        // Realizar una consulta a la base de datos para obtener los datos de la tabla 'razas'
        const queryrazas = await pool.query('SELECT nombre FROM razas');
        const queryclases = await pool.query('SELECT nombre FROM clases');
        
        res.render('personajes/add', { queryrazas, queryclases });
    } catch (error) {
        console.log(error);
        res.render('error');
    }
  });

//Metodo para guardar personajes en la BBDD
router.post('/add', async (req, res) => {
    const { nombre, genero, nombreRaza, nombreClase, description } = req.body;
    const queryimagen = await pool.query('SELECT imagen FROM razas where nombre = ?', [nombreRaza] );
    const imagen = queryimagen[0].imagen;
    const newPersonaje = {
        nombre,
        genero,
        nombreRaza,
        imagen,
        nombreClase,
        description,
        user_id: req.user.id
    };
    await pool.query('INSERT INTO personajes set ?', [newPersonaje]);
    req.flash('success', 'Personaje guardado correctamente!');
    res.redirect('/personajes');
});

//Mostramos los personajes guardados por el usuario en su perfil
router.get('/', isLoggedIn, async (req, res) => {
    const personaje = await pool.query('SELECT * FROM personajes WHERE user_id = ?', [req.user.id]);
    res.render('personajes/list', { personaje });
});

//Metodo para eliminar personajes
router.get('/delete/:id', async (req, res) => {
    const { id } = req.params;
    await pool.query('DELETE FROM personajes WHERE ID = ?', [id]);
    req.flash('success', 'Personaje borrado correctamente');
    res.redirect('/personajes');
});

router.get('/edit/:id', async (req, res) => {
    const { id } = req.params;
    const personaje = await pool.query('SELECT * FROM personajes WHERE id = ?', [id]);
    const queryrazas = await pool.query('SELECT nombre FROM razas');
    const queryclases = await pool.query('SELECT nombre FROM clases');
    res.render('personajes/edit', {personaje: personaje[0], queryrazas, queryclases});
});

//Metodo para modificar los personajes guardados
router.post('/edit/:id', async (req, res) => {
    const { id } = req.params;
    const { nombre, genero, nombreRaza, nombreClase, description } = req.body;
    const queryimagen = await pool.query('SELECT imagen FROM razas where nombre = ?', [nombreRaza] );
    const imagen = queryimagen[0].imagen;
    const newPersonaje = {
        nombre,
        genero,
        nombreRaza,
        imagen,
        nombreClase,
        description
    };
    await pool.query('UPDATE personajes set ? WHERE id = ?', [newPersonaje, id]);
    req.flash('success', 'Personaje modificado correctamente');
    res.redirect('/personajes');
});


module.exports = router;