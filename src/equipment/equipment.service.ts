import {Injectable} from '@nestjs/common';
import {load} from 'cheerio';
import axios from 'axios';
import {InjectRepository} from '@nestjs/typeorm';
import {Repository} from 'typeorm';
import {Equipment} from '../common/entity/entities/Equipment';

@Injectable()
export class EquipmentService {

    constructor(@InjectRepository(Equipment)
                private readonly equipmentRepository: Repository<Equipment>) {
    }

    async snatchAllEquipment() {
        const equipReq = await axios({
            method: 'get',
            url: 'http://db.18183.com/wzry/equip/',
        });
        return equipReq.data.toString();
    }

    async parseEquipmentByHtml() {
        const allEquipmentHtml = await this.snatchAllEquipment();
        const $cheerioStatic = load(allEquipmentHtml);
        return $cheerioStatic('.mod-iconitem-tit').length;
    }

    async getAllEquipment(): Promise<Equipment[]> {
        return this.equipmentRepository.find({where: {id: 1}});
    }
}
