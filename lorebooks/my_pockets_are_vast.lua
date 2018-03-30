----------------------------------------------------------
local book_title = "lorebooks:my_pockets_are_vast"
local book_desc = "My Pockets are Vast"
local inv_img = "lorebooks_literary.png"



local book_text = "\n \n \n \nMy pockets are vast, my pockets are vast;\n \nHow do I run fast, how do I run fast;\n \nWith pockets so vast, with pockets so vast?"

local book_text2 = ""

local author = "Yan Flu"
local date = "351"


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
