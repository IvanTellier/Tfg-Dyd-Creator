//Variables del proyecto
const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

// Ruta para obtener los datos de la tabla 'razas'
router.get('/', async (req, res) => {
  try {
      // Realizar una consulta a la base de datos para obtener los datos de la tabla 'razas'
      const razas = await pool.query('SELECT * FROM razas');
      res.render('razas/razas', { razas });
  } catch (error) {
      console.log(error);
      res.render('error');
  }
});

  

module.exports = router;