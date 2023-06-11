const { Articles } = require("../models");
const Sequelize = require("sequelize");
const Op = Sequelize.Op;

const searchController = {
  async search(req, res) {
    const { search } = req.query;

    try {
      const wantedItems = await Articles.findAll({
        where: {
          name: {
            [Op.iLike]: `%${search}%`,
          },
        },
        attributes: { exclude: ["created_at", "updated_at"] },
      });

      res.render("home", { articles: wantedItems, search });
    } catch (error) {
      console.log(error.message);
    }
  },
};

module.exports = searchController;
