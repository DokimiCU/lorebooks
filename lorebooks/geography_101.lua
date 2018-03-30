----------------------------------------------------------
local book_title = "lorebooks:geography_101"
local book_desc = "Geography 101"
local inv_img = "lorebooks_science.png"



local book_text = "Geography is concerned with the spatial arrangement of features within the world. Currently much debate has been going on concerning whether geography and cosmology are complimentary disciplines,  the same discipline, or if one is a subset of the other. At the Imperial University we take the view that Geography and Cosmology are mutually incompatible, intersupported, doubly subsetted disciplines.\n \nRealms: space is divided into independent but interrelated regions of state space. These regions cannot be reached one from the other simply by walking, or indeed by boat, aircraft, train, random teleportation, or pogo-stick. Any attempt to do so will eventually lead one to encounter ‘The Void.’\n \nThe Void: this is region that exists outside of state space. Being entirely undefined it technically does not exist. All realms are believed to be entirely bounded by The Void, however this hypothesis has not been empirically verified in all instances.\n \nInter-realm travel: this is a topic for philosophy and religion, and not fit for scientific discussion.\n \nRegimes: each realm operates under certain regimes of physical law. These regimes may occur across multiple realms, or a single realm. Regimes may be both similar and subtly different, or they may differ extremely. The regime within a single realm has been known to shift over time."

local book_text2 = "Version Theory: this is cosmological topic not fit for discussion in geography, the same is true for the discussion of many worlds, alternate dimensions, and possible but uninstantiated realms.\n \nPopulation: most realms have extremely low population densities, with many having only ever been visited once. Access to such sparsely populated realms is often lost, and much debate concerns whether such inaccessible uninhabited realms continue to exist or are lost forever. These wildlands are typically referred to as the ‘Outer Realms’ due to the relative lack of Imperial political control.\n \nIn contrast to the Outer Realms certain key realms have very high population densities, boasting the great cities which are the pride of the Empire. The laws and governance of such centres varies widely, but all are nominally under the authority of the Empire. The Imperial government claims ultimate jurisdiction over the entire universe, and has yet to find anywhere in known existence a rival political power able to challenge this claim."

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
