//Variables del proyecto
const bcrypt = require('bcryptjs');

const helpers = {};

//Recibimos la contraseña en texto plano
helpers.encryptPassword = async (password) => {
  //Generamos X patrones
  const salt = await bcrypt.genSalt(10);
  //Encripta la contraseña
  const hash = await bcrypt.hash(password, salt);
  return hash;
};

//Comparamos la contraseña registrada por el usuario con la introducida
helpers.matchPassword = async (password, savedPassword) => {
  try {
    console.log(password, savedPassword)
    return await bcrypt.compare(password, savedPassword);
  } catch (e) {
    console.log(e)

  }
};

module.exports = helpers;
