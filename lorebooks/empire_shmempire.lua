----------------------------------------------------------
local book_title = "lorebooks:empire_shmempire"
local book_desc = "Empire, Shmempire!"
local inv_img = "lorebooks_politics.png"

-- Topic: minetest politics

local book_text = "What’s the Empire? ‘It’s important,’ they say. ‘You’re in it,’ they say. ‘Without the Empire - Nothing!’ That’s what they say.\n \nNow I’m just a simple man, with simple needs, and a simple soul. I don’t care much for politiking. But I’ll tell you this. All they ever say is words. Just words! They’re all just words.\n \nEmpire Shmempire!\n \nWhat did the Empire ever do for us? I’ll tell you what they did for me. ‘I’m from the Empire,’ he said.\n \n’I’m Yob Pikelet,’ I said.\n \n’Good,’ he said, ‘Yob Pikelet is to be exiled for crimes against the Empire!’\n \nAnd I said, ‘What crimes against the Empire you daft plonker?!’\n \nAnd he said, ‘The crime of getting lippy with an Imperial Official!’\n \nThen he punched me in the face. The face! That plonker!\n \nAnd they did too, kicked me right out. I aint ever been back there. So that’s when I decided to go homesteading. On me own. And I lost my right eye to fleas.\n \nThat’s what the Empire did for me!"

local book_text2 = "Now out there in the wilderness, living in my hole, I got all obsessed. The Empire. What the dang-gosh-blast is the Empire?!\n \nAnd I still don’t know. Nobody does. Is there an Emperor? How do these laws get made? Where’s the capital? Who put them in charge? What the hell is ‘Finland’?\n \nNobody knows.  So one day I tried to go back. And I said, ‘Mister bureaucrat! Answer my questions!’\n \nAnd you know what he did? ‘Yob Pikelet is banned from talking,’ he said. Then he boofed me in my good eye. That plonker!\n \nEmpire Shmempire is what I say! That’s what the politikers did for me!"

local author = "Yob Pikelet"
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
