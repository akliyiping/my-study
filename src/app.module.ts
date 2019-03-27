import { Module } from '@nestjs/common';
import { CommonModule } from './common/common.module';
import { EquipmentModule } from './equipment/equipment.module';

@Module({
  controllers: [],
  providers: [],
  imports: [CommonModule, EquipmentModule],
})
export class AppModule {
}
