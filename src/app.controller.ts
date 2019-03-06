import { AppService } from './app.service';
import {NextFunction} from 'express';
import {Controller, Get, Param, Request, Response} from '@nestjs/common';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return '2211';
  }

  @Get('name/:id')
  getAllUsers(req: Request, res: Response, next: NextFunction, @Param('id') id) {
    return id;
  }
}
