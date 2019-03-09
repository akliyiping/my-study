import { Injectable, MiddlewareFunction, NestMiddleware } from '@nestjs/common';
import {Request} from 'express';
@Injectable()
export class LoggerMiddleware implements NestMiddleware {
  resolve(...args: any[]): MiddlewareFunction {
    return (req: Request, res, next) => {
      console.log('loggermiddleware', req.baseUrl, args)
      next();
    };
  }
}
