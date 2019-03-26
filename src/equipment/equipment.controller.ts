import {Controller, Get, Param, Request, Response} from '@nestjs/common';
import {EquipmentService} from './equipment.service';

@Controller('equipment')
export class EquipmentController {
    constructor(private readonly equipmentService: EquipmentService) {
    }

    @Get('clearAndSaveAllEquipment')
    async clearAndSaveAllEquipment() {
        return await this.equipmentService.clearAndSaveAllEquipment();
    }

    @Get('getPremiumRate')
    async getPremiumRate() {
        return await this.equipmentService.getPremiumRate();
    }

    @Get(':id')
    async getAllEquipment() {
        return await this.equipmentService.getAllEquipment();
    }

}
