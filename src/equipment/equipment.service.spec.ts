import { Test, TestingModule } from '@nestjs/testing';
import { EquipmentService } from './equipment.service';

describe('EquipmentService', () => {
  let service: EquipmentService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [EquipmentService],
    }).compile();

    service = module.get<EquipmentService>(EquipmentService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  it('should be return body', () => {
    const actual = service.snatchAllEquipment();
    expect(actual).not.toBeNull();
  });

});
