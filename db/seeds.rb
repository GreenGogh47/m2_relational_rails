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

@rare_book_1 = @library_1.rare_books.create!(
                            title: "Witches and Sh-tuff",
                            cost: 2345,
                            on_display: false)
@rare_book_2 = @library_1.rare_books.create!(
                            title: "Shaving Hobbit Feet",
                            cost: 2000000,
                            on_display: true)
@rare_book_3 = @library_1.rare_books.create!(
                            title: "Intro to Geomancy",
                            cost: 8765,
                            on_display: true)