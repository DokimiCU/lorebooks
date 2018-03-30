----------------------------------------------------------
local book_title = "lorebooks:i_realm_to_realm_i"
local book_desc = "I Realm to Realm I"
local inv_img = "lorebooks_literary.png"



local book_text = "\n \nI from realm to realm do travel.\n \nI not know how. I know not why.\n \nFrom travel realm to realm I travel.\n \nI cannot see. I cannot fly.\n \nThe mind from realm to realm unravel.\n \nDarkness.\n \nDarkness.\n \nDark."

local book_text2 = "\n \nAmnesia of the elder dark,\n \nSeize, seize, seize the soul;\n \nof the butterfly.\n \nThe butterfly sky.\n \nHark!\n \nHere comes the dark!\n \nElegant burrowing mole."

local author = "Yan Flu"
local date = "358"


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
