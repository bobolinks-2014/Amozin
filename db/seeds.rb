# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


food = Category.create(name: "Flexible Food")

Product.create(name: "Squeeze Bacon",
			description: "The bacon you can squeeze comes in a ketchup-style bottle from which you can squeeze out strips of delicious bacon onto any meal.",
			price: 8,
			image_url: "bacon.jpeg",
			category_id: food.id)

Product.create(name: "Cheesy Poofs",
			description:"Any puffed grain snack which is flavored like cheese, such as Cheet-o's, but in particular various generic 'Cheese Puffs' which are round and.. poofy.
				(as a matter of fact, my sister used this term a lot before southpark was launched.)",
			price: 3.50,
			image_url:"cheesy_poofs.jpeg",
			category_id: food.id)

Product.create(name:"Duff Beer",
			description:"stereotypical commercial beer: cheap, poor-quality, and advertised everywhere.",
			price: 5,
			image_url:"duff.jpeg",
			category_id: food.id)

Product.create(name:"Nuts and Gum",
			description:"Together at last!",
			price: 2,
			image_url:"gum.jpeg",
			category_id: food.id)

Product.create(name: "Krabby Patty",
			description:"A Krabby Patty is a burger sold at the Krusty Krab. It is the best-known food at the Krusty Krab, and the most famous sandwich in Bikini Bottom.",
			price: 6,
			image_url:"krabby.jpeg",
			category_id: food.id)

Product.create(name: "Stay Puft",
			description: "Formerly famous. Now legendary. Also, I am a marshmallow.",
			price: 4,
			image_url:"puffs.jpeg",
			category_id: food.id)

Product.create(name: "Unicorn Meat",
			description:"Unicorns, as we all know, frolic all over the world, pooping rainbows and marshmallows wherever they go. We are confident you will find a world of bewilderment in every mouthful of scrumptious unicorn meat.",
			price: 100,
			image_url:"unicorn.jpeg",
			category_id: food.id)


meds = Category.create(name: "Mediocre Medical")

Product.create(name: "Band-Aids",
		description: "Heal a boo boo.",
		price: 3,
		image_url: "band_aid.jpeg",
		category_id: meds.id)

Product.create(name: "Clinical Strength Deoderant",
		description: "Feel comfortable exerting energy.",
		price: 14,
		image_url: "deoderant.jpeg",
		category_id: meds.id)

Product.create(name: "Foot Massage Machine",
		description: "Now you don't have to ask your wife.",
		price: 8,
		image_url: "foot_massage.jpeg",
		category_id: meds.id)

Product.create(name: "Pills",
		description: "A random assortment for a fun surprise",
		price: 30,
		image_url: "pill.jpeg",
		category_id: meds.id)

Product.create(name: "Vegetables",
		description: "You are what you eat.",
		price: 30,
		image_url: "vegetables.jpeg",
		category_id: meds.id)

# future = Category.new(name: "Futuristic Features")

# category = Category.create(name: 'Snippets')

# Product.create( name: 'Meatball Skateboard',
#                       price: 2,
#                       description: 'Greate way to get around town while staying off the hangry train',
#                       category_id: category.id)

# Product.create( name: 'Canaries in Cantaloupes',
#                       price: 3.8,
#                       image_url: "http://cdn0.lostateminor.com/wp-content/uploads/2012/01/funny-fake-products2.jpg",
#                       description: 'Great way to get around town while staying off the hangry train',
#                       category_id: category.id)

