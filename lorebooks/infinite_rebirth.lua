----------------------------------------------------------
local book_title = "lorebooks:infinite_rebirth"
local book_desc = "Infinite Rebirth"
local inv_img = "lorebooks_literary.png"

-- Topic: minetest literary

local book_text = "What is life? What is death? Are we living? Are we dying?\n \nI died. And they said, ‘Yan Flu has died.’ And I saw them loot my bones.\n \nSpawn. Respawn. Spawn. What does it mean? And they said, ‘Yan Flu speaks strange words.’\n \nI was dead. I was alive. I am dead. I am alive. And I said, ‘I am alive.’ And they said, ‘Yan Flu is alive.’ And I said, ‘Yan Flu died and the bones of Yan Flu were looted.’\n \nAnd they said nothing. And they said, ‘Yan Flu makes no sense.’ And they said, ‘Yan Flu is a heretic.’\n\nSo they killed Yan Flu. They killed Yan Flu for being dead.\n \nSpawn. Respawn. What does it mean?\n \nWhat is the meaning of my infinite rebirth?\n \nAnd they said, ‘Yan Flu has lost the mind of Yan Flu.’\n \nAm I alive? Am I dead. Am I Yan Flu? I am my infinite forever-ghost."

local book_text2 = "Censor’s office: Yan Flu was a great poet. His works are metaphorical. The belief in past lives is heretical. Those who claim they have died and been reborn are simply confused, as was Yan Flu prior to his first execution."

local author = "Yan Flu"
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
