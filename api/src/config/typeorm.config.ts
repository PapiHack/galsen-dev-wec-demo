import { TypeOrmModuleOptions } from '@nestjs/typeorm';

import * as dotenv from 'dotenv';

dotenv.config();

export const TypeOrmConfiguration: TypeOrmModuleOptions = {
  // type: 'mysql',
  type: 'postgres',
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  username: process.env.DB_USERNAME,
  password: process.env.DB_PASSWORD,
  port: parseInt(process.env.DB_PORT),
  entities: [__dirname + '/../**/*.entity{.ts,.js}'],
  synchronize: true,
};
