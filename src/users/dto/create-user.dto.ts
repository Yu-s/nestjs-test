import { IsNotEmpty, IsNumber, MaxLength, IsEmail } from 'class-validator';

export class CreateUserDto {

  @IsNotEmpty()
  @MaxLength(48)
  readonly name: string;

  @IsNumber()
  @IsNotEmpty()
  @MaxLength(3)
  readonly age: number;

  @IsEmail()
  @IsNotEmpty()
  readonly mail: string;
}
