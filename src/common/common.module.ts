import {Global, MiddlewareConsumer, Module, NestModule} from '@nestjs/common';
import {CommonService} from './common.service';
import {LoggerMiddleware} from './middlewares/logger.middleware';
import {HttpExceptionFilter} from './filter/HttpExceptionFilter';
import {APP_FILTER, APP_PIPE} from '@nestjs/core';
import {ValidationPipe} from './pipe/validation.pipe';

@Module({
    providers: [CommonService, {
        provide: APP_FILTER,
        useClass: HttpExceptionFilter,
    }, {
        provide: APP_PIPE,
        useClass: ValidationPipe,
    }],
    exports: [CommonService],
})
export class CommonModule implements NestModule {
    configure(consumer: MiddlewareConsumer) {
        consumer
            .apply(LoggerMiddleware)
            .with('a', 'b')
            .forRoutes('/*');
    }
}
