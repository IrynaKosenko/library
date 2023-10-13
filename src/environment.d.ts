export {};

declare global {
  namespace NodeJS {
    interface ProcessEnv {
      PORT: number;
      HOST: string;
      DB_SQL: string;
      USER_SQL: string;
      PASSWORD_SQL: string;
      NEXT_STEP: number;
      LIMIT_SQL: string;
      HOME_HOST: string;
      ADMIN_USER: string;
      ADMIN_PASSWORD: string;

      ACCESS_KEY_ID: string;
      ACCESS_SECRET_KEY: string;
      REGION: string;
      BUCKET: string;
    }
  }
}
