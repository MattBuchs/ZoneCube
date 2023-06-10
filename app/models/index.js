const Users = require("./users");
const Articles = require("./articles");
const Addresses = require("./addresses");
const Categories = require("./categories");

// Addresses et Users
Addresses.hasMany(Users, {
  foreignKey: "address_id",
  as: "users",
});

Users.belongsTo(Addresses, {
  foreignKey: "address_id",
  as: "address",
});

// Users et Articles
Users.belongsToMany(Articles, {
  through: "articles_has_users",
  foreignKey: "user_id",
  otherKey: "article_id",
  as: "articles",
});

Articles.belongsToMany(Users, {
  through: "articles_has_users",
  foreignKey: "article_id",
  otherKey: "user_id",
  as: "users",
});

// Articles et Categories
Categories.hasMany(Articles, {
  foreignKey: "category_id",
  as: "articles",
});

Articles.belongsTo(Categories, {
  foreignKey: "category_id",
  as: "category",
});

module.exports = { Users, Articles, Addresses, Categories };
