----------------------------------------------------------
local book_title = "lorebooks:palagon_the_fabled_city"
local book_desc = "Palagon: the Fabled City"
local inv_img = "lorebooks_places.png"


local book_text = " Palagon land of plenty. Palagon land of beauty. Palagon land of desire.\n \nPalagon the fabled city. Birth place of humanity.\n \n The legend of Palagon seems to have all but died out in these modern materialist days, yet still the tales cry - Palagon, Palagon, forget not the city of Palagon - the land of your birth.\n \nBut did Palagon ever exist? And if it did, where was it? And was it really the first city?\n \nThe little we do know is more alluring than informing: seven white towers where the First Born dwelt, the Sapphire Sea which could not be crossed, the plains of Tymerion rich with grain, and the orchards of the Saladorian hills overflowing with apples. It was a time of magic, of flux, of riches, of passions, of both primitiveness and of power.\n \n Yet, as the story goes, Palagon was lost. In some versions the city was destroyed in a war fought over either a woman of great beauty, or an enchanted axe. In other versions the inhabitants were cast out for their crimes, or simply left - unsatisfied by riches of Palagon - and on leaving discovered they could never return. All versions agree on one point: the Sundering. The time when Palagon was lost to realm of mortals, and all who tried to reach it were faced only by blackness, and blackness, and confusion.\n \nSo goes the legend."

local book_text2 = "But what of the reality? Most scholars have long since dismissed the story as pure fantasy. But most scholars have not seen the Vallion Codex. I found this strange book whilst exploring dungeons of the Eastern High Ranges of the land of Dod in the Carbone Outer Realms.  I believe, for good reason, that it was written by an exile of the city of Palagon - one who claims in the Codex to have found a way to return. For unknown reasons despite their discovery they choose to leave again. Either way, I believe the city of Palagon can - and should - be reached. \n \nSadly the fools at the academy have decided I am an unqualified crank. Hence why I have been forced to publish my findings through unorthodox means. With my own resources I am launching an expedition. I have complete confidence in my guide, Ms Kane; the Codex is in safe hands; and I expect to return within the year - at which point volume 2 of this book shall be published.\n \nPalagon is no myth!"

local author = "Napali Stef"
local date = "361"



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
