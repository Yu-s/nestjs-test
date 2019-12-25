import { Controller, Get, Post, Body, Param } from '@nestjs/common';
import { CreateUserDto } from './dto/create-user.dto';
import { UsersService } from './users.service';
import { UserInterface } from './interfaces/user.interface';
import { User } from './entities/user.entity';
import { async } from 'rxjs/internal/scheduler/async';

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
    return 'OK';
  }

  @Get()
  async findAll(): Promise<UserInterface[]> {
    return this.usersService.findAll();
  }

  @Get(':id')
  async findOne(@Param() params): Promise<UserInterface> {
    return this.usersService.findOne(params.id);
  }
}
