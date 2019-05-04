import {Module} from '@nestjs/common';
import {EquipmentSnatchService} from './service/equipment.snatch.service';
import {EquipmentController} from './equipment.controller';
import {CommonModule} from '../common/common.module';
import {EquipmentQueryService} from './service/equipment.query.service';

@Module({
imports: [CommonModule],
providers: [EquipmentQueryService, EquipmentSnatchService],
controllers: [EquipmentController],
})
export class EquipmentModule {
}
