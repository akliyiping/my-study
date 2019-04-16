import {Test, TestingModule} from '@nestjs/testing';
import {EquipmentQueryService} from './equipment.query.service';
import {CommonModule} from '../../common/common.module';

describe('EquipmentQueryService', () => {
    let equipmentQueryService: EquipmentQueryService;
    beforeAll(async (done) => {
        const module: TestingModule = await Test.createTestingModule({
            imports: [CommonModule],
            providers: [EquipmentQueryService],
        }).compile();
        equipmentQueryService = module.get(EquipmentQueryService);
        done();
    }, 100000);

    it('查询', async () => {

    });

});
