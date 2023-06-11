const { Model, DataTypes } = require("sequelize");
const getConnexion = require("../db/connexion");

class Brands extends Model {}

Brands.init(
    {
        name: {
            type: DataTypes.TEXT,
            allowNull: false,
        },
    },
    {
        sequelize: getConnexion(),
        tableName: "brands",
        modelName: "Brands",
    }
);

module.exports = Brands;
