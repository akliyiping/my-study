import {ExecutionContext, Injectable, NestInterceptor} from '@nestjs/common';
import {Observable, of} from 'rxjs';
import {catchError, tap, map} from 'rxjs/operators';

@Injectable()
export class LoggerInterceptor implements NestInterceptor {
    intercept(context: ExecutionContext, call$: Observable<any>): Observable<any> {
        console.log('Before...');
        const now = Date.now();
        return call$.pipe(
            map(data => {
                console.log(`After... ${Date.now() - now}ms`);
                return {
                    success: true,
                    data,
                };
            }),
            catchError(error => of(error)),
        );
    }
}
