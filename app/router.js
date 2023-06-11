const { Router } = require("express");
const router = Router();

const mainController = require("./controllers/mainController");
const filterCubeController = require("./controllers/filterCubeController");
const authController = require("./controllers/authController");
const userController = require("./controllers/userController");
const searchController = require("./controllers/searchController");
const adminController = require("./controllers/adminController");

const { isLoggedIn, isAdmin } = require("../middlewares/isLoggedIn");

router.get("/", mainController.index);
router.get("/cube/:idCube", isLoggedIn, filterCubeController.getCubeById);

router.get("/signup", authController.signup);
router.post("/signup", authController.createUser);

router.get("/signin", authController.signin);
router.post("/signin", authController.createSession);

router.get("/signout", authController.signout);
router.get("/profile", isLoggedIn, userController.index);

router.get("/category/kind", filterCubeController.getCategoriesOfKind);
router.get("/category/brand", filterCubeController.getCategoriesOfBrand);
router.get(
  "/category/kind/:idCategory",
  isLoggedIn,
  filterCubeController.getCategoryKindById
);
router.get(
  "/category/brand/:idCategory",
  isLoggedIn,
  filterCubeController.getCategoryBrandById
);

router.get("/search", searchController.search);

router.get("/admin", [isLoggedIn, isAdmin], adminController.index);

router.use((req, res, next) => {
  res.status(404).render("404");
});

module.exports = router;
