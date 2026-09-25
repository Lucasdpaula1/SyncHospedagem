import { Module } from '@nestjs/common';
import { AppController } from './app.controller.js';
import { AppService } from './app.service.js';
import { DatabaseModule } from './infra/db/drizzle.module.js';
import { ConfigModule } from '@nestjs/config';

@Module({
  imports: [ ConfigModule.forRoot({
      isGlobal: true,
    }),
DatabaseModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
