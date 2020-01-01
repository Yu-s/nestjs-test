import { ArgumentsHost, Type } from "@nestjs/common";

export interface ExecutionContext extends ArgumentsHost {
  getClass<T = any>(): Type<T>;
  getHandler(): Function;
}