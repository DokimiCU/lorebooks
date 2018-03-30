----------------------------------------------------------
--LOREBOOKS
--Formatting guide:
--limit to around 240-250 words per page
--only two pages.
-- err on the side of being shorter, otherwise you will lose text.
-- use '' as quote marks.
-- Do not use enter for new lines: use \n \n for a blank line paragraph break.
--make sure the book has a unique name

--Lore Guide:
--people can write what they like... within some constraints, so that the suspension of disbelief is never broken
-- Most importantly - Everything should be written from a perspective inside the game. For the author Minetest is the real world!

-- "Breaking the 4th wall": to allow references to members of the Minetest community, and people and places in the real world I have created two religions and an Empire:
-- Minetestism: Allows talk of how Minetest came to be. The developers are gods within a polytheistic pantheon, other notable members are legendary heroes (or sea monsters, demi-gods,or whatever). The clergy is The Order of Mine.
-- The Outsider Cult: Allows talk of the real world. These are mystics who believe the world is an illusion, and the entire universe in contained within a place called "Outside". We can mystically 'go Outside' by 'Stopping'.
-- The Empire: Allows talk about anything else to do with the community. A vast nebulous political entity no-one understands. (e.g. Moderators/admins/developers = imperial senators, officials etc. Modders = scientists, wizards etc. Griefers etc = Yobite Terrorists (there's backstory!))
-- Geography: The universe contains many realms - each with unique technologies, societies, and laws of nature. Singleplayer = distant wildlands 'Outer Realms'. Servers = Cities, regions, nations etc. How travel between realms actually occurs is controversial.

--Time: 1 real year is 45 game years (according to rough back-of-the-envelope calculations...which I have declared Imperial Standard Time!)
-- 2010 = year 0 (when Minetest was first made). Therefore 2018 is 8 x 45 = year 360.  One real yr is decades long. 2019 = year 405.
-- Use 'Imperial Standard Time' to figure out the publication date (or set something prior to the current year. But nothing from the future!..unless sci-fi)
-- Authors: you can use made up names, real names, or user names (but make it grammatical and pronounceable i.e. change numbers/symbols to text e.g. Wombatk44 to Wombat'k the 44th).

-- Mod specific content: for things highly specific to one mod (e.g. how to make nuclear reactors in Technic), include a line like this to reduce confusion: "If you live in the right place..." or "Some people say this stuff never happens".
-- style consistency: when writing documents that are supposedly from the same source (e.g. the official religion, the Imperial government), try to match the style found in their currently existing documents.
-- coherence: consider referencing other works, and the characters, places, and events from them. This ties things into one super-narrative.
-- Authorship: you may reuse other people's fictional characters (unless they say otherwise). But please don't use peoples actual names - let them tell their own story (unless your work is supposed to be a fraud!)
-- Go wild inventing things and putting in obscure and vague references e.g. "During the time of troubles..." just assuming the reader will somehow know what you mean. It rapidly fills out a vast mysterious world, and gives others materials to work with.
-- If you dislike my idea for the religion/empire etc (or books that anyone has written) don't complain! Write a book of your own saying it is all lies, and explaining how the world really works. But at least aknowledge that the Empire etc is the 'common sense' picture of reality (at least until some new story emerges).
-- on that note: remember the first law of improv - if someone says something you run with it. Never say No!

--How to add a book:
--copy a prexisting book's file, change to following to suit.
--file template:
--[[
local book_title = "lorebooks:XXXXX"
local book_desc = "XXXX"
local inv_img = "default_book.png"

local book_text = ""
local book_text2 = ""

local author = ""
local date = ""

--generic registers... these are the same in all files. No need to change them!
]]
--(the book needs to then be run from the init.lua file, and registered for treasury, but submitters don't need to worry about that.)

--Inventory Images:
--Having different images for each topic helps with sorting...
--Each book could have a unique image, but the number of images would become very large...
--default_book.png (for anything)
--lorebooks_advice.png (for tutorials, selfhelp etc)
--lorebooks_science.png (works of scholarship)
--lorebooks_religion.png (religious/philosophical topics)
--lorebooks_politics.png (political tracts, official documents)
--lorebooks_literary.png (stories, poems etc)
--lorebooks_personal.png (personal diaries, logbooks, primary source documents etc)
--lorebooks_bio.png (accounts of peoples lives, notable figures etc)
--lorebooks_places.png (travelogues, histories of cities, famous landmarks etc)

----------------------------------------------------------
lorebooks = {}

----------------------------------------------------------
--BOOKS
--each book in it's own file so you can find the damn things
--make the file name the same as the book title
--sorted here by contributor (for credit/blame)...
--make a note of 'in-game' author/date here for reference
--... so can keep stories straight
--order them by author, alphabetically, then chronologically

---------------------------------------------------------
--DOKIMI's BOOKS

--Anonymous, 342
dofile(minetest.get_modpath("lorebooks").."/outside_awaits.lua")
----------------------
--Chief Imperial Archivist Q.Entlag, 338
dofile(minetest.get_modpath("lorebooks").."/whats_in_a_name.lua")
--------------------
--Doktor Dokimi, 315
dofile(minetest.get_modpath("lorebooks").."/doktor_dokimis_research_notes_vol1.lua")
--Doktor Dokimi, 316
dofile(minetest.get_modpath("lorebooks").."/doktor_dokimis_research_notes_vol2.lua")
--Doktor Dokimi, 361
dofile(minetest.get_modpath("lorebooks").."/doktor_dokimis_research_notes_wormholes.lua")
--------------------------
--Dr von Mesenstien, 357
dofile(minetest.get_modpath("lorebooks").."/a_brief_history_of_the_universe.lua")
--------------------------
--High Priest Diamina, 341
dofile(minetest.get_modpath("lorebooks").."/the_minetestian_pantheon.lua")
----------------------------
--High Priest Minera, 226
dofile(minetest.get_modpath("lorebooks").."/the_minetestian_creed.lua")
----------------------------
--Imperial University, 341
dofile(minetest.get_modpath("lorebooks").."/geography_101.lua")
--Imperial University, 341
dofile(minetest.get_modpath("lorebooks").."/physics_101.lua")
-----------------------------
--Inspector Goodstone, 360
dofile(minetest.get_modpath("lorebooks").."/yobites_the_hidden_menace.lua")
----------------------------
--Kandy Kane, 346
dofile(minetest.get_modpath("lorebooks").."/the_diary_of_kandy_kane_vol6.lua")
----------------------------
--Napali Stef, 361
dofile(minetest.get_modpath("lorebooks").."/palagon_the_fabled_city.lua")
----------------------------
--Professor P.T. Prageau, 348
dofile(minetest.get_modpath("lorebooks").."/the_mese_mystery.lua")
----------------------------
--Simeon the Small, 365
dofile(minetest.get_modpath("lorebooks").."/the_mysterious_doktor_dokimi.lua")
----------------------------
--Stylus Firentis, 366
dofile(minetest.get_modpath("lorebooks").."/travels_in_ecologia.lua")
---------------------------
--The Imperial Justice Department, 355
dofile(minetest.get_modpath("lorebooks").."/imperial_decree_355iv.lua")
---------------------------
--The Mikido Literary Foundation, 360
dofile(minetest.get_modpath("lorebooks").."/the_mikido_literary_foundation.lua")
---------------------------
--The Searcher, 360
dofile(minetest.get_modpath("lorebooks").."/fora_ecstatica.lua")
--------------------------
--Wombat the Wise, 359
dofile(minetest.get_modpath("lorebooks").."/the_revelation_of_wombat_the_wise.lua")
--------------------------
--Yan Flu, 351
dofile(minetest.get_modpath("lorebooks").."/my_pockets_are_vast.lua")
--Yan Flu, 358
dofile(minetest.get_modpath("lorebooks").."/i_realm_to_realm_i.lua")
--Yan Flu, 359
dofile(minetest.get_modpath("lorebooks").."/infinite_rebirth.lua")
--------------------------
--Yob Pikelet,348
dofile(minetest.get_modpath("lorebooks").."/empire_shmempire.lua")
--Yob Pikelet, 353
dofile(minetest.get_modpath("lorebooks").."/homesteading_for_idiots.lua")
--------------------------









----------------------------------------------------------
--FUNCTIONS
--this is called when books are used
--it displays the form with the the text from the book's file

lorebooks.read_book = function(user, book_title, book_desc, book_text, book_text2, author, date)
	local player_name = user:get_player_name()

	local lines, string = {}, ""

	local formspec =
	"size[18,11]" ..

	"label[0.4,0;" .. minetest.formspec_escape(book_desc) .. "]" ..
	"label[0.5,0.5;Author: " .. author .. "]" ..
	"label[0.5,0.8;Date: " .. date .. "]" ..

	"textarea[0.5,1.5;8.6,10.6;;" .. minetest.formspec_escape(book_text) .. ";]" ..
	"textarea[9.5,1.5;8.6,10.6;;" .. minetest.formspec_escape(book_text2) .. ";]" ..

	"background[0,0;18,11;lorebooks_bg.png;true]"..

	"button_exit[17.3,0;0.8,0.5;exit_form;X]"


	minetest.show_formspec(player_name, book_title, formspec)
end
