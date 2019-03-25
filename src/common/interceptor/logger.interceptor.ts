import { ExecutionContext, Injectable, NestInterceptor } from '@nestjs/common';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Injectable()
export class LoggerInterceptor implements NestInterceptor {
  intercept(context: ExecutionContext, call$: Observable<any>): Observable<any> {
    console.log('LoggerInterceptor1', context.switchToHttp().getRequest().baseUrl);
    return call$.pipe(map(data => {
      console.log('LoggerInterceptor2', context.switchToHttp().getRequest().baseUrl);
      return data;
    }));
  }
}