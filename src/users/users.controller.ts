import { Controller, Get, Post, Body } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UsersService } from './users.service';
import { UserInterface } from './interfaces/user.interface';
import { User } from './entities/user.entity';

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @Post()
  async create(@Body() createUserDto: CreateUserDto) {
    const user = new User(
      createUserDto.name,
      createUserDto.age,
    );
    this.usersService.create(user);
  }

  @Get()
  async findAll(): Promise<UserInterface[]> {
    return this.usersService.findAll();
  }
}
