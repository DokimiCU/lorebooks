----------------------------------------------------------
local book_title = "lorebooks:cloud_mountain_obituaries"
local book_desc = "Cloud Mountain Obituaries"
local inv_img = "lorebooks_politics.png"


local book_text = "Claus Ein: 346-382. Killed by dirt monsters while constructing the Governor's residence. The walls were not thick enough. No next of kin.\n \nReginald Rex: 356-382. Killed by dark forces, while burying Claus Ein. The night was dark. No next of kin.\n \nJoe Butcher: 364-382. Decapitated by flying sharks while building furnaces for the iron mine. He turned his back to the water. No next of kin.\n \nIgor Kat:353-382. Killed by a forest monster while completing the work of Joe Butcher. He was unprepared. His Grandmother misses him.\n \nFrancis Vic: 341-382. Defeated by the forest monster that killed Igor Kat. His steel was not sharp enough. No next of kin."

local book_text2 = "Arthur Bobbage:365-382. Killed by spiders while searching for Tip Longyear. Arthur never learned to shoot his bow. No next of kin.\n \nTip Longyear:331-382. He gave his life to discover mese. Found barricaded in the depths of the earth. His sacrifice was not in vain. No next of kin.\n \nDufo Dyr: ?-382. Presumed dead while in search of Tip Longyear. We hardly knew him. No next of kin.\n \nTiber Kling:348-382. Killed by monsters when exploring the South Bank Mountains. His walls were to low. His pet cat has gone missing.\n \nGustave Schwarze: 327-382. Found sliced in half in the Governor's residence. The inquiry was inconclusive. Survived by his daughter Sue Blessed.\n \nSue Blessed:357-382. Eaten by carnivourous fish while leading the West River expedition. She put her faith in technology. It failed. Survived by her husband Ham Blessed.\n \nPoro Kwe: 368-382. Fell to his death in the South Bank Mountains. Foolish child. His parents have gone missing."

local author = "Cloud Mountain Gazette"
local date = "382"



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
