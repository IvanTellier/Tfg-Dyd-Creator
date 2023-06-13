//Variables del proyecto
const express = require('express');
const router = express.Router();

//Redirección a index
router.get('/', async (req, res) => {
    res.render('index');
});

module.exports = router;