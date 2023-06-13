//Variables del proyecto
const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;

const pool = require('../database');
const helpers = require('./helpers');

passport.use('local.signin', new LocalStrategy({
  usernameField: 'username',
  passwordField: 'password',
  passReqToCallback: true
}, async (req, username, password, done) => {
  //Llamamos dentro de la tabla usuarios a todos los que coincidan con el nombre indicado
  const rows = await pool.query('SELECT * FROM usuarios WHERE nombre = ?', [username]);
  if (rows.length > 0) {
    const user = rows[0];
    const validPassword = await helpers.matchPassword(password, user.password)
    if (validPassword) {
      //Si es correcto lo indicamos con el mensaje de bienvenida
      done(null, user, req.flash('success', 'Bienvenido ' + user.nombre));
    } else {
      //Si no es correcto lo indicamos con el mensaje de pass incorrecta
      done(null, false, req.flash('message', 'Pass incorrecta'));
    }
  } else {
    //Si no es ninguna de las anteriores lo inicamos
    return done(null, false, req.flash('message', 'El usuario no existe.'));
  }
}));

//Metodo para registar usuarios en la BBDD 
passport.use('local.signup', new LocalStrategy({
  usernameField: 'username',
  passwordField: 'password',
  passReqToCallback: true
}, async (req, nombre, password, done) => {

  const { correo } = req.body;
  let newUser = {
    nombre,
    password,
    correo
  };
  newUser.password = await helpers.encryptPassword(password);
  // Almacenando en la BBDD
  const result = await pool.query('INSERT INTO usuarios SET ? ', newUser);
  newUser.id = result.insertId;
  return done(null, newUser);
}));

passport.serializeUser((user, done) => {
  done(null, user.id);
});

passport.deserializeUser(async (id, done) => {
  const rows = await pool.query('SELECT * FROM usuarios WHERE id = ?', [id]);
  done(null, rows[0]);
});

