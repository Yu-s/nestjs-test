import { Injectable, NestInterceptor, ExecutionContext, CallHandler, UnauthorizedException } from '@nestjs/common';
import { Observable } from 'rxjs';
import axios from 'axios';
import { awaitExpression } from '@babel/types';

@Injectable()
export class AuthInterceptor implements NestInterceptor {
  async intercept(context: ExecutionContext, next: CallHandler) {
    const req = context.switchToHttp().getRequest();
    console.log(req.headers);
    if (!req.headers.authorization) {
      throw new UnauthorizedException();
    }
    await axios
      .get(
        'https://9on6pvbxh5.execute-api.ap-northeast-1.amazonaws.com/auth/authorize',
        { headers: { Authorization: req.headers.authorization} },
      )
      .then(response => {
        console.log('OK!:', response.status);
      })
      .catch(err => {
        console.log('err...:', err);
        throw new UnauthorizedException();
      });
    return next.handle();
  }
}