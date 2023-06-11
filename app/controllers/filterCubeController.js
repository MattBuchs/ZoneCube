const { Articles, Categories, Brands } = require("../models");

const cubeController = {
  async getCubeById(req, res) {
    const cubeId = req.params.idCube;

    try {
      const article = await Articles.findByPk(cubeId);

      res.render("cubeId", { article });
    } catch (error) {
      console.log(error.message);
    }
  },

  async getCategoriesOfKind(req, res) {
    try {
      const categoriesKind = await Categories.findAll({
        raw: true,
      });

      res.render("categories", { categoriesKind });
    } catch (error) {
      console.log(error.message);
    }
  },

  async getCategoriesOfBrand(req, res) {
    try {
      const categoriesBrand = await Brands.findAll({
        raw: true,
      });

      res.render("categories", { categoriesBrand });
    } catch (error) {
      console.log(error.message);
    }
  },

  async getCategoryKindById(req, res) {
    const { idCategory } = req.params;
    try {
      const cubeByCategories = await Articles.findAll({
        include: "category",
        where: { category_id: idCategory },
      });

      res.render("cubeByCategory", { cubes: cubeByCategories });
    } catch (error) {
      console.log(error.message);
    }
  },

  async getCategoryBrandById(req, res) {
    const { idCategory } = req.params;
    try {
      const cubeByCategories = await Articles.findAll({
        include: "brand",
        where: { brand_id: idCategory },
      });

      res.render("cubeByCategory", { cubes: cubeByCategories });
    } catch (error) {
      console.log(error.message);
    }
  },
};

module.exports = cubeController;
