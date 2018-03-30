----------------------------------------------------------
local book_title = "lorebooks:the_minetestian_pantheon"
local book_desc = "The Minetestian Pantheon"
local inv_img = "lorebooks_religion.png"

-- Topic: minetest religion

local book_text = "These are the names of the primary gods of the Order of Mine: \nCeleron the fifty-five, the creator. \nSfan the five. \nShadow the Ninja. \nNore. \nNerzhul.  \nParamat. \nZeno. \nSofar. \nRubenwardy. \nKrock.\nBlock the Men\nReal the Bad Angel. \nDarkrose. \nProller. \nX the Y of Z. \nPilzadam. \nEst the thirty-one.\nKahrl. \nKwolekr.\nSapier."

local book_text2 = "These are the names of the primary heroes of the Order of Mine:\nRed the Double Zero One.\nJuhdanad. \nNumber Zero.\nLarsh. \nKilbith. \nDumbeldore. \nBigfoot the five-hundred-and-forty-seventh. \nRogier. \nWuzzy. \nShara Ezhh.\nGregorycu. \nKaeza. \nTee the fourth of Im. \nTe T’pa Aka. \nDuane. \nNeo the Ascetic. \nTriblade the Ninth. \nDoserj. \nMircea of Kitsune. \nOblomov. \nMatt’t’p’t. \nErlehmann. \nJeija."

local author = "High Priest Diamina"
local date = "341"


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
