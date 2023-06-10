const { Articles } = require("../models");

const mainController = {
  async index(req, res) {
    try {
      const articles = await Articles.findAll({
        include: "category",
      });

      const arrArticles = [];

      for (let i = 0; i < articles.length; i++) {
        const nbRadom = Math.floor(Math.random() * articles.length + 1);
        const getArticleById = articles.find((elt) => elt.id === nbRadom);

        const checkIdExist = (elt) => elt.id === getArticleById.id;
        if (!arrArticles.some(checkIdExist)) {
          arrArticles.push(getArticleById);
        } else {
          i--;
        }
      }

      res.render("home", { articles: arrArticles });
    } catch (error) {
      console.log(error.message);
    }
  },
};

module.exports = mainController;
