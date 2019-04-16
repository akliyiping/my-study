import {HttpException, Injectable} from '@nestjs/common';
import axios from 'axios';
import {Connection, EntityManager, In, Repository, Transaction, TransactionRepository} from 'typeorm';
import {Equipment} from '../../common/entity/entities/Equipment';
import * as _ from 'lodash';
import {transliterate as tr, slugify} from 'transliteration';
import PageEquipment from '../interface/PageEquipment';

@Injectable()
export class EquipmentQueryService {

    constructor(private readonly connection: Connection) {
    }

    async getAllEquipment(): Promise<Equipment[]> {
        throw new HttpException('xxx', 123);
        return this.connection.getRepository(Equipment).find();
    }

    async clearAndSaveAllEquipment(entities) {
        await this.connection.transaction(async (entityManager) => {
            await entityManager.save(entities);
        });
    }

    async getPremiumRate() {
        const equipment = await this.connection.getRepository(Equipment).find({
            relations: ['equipmentPropertyUnits'],
        });
        return equipment;
    }
}
