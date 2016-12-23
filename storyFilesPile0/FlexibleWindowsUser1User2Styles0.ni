"FlexibleWindowsUser1User2Styles0" by "Community"

The story genre is "Other". The release number is 2.  
The story headline is "Glulx technical demonstration".

Include version 15/161003 of Flexible Windows by Jon Ingold.
[DEPENDENCY: Simple Graphical Window automatically includes Flexible Windows by Jon Ingold]
[Include version 10/161003 of Simple Graphical Window by Emily Short.]

[ Trouble - Inform 7 build 6M62 on Ubuntu 16.04
Experiment with commenting out various window targets and how the story-hints comes out.]
Table of User Styles (continued)
window	style name	background color	color
all-windows	special-style-1	"#FF0000"	"#00FFFF"
all-windows	special-style-2	"#FFFF00"	"#000000"
all-grid-windows	special-style-1	"#FF0000"	"#00FFFF"
all-grid-windows	special-style-2	"#FFFF00"	"#000000"
all-buffer-windows	special-style-1	"#FF0000"	"#00FFFF"
all-buffer-windows	special-style-2	"#FFFF00"	"#000000"
story-hints	special-style-1	"#FF0000"	"#00FFFF"
story-hints	special-style-2	"#FFFF00"	"#000000"
righthanded	special-style-1	"#03FF03"	"#FF03FF"
righthanded	special-style-2	"#FFFF03"	"#040404"

To say red reverse:
	say special-style-1;

To say highlighted:
	say special-style-2;
	
To say default letters:
	say roman type;


[**** Window: story-hints ]
The story-hints window is a text buffer g-window spawned by the main window.
The position of the story-hints window is g-placebelow.
[ This is the way the status window is defined in the Flexible Windows extension. ]
The scale method of the story-hints window is g-fixed-size.
The measurement of the story-hints window is 1.
The rock number of the story-hints window is 355. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

Toggling the story-hints window is an action out of world.
Understand "storyhints" as toggling the story-hints window.

Carry out toggling the story-hints window:
	if the story-hints window is g-present:
		close the story-hints window;
	otherwise:
		open the story-hints window.

Rule for refreshing the story-hints window:
	say "Stuck in the story? [red reverse]Do not dial 911[default letters] in the [highlighted]USA![default letters] - Try west.".

The background color of the story-hints window is "#FFDEA0". [light brown/tan]

[**** Window: righthanded ]
The righthanded window is a text buffer g-window spawned by the main window.
The position of the righthanded window is g-placeright.
The scale method of the righthanded window is g-fixed-size.
The measurement of the righthanded window is 30.
The rock number of the righthanded window is 305. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

Toggling the righthanded window is an action out of world.
Understand "righthand" as toggling the righthanded window.

Carry out toggling the righthanded window:
	if the righthanded window is g-present:
		close the righthanded window;
	otherwise:
		open the righthanded window.

Rule for refreshing the righthanded window:
	say "Not hints, but nonsense content: Stuck in the story? [red reverse]Do not dial 911[default letters] in the [highlighted]USA![default letters] - Try west.";
	try taking inventory;
	say "There went the inventory!".

The background color of the righthanded window is "#FAE1FF". [bright]


Place is a room. "Type 'storyhints' or 'righthand' to toggle secondary windows. West is another room with user1 and user2 style.".

Wild West is a room, west of Place. "You made it to the [red reverse]Wild Occidental[default letters], type [highlighted]'east'[default letters] to return to Place. [red reverse]Je ne puis pas jouer avec toi, dit le renard."
