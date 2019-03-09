import { Injectable } from '@nestjs/common';

@Injectable()
export class CommonService {
    sayCommon(): string {
        return 'common';
    }
}
