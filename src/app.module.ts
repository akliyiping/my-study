import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TeacherModule } from './teacher/teacher.module';
import { CommonModule } from './common/common.module';

@Module({
  controllers: [AppController],
  providers: [AppService],
  imports: [TeacherModule, CommonModule],
})
export class AppModule {}
