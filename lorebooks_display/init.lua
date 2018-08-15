----------------------------------------------------------
--LOREBOOKS
--This contains the function for displaying the formspec,
-- that is this allows you to read the book
-- It is in it's own mod to allow for multiple collections of lorebooks 
-- This gives the option of disabling the default lorebooks collection (or any other collection the user does not want).
-- To create a new collection refer to the default lorebooks mod as a template.
-- Also add registration for the Treasurer mod, and/or some other way of getting books into the world.

----------------------------------------------------------
lorebooks = {}


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
