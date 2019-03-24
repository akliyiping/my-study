import {HttpException, Injectable} from '@nestjs/common';
import axios from 'axios';
import {Connection, EntityManager, Repository, Transaction, TransactionRepository} from 'typeorm';
import {Equipment} from '../common/entity/entities/Equipment';
import * as _ from 'lodash';
import {transliterate as tr, slugify} from 'transliteration';
import PageEquipment from './interface/PageEquipment';

@Injectable()
export class EquipmentService {

    constructor(private readonly connection: Connection) {
    }

    async snatchAllPageEquipment() {
        let allEquipment: PageEquipment[] = [];
        const equipReq = await axios({
            method: 'get',
            url: 'http://db.18183.com/api/equip/',
        });
        if (equipReq.data) {
            const str = equipReq.data.toString().replace('var all_equip=', '');
            allEquipment = _.values(JSON.parse(str));
        }
        return allEquipment;
    }

    async parsePageEquipmentToEntities(allPageEquipment) {
        const equipmentArr: Equipment[] = [];
        allPageEquipment.forEach((item) => {
            const equipment = new Equipment();
            equipment.name = item.name;
            equipment.label = slugify(equipment.name, {separator: '_'});
            equipment.imageUrl = item.info.icon;
            equipment.price = item.info.price;
            equipment.category = item.category;
            equipmentArr.push(equipment);
        });
        return equipmentArr;
    }

    async getAllEquipment(): Promise<Equipment[]> {
        return this.connection.getRepository(Equipment).find({where: {id: 1}});
    }

    async clearAndSaveAllEquipment() {
        const entities = await this.parsePageEquipmentToEntities(await this.snatchAllPageEquipment());
        await this.connection.transaction( async (entityManager) => {
            await entityManager.clear(Equipment);
            await entityManager.save(entities);
        });
    }
}
