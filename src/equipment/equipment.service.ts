import { Injectable } from '@nestjs/common';
import axios from 'axios';
@Injectable()
export class EquipmentService {
    async snatchAllEquipment() {
        const equipReq = await axios({
            method: 'get',
            url: 'http://db.18183.com/wzry/equip/',
        });
        return equipReq.data.toString();
    }
}
