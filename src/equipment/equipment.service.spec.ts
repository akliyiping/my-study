import { Test, TestingModule } from '@nestjs/testing';
import { EquipmentService } from './equipment.service';
import {Equipment} from '../common/entity/entities/Equipment';
import {TypeOrmModule} from '@nestjs/typeorm';

describe('EquipmentService', () => {
  let service: EquipmentService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      imports: [
        TypeOrmModule.forRoot({
        name: 'default',
        type: 'mysql',
        host: 'localhost',
        port: 3306,
        username: 'root',
        password: '1pppppp',
        database: 'kings',
        synchronize: false,
        entities: [
          '../common/entity/entities/*.ts',
        ],
      }), TypeOrmModule.forFeature([Equipment])],
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

  it('should be true', async () => {
    const length = await service.parseEquipmentByHtml();
    expect(length);
  });
  it('should be true', async () => {
    const length = await service.getAllEquipment();
    expect(length);
  });

});
