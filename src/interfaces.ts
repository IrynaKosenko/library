import { RowDataPacket } from "mysql2";

export interface IBook extends RowDataPacket {
  id: number;
  title: string;
  authorsNames: string[] | string;
  image: string;
}
