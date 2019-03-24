import {Test, TestingModule} from '@nestjs/testing';
import {EquipmentService} from './equipment.service';
import {CommonModule} from '../common/common.module';

describe('EquipmentService', () => {
    let service: EquipmentService;
    let pageEquipments;
    beforeAll(async () => {
        const module: TestingModule = await Test.createTestingModule({
            imports: [CommonModule],
            providers: [EquipmentService],
        }).compile();
        service = module.get<EquipmentService>(EquipmentService);
    });

    it('should be true', async () => {
        const length = await service.getAllEquipment();
        expect(length);
    });
    it('should be defined', () => {
        expect(service).toBeDefined();
    });

    it('抓取所有的装备', async () => {
        pageEquipments = await service.snatchAllPageEquipment();
        expect(pageEquipments[0].name).not.toBeNull();
    });

    it('生成装备实体entities', async () => {
        const entities = await service.parsePageEquipmentToEntities(pageEquipments);
        expect(entities.length).not.toBeNull();
        expect(entities.length).toBeGreaterThan(5)
        expect(entities[0].name).not.toBeNull();
        expect(entities[0].label).not.toBeNull();
        expect(entities[0].imageUrl).not.toBeNull();
    });

    it('entities存入数据库', async () => {
        const saveAllEquipment = await service.clearAndSaveAllEquipment();
    });
});
