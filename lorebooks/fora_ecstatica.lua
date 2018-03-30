----------------------------------------------------------
local book_title = "lorebooks:fora_ecstatica"
local book_desc = "Fora Ecstatica"
local inv_img = "lorebooks_religion.png"

-- Topic: minetest religion

local book_text = "These are glimpses of the Outside given to us by The Searcher during the ritual of Fora, whilst meditating on the word ‘Insight’: \n \nMelons and pumpkins are a bit less common now...  Invade schools...  In the beginning you choose if you want to be a human... they are almost invisible...   Three pairs of mini examples... I'm still getting my butt kicked... This is a fork... Just discovered this fork... streets is not dead... so saying... People come and go, but keeping... Fixed.\n \n\n \n These are glimpses of the Outside given to us by The Searcher during the ritual of Fora, whilst meditating on the word ‘Outside’:\n \n I think it would be best if... you would need to travel... Take one, pay two... I very seldom dig up the dirt... fruit and they will drop their fruit... I had been aware."

local book_text2 = "These are glimpses of the Outside given to us by The Searcher during the ritual of Fora, whilst meditating on the word ‘Stop’:\n \nThis roadmap covers both... was promised to us... latency sensitive... prediction on them... I see discussion... a crazy idea for... drawing out some... anyone out there... can choose their Godly parent .\n \n\n \n These are glimpses of the Outside given to us by The Searcher during the ritual of Fora, whilst meditating on the word ‘Wisdom’:\n \nFor the best experience... The pathfinder code... This will be what this... Don't forget... the family structure and job assignment... very clean and easier... Children are pretty... randomly generated... That Harvest Moon... how the monsters follow you... After dying four times."

local author = "The Searcher"
local date = "360"



--generic register... uses data from above
minetest.register_craftitem(book_title, {
	description = book_desc,
	inventory_image = inv_img,
	groups = {book = 1},
  on_use = function(itemstack, user, pointed_thing)
    lorebooks.read_book(user, book_title, book_desc, book_text, book_text2, author, date)
    return
  end
})

--generic craft... use an existing book to create copies of itself
minetest.register_craft({
	type = "shapeless",
	output = book_title .. " 2",
	recipe = {book_title, "default:book"}
})
