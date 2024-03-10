import mysql2 from "mysql2";
import "dotenv/config";

export const configDB = {
  host: process.env.MYSQL_DATABASE_HOST || "",
  user: process.env.DATABASE_USER || "",
  password: process.env.DATABASE_PASSWORD || "",
  database: process.env.DATABASE || "",
  connectionLimit: 10,
  waitForConnections: true,
  multipleStatements: true,
};

const pool = mysql2.createPool(configDB).promise();

export default pool;
