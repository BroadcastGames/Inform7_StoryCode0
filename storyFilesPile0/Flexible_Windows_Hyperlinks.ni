"FlexibleWindowsHyperlinksA" by "Community"

The story genre is "Other". The release number is 2.  [genre: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6165 ]
The story headline is "Glulx technical demonstration".

[Include version 15/161003 of Flexible Windows by Jon Ingold.]
[DEPENDENCY: Simple Graphical Window automatically includes Flexible Windows by Jon Ingold]
Include version 10/161003 of Simple Graphical Window by Emily Short.

[
A bit of history: Flexible Windows had a Hyperlinks feature up until version 15. It was removed fron the extension because it did not really fit with the name of the extension. "Hyperlinks by Dannii Willis" was created in October 2016 to provide the functionality that previously existed in earlier versions of Flexible Windows.
]
Include Hyperlinks by Dannii Willis.

[ The mere inclusion of the Simple Graphical Window extension automatically creates a window named 'graphic window' ]

The measurement of the graphics window is 6 [units?].

The background color of the graphics window is "#FF00FF". [magenta]

[
======================================================================================
==  Hyperlink table
======================================================================================
Since many stories may share basic command, let's make the first 4 the basic windrose directions. This way we can copy/paste between stories and have the same link numbers. Unique commands, story specific, start with 1000.
]

Table of Glulx Hyperlink Replacement Commands (continued)
	link ID  	replacement  
	1  	"GO North"
	2  	"GO East"
	3	"Go South"
	4	"Go West"
	20 	"Go Up"
	21	"Go Down"
	100	"restart"
	200	"look"
	1000	"magicalcommand"

[
======================================================================================
==  Main Story Logic of rooms
======================================================================================
]

When play begins:
        now the right hand status line is "[link 100]reset story[end link]"

Place is a room.  "This is a Place that seems to be the center of the universe.  To the [link  2]East[end link] a wide field opens, while to the [link 4]West[end link] a narrow path winds into the Wild. [link 20]π[end link]"

Wild West is a room, west of Place.  "Welcome to the Wild West! Rodeo starts shortly.  [link 2]Easterly narrow trail[end link] might return you to Place."

Field is a room, east of Place. "This is a large open field.  [link 4]West[end link] is the central Place room."

Attic is a room, up from the Place. "Well, it seems that Place has an Attic? So it must be more than a generic place. You better get [link 21]Down[end link], this part of the universe seems unstable."

