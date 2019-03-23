import {Body, Controller, Get, HttpException, Post, UsePipes} from '@nestjs/common';
import {TeacherDto} from './dto/TeacherDto';

@Controller('teacher')
export class TeacherController {
    @Get()
    get(): string {
        return 'teacher';
    }

    @Get('err')
    getErr(): string {
        throw new HttpException('错误了', 200);
    }

    @Post('save')
    save(@Body() teacherDto: TeacherDto): TeacherDto {
        return teacherDto;
    }
}
