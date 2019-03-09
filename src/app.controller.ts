import { AppService } from './app.service';
import {NextFunction} from 'express';
import {Controller, Get, Param, Request, Response} from '@nestjs/common';
import {CommonService} from './common/common.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService, private commonService: CommonService) {}

  @Get()
  getHello(): string {
    return this.commonService.sayCommon();
  }

  @Get('name/:id')
  getAllUsers(req: Request, res: Response, next: NextFunction, @Param('id') id) {
    return id;
  }
}
