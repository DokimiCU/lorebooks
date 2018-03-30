----------------------------------------------------------
local book_title = "lorebooks:imperial_decree_355iv"
local book_desc = "Imperial Decree 355iv"
local inv_img = "lorebooks_politics.png"


local book_text = "The following decrees have been issued by the Imperial Senate. They are valid until further notice. Long Live the Empire!\n \ni) Littering is now punishable by death by lava.\n \nii)Night time shall hence forth be an official public holiday. Long Live the Empire!\n \niii)The transmission of images of genitals shall be punishable by the removal of said genitals.\n \niv)The saying of the word ‘Ni!’ is not and never was a criminal offence. Non-compliance punishable by death by falling.\n \nv)Pogo sticks are not bad for the knees.\n \nvi)All self-replicating robots must be kept indoors. Punishable by slapping.\n \nvii) The word ‘craft’ shall not be used in conjunction with the word ‘mine’ unless one is currently engaged in both mining and crafting. Punishable by dogs, to the number of fifteen."

local book_text2 = "viii)There is only one Empire. Long Live the Empire!\n \nix)All books by the so-called martyr Yob Pikelet are banned.\n \nx)Sunday is no longer an official day. Saturday is now two days long. Long Live the Empire! \n \n xi) Pi may only be said aloud to five decimal places. Punishable by death by detonation.\n \nLong Live the Empire!\n \nOffice of the Chief Imperial Justice: all recorded decrees have been deemed  correct and fit for publication. Long Live the Empire!"

local author = "The Imperial Justice Department"
local date = "355"


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
