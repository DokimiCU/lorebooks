----------------------------------------------------------
local book_title = "lorebooks:cloud_mountain_1st_report"
local book_desc = "Cloud Mountain 1st Report"
local inv_img = "lorebooks_politics.png"


local book_text = "After several days we have established a foothold on the West River at a location we have dubbed 'Cloud Mountain'. The facilities are rudimentary but adaquate.\n \nThe local terrain is steep, harsh, and densly forested, but abundant with life and resources.\n \nSizeable deposits of coal and iron have been located, and work is underway to develop them."

local book_text2 = "Unfortunately we have lost five colonists.\n \nThe waters are swarming with large carnivorous fish, and terrible creatures emerge at night.\n \nBetter precautions are now being taken, and with the iron mine up and running we are busy manufacturing weapons and armor. All bodies have been laid to rest in a crypt high on Cloud Mountain itself.\n \nRumors are circulating that this land is already inhabited by a magical people the colonists have taken to calling the 'Unknown.' I have seen no evidence that this is true."

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
