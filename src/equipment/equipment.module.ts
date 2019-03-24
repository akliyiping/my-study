import {Module} from '@nestjs/common';
import {EquipmentService} from './equipment.service';
import {EquipmentController} from './equipment.controller';
import {TypeOrmModule} from '@nestjs/typeorm';
import {Equipment} from '../common/entity/entities/Equipment';
import {join} from 'path';
import {CommonModule} from '../common/common.module';

@Module({
imports: [CommonModule],
providers: [EquipmentService],
controllers: [EquipmentController],
})
export class EquipmentModule {
}
