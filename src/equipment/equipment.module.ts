import {Module} from '@nestjs/common';
import {EquipmentService} from './equipment.service';
import {EquipmentController} from './equipment.controller';
import {TypeOrmModule} from '@nestjs/typeorm';
import {Equipment} from '../common/entity/entities/Equipment';
import {join} from "path";

@Module({
    imports: [TypeOrmModule.forRoot({
        name: 'xxx',
        type: 'mysql',
        host: 'localhost',
        port: 3306,
        username: 'root',
        password: '1pppppp',
        database: 'kings',
        synchronize: false,
        entities: [
            join(__dirname, '../**/entity/entities/*.ts'),
        ],

    }), TypeOrmModule.forFeature([Equipment], 'xxx')],
providers: [EquipmentService],
controllers: [EquipmentController],
})
export class EquipmentModule {
}
