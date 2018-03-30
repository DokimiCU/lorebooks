----------------------------------------------------------
local book_title = "lorebooks:doktor_dokimis_research_notes_wormholes"
local book_desc = "Doktor Dokimi's Research Notes on Wormholes"
local inv_img = "lorebooks_personal.png"


local book_text = "This wormhole project is canceled.\n \nTotal failure!\n \nStability problem has not been solved.\n \nAh... but you thought you had solved it. More Mese you say! Blast.\n \nPath length = 15 (or was it 11, I was thrown back and forth at least twice?)\n \nThen disaster. Where was the bloody wormhole? Gone! Exploded. Where was I? (>9km deep?). \n \nDigging up was futile.\n \nEven replicators were futile - too deep! (where was I?!)\n \nTried more wormholes - maybe I will be lucky! Ha! Luck!\n \nI must have fallen 6km. Thank the gods I was above water. I would have been killed otherwise.\n \nWormhole research is definitely cancelled."

local book_text2 = "\n \nOn the upside collected some interesting botanical samples, after fighting off the sharks.\n \nSide note... laws of robotics? A first law: all robots must be edible. (this was very handy on the island).\n \nSide side note: may be able to get rid of these left over wormhole generators on the black market?"

local author = "Doktor Dokimi"
local date = "361"



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
