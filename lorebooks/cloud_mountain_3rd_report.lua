----------------------------------------------------------
local book_title = "lorebooks:cloud_mountain_3rd_report"
local book_desc = "Cloud Mountain 3rd Report"
local inv_img = "lorebooks_politics.png"


local book_text = "Request Military Garison of 150 Tro.........."

local book_text2 = "gods have mercy...................."

local author = "Governor Ku"
local date = "382"



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
