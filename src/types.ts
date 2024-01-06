import { Generated } from 'kysely'

export interface AuthorTable {
    id: Generated<number>
    first_name: string
    last_name: string
}

export interface BookTable {
    id: Generated<number>
    title: string
    publishing_house: string,
    year: number
    isbn: string
    category_id: number
    author_id: number
}

export interface CategoryTable {
    id: Generated<number>
    category_name: string
}

export interface Database {
    author: AuthorTable
    book: BookTable
    category: CategoryTable
}