import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { CommonModule } from './common/common.module';
import { EquipmentModule } from './equipment/equipment.module';
import {Connection} from 'typeorm';
import { TypeOrmModule } from '@nestjs/typeorm';

import {join} from "path";

@Module({
  controllers: [AppController],
  providers: [AppService],
  imports: [        CommonModule, EquipmentModule],
})
export class AppModule {
  constructor() {}
}
