----------------------------------------------------------
local book_title = "lorebooks:doktor_dokimis_research_notes_vol1"
local book_desc = "Doktor Dokimi's Research Notes vol.1"
local inv_img = "lorebooks_personal.png"


local book_text = "Order from chaos. Spontaneous. No guiding hands. No designers. Just interacting components coming together by themselves by following simple rules. A grid of cells... \n \nThe entire universe is a cellular automaton?\n \nCould become one..? Anything is possible.\n \n Replication could be easily programmed.\n \nBut control? When, where, and how?\n \n p = mr - d \n \nWhere: \np = the population limit at which replication is stopped\nm =  how many times larger than the radius the population can grow\nr =  the radius around each bot which counts as being within its population \nd = the dispersal radius.\n This seems to be the threshold between static structures and runaway growth (I think... there’s a mathematical relationship hiding in there involving m that I don’t fully understand, but it seems to work). As for shape?\n P will control density. For example, with a 1 block radius around the replicator (i.e. a 3 x 3 x 3 cube) the maximum number that can physically fit in there is 27 blocks. If p = 27 then that entire cube will get filled in. Below this and it will be forced to leave gaps.\n D will also have an impact on density at the growing points. If it is above 1 then the replicators will be able to “jump”. Changing d  could useful if you want to control the growth’s ability  to cross barriers."

local book_text2 = "What kind of blocks can the replicator replace with itself? Do the blocks need access to something in order to replicate? Any random side? Only on top? The bottom? Horizontally? Does a new block always go in the same place? Or is it random?\n \nNote, differing growth forms will compete with each other for space, especially if population limits are used. The more you allow of one, the less you’ll get of the other. Blocks can be used to do more than just replicate itself....\n \n Replicators must be allowed to spread fast enough so that they get to new areas before the death cycle kicks in.\n 1) allow a block to replicate\n2) decide how it will replicate\n3) decide what else it will do while it’s alive\n4) decide how it will die."

local author = "Doktor Dokimi"
local date = "315"



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
