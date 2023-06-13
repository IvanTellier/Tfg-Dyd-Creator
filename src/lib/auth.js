module.exports = {
    isLoggedIn (req, res, next) {
    //metodo para evitar ver ciertas paginas en caso de no tener la sesión iniciada
        if (req.isAuthenticated()) {
            return next();
        }
        return res.redirect('/signin');
    }
};