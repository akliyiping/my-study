import {Test, TestingModule} from '@nestjs/testing';
import {EquipmentController} from './equipment.controller';
import {EquipmentService} from './equipment.service';
import {CommonModule} from '../common/common.module';

describe('Equipment Controller', () => {
    let controller: EquipmentController;

    beforeAll(async () => {
        const module: TestingModule = await Test.createTestingModule({
            imports: [CommonModule],
            controllers: [EquipmentController],
            providers: [EquipmentService],
        }).compile();

        controller = module.get<EquipmentController>(EquipmentController);
    });

    it('should be defined', () => {
        expect(controller).toBeDefined();
    });
});
