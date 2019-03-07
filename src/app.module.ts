import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { TeacherModule } from './teacher/teacher.module';

@Module({
  controllers: [AppController],
  providers: [AppService],
  imports: [TeacherModule],
})
export class AppModule {}
