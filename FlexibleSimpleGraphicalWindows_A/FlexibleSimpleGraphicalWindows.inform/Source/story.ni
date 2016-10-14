"Flexible and Simple Graphical Windows" by "Community".

The story genre is "Other". The release number is 5.  [genre: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6165 ]
The story headline is "Glulx technical demonstration".

[
This is all about pure Glulx, not Z-Machine.

reference:
http://docs.textadventures.co.uk/ifanswers/ifanswers.com/662/flexible-windows-background-window-always-another-inform.html
]

[Include version 15/161003 of Flexible Windows by Jon Ingold.]
[DEPENDENCY: Simple Graphical Window automatically includes Flexible Windows by Jon Ingold]
Include version 10/161003 of Simple Graphical Window by Emily Short.

The side window is a text buffer g-window spawned by the main window.
The position of the side window is g-placeright.
The scale method of the side window is g-proportional.
The measurement of the side window is 33.
The rock number of the side window is 305. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering. "]

Toggling the side window is an action out of world.
Understand "side window" as toggling the side window.
Understand "sidearm" as toggling the side window.

Carry out toggling the side window:
	if the side window is g-present:
		close the side window;
	otherwise:
		open the side window.
		
Toggling the status window is an action out of world.
Understand "status" as toggling the status window.

Carry out toggling the status window:
	say "I didn't really implement that ability. Status will not hide/show the status line.";
	[Use no status line.] [ This only seems to work as a main command? ]
	

The border window is a graphics g-window spawned by the side window.
The position of the border window is g-placeleft. [left of the side window, not the main window]
The scale method of the border window is g-fixed-size.
The measurement of the border window is 20.
The rock number of the border window is 315. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering. "]

[ The mere inclusion of the Simple Graphical Window extension automatically creates a window named 'graphic window' ]

The measurement of the graphics window is 8 [units?].

The background color of the side window is "#FFC786". [Peachy]
The background color of the border window is "#607080". [Grey/Dark Blue]
The background color of the graphics window is "#FF00FF". [magenta]

[
ToDo: Problem. The border window background does seem to get the desired color on Inform 7 build 6M62. However, the side window seems to only get the default white background.
Seems this problem is platform dependent.
Gnome Inform 7 6M62 has this bug (both interpreters): http://inform7.com/mantis/view.php?id=1681
Quixe also has this bug: https://github.com/erkyrath/quixe/issues/24
Gargoyle correctly displays the peach background on the side window.
]

After constructing the side window:
	open the border window.

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


[
======================================================================================
==  Images / Photographs / Drawings / Figures / Illustrations
======================================================================================
       Install these in the Inform materials folder name "Figures".
       The images are somewhat large so that cropping behavior with the 'side window' can be seen. A mix of png and jpg was used to just to have some technical variety. 
]

Figure field-illustration is the file "field.png".
Figure duck-illustration is the file "duck.png".
Figure gopher-snapshot is the file "gopher.jpg".
Figure placeholder-image is the file "Puzzly_puzzled.png" [off Wikimedia.org].
Figure png-animated-ball is the file "Animated_PNG_example_bouncing_beach_ball.png" [off Wikimedia.org].
Figure gif-animated-equation is the file "01-Siebzehneck-Animatiom-Variation.gif" [off Wikipedia.org, author Petrus3743].

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
	say "Here is a small animated png graphic of a bouncing ball. On Firefox it seems to bounce, on Chrome it does not? It's expected most game interpreters will not show it animated.";
	display figure png-animated-ball.
	
Showing the animated-gif is an action out of world. Understand "agif" as showing the animated-gif. [No restrictions on room.]
	
Carry out showing the animated-gif:
	say "Here is a small animated gif graphic of a math equation from Wikimedia user Petrus3743. On Firefox it seems to bounce, on Chrome it does not? It's expected most game interpreters will not show it animated.";
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
		[Try to return the layout to more like it was before the close/open of graphics window. Testing shows this works, but the image is centered without consideratin of the side window (so the centering is offset to the left). The command 'sidepicture' after this command will center it (but ignores resizing of the graphics window).]
		close the side window;
		open the side window;
	otherwise:
		say "The side window is currently closed. This convoluted example needs it open first before you can grab that snapshot.".	

[
======================================================================================
==  Main Story Logic of rooms
======================================================================================
]


Place is a room. "Type 'side window' to toggle. A border window should also appear, three windows in total. This line continues to be lengthy so that you can see how word wrapping is impacted by the toggle of the side window. The quick brown fox jumps over the lazy dog, or did he? Try going west to see letter coloring. East is a Field with graphic images.".

Wild West is a room, west of Place. "You made it to the [red reverse]Wild Occidental[default letters], type [highlighted letters]'east'[default letters] to return to Place. [redfox letters]Je ne puis pas jouer avec toi, dit le renard."

Field is a room, east of Place. "This is a large open field. West is the central Place room. Command 'look' will show the field. Command 'picture' will show a second figure. Command 'side window' still works here - and useful to see how the figure images are cropped when there is not enough display space.".

Rule for refreshing the side window:
	say "Side Window Line 1.[line break]More content continues. And now... for something completely different! The quick brown fox jumps over the lazy dog, but we are waiting on the recorded replay to confirm. Background color should be peachy.";
	say "[line break]";
	[ToDo: test if we are in the Field room before showing this output:]
	if the room is Field:
		say "In the Field, the command 'sidepicture' should reveal a land mammal; the command 'sidesnap' should reveal the same land mammal with alternate graphics exchange technique. A third variation, the command 'sidesnapshot' will take even more steps in graphics exchange technique.";
	otherwise:
		say "In the Field, there is a land mammal to photograph.".		
