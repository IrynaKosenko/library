import mysql2 from "mysql2";

export const configDB = {
  host: process.env.HOST || "",
  user: process.env.USER_SQL || "",
  password: process.env.PASSWORD_SQL || "",
  database: process.env.DB_SQL || "",
  connectionLimit: 10,
  waitForConnections: true,
  multipleStatements: true,
};

const pool = mysql2.createPool(configDB).promise();

export default pool;
