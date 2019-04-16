import {Test, TestingModule} from '@nestjs/testing';
import {EquipmentController} from './equipment.controller';
import {EquipmentSnatchService} from './service/equipment.snatch.service';
import {EquipmentQueryService} from './service/equipment.query.service';
import {CommonModule} from '../common/common.module';

describe('Equipment Controller', () => {
    let controller: EquipmentController;

    beforeAll(async () => {
        const module: TestingModule = await Test.createTestingModule({
            imports: [CommonModule],
            controllers: [EquipmentController],
            providers: [EquipmentSnatchService, EquipmentQueryService],
        }).compile();

        controller = module.get(EquipmentController);
    });

    it('should be defined', () => {
        expect(controller).toBeDefined();
    });
});
