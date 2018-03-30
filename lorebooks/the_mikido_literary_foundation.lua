----------------------------------------------------------
local book_title = "lorebooks:the_mikido_literary_foundation"
local book_desc = "The Mikido Literary Foundation"
local inv_img = "lorebooks_literary.png"



local book_text = "What is the Mikido Literary Foundation?\n \nThe foundation was founded by the founders next to the foundations of the newly built Foundation Theatre on the founding date 360 Imperial Standard.\n \nWho were those founders?\n - Yan Flu\n - Dok of Imi \n - Karli Kane \n - and Pastreamius Longinius.\n \nAll four had long noticed the crying need for an enhancement of arts and culture. \n \nOne night, after a heavy drinking session, they decided to found the Mikido Literary Foundation. It’s charter:\n - the promotion of universal literacy\n - promoting access to the rich and diverse stories and cultures of the world\n - supporting artists, writers, and more in enriching the lives of all\n - and getting the current Chief Imperial Censor shot."

local book_text2 = "The foundation is currently in its infancy, but excited to take on the challenges of the future. Already we have brought you an explosion of new literature, and our supporters have been busy distributing works of literature to chests and bookshelves near you. What does the future hold?\n \nWe don’t know.\n \nBut we are excited!\n \nAnd what’s that you ask?\n \nWhy yes! Of course you can get involved. We are always looking for new works - send your manuscripts to us or one of our members care of the Imperial Post.\n \nNot a writer? Don’t worry. The cause of art needs people of all types. Drop on in, and we’ll discuss how you can help the work of the Mikido Literary Foundation."

local author = "The Mikido Literary Foundation"
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
