----------------------------------------------------------
local book_title = "lorebooks:cloud_mountain_2nd_report"
local book_desc = "Cloud Mountain 2nd Report"
local inv_img = "lorebooks_politics.png"


local book_text = "We have struck Mese. The deposit is reported to be a vast scale, sufficient to last many years, and is not overly deep. The economic outlook of the colony looks greatly improved.\n \nCloud Mountain will no doubt become an important centre of industry."

local book_text2 = "The new Mese Mine will soon be developped. Storehouses, and manufactories are planned. Only two lives were lost in the discovery. The mine has been named in honor of it's deceased discoverer, Tip Longyear. He shall be remembered as a hero of the colony.\n \nMr Kling, who recovered Mr Longyear's body has been making trouble. But I believe I have a solution."

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
