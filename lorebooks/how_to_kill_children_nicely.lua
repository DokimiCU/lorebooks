----------------------------------------------------------
local book_title = "lorebooks:how_to_kill_children_nicely"
local book_desc = "How to Kill Children Nicely"
local inv_img = "lorebooks_religion.png"



local book_text = "\n \nIn all a my long long years as a Neo-pseudo-voodoo-mese priestess I has a been a asked this a here question many many a time: \n \n�How can I a sacrifice a child, the blood of a child, but a do it all a in a way that be a effective, and a be a ethical?� \n \nSo so a many a shakey people asking me this. So read good and know."

local book_text2 = "\n \nEffective child sacrifice is simple.\n \nA) Virgin.\n \nB) No call him Steve.\n \nEthical. Simple.\n \nA) Buy fair trade.\n \nMany suppliers no pay them children good money. You want child to starve? Buy fair trade. Everyone happy. All good. Gods will be happy. Eat the blood. Things happen. All simple. Stop asking me all the questions. I get tired."

local author = "Lom-lom  Darkeyes"
local date = "383"


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