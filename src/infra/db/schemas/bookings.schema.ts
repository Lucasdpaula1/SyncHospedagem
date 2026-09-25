import { pgTable, uuid, varchar, timestamp, date } from 'drizzle-orm/pg-core';
import { rooms } from './rooms.schema.js';

export const bookings = pgTable('bookings', {
  id: uuid('id').primaryKey().defaultRandom(),
  roomId: uuid('room_id').references(() => rooms.id).notNull(),
  guestName: varchar('guest_name', { length: 100 }).notNull(),
  checkIn: date('check_in').notNull(),
  checkOut: date('check_out').notNull(),
  status: varchar('status', { length: 20 }).default('CONFIRMED').notNull(),
  createdAt: timestamp('created_at').defaultNow().notNull(),
});