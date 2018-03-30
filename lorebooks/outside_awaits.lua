----------------------------------------------------------
local book_title = "lorebooks:outside_awaits"
local book_desc = "Outside Awaits!"
local inv_img = "lorebooks_religion.png"

-- Topic: minetest religion

local book_text = "They may mock us. They may chase us. They may even hang us from the gallows. But the truth remains.\n \nOUTSIDE AWAITS!\n \nIt is true. I have been there! I saw it with my own eyes! Round eyes! Spherical. True spheres. Perfect spheres. Without edges. How can a shape have no edges? It is impossible to imagine. The philosophers cannot picture it. The priests cannot abide it. The scientists cannot find it. But I saw it. A world without edges! A world of curves.They call it 'The Real World.'\n\nWho are they? Those who live in the Outside. Thousands of people. Like us. Real people. Perhaps more real? Curved people. Yes, they where all curved. And I was curved too. But who was I? The truth fell upon me like the bright sun, the curved round sun, and suddenly I knew - I am from Outside! And more. I was always Outside! And more. We are all currently Outside!\n\nBut how did I learn this truth? Some have tried to discover it through logic. But they argue around in squares, no better than priests. Some have tried to discover it through observation. ‘That cat walked past me twice!’ they say. But they are little better than ramblers, drunks. No. The truth must be witnessed. You must become the truth...\n\nOutside awaits!\n \nStrange land awaits.\n \n Home of mortal gods and heroes awaits. Outside. Outside. Outside.\n \nWe are Outside!"

local book_text2 = "How do I become the truth?\n\n You must stop.\n\nSTOP!\n\n Yes. This is the only way. Free yourself from your binding to this reality, and you will wake to a new one - Outside.\n\nBut how do I stop? That is the question! Stopping cannot be taught. It must be done! You cannot learn it by watching. You will see nothing. The one you watched will be gone - gone Outside.\n\nYou must find the Stop within you. Search and you will find. In the depths of your soul it is there. Say only ‘Stop’ and it shall be so. I know this because I am one who has Stopped. I have been Outside.\n\nAnd so can you!\n\nThey deny it is true. And when they can no longer deny, they say it is impossible. And when they see it is possible,  they say it is wrong. And when they see that is right? They close their ears, their eyes, their minds. They burn books. They persecute the Outsiders, they hunt the Stoppers. \n\n They kill truth. They deny reality. Because they cannot Stop.\n\nYet still, Outside awaits!\n \nAnd we are in it."

local author = "Anonymous"
local date = "342"



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
