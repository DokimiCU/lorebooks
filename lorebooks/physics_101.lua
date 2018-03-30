----------------------------------------------------------
local book_title = "lorebooks:physics_101"
local book_desc = "Physics 101"
local inv_img = "lorebooks_science.png"



local book_text = "Physics concerns the nature of space, time, matter, motion, and energy - the key physical laws that govern the universe.\n \nStates of Matter: all physical objects are either solid, liquid, or gas. Solids are interconnectable, liquids are subject to flow dynamics, and gas is always passable. It is widely acknowledged that the current theory of matter states is incomplete, some would say incoherent,  largely due to the problem of inter-realm variation.\n \nCell theory: all space consists of cells, of one metre by one metre. Indeed, this is how the metre is defined. All cells are occupied by matter. When a cell is occupied the entire cell is occupied, though simple folk may be confused by appearances. All matter is indivisible in size. It can only be made to appear smaller. The size of the cells never changes.\n \nElements: all matter consists of fundamental elements found only in nature. These elements cannot be derived from other elements. The true number of elements may be infinite.\n \nTransformation: matter is either transformable, or intransformable. Those which are transformable can by simple means be transmuted into other elements. The masses before and after transformation may be the same, or extremely different. The problem  of inter-realm variation once again poses challenges for a unified theory of transformations.\n \nNothingness: all types of matter can be both annihilated into nothing, and (in the right circumstances) created from nothing."

local book_text2 = "Motion: the world contains two types of objects. Mobile, and immobile. Some confusion arises with falling items, and liquids, but these are technically immobile. This can be easily demonstrated by the ease with which one may swim up a waterfall. Indeed ‘waterfall’ is a misnomer. If the water was falling you would be pushed down. Only people, animals, and other such things are truly mobile and capable of motion.\n \nEnergy: Mobile objects are typically availed of infinite energy. They may continue their motions without rest forever. Certain technological applications do however require inputs of finite energy."

local author = "Imperial University"
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
