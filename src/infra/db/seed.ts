import { NestFactory } from '@nestjs/core';
import { AppModule } from '../../app.module.js';
import { DrizzleDB } from './drizzle.provider.js';
import { sql } from 'drizzle-orm';
import * as fs from 'fs';
import * as path from 'path';

async function runSeed() {
  console.log('🚀 Inicializando contexto da aplicação NestJS...');
  
  const app = await NestFactory.createApplicationContext(AppModule);
  const db = app.get(DrizzleDB);

  try {
    console.log('🌱 Executando seed padronizada a partir dos arquivos SQL...');

    // Caminho para a pasta de seeds
    const seedsDir = path.join(process.cwd(), 'dump');

    // 1. Ler e executar o SQL de Quartos (rooms.sql)
    const roomsSqlPath = path.join(seedsDir, 'rooms.sql');
    const roomsSql = fs.readFileSync(roomsSqlPath, 'utf-8');
    await db.execute(sql.raw(roomsSql));
    console.log('✅ Quartos inseridos com sucesso.');

    // 2. Ler e executar o SQL de Reservas (bookings.sql)
    const bookingsSqlPath = path.join(seedsDir, 'bookings.sql');
    const bookingsSql = fs.readFileSync(bookingsSqlPath, 'utf-8');
    await db.execute(sql.raw(bookingsSql));
    console.log('✅ Reservas inseridas com sucesso.');

    console.log('🎉 Povoamento determinístico concluído!');
  } catch (error) {
    console.error('❌ Erro ao executar a seed:', error);
  } finally {
    await app.close();
  }
}

runSeed();