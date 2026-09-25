import { pgTable, uuid, varchar, integer, timestamp } from 'drizzle-orm/pg-core';

export const rooms = pgTable('rooms', {
  id: uuid('id').primaryKey().defaultRandom(),
  name: varchar('name', { length: 100 }).notNull(),
  capacity: integer('capacity').notNull(),
  pricePerNight: integer('price_per_night').notNull(), // Em centavos
  createdAt: timestamp('created_at').defaultNow().notNull(),
});