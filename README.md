# lorebooks
# by Dokimi

A Minetest mod that adds lore books, to allow story telling within a Minetest universe.

These books contain short stories, poems, religious decrees, official pronouncements... anything at all.

These books can be used to tell fictional tales, or fictionalized versions of real peoples interactions with the Minetest game, and the Minetest community. The aim is for these books to create a Minetest Universe, to add a sense of narrative to playing Minetest, as well as to capture the stories and culture of the Minetest community. Think of it as a vast game of Dungeons-and-Dragons, or 'Wiki-storytelling'.

The idea is for many different people to add their stories to this collection. e.g. histories of servers, histories of people, stories about the creation and use of mods, notable places, buildings etc etc.

The books can then be added to or spawned in the world. Players can collect and discover them, slowly uncovering the stories of Minetest as they go.

See below for formatting guides etc to aid with adding your story to the collection.




# The mods:

- Lorebooks: The collection of books. They can only be accessed in creative mode (or crafted if you already have a copy).
- trm_lorebooks: Registers the books with the Treasury mod. Allows books to be spawned in the world provided you have Treasury spawning mods (see the Treasury mod for details).


# License:

Code is licensed under GNU LGPLv2+.
Textures are licensed under CC BY-SA 3.0 Unported.



# Change-log:

-nothing yet!


# Guide to Adding Books to Lorebooks
Formatting guide:
- limit to around 240-250 words per page
- only two pages.
- err on the side of being shorter, otherwise you will lose text.
- use ' for quotations within the text (" is needed by the code).
- Do not use enter for new lines: use \n \n for a blank line paragraph break.
- make sure the book has a unique name

How to add a book:
- copy a prexisting book's file, change to following to suit:

local book_title = "lorebooks:my_books_name_goes_here"

local book_desc = "My Book's Name Goes Here"

local inv_img = "default_book.png"

local book_text = "'This is on page one,' said Mark.\n \n'Good to see you've used a paragraph break there,' said Steve."

local book_text2 = "We are now on page two. Good thing this is short, or the end of our story will disappear off the page."

local author = "Wombat the Wise"

local date = "360"

- The generic registers need to be in the file, but these are the same in all files. No need to change them!
- (The book also needs to then be run from the init.lua file, and registered for treasury, but submitters don't need to worry about that.)

Inventory Images:
- Having different images for each topic helps with sorting. Each book could have a unique image, but the number of images would become very large. These are the categories so far:
- default_book.png (for anything)
- lorebooks_advice.png (for tutorials, selfhelp etc)
- lorebooks_science.png (works of scholarship)
- lorebooks_religion.png (religious/philosophical topics)
- lorebooks_politics.png (political tracts, official documents)
- lorebooks_literary.png (stories, poems etc)
- lorebooks_personal.png (personal diaries, logbooks, primary source documents etc)
- lorebooks_bio.png (accounts of peoples lives, notable figures etc)
- lorebooks_places.png (travelogues, histories of cities, famous landmarks etc)




# Lore Guide:
People can write what they like... within some constraints. The suspension of disbelief must be maintained! We need to agree on a few basics so that all the books feel like they are in the same universe. Therefore please consider the following:

- Everything should be written from a perspective inside the game. For the author Minetest is the real world!

- No "Breaking the 4th wall": to allow references to members of the Minetest community, and people and places in the real world I have created two religions and an Empire. Please use them!
- Minetestism: Allows talk of how Minetest came to be. The developers are gods within a polytheistic pantheon, other notable members are legendary heroes (or sea monsters, demi-gods,or whatever). The clergy is The Order of Mine.
- The Outsider Cult: Allows talk of the real world. These are mystics who believe the world is an illusion, and the entire universe in contained within a place called "Outside". We can mystically 'go Outside' by 'Stopping'.
- The Empire: Allows talk about anything else to do with the community. A vast nebulous political entity no-one understands. (e.g. Moderators/admins = imperial senators, officials etc. Modders = scientists, wizards etc. Griefers etc = criminals, rebels, terrorists etc)

- Geography: The universe contains many realms. Each has unique technologies, societies, and laws of nature. Singleplayer = distant wildlands 'Outer Realms'. Servers = Cities, regions, nations etc. How travel between realms actually occurs is controversial (as are many things in the strange and shifting Minetest Universe).

- Time: 1 real year is 45 game years (according to rough back-of-the-envelope calculations...which I have declared Imperial Standard Time!)
- 2010 = year 0 (when Minetest was first made). Therefore 2018 is 8 x 45 = year 360.  One real yr is decades long. 2019 = year 405.
- Use 'Imperial Standard Time' to figure out the dates of events, and when your book was published.

- Authors: you can use made up names, real names, or user names (but make it grammatical and pronounceable i.e. change numbers/symbols to text e.g. Wombatk44 to Wombat'k the 44th).
- Authorship: you may reuse other people's fictional characters (unless they say otherwise). But please don't use peoples' actual names - let them tell their own story (unless your work is supposed to be a fraud!)
- Author style consistency: when writing documents that are supposedly from the same source (e.g. the official religion, the Imperial government), try to match the style found in their currently existing documents.

- Mod specific content: for things highly specific to one mod (e.g. how to make nuclear reactors in Technic), include a line like this to reduce confusion: "If you live in the right place..." or "Some people say this stuff never happens".

- Reference other works! Books, characters, places, events. Make allusions to them. This ties things into one super-narrative.
- Read other works! At least try to live in the same universe as the rest of us!
- Go wild: Invent things. Put in obscure and vague references e.g. "During the time of troubles...". Just assume the reader will somehow know what you mean. It rapidly fills out a vast mysterious world, and gives other people materials to work with.

- Put your criticisms in a book: If you dislike my idea for the religion/empire etc (or books that anyone has written) don't complain to us! Write a book of your own saying explaining how the world really works. But at least aknowledge that the Empire etc is the 'common sense' picture of reality (at least until some new story emerges).
- Remember the first law of improv - if someone says something you run with it. Never say No!

- Decency: this will be available to the general public, including children. Don't be an ass! You must get things past the Imperial Censor - annoy the Censor and your book shall bear the scars of the Censors rage!
