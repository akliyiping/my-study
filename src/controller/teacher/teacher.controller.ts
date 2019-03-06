import {Controller, Get} from '@nestjs/common';

@Controller('teacher')
export class TeacherController {
    @Get()
    getAllTeachers() {
        return [1, 2, 3];
    }
}
