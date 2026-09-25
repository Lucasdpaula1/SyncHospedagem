import { ConfigService } from '@nestjs/config';
import { drizzle, NodePgDatabase } from 'drizzle-orm/node-postgres';
import { Pool } from 'pg';

export abstract class DrizzleDB {}


export interface DrizzleDB extends NodePgDatabase {}

export const drizzleProvider = {
  provide: DrizzleDB,
  inject: [ConfigService],
  useFactory: (configService: ConfigService) => {
    const connectionString = configService.get('DATABASE_URL');
    const pool = new Pool({ connectionString });
    return drizzle(pool);
  },
};