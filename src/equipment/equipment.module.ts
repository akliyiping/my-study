import {Module} from '@nestjs/common';
import {EquipmentSnatchService} from './service/equipment.snatch.service';
import {EquipmentController} from './equipment.controller';
import {TypeOrmModule} from '@nestjs/typeorm';
import {Equipment} from '../common/entity/entities/Equipment';
import {join} from 'path';
import {CommonModule} from '../common/common.module';

@Module({
imports: [CommonModule],
providers: [EquipmentSnatchService],
controllers: [EquipmentController],
})
export class EquipmentModule {
}
