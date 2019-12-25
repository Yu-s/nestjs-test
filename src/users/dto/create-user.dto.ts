import { IsNotEmpty, IsNumber, MaxLength } from 'class-validator';

export class CreateUserDto {

  @IsNotEmpty()
  @MaxLength(48)
  readonly name: string;

  @IsNumber()
  @IsNotEmpty()
  @MaxLength(3)
  readonly age: number;
}
