import {Test, TestingModule} from '@nestjs/testing';
import {EquipmentSnatchService} from './equipment.snatch.service';
import {CommonModule} from '../../common/common.module';

describe('EquipmentSnatchService', () => {
    let service: EquipmentSnatchService;
    let pageEquipments;
    beforeAll(async (done) => {
        const module: TestingModule = await Test.createTestingModule({
            imports: [CommonModule],
            providers: [EquipmentSnatchService],
        }).compile();
        service = module.get(EquipmentSnatchService);
        pageEquipments = await service.snatchAllPageEquipment();
        done();
    }, 100000);

    it('抓取所有的装备', async () => {
        pageEquipments = await service.snatchAllPageEquipment();
        expect(pageEquipments[0].zbbq_8d).not.toBeNull();
    });

    it('生成装备实体entities', async () => {
        const entities = await service.parsePageEquipmentToEntities(pageEquipments);
        expect(entities.length).not.toBeNull();
        expect(entities.length).toBeGreaterThan(5);
        expect(entities[0].name).not.toBeNull();
        expect(entities[0].label).not.toBeNull();
        expect(entities[0].imageUrl).not.toBeNull();
    });
});
