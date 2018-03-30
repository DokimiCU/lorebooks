----------------------------------------------------------
local book_title = "lorebooks:a_brief_history_of_the_universe"
local book_desc = "A Brief History of the Universe"
local inv_img = "lorebooks_science.png"

-- Topic: minetest science

local book_text = "Those of you who are old enough will most likely have witnessed a ‘jump’  - one of those strange moments in time when things change. Sometimes subtly. Sometimes dramatically. Many of these jumps have been directly observed by scientists. From their studies, and the carefully weighed accounts of elderly witnesses, a unified theory of cosmic evolution has been reached. We call this ‘Version Theory’.\n \nAs a scientific account of the universe Version theory is not based on religious dogmas, nor mystical experiences. Instead it is the result of decades of rigorous observation and experiment. At times this empirical independence of thought has lead to controversy, with some claiming the findings of science disprove religion entirely. However in recent years the  Order of Mine has officially endorsed Version theory, with the High Priest saying, ‘We knew that all along’.\n\nThe central idea of Version theory is that the universe exists in multiple versions. Later versions are typically more complex than earlier versions. Older versions may persist in parallel with newer versions, but it is believed that over time older versions undergo ‘fading’, potentially disappearing from existence entirely.\n \nThe true number of versions is, as the priests say, known only to the gods, but could number more than fifty. One of strongest lines of evidence for versions has been the dramatic changes in the shape and structure of the world since the moment of creation."

local book_text2 = "In the early universe the world was entirely flat, dotted only with small pyramidal structures. Next came the emergence of hills, the separation of the elements of dirt and stone, caves, and the vanishing of the pyramids.\n \n Then came the oceans, filling in low lying lands.  Soon primitive plant life, now extinct, began to grow. Mese and coal formed underground. Thus ended the initial creation of the universe.\n \n Now began the still ongoing process known as ‘Complexification’.  Sand and iron emerged. Terrain became smoother and more complex. The biota began to split into distinct regions, called biomes.\n \n The next stage of cosmic evolution is called ‘Divergence.’ It became clear that not everyone was living in the same realm. Multiple lines of evolution branched off from each other. Many of these resembled the previous universe, and each other. Yet some were entirely exotic  - geometric, more advanced, more primitive, even entirely empty. Some of these lines of evolution persist into the present, others have vanished, and yet more are being reported constantly. And so we have the universe as it is known to science today. Vast and varied.\n \n Why does the universe exist in versions? Will there ever be a final version? These are philosophical questions, lying  outside the realm of science.  However, some speculate that Complexification has but one natural end - our universe will become a sentient being, capable of creating new universes. This, it is argued, is how we got here to begin with."

local author = "Dr von Mesenstien"
local date = "357"


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
