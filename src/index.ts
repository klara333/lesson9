import 'dotenv/config'
import { db } from './database'

const main = async () => {
    await db
        .insertInto('author')
        .values({
            first_name: "Jackie",
            last_name: "Collins"
        }).executeTakeFirst();

    await db
        .insertInto('category')
        .values({
            category_name: "fantasy",
        }).executeTakeFirst();

    await db.deleteFrom('author').where('author.id', '=', 3).executeTakeFirst();

    await db
        .insertInto('book')
        .values({
            title: "Lady Boss",
            publishing_house: "Alpress",
            year: 2012,
            isbn: "",
            category_id: 1,
            author_id: 5
        }).executeTakeFirst();

    const result = await db
        .selectFrom('author')
        .innerJoin('book', 'book.author_id', 'author.id')
        .innerJoin('category', 'category.id', 'book.category_id')
        .select(['author.first_name', 'author.last_name',
            'book.title', 'book.publishing_house', 'book.year',
            'category.category_name'])
        .execute();

    console.log(result)
}

main()