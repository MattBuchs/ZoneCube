const emailValidator = require("email-validator");
const bcrypt = require("bcrypt");
const { Users } = require("../models");

const authController = {
    signup(req, res) {
        res.render("signup");
    },

    async createUser(req, res) {
        const { firstname, lastname, email, password, passwordConfirm } =
            req.body;

        if (
            !firstname ||
            !lastname ||
            !email ||
            !password ||
            !passwordConfirm
        ) {
            return res.render("signup", {
                error: "Veuillez remplir tous les champs du formulaire",
            });
        }

        if (password !== passwordConfirm) {
            return res.render("signup", {
                error: "La confirmation du mot de passe est inexacte",
            });
        }

        if (!emailValidator.validate(email)) {
            return res.render("signup", {
                error: "L'email est invalide",
            });
        }

        try {
            const existsUser = await Users.findOne({
                where: { email },
            });

            if (existsUser) {
                return res.render("signup", {
                    error: "Une erreur est survenue...",
                });
            }

            const saltRounds = 10;
            const salt = await bcrypt.genSalt(saltRounds);
            const encryptedPass = await bcrypt.hash(password, salt);

            await Users.create({
                firstname,
                lastname,
                email,
                role: "user",
                password: encryptedPass,
            });

            res.redirect("/signin");
        } catch (error) {
            console.log(error.message);
        }
    },

    signin(req, res) {
        res.render("signin");
    },

    async createSession(req, res) {
        const { email, password } = req.body;

        if (!emailValidator.validate(email)) {
            return res.render("login", {
                error: "L'email est invalide",
            });
        }

        try {
            const existsUser = await Users.findOne({
                where: { email },
                attributes: { exclude: ["created_at", "updated_at"] },
            });

            if (!existsUser) {
                return res.render("signin", {
                    error: "Une erreur est survenue...",
                });
            }

            const pswOk = await bcrypt.compare(password, existsUser.password);

            if (!pswOk) {
                return res.render("signin", {
                    error: "L'email ou le mot de passe est incorrect",
                });
            }

            req.session.userId = existsUser.id;

            res.redirect("/profile");
        } catch (error) {
            console.log(error.message);
        }
    },

    signout(req, res) {
        req.session.user = null;
        res.locals.user = null;
        req.session.userId = null;

        req.session.destroy();

        res.redirect("/");
    },
};

module.exports = authController;
