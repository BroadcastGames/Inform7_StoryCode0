"FlexibleWindowsUser1User2Styles0" by "Community"

The story genre is "Other". The release number is 10.
The story headline is "Glulx technical demonstration".

Include version 15/161003 of Flexible Windows by Jon Ingold.
[DEPENDENCY: Simple Graphical Window automatically includes Flexible Windows by Jon Ingold]
[Include version 10/161003 of Simple Graphical Window by Emily Short.]

[ Trouble - Inform 7 build 6M62 on Ubuntu 16.04
Experiment with commenting out various window targets and how the story-hints comes out.]
Table of User Styles (continued)
window	style name	background color	color
main	special-style-1	"#FF0200"	"#04FFFF"
main	special-style-2	"#FFFF01"	"#000001"
[all-windows	special-style-1	"#FF0200"	"#04FFFF"
all-windows	special-style-2	"#FFFF01"	"#000001"
all-grid-windows	special-style-1	"#FF0300"	"#03FFFF"
all-grid-windows	special-style-2	"#FFFF02"	"#020202"
all-buffer-windows	special-style-1	"#FF0200"	"#02FFFF"
all-buffer-windows	special-style-2	"#FFFF03"	"#010001"]
story-hints	special-style-1	"#FF0100"	"#01FFFF"
story-hints	special-style-2	"#FFFF04"	"#010102"
righthanded	special-style-1	"#03FF03"	"#FF03FF"
righthanded	special-style-2	"#FFFF05"	"#010203"
RightTwo	special-style-1	"#03FE03"	"#FF03FE"
RightTwo	special-style-2	"#FDFF05"	"#050203"
RightThree	special-style-1	"#20FE03"	"#D003FE"
RightThree	special-style-2	"#D0FF05"	"#200203"
RightThree	normal-style	"#010000"	"#FFA500"   [orange]
RightThree	header-style	"#020000"	"#00FFFF"
RightThree	bold-style 	"#030000"	"#10FFFF"
RightThree	italic-style		"#040000"	"#20FFFF"
RightFour		special-style-1	"#FF00FF"	"#00FF00"

To say red reverse:
	say special-style-1;

To say highlighted:
	say special-style-2;
	
To say default letters:
	say roman type;


[For interpreters, see where these unique values show up in the Glk calls.]
The background color of the main window is "#FEFBFF".
The background color of the status window is "#FEFBDF".


[**** Window: story-hints ]
The story-hints window is a text buffer g-window spawned by the main window.
The position of the story-hints window is g-placebelow.
[ This is the way the status window is defined in the Flexible Windows extension. ]
The scale method of the story-hints window is g-fixed-size.
The measurement of the story-hints window is 3.
The rock number of the story-hints window is 355. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

Toggling the story-hints window is an action out of world.
Understand "storyhints" as toggling the story-hints window.

Carry out toggling the story-hints window:
	if the story-hints window is g-present:
		close the story-hints window;
	otherwise:
		open the story-hints window.

Rule for refreshing the story-hints window:
	say "Stuck in the story? [red reverse]Do not dial 911[default letters] in the [highlighted]USA![default letters] Try west.".

The background color of the story-hints window is "#FFDEA0". [light brown/tan]

[**** Window: righthanded ]
The righthanded window is a text buffer g-window spawned by the main window.
The position of the righthanded window is g-placeright.
The scale method of the righthanded window is g-fixed-size.
The measurement of the righthanded window is 24.
The rock number of the righthanded window is 305. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

Toggling the righthanded window is an action out of world.
Understand "righthand" as toggling the righthanded window.
Understand "rightone" as toggling the righthanded window.

Carry out toggling the righthanded window:
	if the righthanded window is g-present:
		close the righthanded window;
	otherwise:
		open the righthanded window.

Rule for refreshing the righthanded window:
	say "Righthand aka RightOne. Not hints, but nonsense content: Stuck in the story? [red reverse]Do not dial 911[default letters] in the [highlighted]USA![default letters] - Try west.";
	try taking inventory;
	say "There went the inventory!".

The background color of the righthanded window is "#FAE1FF". [bright]



[**** Window: RightTwo ]
The RightTwo window is a text buffer g-window spawned by the main window.
The position of the RightTwo window is g-placeright.
The scale method of the RightTwo window is g-fixed-size.
The measurement of the RightTwo window is 22.
The rock number of the RightTwo window is 315. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

Toggling the RightTwo window is an action out of world.
Understand "RightTwo" as toggling the RightTwo window.

Carry out toggling the RightTwo window:
	if the RightTwo window is g-present:
		close the RightTwo window;
	otherwise:
		open the RightTwo window.

Rule for refreshing the RightTwo window:
	say "RightTwo Not hints, but nonsense content: Stuck in the story? [red reverse]Do not dial 911[default letters] in the [highlighted]USA![default letters] - Try west.";
	try taking inventory;
	say "There went the [italic type]inventory![default letters]. Now for some [bold type]Bold Moves[default letters] here.".

The background color of the RightTwo window is "#FAE1FD". [bright purpleish]



[**** Window: RightThree ]
The RightThree window is a text buffer g-window spawned by the main window.
The position of the RightThree window is g-placeright.
The scale method of the RightThree window is g-fixed-size.
The measurement of the RightThree window is 27.
The rock number of the RightThree window is 325. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

Toggling the RightThree window is an action out of world.
Understand "RightThree" as toggling the RightThree window.

Carry out toggling the RightThree window:
	if the RightThree window is g-present:
		close the RightThree window;
	otherwise:
		open the RightThree window.

Rule for refreshing the RightThree window:
	say "RightThree Not hints, but nonsense content: Stuck in the story? [red reverse]Do not dial 911[default letters] in the [highlighted]USA![default letters] - Try west.";
	try taking inventory;
	say "There went the [italic type]inventory![default letters]. Now for some [bold type]Bold Moves[default letters] here.".

The background color of the RightThree window is "#D1FFC7". [bright greenish]


[**** Window: RightFour]
The RightFour window is a text buffer g-window spawned by the main window.
The position of the RightFour window is g-placeright.
The scale method of the RightFour window is g-fixed-size.
The measurement of the RightFour window is 26.
The rock number of the RightFour window is 335. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

Toggling the RightFour window is an action out of world.
Understand "RightFour" as toggling the RightFour window.

Carry out toggling the RightFour window:
	if the RightFour window is g-present:
		close the RightFour window;
	otherwise:
		open the RightFour window.

Rule for refreshing the RightFour window:
	say "RightFour window is here, should have a blue background color. [red reverse]Do not dial 911[default letters] in the [highlighted]USA![default letters] - Try west.";
	try taking inventory;
	say "There went the [italic type]inventory![default letters]. Now for some [bold type]Bold Moves[default letters] here. This is extra text to see it really in action man, going and going.".

The background color of the RightFour window is "#B0EEF5". [bright blue]



Chapter - Rooms

Place is a room. "Type 'storyhints', 'righttwo', 'rightthree', 'rightfour', or 'righthand' to toggle secondary windows. West is another room with user1 and user2 style.".

Wild West is a room, west of Place. "You made it to the [red reverse]Wild Occidental[default letters], type [highlighted]'east'[default letters] to return to Place. [red reverse]Je ne puis pas jouer avec toi, dit le renard."
