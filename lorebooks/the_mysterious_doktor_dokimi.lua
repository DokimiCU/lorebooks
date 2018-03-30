----------------------------------------------------------
local book_title = "lorebooks:the_mysterious_doktor_dokimi"
local book_desc = "The Mysterious Doktor Dokimi"
local inv_img = "lorebooks_bio.png"


local book_text = "Reading. Books. Suddenly it’s all the rage. But who do we have to thank for this recent uptick in literacy? The Mikido Literary Foundation. And who created that? Dok of Imi,... or is it Dr Imi,... or Dokimi of Cu... or simply Dokimi?\n \nThe truth is no one really knows.\n \n Who is this figure really? Do they even exist?\n \nI have spent much time tracking down the truth. I had expected to uncover a story of literary interest, to match my previous works on famous authors, but what I found was beyond my wildest imaginings.\n \nThe name is Doktor Dokimi, or simply the Doktor, a name swirling with darkness and intrigue. For decades the government has denied the Doktor's very existence\n \nWhy?\n \n No one would tell me - until I met a Mr Yob. He claimed to have met the Doktor, and his claims where so outrageous to make me think him a lunatic. Yet the more I talked with Yob, the clearer it became that the Doktor is real. The Doktor is dangerous.\n \nThe following is as much as is known about the mysterious Doktor Dokimi.\n \nThe Doktor began research decades ago - in the innocuous area of construction techniques. Yet soon wild rumours were heard on the far edges of the Empire. Strange going-ons. Machines independent of human control. Terrifying weapons of immense power.  The Doktor. Few heard these tales. Fewer believed them."

local book_text2 = "Then, around four or five decades ago others came into possession of technology created by the Doktor - an entirely new class of technology: self replicating robots.  Some were even said to be intelligent. The importance of this breakthrough was immediately apparent. The Doktor was declared visionary.\n \nBut things quickly got out of hand. Entire landscapes where laid waste by out of control replicators. Soon the military was forced to intervene, the Doktor’s laboratories were seized, and the Doktor vanished.\n \nStories spread that the Doktor had been eaten by robots, or had become a robot, or had always been a robot. The military suppressed all news. Rare sightings where reported. Occasional new technologies emerged - more advanced machines, even attempts to harness the power of the sky. But most said the Doktor was dead - that was the official story.\n \n And then the Doktor returned, as a crusader for literacy of all things. Was this an attempt at rehabilitation? Who knows? All that is clear is the military attempted to seize the Doktor. The official account (itself practically a secret) - the Doktor was killed by his own personal defence robots.\n \n Though Mr Yob met the Doktor many years ago, what he said worries me. He claimed he almost died in his attempt to escape - the Doktor was at work: on a secret known only as ‘The Leviathan.’ And if the Doktor is still alive?"

local author = "Simeon the Small"
local date = "365"


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
