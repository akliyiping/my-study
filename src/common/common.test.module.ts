import {TypeOrmModule} from '@nestjs/typeorm';
import {join} from 'path';
import {Module} from '@nestjs/common';

@Module({
    imports: [
        TypeOrmModule.forRoot({
            name: 'default_test',
            type: 'mysql',
            host: 'localhost',
            port: 3306,
            username: 'root',
            password: '1pppppp',
            database: 'kings',
            synchronize: false,
            entities: [
                join(__dirname, './entity/entities/*.ts'),
            ],
        })],
    exports: [TypeOrmModule],
})
export class CommonTestModule {

}
