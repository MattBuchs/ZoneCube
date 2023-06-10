const { Model, DataTypes } = require("sequelize");
const getConnexion = require("../db/connexion");

class Addresses extends Model {}

Addresses.init(
  {
    street: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    number: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    floor: {
      type: DataTypes.TEXT,
      allowNull: true,
    },
    zip: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    city: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    country: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
  },
  {
    sequelize: getConnexion(),
    tableName: "addresses",
    modelName: "Addresses",
  }
);

module.exports = Addresses;
