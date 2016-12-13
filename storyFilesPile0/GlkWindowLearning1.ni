"GlkWindowLearning1" by "Community".

The story genre is "Other". The release number is 1.  [genre: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6165 ]
The story headline is "Glulx technical demonstration". [ This is all about pure Glulx, not Z-Machine due to extension. ]

Include version 15/161003 of Flexible Windows by Jon Ingold.
[DEPENDENCY: Simple Graphical Window automatically includes Flexible Windows by Jon Ingold]
[Include version 10/161003 of Simple Graphical Window by Emily Short.]

The side-window is a text buffer g-window spawned by the main window.
The measurement of the side-window is 30.
The position of the side-window is g-placeright.

Rule for refreshing the side-window:
	say "[bold type]Side-Window[roman type]";
	try taking inventory;

When play begins:
	open up the side-window.

[If user picks up item, the side window inventory needs refreshed. Brute force approach is to do it every single turn regardless if the user actions altered inventory.]
Every turn:
 	refresh side-window.

Place is a room.  "You can go west. You can try 'drop flask' to see if the Side-Window reflects changes."

Western World is west of Place. "You can go back east."

A petri dish is carried by the player.
A flask is carried by the player.
A wallet is carried by the player.
