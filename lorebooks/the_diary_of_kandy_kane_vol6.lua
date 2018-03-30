----------------------------------------------------------
local book_title = "lorebooks:the_diary_of_kandy_kane_vol6"
local book_desc = "The Diary of Kandy Kane vol.6"
local inv_img = "lorebooks_personal.png"


local book_text = "Tuesday: Yob! Yob! Why Yob?! Oh I wish I didn’t love him so. Oh I wish we had never met. Yob! So sexy. So blocky. So fine. And now you have to leave? No! Why won’t he take me with him?\n \n \n \nWednesday: Exile? That is what he was hiding. Oh Yob. So proud. But it is an outrage. Punched him in the face. No one touches my love. I will lay a complaint. That is what I will do.\n \n \n \nThursday: Subversive ideas? Radical? They dismissed me. Undermining the fabric of society. Yob? The fools who do they think Yob is. Or is Yob hiding something from me?\n \n \n \nSaturday: Still Yob refuses to take me with him. I am up to it. Homesteading. Bah. Singlet was right to call you an idiot Yob. You are an idiot. But why won’t he let me come?\n \n \n \nSaturday: Yob is hiding something."

local book_text2 = "Oh no. Why didn’t I see this earlier? The code: 0101100101101111 01100010 00100000 01010000 01101001 01101011 01100101 01101100 01100101 01110100 00100000 01101001 01110011 00100000 01101110 01101111 01110100 00100000 01100001 01101110 00100000 01101001 01100100 01101001 01101111 01110100.\n \n \n \n Gods I hope I wrote that down right.\n \n \n \nSuzy, I know you read my diary. Don’t let them get the code!\n \n \n \nI will always love you Yob.\n \n \n \nI am so afraid.\n \n \n \nMust be strong for Yob."

local author = "Kandy Kane"
local date = "346"



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
