----------------------------------------------------------
local book_title = "lorebooks:the_mese_mystery"
local book_desc = "The Mese Mystery"
local inv_img = "lorebooks_science.png"

-- Topic: minetest science

local book_text = "What could be more natural than Mese? How about... not Mese! Mese is the most unnatural of all the minerals. This is true. I have evidence. Am I joking? No!  Mese - that essential element of modern technology - is entirely artificial. How did it come to be? I will tell you.\n \nYet, you say, every child knows Mese. All the good things are made from Mese. It is in everything. It is dug up straight from the ground. Unaltered. Unsullied by human hands. How can the fruits of the nature be unnatural?\n \nYet you have said yourself already. Mese is in everything. But why? How does one element among so many earn such an elevated place. How? Because Mese was the first of all the elements, dating from earliest days of the universe. And what is more? I have seen on Mese, even in its natural state, symbols. Does coal carry symbols? No. Iron. No. Diamonds. No. Only Mese.\n \nSo what? Ha! A symbol requires a maker of symbols, an understander of meanings. Therefore we have but two, no three, options:\n1) Mese is a human creation (absurd!). 2) Mese is aliens. 3) Mese is a special message of the Creator god."

local book_text2 = "Did aliens make Mese? Such aliens would need to be both a) ancient, and b) immensely powerful. They would have had to interfere in the creation of the universe to either create Mese themselves, or add their symbols to it.\n \n We have no evidence for the existence of aliens. What unreliable reports as do exist would suggest that any aliens that do exist are rather immensely stupid rather than immensely powerful (In most accounts the aliens are defeated by absurdly simple things, like a closed door, or a hole). Perhaps these are but minions of more powerful beings? No (absurd!).\n \n Is Mese a message from the creator? This I believe is the most likely. But what is the message? Mese. Mese. M. M. Mese. M.E.S.E. No meaning has yet been found. But one thing is clear - Mese is no joke. The answer to the mystery will revolutionize everything. Mese is the key to the universe!"

local author = "Professor P.T. Prageau"
local date = "348"


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
