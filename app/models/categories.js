const { Model, DataTypes } = require("sequelize");
const getConnexion = require("../db/connexion");

class Categories extends Model {}

Categories.init(
  {
    name: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
  },
  {
    sequelize: getConnexion(),
    tableName: "categories",
    modelName: "Categories",
  }
);

module.exports = Categories;
