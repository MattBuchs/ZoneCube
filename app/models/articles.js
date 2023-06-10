const { Model, DataTypes } = require("sequelize");
const getConnexion = require("../db/connexion");

class Articles extends Model {}

Articles.init(
  {
    name: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    price: {
      type: DataTypes.DECIMAL,
      allowNull: false,
    },
    brand: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    image_url: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    category_id: DataTypes.INTEGER,
  },
  {
    sequelize: getConnexion(),
    tableName: "articles",
    modelName: "Articles",
  }
);

module.exports = Articles;
