import {Global, MiddlewareConsumer, Module, NestModule} from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import {CommonService} from './service/common.service';
import {LoggerMiddleware} from './middlewares/logger.middleware';
import {HttpExceptionFilter} from './filter/HttpExceptionFilter';
import {APP_FILTER, APP_PIPE} from '@nestjs/core';
import {ValidationPipe} from './pipe/validation.pipe';
import {join} from 'path';

@Module({
    providers: [CommonService, {
        provide: APP_FILTER,
        useClass: HttpExceptionFilter,
    }, {
        provide: APP_PIPE,
        useClass: ValidationPipe,
    }],
    imports: [],
    exports: [CommonService],
})
export class CommonModule implements NestModule {
    configure(consumer: MiddlewareConsumer) {
        consumer
            .apply(LoggerMiddleware)
            .forRoutes('/*');
    }
}
