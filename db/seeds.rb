# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

food = Category.new(name: "Flexible Food")

Product.new(name: "Squeeze Bacon",
			description: "Direct from Sweden, the bacon you can squeeze comes in a ketchup-style bottle from which you can squeeze out strips of delicious bacon onto any meal. According to ThinkGeek.com, Squeez Bacon was invented by a young Swedish who found that “by precooking it and blending it in a special way, he was able to make a fully cooked 100% bacon paste that could be squeezed through a  tube.” All we can say is WOW. Why was this not invented sooner?",
			price: 8,
			image_url: "https://raw.githubusercontent.com/bobolinks-2014/Amozin/seed/images/bacon.jpeg",
			category_id: food.id)

Product.new(name: "Cheesy Poofs",
			description:"Any puffed grain snack which is flavored like cheese, such as Cheet-o's, but in particular various generic 'Cheese Puffs' which are round and.. poofy. 
				(as a matter of fact, my sister used this term a lot before southpark was launched.)",
			price: 3.50,
			image_url:"https://raw.githubusercontent.com/bobolinks-2014/Amozin/seed/images/cheesy_poofs.jpeg",
			category_id: food.id)

Product.new(name:"Duff Beer",
			description:"stereotypical commercial beer: cheap, poor-quality, and advertised everywhere.",
			price: 5,
			image_url:"https://raw.githubusercontent.com/bobolinks-2014/Amozin/seed/images/duff.jpeg",
			category_id: food.id)

Product.new(name:"Nuts and Gum",
			description:"Together at last!",
			price: 2,
			image_url:"https://raw.githubusercontent.com/bobolinks-2014/Amozin/seed/images/gum.jpeg",
			category_id: food.id)

Product.new(name: "Krabby Patty",
			description:"A Krabby Patty is a burger sold at the Krusty Krab. It is the best-known food at the Krusty Krab, and the most famous sandwich in Bikini Bottom.",
			price: 6,
			image_url:"https://raw.githubusercontent.com/bobolinks-2014/Amozin/seed/images/krabby.jpeg",
			category_id: food.id)

Product.new(name: "Stay Puft",
			description: "Formerly famous. Now legendary. Also, I am a marshmallow.",
			price: 4,
			image_url:"https://raw.githubusercontent.com/bobolinks-2014/Amozin/seed/images/puffs.jpeg",
			category_id: food.id)

Product.new(name: "Unicorn Meat",
			description:"Unicorns, as we all know, frolic all over the world, pooping rainbows and marshmallows wherever they go. We are confident you will find a world of bewilderment in every mouthful of scrumptious unicorn meat.",
			price: 100,
			image_url:"https://raw.githubusercontent.com/bobolinks-2014/Amozin/seed/images/unicorn.jpeg",
			category_id: food.id)


meds = Category.new(name: "Mediocre Medical")
future = Category.new(name: "Futuristic Features")
