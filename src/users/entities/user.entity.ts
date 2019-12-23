import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class User {
  constructor(
    name,
    age,
  ) {
    this.name = name;
    this.age = age;
  }

  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 500 })
  name: string;

  @Column()
  age: number;
}
