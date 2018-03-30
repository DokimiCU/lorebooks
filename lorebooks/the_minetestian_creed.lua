----------------------------------------------------------
local book_title = "lorebooks:the_minetestian_creed"
local book_desc = "The Minetestian Creed"
local inv_img = "lorebooks_religion.png"

-- Topic: minetest religion

local book_text = "This is the official catechism of the Minestestian Faith as set down by the First Elders of the Order of Mine. The catechism is the truth. The path is the way. The one who follows the truth will follow the way. Thus has it always been.\n \n~                    ~                    ~                   ~                    ~                    ~\n \nWe follow the truth. We follow the way. We follow the catechism. We follow the path. Thus has it always been.\n \nThere are many gods, and they walk among us.There are many heroes, and they walk among us.There are many followers of the path, and we walk within the world. Thus has it always been.\n \nThe gods created the universe. The heroes gave it shape. And we are it's fulfillment.Thus has it always been.\n \nMortals may ascend to heroes, may ascend to gods, may create the universe anew. Thus has it always been.\n \nTo ascend is glorious. To not ascend is not inglorious. The path has many roads. Thus has it always been.\n \nThe universe is multiple. The universe is diverse. The universe is ever-changing. Thus has it always been.\n \nThe universe is entire. No outside can there be. To say otherwise is to speak with the tongue of a fool. Thus has it always been.\n \nWe hold these truths to be true. We hold these truths to be right. We follow the way. We follow the path. Thus has it always been.\n \n~                    ~                    ~                   ~                    ~                    ~\n \n"
local book_text2 = "This is the official path of the Minestestian Faith as set down by the First Elders of the Order of Mine. The one who holds the truth will follow the path. Thus will it always be.\n \n~                    ~                    ~                   ~                    ~                    ~\n \nFollow the truth. Follow the way. Hold the catechism. Follow the path. So we do.\n \nCause not grief. Destroy not the works of others. Build one's own house. Dig one's own mine. So we do.\n \nLive not in the mud. One's house shalt not be built from the dirt of the land upon which you may walk. So we do.\n \nLight not fires uncontrolled. Burn not the world. So we do.\n \nDig deep. Build high. Search far. For this is glorious. So we do.\n \nSlay not the new. For this is without honor. So we do.\n \nBe true and kind in speech. Be fair and wise in action. For this is glorious. So we do.\n \nAbide by the laws of the land in which you dwell. For this is honourable. So we do.\n \nBestrew not the floor with the debris of labors hard. For mess is an abomination. So we do.\n \nLust not for the world of other craft, nor believe those who say 'We are but inside of outside', for these are fools. So we do.\n \n Swim not after eating, within the hour. For this is deemed wise. So we do.\n \n~                    ~                    ~                   ~                    ~                    ~\n \n"

local author = "High Priest Minera"
local date = "226"


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
