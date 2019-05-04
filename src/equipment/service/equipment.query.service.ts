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

    async getEquipmentCP() {
        const equipment = await this.connection.getRepository(Equipment).query(
            `select et.*, p.real_price, (et.price-p.real_price)/p.real_price*100 as premium_rate
  from

  (select epu.equipment_label, sum(epu.size*pup.price) as real_price from  equipment_property_unit as epu,
                                                                           property_unit_price as pup
   where  pup.unit_label = epu.unit_label
   group by equipment_label) as p left join equipment et on p.equipment_label = et.label
  #   where et.price > 1500
order by premium_rate asc

`);
        return equipment;
    }
}
