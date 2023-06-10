const Sequelize = require('sequelize');

function getConnexion() {

    return new Sequelize(process.env.PG_URL, {
        dialect: process.env.DIALECT,
        define: {
            underscored: true,
            createdAt: 'created_at',
            updatedAt: 'updated_at',
        },
        logging: false
    });
}

module.exports = getConnexion;