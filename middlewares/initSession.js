const session = require("express-session");
const { Users } = require("../app/models");

const inOneHour = 60 * 60 * 1000;

const initSession = session({
    secret: process.env.SECRET,
    resave: true,
    saveUninitialized: true,
    cookie: { secure: false, expires: inOneHour },
});

async function addUsersTolocals(req, res, next) {
    const userId = req.session.userId;
    const user = await Users.findByPk(userId, {
        attributes: { exclude: "password" },
    });

    req.session.user = user;
    res.locals.user = user;

    next();
}

module.exports = { addUsersTolocals, initSession };
