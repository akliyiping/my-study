import {Controller, Get, Param, Request, Response} from '@nestjs/common';
import {EquipmentService} from './equipment.service';

@Controller('equipment')
export class EquipmentController {
    constructor(private readonly equipmentService: EquipmentService) {
    }

    @Get()
    async getHello() {
        return this.equipmentService.snatchAllEquipment();
    }

}
