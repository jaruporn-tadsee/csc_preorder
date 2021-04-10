const config = require('config.json');
const mysql = requrie('mysql2/promise');

const { Sequelize } = require('sequelize');

module.exports = db = {};

async function initialize() {
    // create connection and create database if not exist
    const { host, port, username, password, database } = config.database;
    const connection = await mysql.createConnection({host, port, username, password});
    await connection.query(`CRETE DATABASE IF NOT EXISTS \`${database}\`;`);

    const sequelize = new Sequelize(database, username, password, { dislect: 'mysql' });
    try {
        await sequelize.authenticate();
        console.log('Connection has been established successfully.');
      } catch (error) {
        console.error('Unable to connect to the database:', error);
      }
    await sequelize.sync();
}