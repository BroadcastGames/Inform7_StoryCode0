"Flexible and Simple Graphical Windows" by "Community".

[
Source code granted to the Public Domain.
you are free to use this source code in any way.
Typically that means this code can be mixed with code that uses any other license, as Public Domain is the most free of any license. You are not required to share your source or even credit the authors.
NOTE: Graphic images may have their own license, check them independently.
]

The story genre is "Other". The release number is 14.  [genre: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6165 ]
The story headline is "Glulx technical demonstration".

[
This is all about pure Glulx, not Z-Machine. It would be nice to have a "Flexible Windows"  extension that supported both, but that does not seem to be the situation in late 2016.

reference:
http://docs.textadventures.co.uk/ifanswers/ifanswers.com/662/flexible-windows-background-window-always-another-inform.html

"The Glk Screen Model"
http://gwindows.trenchcoatsoft.com/gwin3.htm

**************************************************************************************************

General observations and desires, if understanding the tools correctly:

1. Without any extensions, a Figure can be created and displayed in the main windows that is jpg/png graphic image. This story demonstrates this with the "picture" command in the Field room. Also 'look' in the Field room should also show the image using the same technique.
2. There is no ability to size or scale the Figure with the default non-extensions behavior.
3. DESIRE: is there an extension that can show Figure in the 'non-extension way'  (inline) that allows scaling? Especially downscale larger images to a size like 'Simple Graphical Window' does - but without the use of a second window? Still following the scrolling main-window approach that is used, but some sense of scaling all png/jpg images to a defined size.

]

[Include version 15/161003 of Flexible Windows by Jon Ingold.]
[DEPENDENCY: Simple Graphical Window automatically includes Flexible Windows by Jon Ingold]
Include version 10/161003 of Simple Graphical Window by Emily Short.


[
======================================================================================
==  Windows
======================================================================================
]

Chapter - Output Windows

[****:: Window: status, automatically created ]

Toggling the status window is an action out of world. Understand "status" as toggling the status window.

Carry out toggling the status window:
	say "I didn't really implement that ability. Status will not hide/show the status line.";
	[Use no status line.] [ This only seems to work as a main command? ]

[ Disable the status line pm startup to prevent reverse text. status line can be opened manually. ]
Use no status line.


[****:: Window: side ]
The side window is a text buffer g-window spawned by the main window.
The position of the side window is g-placeright.
The scale method of the side window is g-proportional.
The measurement of the side window is 33.
The rock number of the side window is 305. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

Toggling the side window is an action out of world.
Understand "side window" as toggling the side window.
Understand "sidearm" as toggling the side window.

Carry out toggling the side window:
	if the side window is g-present:
		close the side window;
	otherwise:
		open the side window;
		say "I actually should have opened two windows, 'side' and 'border'.".

Rule for refreshing the side window:
	say "Side Window Line 1.[line break]More content continues. And now... for something completely different! The quick brown fox jumps over the lazy dog, but we are waiting on the recorded replay to confirm. Background color should be peachy.";
	say "[line break]";
	[ToDo: test if we are in the Field room before showing this output:]
	if the room is Field:
		say "In the Field, the command 'sidepicture' should reveal a land mammal; the command 'sidesnap' should reveal the same land mammal with alternate graphics exchange technique. A third variation, the command 'sidesnapshot' will take even more steps in graphics exchange technique.";
	otherwise:
		say "In the Field, there is a land mammal to photograph.".

After constructing the side window:
	open the border window.


[**** Window: border ]
The border window is a graphics g-window spawned by the side window.
The position of the border window is g-placeleft. [left of the side window, not the main window]
The scale method of the border window is g-fixed-size.
The measurement of the border window is 20.
The rock number of the border window is 315. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]


[**** Window: graphics, automatically created by extension ]
[ The mere inclusion of the Simple Graphical Window extension automatically creates a window named 'graphic window' ]
The measurement of the graphics window is 20 [units?].
The position of the graphics window is g-placeright.
The rock number of the graphics window is 325. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]


