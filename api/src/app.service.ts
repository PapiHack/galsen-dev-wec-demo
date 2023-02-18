import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World!';
  }

  serviceHealth(): string {
    return 'Service healthy!';
  }
}
