const { Articles, Categories } = require("../models");

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

    async getCategories(req, res) {
        try {
            const categories = await Categories.findAll();

            res.render("categories", { categories });
        } catch (error) {
            console.log(error.message);
        }
    },

    async getCategoryById(req, res) {
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
};

module.exports = cubeController;
