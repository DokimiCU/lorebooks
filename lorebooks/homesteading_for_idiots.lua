----------------------------------------------------------
local book_title = "lorebooks:homesteading_for_idiots"
local book_desc = "Homesteading for Idiots"
local inv_img = "lorebooks_advice.png"

-- Topic: advice

local book_text = "When I went to live in the wilderness, with nothing but my bare hands, people said ‘Yob, you’re an idiot!’. And you know what. They were right. I nearly died seventeen times in the first day alone. And everytime they all said, ‘Yob, you’re an idiot.’ But did I give up? No! Did I turn back. No! I mastered the wilderness, and so can you - just follow Yob’s easy steps for idiots.\n \n1) Don’t die. This is a tricky one. In general - don’t walk off cliffs, don’t swim too deep, be careful with explosives, and make yourself a weapon. Maybe you can even get yourself some armor.\n \n2) Make tools. If you aint got nothing, then you need a pick axe fast. Wood will do. Use that to get stone, and that to get some real metal. You always gotta have your tools. And torches. It gets dark out there!\n \n3) Build shelter. This helps a lot with 1. Now, you can just dig a hole in the ground and live in that, but who wants that? You want a house. Wood, stone, gold! Doesn’t matter what, just make it look good, and work good. Start small, and add on.\n \n4) Make furniture. You need yourself a furnace for cooking stuff, a chest for storing stuff, and bed for sleeping on. That’s all a simple working man needs. Personally I haven’t bathed in fifteen years, but I got my furnace!"

local book_text2 = "5) Plant crops. You gotta eat right? Stay healthy. You need to go exploring, get some seeds. Then you want to work the soil, good well watered soil, and plant those seeds. Then wait. Then harvest. Then cook!\n \n6) Don’t be an idiot!\n \n7) Keep it simple stupid!\n \n8) Don’t ride pogo sticks (bad for the knees).\n \nAnd that’s it! Now you're a bona fide homesteader. That or you're about to be eaten by zombies. Just kidding. They aint real. Bees. The bees will get you.\n \nHave fun! \n \n \n \n Afterword: Yob Pikelet died three months after writing this book. He died the way he lived. He was found in a hole,  covered in bite marks. His kind and simple advice was appreciated by all. We miss you Yob.\n - Stevie Singlet."

local author = "Yob Pikelet"
local date = "353"



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
