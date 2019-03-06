import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import {TeacherController} from './controller/teacher/teacher.controller';

@Module({
  controllers: [AppController, TeacherController],
  providers: [AppService],
})
export class AppModule {}
