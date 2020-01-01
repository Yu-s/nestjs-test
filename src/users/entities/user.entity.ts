import { Entity, Column, PrimaryGeneratedColumn, Index } from 'typeorm';

@Entity()
export class User {
  constructor(
    name,
    age,
    mail,
  ) {
    this.name = name;
    this.age = age;
    this.mail = mail;
  }

  @PrimaryGeneratedColumn()
  id: number;

  @Column({ length: 500 })
  name: string;

  @Column()
  age: number;

  @Column()
  @Index({ unique: true })
  mail: string;
}
