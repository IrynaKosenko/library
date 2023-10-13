import mysql2 from "mysql2";

export const configDB = {
  host: process.env.HOST || "",
  user: process.env.USER_SQL || "",
  password: process.env.PASSWORD_SQL || "",
  database: process.env.DB_SQL || "",
};

const pool = mysql2.createPool({
  ...configDB,
  connectionLimit: 10,
  multipleStatements: true,
});

pool.getConnection((err, connect) => {
  if (err) console.log(err);
  console.log("MySQL database is connected");
});

export default pool;
