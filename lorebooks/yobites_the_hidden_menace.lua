----------------------------------------------------------
local book_title = "lorebooks:yobites_the_hidden_menace"
local book_desc = "Yobites, the Hidden Menace"
local inv_img = "lorebooks_politics.png"


local book_text = "Be alert! Be aware! The walls have eyes! The seats have ears!\n \nAccuse me of alarmism if you like. But in my years on the force I have seen firsthand the truth. The Yobites are among us. The Yobites are here. The Yobites are coming! I am a realist. The front lines is where I live, battling the Yobite threat.\n \nYou, good citizens, must believe me. Because you, good citizen, are the only thing that stands between us and total annihilation.\n \nI write to you here to stress, to urge, to explode upon your mind the reality of the danger we are in. Yobites are planning to overthrow the government.  Perhaps even to destroy the universe.\n \nWhy?\n \nBecause they are nihilists. They believe in nothing. Only power and destruction and pain. They cannot create, so they destroy. Society cannot accept them, so they lust to destroy the society. To be a Yobite is to be diseased. To be healthy is to fight the followers of Yob Pikelet."

local book_text2 = "Who was Yob Pikelet?\n \nHe was an idiot! And an inspirer of idiots! Fitting it is that such a man, a mere nothing in life, should in death leave his name to such people as the Yobites.’What has the Empire ever done for us?’ Ha! Those self absorbed fools. Every child knows that without the Empire, nothing!\n \nBut why did I say that you, good citizen, are our only hope?\n \nThe truth is painful - the Empire’s resources are spread too thin. We cannot be everywhere at once. We are few, and they are many. But you are even more many than the many! Many many!\n \nWe will never surrender!\n \nMy sword shall never rest!\n \nTo the end of time!\n \nLONG LIVE THE EMPIRE! HU-RA!\n \nDEATH TO YOBITES! HU-RA!\n \nHU-RA!...."

local author = "Inspector Goodstone"
local date = "360"


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
