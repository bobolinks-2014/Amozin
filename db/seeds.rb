# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
category = Category.create(name: 'Snippets')

Product.create( name: 'Meatball Skateboard',
                      price: 2,
                      description: 'Greate way to get around town while staying off the hangry train',
                      category_id: category.id)

Product.create( name: 'Canaries in Cantaloupes',
                      price: 3.8,
                      image_url: "http://cdn0.lostateminor.com/wp-content/uploads/2012/01/funny-fake-products2.jpg",
                      description: 'Great way to get around town while staying off the hangry train',
                      category_id: category.id)
