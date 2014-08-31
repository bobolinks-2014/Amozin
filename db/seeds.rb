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
			quantity: 50,
			category_id: food.id)

Product.create(name: "Cheesy Poofs",
			description:"Any puffed grain snack which is flavored like cheese, such as Cheet-o's, but in particular various generic 'Cheese Puffs' which are round and.. poofy.
				(as a matter of fact, my sister used this term a lot before southpark was launched.)",
			price: 3.50,
			image_url:"cheesy_poofs.jpeg",
			quantity: 50,
			category_id: food.id)

Product.create(name:"Duff Beer",
			description:"stereotypical commercial beer: cheap, poor-quality, and advertised everywhere.",
			price: 5,
			image_url:"duff.jpeg",
			quantity: 50,
			category_id: food.id)

Product.create(name:"Nuts and Gum",
			description:"Together at last!",
			price: 2,
			image_url:"gum.jpeg",
			quantity: 50,
			category_id: food.id)

Product.create(name: "Krabby Patty",
			description:"A Krabby Patty is a burger sold at the Krusty Krab. It is the best-known food at the Krusty Krab, and the most famous sandwich in Bikini Bottom.",
			price: 6,
			image_url:"krabby.jpeg",
			quantity: 50,
			category_id: food.id)

Product.create(name: "Stay Puft",
			description: "Formerly famous. Now legendary. Also, I am a marshmallow.",
			price: 4,
			image_url:"puffs.jpeg",
			quantity: 50,
			category_id: food.id)

Product.create(name: "Unicorn Meat",
			description:"Unicorns, as we all know, frolic all over the world, pooping rainbows and marshmallows wherever they go. We are confident you will find a world of bewilderment in every mouthful of scrumptious unicorn meat.",
			price: 100,
			image_url:"unicorn.jpeg",
			quantity: 50,
			category_id: food.id)


meds = Category.create(name: "Mediocre Medical")

product1 = Product.create(name: "Band-Aids",
		description: "Heal a boo boo.",
		price: 3,
		image_url: "band_aid.jpeg",
		quantity: 50,
		category_id: meds.id)

product2 = Product.create(name: "Clinical Strength Deoderant",
		description: "Feel comfortable exerting energy.",
		price: 14,
		image_url: "deoderant.jpeg",
		quantity: 50,
		category_id: meds.id)

product3 = Product.create(name: "Foot Massage Machine",
		description: "Now you don't have to ask your wife.",
		price: 8,
		image_url: "foot_massage.jpeg",
		quantity: 50,
		category_id: meds.id)

Product.create(name: "Pills",
		description: "A random assortment for a fun surprise",
		price: 30,
		image_url: "pill.jpeg",
		quantity: 50,
		category_id: meds.id)

Product.create(name: "Vegetables",
		description: "You are what you eat.",
		price: 30,
		image_url: "vegetables.jpeg",
		quantity: 50,
		category_id: meds.id)

user1 = User.create()
user2 = User.create()

cart1 = Cart.create(user: user1)
cart2 = Cart.create(user: user2)
cart3 = Cart.create()

cart1.add_product(product1.id)
cart1.add_product(product2.id)

cart2.add_product(product1.id)

cart3.add_product(product3.id)

trans = Category.create(name: 'Verocious Vehicles')
	Product.create(name: "BathTub Racer",
		description: "When you're in a hurry.",
		price: 2000,
		image_url: "bathtub_racer.jpg",
		quantity: 50,
		category_id: trans.id)

	Product.create(name: "Couch Racer",
		description: "They won't catch you ridin dirty with this.",
		price: 2000,
		image_url: "couch_car.jpg",
		quantity: 50,
		category_id: trans.id)

		Product.create(name: "Cowboy Skates",
		description: "Square dancing, the fun way.",
		price: 100,
		image_url: "cowboy_rolls.jpg",
		quantity: 50,
		category_id: trans.id)

		Product.create(name: "HotTub Boat",
		description: "In water, in water, water-ception.",
		price: 4000,
		image_url: "hottub_boat.jpg",
		quantity: 50,
		category_id: trans.id)

		Product.create(name: "Hoverboard",
		description: "Ride anywhere you want, in air",
		price: 1000,
		image_url: "hoverboard.jpg",
		quantity: 50,
		category_id: trans.id)

		Product.create(name: "Magic Carpet",
		description: "Ever wanted to be like Aladdin, nows your chance.",
		price: 3000,
		image_url: "magic_carpet.jpg",
		quantity: 50,
		category_id: trans.id)

		Product.create(name: "Potter's Broom",
		description: "Be the best Quidditch player ever to live with this.",
		price: 1000,
		image_url: "potters_broom.jpg",
		quantity: 50,
		category_id: trans.id)

		Product.create(name: "Wood Bike",
		description: "Rollin like yabba dabba doo.",
		price: 800,
		image_url: "wood_bikes.jpg",
		quantity: 50,
		category_id: trans.id)

clothes = Category.create(name: 'Colorful Clothes')

Product.create(name: "Baby Jacket",
		description: "For when you're little and cold.",
		price: 40,
		image_url: "baby_jacket.jpg",
		quantity: 50,
		category_id: clothes.id)

Product.create(name: "Doggie Giraffe",
		description: "Being little means nothing anymore.",
		price: 20,
		image_url: "doggie_giraffe.jpg",
		quantity: 50,
		category_id: clothes.id)

Product.create(name: "Fresh Geek",
		description: "Dress to impress with this fine outfit.",
		price: 70,
		image_url: "fresh_outfit.jpg",
		quantity: 50,
		category_id: clothes.id)

Product.create(name: "Future Suit",
		description: "Dressing with future in mind.",
		price: 150,
		image_url: "future_suit.jpg",
		quantity: 50,
		category_id: clothes.id)

Product.create(name: "Hairy Shirt",
		description: "For when you want to dress with maturity in mind",
		price: 30,
		image_url: "hair_shirt.jpg",
		quantity: 50,
		category_id: clothes.id)

Product.create(name: "Jean Warmers",
		description: "Jeans, for your feet",
		price: 30,
		image_url: "jean_legs.jpg",
		quantity: 50,
		category_id: clothes.id)

Product.create(name: "Stockings for Anyone",
		description: "For when you like that hairy look.",
		price: 20,
		image_url: "leg_stockings.jpg",
		quantity: 50,
		category_id: clothes.id)

Product.create(name: "Pajama Suit",
		description: "Look fly, even when you sleep.",
		price: 80,
		image_url: "suit_pajamas.jpg",
		quantity: 50,
		category_id: clothes.id)

Product.create(name: "Poodle Pants",
		description: "For people who love their jeans.",
		price: 40,
		image_url: "poodle_pants.jpg",
		quantity: 50,
		category_id: clothes.id)

Product.create(name: "Six Pack Shirt",
		description: "Who doesn't want a six pack.",
		price: 50,
		image_url: "six_pack_shirt.jpg",
		quantity: 50,
		category_id: clothes.id)



