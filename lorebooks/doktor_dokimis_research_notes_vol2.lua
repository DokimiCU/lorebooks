----------------------------------------------------------
local book_title = "lorebooks:doktor_dokimis_research_notes_vol2"
local book_desc = "Doktor Dokimi's Research Notes vol.2"
local inv_img = "lorebooks_personal.png"


local book_text = "These types of system are more than complex. They do more than just create spontaneous order. They are also adaptive. They can change themselves in response to their environment. They can evolve and learn.\n \nI have created life!\n \n Life must be managed at three different scales: \n- individual organisms\n - communities and ecosystems\n - landscapes\n \n Our key questions here are: \n- Growth types: how does it reproduce?\n - Growth forms: what does it look like?\n - Growth requirements: what does it need to grow?\n - Tolerances: what will kill it?\n - Lifespans: how long does it live?\n \n We have two forms of growth: \n- Clonal: the structure spreads out from its current location.\n - Seed-like: new bots are spawned some distance away from the original, like seeds.\n \n At least four broad types of shape can be made: \n- Tree-like: grows supporting structures (e.g. wood) and a clonal canopy. e.g. trees.\n - Bush-like: has no supporting structure, but can grow on top of itself. e.g coral reefs.\n - Palm-like: grows supporting structure, but does not grow a clonal canopy. e.g. palm trees.\n - Herb-like: has no supporting structure, and cannot grow on top of itself. e.g. grass.\n Tree like growth is the most complicated. The resulting appearance of the tree is controlled by these factors: \n- the balance between the growth forms.\n - attachment rules.\n - adjacency rules."

local book_text2 = "Our big challenge here is to turn our organisms into a working ecosystem. Whenever you create multiple interacting  species they will form some kind of system. But there is no guarantee that it will be balanced.\n \n Assuming you’ve got animals, then you’ve got a food web. This at its most basic is what you should have: \nPrimary Producers > Primary Consumers > Secondary Consumers >.... \nand because things die we also have \nDead stuff>Decomposers>.....\n \n \n \nWithout death there is no change. Without change there is no adaptation. Could this be the key?"

local author = "Doktor Dokimi"
local date = "316"



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
