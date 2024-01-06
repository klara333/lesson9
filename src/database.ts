import { Database } from './types'
import { Kysely } from 'kysely'
import { NeonHTTPDialect } from "kysely-neon"

export const db = new Kysely<Database>({
  dialect: new NeonHTTPDialect({
    connectionString: process.env.DATABASE_URL as string,
  }),
})