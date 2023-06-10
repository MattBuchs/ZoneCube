const { Router } = require("express");
const router = Router();

const mainController = require("./controllers/mainController");
const cubeController = require("./controllers/cubeController");
const authController = require("./controllers/authController");
const userController = require("./controllers/userController");

const { isLoggedIn } = require("../middlewares/isLoggedIn");

router.get("/", mainController.index);
router.get("/cube/:idCube", isLoggedIn, cubeController.getCubeById);

router.get("/signup", authController.signup);
router.post("/signup", authController.createUser);

router.get("/signin", authController.signin);
router.post("/signin", authController.createSession);

router.get("/signout", authController.signout);
router.get("/profile", isLoggedIn, userController.index);

router.get("/categories", cubeController.getCategories);
router.get("/category/:idCategory", isLoggedIn, cubeController.getCategoryById);

// router.use((req, res, next) => {
//     res.status(404).render("404");
// });

module.exports = router;
