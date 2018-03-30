----------------------------------------------------------
local book_title = "lorebooks:whats_in_a_name"
local book_desc = "What's in a Name?"
local inv_img = "lorebooks_science.png"

-- Topic: minetest science

local book_text = "Why does the Order of Mine call the universe ‘The Mine Test’?\n \nMany have puzzled over this. In my time as an Imperial archivist I have devoted much time to the topic. Can the question be answered?\n \nThe Order itself claims the name was given to them by the Creator god. Unlikely as this seems, the question remains - why did the creator call it 'Mine Test', why not say House-test, or Craft-mine, or Zoggy-wog, or indeed The Universe? The Outsider Cult has an interesting take on this. They say the Creator stole the name from an alternate universe. The Order refers to this as the World of Other Craft - and all discussion of it is strongly discouraged.\n \nBut we are not theologians here. The records for the term ‘Mine Test’ go back to the earliest days of the Imperial archive. Some of the earliest reports suggest it was joined with symbols denoting the Creator, but any such practice, if it ever occurred has long since ceased."

local book_text2 = "The Order’s explanation for the name has varied wildly over the years. Naturally they deny this - ‘Thus it was always,’ they say. The earliest records show no explanation at all. The name was apparently treated as either obvious or trivial. Only latter does today’s complex theology develop.\n \n The first feature was a focus on the word ‘Mine’ with ‘Test’ being treated as an ineffable mystery. This is when the Order first declared itself the Order of Mine, in the early 2nd century, at the same time as the formulation of the lost first catechism.\n \nMining was treated as a sacred activity, with the obtaining of Mese used for initiation rituals. It is from this ritual which the 3rd century emphasis on ‘Test’ developed. To mine was a test. Through the completion of the test where the gods made happy.\n \nThe Outsider Cult has been remarkably more consistent in their message. Their discussions have mainly focused on whether the creator in fact made a wise choice. Many among them have taken it upon themselves to improve on the Creator's work, though apparently none have succeeded.\n \nA promising new approach to the question comes from the work of the Anagrammarians. According to them ‘Minetest’ is in fact a term with no inherent meaning, but can only be understood through the use of anagrams, for example ‘Time nest’ and ‘Men set it’. How this helps is unclear, but exciting."

local author = "Chief Imperial Archivist Q.Entlag"
local date = "338"


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
