import {Controller, Get, Param, Request, Response, UsePipes} from '@nestjs/common';
import {EquipmentSnatchService} from './service/equipment.snatch.service';
import {EquipmentQueryService} from './service/equipment.query.service';
import {ValidationPipe} from '../common/pipe/validation.pipe';

@Controller('equipment')
export class EquipmentController {
    constructor(private readonly equipmentSnatchService: EquipmentSnatchService,
                private readonly equipmentQueryService: EquipmentQueryService) {
    }

    @Get('clearAndSaveAllEquipment')
    async clearAndSaveAllEquipment() {
        const allPageEquipment = this.equipmentSnatchService.snatchAllPageEquipment();
        const entities = await this.equipmentSnatchService.parsePageEquipmentToEntities(allPageEquipment);
        return await this.equipmentQueryService.clearAndSaveAllEquipment(entities);
    }

    @Get('getPremiumRate')
    async getPremiumRate() {
        return await this.equipmentQueryService.getPremiumRate();
    }

    @Get('getEquipmentCP')
    @UsePipes(ValidationPipe)
    async getEquipmentCP() {
        return await this.equipmentQueryService.getEquipmentCP();
    }

    @Get(':id')
    async getAllEquipment() {
        return await this.equipmentQueryService.getAllEquipment();
    }

}
