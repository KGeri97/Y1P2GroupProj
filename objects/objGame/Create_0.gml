surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H)

room_goto(rMainMenu);

global.day = 1;
global.interactionCooldown = 0;
global.accusations = [["",""],["",""],["",""],["",""],["",""]];
global.schedule = [	[objDMRV, "rCity","rRestaurant","rClassroom"],
					[objJaanJuhan, "rClothing","rShop","rCity"],
					[objMadeKosasi, "rRestaurant","rCity","rClothing"],
					[objNagyVivien, "rShop","rClassroom","rRestaurant"],
					[objOliverMurphy, "rClassroom","rClothing","rShop"]]
					
global.npcData = {
	dmrv: {
		nationality: "",
		textOptions: {
			city: [["There's a lot of spices and foods here\nthat I've never seen in my country!\nIt's amazing!", "However, back home we have a lot of\nfresh fruits that are really hard to\nfind in the Netherlands."]],
			cityU:[],
			shop: [["I crave salty food in the morning. My family\nusually eats some eggs and a cooked dish\nwith rice and beans for breakfast."],
					["I'm trying to find the ingredients\nto make our typical dish.", "It is called \"Married\" and it's got\na bit of everything in the same plate."]],
			shopU: [],
			restaurant: [["Most of my family likes to eat\n rice with every meal but I'm\ngetting used to the bread now.", "My brother has celiac's disease so it\nis much easier for him to eat back\nhome than eating out here."],
					["We actually don't eat that\nmuch spicy food back home,\nbut our neighboring countries do."],
					["I want eat some sweet fried\nplantain with my dinner or lunch\nbut I can't find it anywhere."]],
			restaurantU: [],
			classroom: [["I miss going out to party at clubs\nand dance to reggaeton with my friends.", "Most people here don't seem\nto know how to dance."],
					["I prefer to give a kiss\non the cheek or a hug when I\nmeet someone for the first time", "but I've had to adapt so that\nother people feel more comfortable"]],
			classroomU: [],
			clothing: [["Sometimes guys in my country\nonly wear swim trunks in the city.", "Especially near the beaches\nwhere it's really warm.\nIt's a chill vibe."]],
			clothingU: [],
			others: [["I thought Made was very\ndistant when we first met.", "I'm not sure I like her vibe\nthat much and I think she\ndoesn't like me back either."],
					["Vivien seems cool and I heard\nshe likes to dance but she gets\ninto these very deep random conversations.", "The other day she was talking about\ncommunism and I didn't undersand\nmost of what she was saying."]],
			othersU: []
		}
	},
	jj: {
		nationality: "",
		textOptions: {
			city: [[]],
			cityU:[],
			shop: [[]],
			shopU: [],
			restaurant: [[]],
			restaurantU: [],
			classroom: [[]],
			classroomU: [],
			clothing: [[]],
			clothingU: [],
			others: [[]],
			othersU: []
		}
	},
	mk: {
		nationality: "",
		textOptions: {
			city: [["You can find a lot of these spices back\nhome too! We have a lot of\nhistory with the Dutch.", "Most of it is bad but at least it means\nnowadays I get to enjoy a taste of home\nand share it with others here."],
					["Some people are scared of all the bicycles\ncycling around but you should see the\nmotorbikes in my country, it's chaos!"]],
			cityU:[],
			shop: [["The heat from spicy food here just hits\nyou all at once and then it's gone.", "Back home the heat builds up\nand stays with you.", "The flavour of the chilli is more\nimportant back home too,\nit's a big part of the dish."],
					["I wonder if there's an Asian market\nsomewhere in town? I'm looking to get\nsome ingredients for dishes from back home.", "Let me know if you find some\nsweet potatoes or shallots."]],
			shopU: [],
			restaurant: [["They don't serve enough rice here,\nI don't think bread or potatoes is\ngoing to cut it for me.", "Though the Dutch *do* have a lot\nof fried snacks...\nthat's similar to back home."],
					["I wish they served hot orange juice,\nit'd help with the cold."]],
			restaurantU: [],
			classroom: [["I really feel like a snack but the only\ncheap options here are kebab shops and\nsandwiches and they really don't compare to home.", "I miss being able to hang out\nand have a cheap full meal."],
					["I like how the university has given us buddies\nand groups for the introduction week,\nmakes us feel like a big family.", "Back home family and community\nare *really* important."]],
			classroomU: [],
			clothing: [["I'm looking for a shirt with a cool pattern.\nWe have some very beautiful designs back home."],
					["Brrr, I feel cold even in here.", "I really need to get a warmer jacket\nbut I don't know anything\nabout winter clothes."]],
			clothingU: [],
			others: [["David seems alright,\nI heard that they're really good at dancing.", "I wonder if he'd want\nto go to karaoke sometime.", "You're invited too, of course!\nI'm trying to get a little group together."],
					["Nagy is really cool!\nShe told me a lot of really interesting\nhistorical stuff about her country.", "I also want to learn some more\nabout recipes that she knows about."],
					["Jaan really doesn't seem to\nlike it here in the Netherlands.", "He just keeps talking about his home\nvillage and it's starting to annoy me a bit."],
					["Oliver is kind of weird.", "He was talking about how rice is a big part of his country\nbut when I tried to talk to him about\ndifferent recipes he didn't know of any!"]],
			othersU: []
		}
	},
	nv: {
		nationality: "",
		textOptions: {
			city: [["It's so nice to see that these old\nbuildings are being taken care of.", "At home, even in the capital city,\nthe buildings are not only old,\nbut look old too."],
					["I find it funny that the cyclist here\nin Groningen are the same as back home.", "They all think the roads are theirs\nmaking most of the drivers hate them.", "The only difference is that in the Netherlands\nthey have bike roads, while in my country\nthey are forced to bike on the roads meant for cars."]],
			cityU:[],
			shop: [["By any chance did you see this product,\nI cant seem to find it anywhere.\n", "It's a vital part of my recipe and if I can't find it,\nI have to go with my secondary shopping list.", " You think I'm very detailed and\nprepared for the worst too?\nI guess it's in my people's nature.", "During the communist era we were better of\ndoing nothing rather than making a mistake."],
					["During historic times my country focused or\nwas forced to focus a lot on agriculture.", "Which is why bakery, meat and dairy products\nare quite varied and popular there.", "Due to the geograpchical properties of the Netherlands\nthey were much like us.", "A proof of it is the wide variety\nof dairy products.", "It makes me feel like I'm at home a bit."],
					["The cheapest prices are always marked with\nblue tags in Albert Heijn.", "This is not just handy,\nbut also representing the frugal mentality."]],
			shopU: [],
			restaurant: [["I find it very interesting that\nDutch people eat meat, potato and vegetables\nevery day.", "It must have stayed from old farmer days,\nwhen the food was meant to be nutritious\nrather than tasty.", "Personally I find it very boring and miss my\ntraditional foods. The meals were\nbalanced only if we measure it over a week.", "I wonder why is that?"],
					["I heard the trifecta of meat, veggies\nand potato comes from a cookbook called Aaltje\nfrom the harsher times.", "It has nothing on our meals made outdoor in a cauldron.\nThese are remnants from our nomadic lifestyle."]],
			restaurantU: [],
			classroom: [["I was at a birthday party yesterday.\nMaan it was so uncomfortable.\nEveryone was congratulating everyone.", "I'm like what?", "You're supposed to give blessings...\nand only to the celebrated."],
					["I got so confused while driving recently.\nI saw those different looking speed limit signs.", "Turns out these are suggested speed limit\nthat you don't have to obey.\nI had no idea these existed."],
					["People here are brutally honest.\nI try not to take it personally,\nbecause it is the norm here.", "But it is hard getting accustomed to it.\nEven more so for me, as in my culture\nmost people would say what's nice to say."]],
			classroomU: [],
			clothing: [["It's so hard to find proper pants for myself.\nThey're either to slim or too wide.\nThere is no middleground."],
					["Ugh... I can't decide which culture's\ntraditional clothes are worse...", "These wooden clogs,\nor the embroided flower patterned dresses\nback at home."]],
			clothingU: [],
			others: [["David is really welcoming and likes to party.\nI would love to challange him to dance-off."],
			["I don't feel comfortable around Oliver.\nIt feels like to me that he is\nanxious all the time."],
			["I didn't talk too much with Jaan.\nHe seems to be quite distant.\nAs far as I'm concerned he is an okay guy."],
			["I'm kind of weirded out by Made.\nShe smiles all the time which is a bit creepy.", "I like her meals a whole lot though,\nshe's a good cook.", "But warmed up orange juice?\nI would never do that..."]],
			othersU: []
		}
	},
	om: {
		nationality: "",
		textOptions: {
			city: [["I've been wandering around the\nmarket looking for yoghurt drinks.", "Back home a yoghurt drink and some cheese\npastries is a classic childhood breakfast."]],
			cityU:[],
			shop: [["I spend so much money on food here!", "It is way cheaper back home, I think\nI might need to start saving some money before\nI can invite my classmates over for dinner"],
					["I'm so glad Dutch cuisine doesn't\ninclude rice that much.\nI'm not used to it at all."]],
			shopU: [],
			restaurant: [["Rice is a very important part of my culture,\nmy country produces a lot of it", "and the great thing about it is that\nyou can cook it in many different ways!"],
					["I've been eating out at a different restaurant\nevery day, there are so many options here!"]],
			restaurantU: [],
			classroom: [["I love having to work on group projects,\nit's really fun to learn about what other people\nthink and get to know their different cultures."],
					["I enjoy politics!", "It's really fun to watch this interesting specimens\ndebate over such simple issues and not be able\nto come to any reasonable conclusion after years.", "Fun to watch."]],
			classroomU: [],
			clothing: [["I must buy these new stylish clothes.\nIt is important for me what others think of me."],
					["I don't like people being judgy of what\nothers wear. I think everyone\nshould dress however they want. "]],
			clothingU: [],
			others: [["I think David is a bit weird.", "He's always listening to explicit music\nand and dances around me like he doesn't\nknow what personal space is."],
					["I don't like how Vivien thinks her culture\nis superior compared to the Ducth one.", "She seems quite complacent."],
					["I haven't talked with Made a lot, but he\ndid tell me some interesting things about the history\nbetween his country and the Netherlands."]],
			othersU: []
		}
	},
	teacher: {
		lectures: [
					[
						["1\nblablabla", "blablabla"],
						["Question 1", "asd", "qwe", "xcv", 1],
						["blablabla", "blablabla"],
						["Question 2", "asd", "qwe", "xcv", 2],
						["blablabla", "blablabla"],
						["Question 3", "asd", "qwe", "xcv", 3],
						["blabla"]
					],
					[
						["2\nblablabla", "blablabla"],
						["Question 1", "asd", "qwe", "xcv", 1],
						["blablabla", "blablabla"],
						["Question 2", "asd", "qwe", "xcv", 2],
						["blablabla", "blablabla"],
						["Question 3", "asd", "qwe", "xcv", 3],
						["blabla"]
					],
					[
						["3\nblablabla", "blablabla"],
						["Question 1", "asd", "qwe", "xcv", 1],
						["blablabla", "blablabla"],
						["Question 2", "asd", "qwe", "xcv", 2],
						["blablabla", "blablabla"],
						["Question 3", "asd", "qwe", "xcv", 3],
						["blabla"]
					],
					[
						["4\nblablabla", "blablabla"],
						["Question 1", "asd", "qwe", "xcv", 1],
						["blablabla", "blablabla"],
						["Question 2", "asd", "qwe", "xcv", 2],
						["blablabla", "blablabla"],
						["Question 3", "asd", "qwe", "xcv", 3],
						["blabla"]
					],
				],
		lecturesU: []
	}
}

global.xtraSprites = [sprXtra1, sprXtra2, sprXtra3, sprXtra4, sprXtra5];