----------------------------------------------------------
local book_title = "lorebooks:the_revelation_of_wombat_the_wise"
local book_desc = "The Revelation of Wombat the Wise"
local inv_img = "lorebooks_religion.png"



local book_text = "Censors office:  Caution this book is not suitable for children, those of unsound mind, or the uneducated. This book was written by devious individuals desirous of undermining public faith in the gods, who most certainly, definitely exist, according to the dogma of Minetestism, on which I cannot comment. Wombat the Wise is not, has not been, probably won’t be (but potentially could become) a real god in the pantheon of Minetestism. By proceeding you are entering into a legally binding contract in which I, the secondary junior adjunct under-censor Wimplet A.F.  of the Imperial Censor’s office, will not be held responsible for your death or injury resulting from the reading, dissemination, or verbally jovial participation in the following work of heinous satire.\n \n-Wimplet A.F. 359"

local book_text2 = "Thus sayeth Wombat the Wise: Behold I speak. Behold I am a god. Behold I am Wombat the Wise, the creator of reasonably priced lawn chairs, and garden accessories!\n \nTremble before me and my discount priced sprinkler assemblage system. Wail in terror at the whirring blades of my lawn mower. For I spoke and it was. I wrote the symbols and so it came to be. I am Wombat the Wise. Bow before your god!\n \nWombatia Wisonia Splendaris!\n \nOnly three things does Wombat the Wise declare. Three things does Wombat the Wise desire. Three things does this god demand. That my devotees receive tax exempt status in all that is garden related and derived. That my devotees may be permitted to wear funny hats in driver licensing photos. That my devotees be granted thirty three non-negotiable paid holiday days per year. \n \nFor Wombat the Wise is merciful and just. Wombat the Wise does not place heavy burdens upon your backs. Wombat the Wise grants peace and shade umbrellas. \n \nThus sayeth Wombat the Wise.\n \nSplendaris Wisonia Wombatia!"

local author = "Wombat the Wise"
local date = "359"


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
