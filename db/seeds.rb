# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@library_1 = Library.create!(name: "Hogwarts",
                            study_rooms: 321,
                            free_parking: false)
@library_2 = Library.create!(name: "Middle Earth Public Library",
                            study_rooms: 543,
                            free_parking: true)
@library_3 = Library.create!(name: "Jedi Archives",
                            study_rooms: 50942,
                            free_parking: true)

# HP books
@rare_book_1 = @library_1.rare_books.create!(
                            title: "Witches and Sh-tuff",
                            cost: 2345,
                            on_display: false)
@rare_book_2 = @library_1.rare_books.create!(
                            title: "Intro to Geomancy",
                            cost: 8765,
                            on_display: true)
@rare_book_3 = @library_1.rare_books.create!(
                            title: "Intro to Necromancy",
                            cost: 666,
                            on_display: false)
@rare_book_4 = @library_1.rare_books.create!(
                            title: "Intro to Firemancy",
                            cost: 2000000,
                            on_display: true)

# LOTR books
@rare_book_5 = @library_2.rare_books.create!(
                            title: "Shaving Hobbit Feet",
                            cost: 2345,
                            on_display: false)
@rare_book_6 = @library_2.rare_books.create!(
                            title: "Who is Tom Bombadill?",
                            cost: 345637,
                            on_display: true)
@rare_book_7 = @library_2.rare_books.create!(
                            title: "7 Rings",
                            cost: 3457,
                            on_display: false)
@rare_book_8 = @library_2.rare_books.create!(
                            title: "Serving Man - Orc Battle Cookbook",
                            cost: 6630,
                            on_display: true)

# SW books
@rare_book_9 = @library_3.rare_books.create!(
                            title: "Yoda's Journal",
                            cost: 908345,
                            on_display: false)
@rare_book_10 = @library_3.rare_books.create!(
                            title: "The Rammahgon",
                            cost: 3933334,
                            on_display: true)
@rare_book_11 = @library_3.rare_books.create!(
                            title: "The Aionomica Volume 1",
                            cost: 342457,
                            on_display: false)
@rare_book_12 = @library_3.rare_books.create!(
                            title: "Meditations on Meditations",
                            cost: 9872345,
                            on_display: true)