[**** Window: story-hints ]
[ Intention is to have a single-line like in 'Dead Cities' or '' ]
The story-hints window is a text buffer g-window spawned by the main window.
The position of the story-hints window is g-placebelow.
The scale method of the story-hints window is g-proportional.
[ Testing on interpreters shows that window size 1 is too small. 2 or 3 causes problems on GlkOte but 2 looks fine on Inform 7 IDE. 2 seems trouble on Windows 10 Glulxe interpreter, but 3 seems good there. 6 seems to eliminate MORE on GlkOte.  12 makes the text appear on Gargoyle, but clearly there is space for two lines, yet you get -more- prompt if you send 2 lines of content and don't resize. ]
The measurement of the story-hints window is 4.
The rock number of the story-hints window is 335. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

Toggling the story-hints window is an action out of world.
Understand "storyhints" as toggling the story-hints window.
Understand "story-hints" as toggling the story-hints window.
Understand "story hints" as toggling the story-hints window.

Carry out toggling the story-hints window:
	if the story-hints window is g-present:
		close the story-hints window;
	otherwise:
		open the story-hints window.

Rule for refreshing the story-hints window:
	[ToDo: set a counter and increment so we have some idea of how frequently this redraws.]
	say "Stuck in the story? Do not dial 911 in the USA!".


[
ToDo: Problem. The border window background does seem to get the desired color on Inform 7 build 6M62. However, the side window seems to only get the default white background.
Seems this problem is platform dependent.
Gnome Inform 7 6M62 has this bug (both interpreters): http://inform7.com/mantis/view.php?id=1681
Quixe also has this bug: https://github.com/erkyrath/quixe/issues/24
Gargoyle correctly displays the peach background on the side window.
]


[ToDo: we could experiment with appending close/open the graphics window steps as part of the 'After constructing the side window' directive.]


[
======================================================================================
== Text colors / Text highlighting
======================================================================================

Reference: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6317
"Glulx doesn't have a special style 3. It only has two custom styles."
]

Table of User Styles (continued)
style name	background color	color
special-style-1	"#FF0000"	"#00FFFF"
special-style-2	"#FFFF00"	"#000000"

To say red reverse:
	say special-style-1;
	
To say default letters:
	say roman type;
	
To say highlighted letters:
	say special-style-2;

To say redfox letters:
	say special-style-1;

The background color of the side window is "#FFC786". [Peachy]
The background color of the border window is "#607080". [Grey/Dark Blue]
The background color of the graphics window is "#FF00FF". [magenta]
The background color of the story-hints window is "#FFDEA0". [light brown/tan]


[
======================================================================================
==  Images / Photographs / Drawings / Figures / Illustrations
======================================================================================
       Install these in the Inform materials folder name "Figures".
       The images are somewhat large so that cropping behavior with the 'side window' can be seen. A mix of gif, png and jpg was used to just to have some technical variety. 

       gif format is formally disallowed in the Blorb distribution, reference: http://www.intfiction.org/forum/viewtopic.php?f=7&t=20659
]

Chapter - Image Assets

Figure field-illustration is the file "field.png".
Figure duck-illustration is the file "duck.png".
Figure gopher-snapshot is the file "gopher.jpg".
Figure placeholder-image is the file "Puzzly_puzzled.png" [off Wikimedia.org].
Figure png-animated-ball is the file "Animated_PNG_example_bouncing_beach_ball.png" [off Wikimedia.org].
[Figure gif-animated-equation is the file "01-Siebzehneck-Animatiom-Variation.gif" [off Wikipedia.org, author Petrus3743].]
Figure gif-animated-equation is the file "01-Siebzehneck-Animatiom-Variation_tricknamed0.jpg" [gif hammered into name jpg to trick Release of Blorb].


[
======================================================================================
==  Anywhere Images Logic
======================================================================================
]

After starting the virtual machine:
	now the currently shown picture is figure placeholder-image;
	now the current graphics drawing rule is the standard placement rule.


Showing the animated-png is an action out of world. Understand "apng" as showing the animated-png. [No restrictions on room.]
	
Carry out showing the animated-png:
	say "Here is a small animated png graphic of a bouncing ball. On Firefox it seems to bounce, on Chrome it does not? It's expected most game interpreters will not show it animated. Should be in the main window inline, like this text.";
	display figure png-animated-ball.

Showing the animated-gif is an action out of world. Understand "agif" as showing the animated-gif. [No restrictions on room.]

Carry out showing the animated-gif:
	say "Here is a small animated gif graphic of a math equation from Wikimedia user Petrus3743. On Firefox it seems to bounce, on Chrome it does not? It's expected most game interpreters will not show it animated. Should be in the main window inline, like this text.";
	display figure gif-animated-equation.


[
======================================================================================
==  Field room Images Logic
======================================================================================
]

Before looking in the Field:
	display figure field-illustration.

Showing the picture is an action out of world. Understand "picture" as showing the picture.

Check showing the picture when the location is not the field:
	say "There are no pictures here. You need to be in the Field." instead.
	
Carry out showing the picture:
	say "Here is a duck. Obviously, not the land mammal. Is this duck even real or a simulation? It should appear in the main window just like the text you are reading. As I understand it, the runtime does not know how to resize this image and it may have trouble fitting on smaller screens.";
	display figure duck-illustration.


[ Tests of behavior.
1. Can we change the size of the graphics window after creation?
2. How to change the graphic, invalidate the old one, not just refresh the previous image?
]
Showing the side-picture is an action out of world. Understand "sidepicture" as showing the side-picture.

Check showing the side-picture when the location is not the field:
	say "There are no pictures here. You need to be in the Field." instead.
	
Carry out showing the side-picture:
	if the side window is g-present:
		now the currently shown picture is figure gopher-snapshot;
		say "I just changed the graphics window picture to the gopher; will now follow current redrawing rule.";
		now the measurement of the graphics window is 24 [units?];
		[This is the proper way to invalidate the old graphic, but does not seem to resize the graphics window:]
		follow the current graphics drawing rule;
	otherwise:
		say "The side window is currently closed. This convoluted example needs it open first before you can grab that snapshot.".

Showing the side-altpicture is an action out of world. Understand "sidesnap" as showing the side-altpicture.

Check showing the side-altpicture when the location is not the field:
	say "There are no pictures here. You need to be in the Field." instead.
	
Carry out showing the side-altpicture:
	if the side window is g-present:
		now the currently shown picture is figure gopher-snapshot;
		say "I just changed the graphics window picture to the gopher; will now close and open window.";
		now the measurement of the graphics window is 24 [units?];
		[close and re-open the graphics window seems to trigger image replacement and resize.]
		close the graphics window;
		open the graphics window;
	otherwise:
		say "The side window is currently closed. This convoluted example needs it open first before you can grab that snapshot.".

Showing the side-altsnapshot is an action out of world. Understand "sidesnapshot" as showing the side-altsnapshot.

Check showing the side-altsnapshot when the location is not the field:
	say "There are no pictures here. You need to be in the Field." instead.
	
Carry out showing the side-altsnapshot:
	if the side window is g-present:
		now the currently shown picture is figure gopher-snapshot;
		say "I just changed the graphics window picture to the gopher; will now close and open graphics window then the side window.";
		now the measurement of the graphics window is 24 [units?];
		[close and re-open the graphics window seems to trigger image replacement and resize.]
		close the graphics window;
		open the graphics window;
		[Try to return the layout to more like it was before the close/open of graphics window. Testing shows this works, but the image is centered without consideration of the side window (so the centering is offset to the left). The command 'sidepicture' after this command will center it (but ignores resizing of the graphics window).]
		close the side window;
		open the side window;
	otherwise:
		say "The side window is currently closed. This convoluted example needs it open first before you can grab that snapshot.".	


Chapter - Startup Story

Complex Layout is a truth state variable. Complex Layout is true.
LayoutA is a truth state variable. LayoutA is true.

Last when play begins (this is the check screen size rule):
	if Complex Layout is false:
		say "TECH00: Complex Layout are turned off . The command 'complexlayout' will enable the windows.[line break]";
	otherwise:
		if width of the main window is less than 80 or height of the main window is less than 24:
			say "WARNING: Your Interpreter's main window is too small @ [width of the main window]x[height of the main window] for you to use the Complex Layout. This needs 80x24 or larger. Maximize your window if you can, the command 'complexlayout' will enable the additional windows.[line break]";
			now LayoutA is false;
		otherwise:
			say "TECH00: Screen detected size [width of the main window]x[height of the main window].";
			follow the open up Complex Layout rule.

This is the open up Complex Layout rule:
	[ Note: the order windows are opened determines the size and parent relationship. ]
	open the story-hints window;
	open side window;
	open up the status window;
	say "TECH00: opened Complex Layout rule.";


[
======================================================================================
==  Test scripts
======================================================================================
]

[The order that they are opened determines the resulting layout. We want the hints to have the full width of the screen like status? 
WARNING: on a Release build, the test command gets stripped? ]
Test allwindows with "storyhints / side window".


[
======================================================================================
==  Main Story Logic of rooms
======================================================================================
]

Place is a room. "Type 'side window' to toggle, another toggle is 'storyhints'. A border window should also appear, three windows in total. This line continues to be lengthy so that you can see how word wrapping is impacted by the toggle of the side window. The quick brown fox jumps over the lazy dog, or did he? Try going west to see letter coloring. East is a Field with graphic images.[line break]Commands 'apng' and 'agif' should work anywhere. Command 'test allwindows' should open 5-window layout.".

Wild West is a room, west of Place. "You made it to the [red reverse]Wild Occidental[default letters], type [highlighted letters]'east'[default letters] to return to Place. [redfox letters]Je ne puis pas jouer avec toi, dit le renard."

Field is a room, east of Place. "This is a large open field. West is the central Place room. Command 'look' will show the field. Command 'picture' will show a second figure. Command 'side window' still works here - and useful to see how the figure images are cropped when there is not enough display space.".

