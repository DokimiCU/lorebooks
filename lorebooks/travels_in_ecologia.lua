----------------------------------------------------------
local book_title = "lorebooks:travels_in_ecologia"
local book_desc = "Travels in Ecologia"
local inv_img = "lorebooks_places.png"


local book_text = "I am no explorer.  I am a poet. This was supposed to be a retreat - for poets, thanks to the Mikido Literary Foundation. The great Yan Flu would be joining me. We would sit on a tropical beach, compose sonnets. That is not what happened.\n \n First - No Yan Flu. Never mind I said.\n \nThe trees will be my friends. I said that. What a fool!\n \n We arrived by boat. As soon as I saw the land... the trees! Were they trees? Beasts? Robots? The handiwork of a madman. They were enormous. A vast verdant mountain of foliage.\n \nI was astounded at that, but when we landed - they moved! The trees moved!  Whoever heard of trees moving? I plucked off  a leaf, turned away, and it had grown back! And the leaf in my hand had doubled in size! I dropped it in horror - and it grew yet more!\n \n At this point the guide told me the truth. This place - Ecologia - was the last known residence of Doktor Dokimi. The infamous Doktor. Yes, the one with all the secrets and hush-hush swirling about.\n \nThen my guide left with the boat. All she said was, 'Back in one week. Beware the Jaberwock.' I have never felt so afraid, so alone. I am no explorer. Yet there in my hands I had a key  - the key to the last known residence of the Doktor. Gods alive!"

local book_text2 = "But where was the house? All I could find, for hours, was an overgrown gravel path beside a stream. Above it - the forest. Moving. Groaning. Growing.\n \nOnly after I had given up did I discover it. Glass, a wall of glass, buried under the tangle of roots. So I dug (me digging!), and I uncovered it. There it was. I was peering into a great glass dome. Entombing the dome was the great unsettling forest.\n \nAnd inside the dome? Two little cottages. So out of place, quaint little thatched cottages. And beside them a peculiar twisting pillar of stone, reaching up to the top of the dome. A stranger sight I have never seen.\n \nAt last inside the dome I entered the main cottage. I could have been at my grandmother’s house! This was the home of a person who had destroyed an entire world? I felt cheated. Where was the lab? Where was the Doktor? So I searched, everywhere. Nothing. Some old timber in a shed. A toaster. Nothing, except the forest.\n \nBut of course, I felt a fool. How had I got here? Someone had wanted me here. But to what purpose? I did not sleep that night. I did not sleep that week. I could hear the trees moving. I admit, I learnt nothing more in all those days. I did not even write a single poem. Yet every moment I felt as if I had been watched.\n \nDoktor, you have played with me? But why?"

local author = "Stylus Firentis"
local date = "366"



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
