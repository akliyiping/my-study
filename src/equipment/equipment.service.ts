import {HttpException, Injectable} from '@nestjs/common';
import axios from 'axios';
import {Connection, EntityManager, In, Repository, Transaction, TransactionRepository} from 'typeorm';
import {Equipment} from '../common/entity/entities/Equipment';
import * as _ from 'lodash';
import {transliterate as tr, slugify} from 'transliteration';
import PageEquipment from './interface/PageEquipment';
import {EquipmentPropertyUnit} from '../common/entity/entities/EquipmentPropertyUnit';
import {PropertyUnit} from '../common/entity/entities/PropertyUnit';

@Injectable()
export class EquipmentService {

    constructor(private readonly connection: Connection) {
    }

    async snatchAllPageEquipment() {
        const equipReq = await axios({
            method: 'get',
            url: 'https://pvp.qq.com/zlkdatasys/item.json',
            responseType: 'json',
        });
        return equipReq.data.zbsy_46;
    }

    async snatchPageEquipmentInfoById(id) {
        const equipReq = await axios({
            method: 'get',
            url: `https://pvp.qq.com/zlkdatasys/a20171010wsqzbzl/${id}.json`,
            responseType: 'json',
        });
        return equipReq.data;
    }

    async parsePageEquipmentToEntities(allPageEquipment) {
        const equipmentArr: Equipment[] = [];
        await Promise.all(allPageEquipment.map(async (item: PageEquipment) => {
            const equipment = new Equipment();
            equipment.name = item.zbzwm_00;
            equipment.label = slugify(equipment.name, {separator: '_'});
            equipment.imageUrl = `//game.gtimg.cn/images/yxzj/ingame/hero/equip/'${item.zbid_7c}'.png'`;
            equipment.price = item.zbzj_26;
            const info = await this.snatchPageEquipmentInfoById(item.zbid_7c);
            equipment.info = info;
            equipmentArr.push(equipment);
        }));
        return equipmentArr;
    }

    async getAllEquipment(): Promise<Equipment[]> {
        return this.connection.getRepository(Equipment).find();
    }

    async clearAndSaveAllEquipment() {
        const entities = await this.parsePageEquipmentToEntities(await this.snatchAllPageEquipment());
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
