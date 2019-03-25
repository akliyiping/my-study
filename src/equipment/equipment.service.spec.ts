import {Test, TestingModule} from '@nestjs/testing';
import {EquipmentService} from './equipment.service';
import {CommonModule} from '../common/common.module';

describe('EquipmentService', () => {
    let service: EquipmentService;
    let pageEquipments;
    beforeAll(async (done) => {
        const module: TestingModule = await Test.createTestingModule({
            imports: [CommonModule],
            providers: [EquipmentService],
        }).compile();
        service = module.get<EquipmentService>(EquipmentService);
        pageEquipments = await service.snatchAllPageEquipment();
        done();
    }, 100000);


    it('抓取所有的装备', async () => {
        return
        pageEquipments = await service.snatchAllPageEquipment();
        expect(pageEquipments[0].zbbq_8d).not.toBeNull();
    });

    it('生成装备实体entities', async () => {
        return
        const entities = await service.parsePageEquipmentToEntities(pageEquipments);
        expect(entities.length).not.toBeNull();
        expect(entities.length).toBeGreaterThan(5);
        expect(entities[0].name).not.toBeNull();
        expect(entities[0].label).not.toBeNull();
        expect(entities[0].imageUrl).not.toBeNull();
    });

    it('entities存入数据库', async () => {
        return
        const saveAllEquipment = await service.clearAndSaveAllEquipment();
    });

    it('属性值存入数据库', async () => {
        // const saveAllEquipment = await service.clearAndSaveAllEquipmentPropertyUnit();
    });
});
