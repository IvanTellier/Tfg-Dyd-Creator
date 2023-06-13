//Variables del proyecto
const timeago = require('timeago.js');
const timeagoInstance = timeago();

const helpers = {};

//Meteodo para indicar desde cuando existe
helpers.timeago = (savedTimestamp) => {
    return timeagoInstance.format(savedTimestamp);
};

module.exports = helpers;