const { Model, DataTypes } = require("sequelize");
const getConnexion = require("../db/connexion");

class Users extends Model {}

Users.init(
  {
    firstname: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    lastname: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    email: {
      type: DataTypes.TEXT,
      allowNull: false,
      validate: {
        isEmail: true,
      },
    },
    password: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    role: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
    address_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
  },
  {
    sequelize: getConnexion(),
    tableName: "users",
    modelName: "Users",
  }
);

module.exports = Users;
