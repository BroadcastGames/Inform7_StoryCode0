"Flexible & Simple Graphical Windows Demo Zebra" by "Community".

[
Source code granted to the Public Domain.
you are free to use this source code in any way.
Typically that means this code can be mixed with code that uses any other license, as Public Domain is the most free of any license. You are not required to share your source or even credit the authors.
NOTE: Graphic images may have their own license, check them independently.
]

[
ToDo Bugs:
   1. Gargoyle on Ubuntu 16.10 and Windows 10 both do not show the status line on bottom. Windows Git and Windows Glulxe both show it correctly, as does the Inform 7 IDE 6M62 on Ubuntu.
   2. Inform 7 IDE 6M62 on Ubuntu 16.10 when you "reset story" it seems to have a Glk bug and the room titles have a brown/tan background. File this as Inform 7 bug?

ToDo features:
   1. "Dark Cities" has much nicer black borders on the story-hints window. How is this done?
   2. "Dark Cities" centers the status, looks nicer.
   3. Tech demo: "There is a flag (winmethod_NoBorder) which the game can use to ask for no border between the windows. (Pass as part of the method argument of glk_window_open()." from here: http://www.intfiction.org/forum/viewtopic.php?f=7&t=15797
]

The story genre is "Other". The release number is 26.  [genre: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6165 ]
The story headline is "Glulx technical demonstration".

[
This is all about pure Glulx, not Z-Machine. It would be nice to have a "Flexible Windows"  extension that supported both, but that does not seem to be the situation in late 2016.

reference:
http://docs.textadventures.co.uk/ifanswers/ifanswers.com/662/flexible-windows-background-window-always-another-inform.html

"The Glk Screen Model"
http://gwindows.trenchcoatsoft.com/gwin3.htm

Late 2016 of window background colors:
https://github.com/i7/counterfeit-monkey/issues/63


This source code has evolved to try and reproduce the 5-window layout shown in the story "Dead Cities by Jon Ingold" with modern Inform 7 6M62 builds.

**************************************************************************************************

General observations and desires, if understanding the tools correctly:

1. Without any extensions, a Figure can be created and displayed in the main windows that is jpg/png graphic image. This story demonstrates this with the "picture" command in the Field room. Also 'look' in the Field room should also show the image using the same technique.
2. There is no ability to size or scale the Figure with the default non-extensions behavior.
3. DESIRE: is there an extension that can show Figure in the 'non-extension way'  (inline) that allows scaling? Especially downscale larger images to a size like 'Simple Graphical Window' does - but without the use of a second window? Still following the scrolling main-window approach that is used, but some sense of scaling all png/jpg images to a defined size.

Scale comments in 2015 on the state of Glk and technique to measure graphic images:

1.  http://www.intfiction.org/forum/viewtopic.php?f=7&t=18151


]

[Include version 15/161003 of Flexible Windows by Jon Ingold.]
[DEPENDENCY: Simple Graphical Window automatically includes Flexible Windows by Jon Ingold]
Include version 10/161003 of Simple Graphical Window by Emily Short.

[
A bit of history: Flexible Windows had a Hyperlinks feature up until version 15. It was removed from the extension because it did not really fit with the name of the extension. "Hyperlinks by Dannii Willis" was created in October 2016 to provide the functionality that previously existed in earlier versions of Flexible Windows.
]
Include Hyperlinks by Dannii Willis.


Chapter - Hyperlinks

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
	3	"GO South"
	4	"GO West"
	5	"GO NorthEast"
	6	"GO NorthWest"
	7	"GO SouthEast"
	8	"GO SouthWest"
	20 	"GO Up"
	21	"GO Down"
	22	"GO Inside"
	23	"GO Outside"
	100	"restart"
	200	"look"
	1000	"magicalcommand"
	1001	"xyzzy"


[
======================================================================================
==  Windows
======================================================================================
]

Chapter - Output Windows


Fake Graphics is a truth state variable. Fake Graphics is usually true.

When play begins:
	[ The '10/161003 of Simple Graphical Window by Emily Short' by default will not auto-open window if this condition is not met. ]
	if glulx graphics is supported:
		Say "TECH00: Glulx graphics are supported!";
		now Fake Graphics is false;
	otherwise:
		Say "TECH00: Interpreter indicated that Glulx graphics are not supported.";
	[now Fake Graphics is true;]



[****:: Window: status, automatically created ]
Toggling the status window is an action out of world. Understand "status" as toggling the status window.

Carry out toggling the status window:
	say "I didn't really implement that ability. Status will not hide/show the status line.";
	[Use no status line.] [ This only seems to work as a main command? ]

[ Disable the status line pm startup to prevent reverse text. status line can be opened manually. ]
Use no status line.


[**** Window: chargraphics ]
[ No graphics, fake ASCII Art 'char' graphics window. ]
The chargraphics window is a text buffer g-window spawned by the main window.
The scale method of the chargraphics window is g-fixed-size.
The measurement of the chargraphics window is 36 [units?].
The position of the chargraphics window is g-placeright.
The rock number of the chargraphics window is 305. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

Rule for refreshing the chargraphics window:
	say "ASCII ART work[line break]Graphics are turned off to accommodate current releases of RemGlk. this is scaled g-fixed-size, how does that change things?";
	say "[line break]";


[****:: Window: side ]
The side window is a text buffer g-window spawned by the chargraphics window.
The position of the side window is g-placebelow.
The scale method of the side window is g-proportional.
The measurement of the side window is 60.
The rock number of the side window is 315. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

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

[
After constructing the side window:
	open the info1-border window.
	]


[**** Window: info1-border ]
The info1-border window is a graphics g-window spawned by the side window.
The position of the info1-border window is g-placeleft. [left of the side window, not the main window]
The scale method of the info1-border window is g-fixed-size.
The measurement of the info1-border window is 8.
The rock number of the info1-border window is 325. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]


[**** Window: info1-border-nongraphic ]
The info1-border-nongraphic window is a text buffer g-window spawned by the side window.
The position of the info1-border-nongraphic  window is g-placeleft. [left of the side window, not the main window]
The scale method of the info1-border-nongraphic  window is g-fixed-size.
The measurement of the info1-border-nongraphic  window is 1.
The rock number of the info1-border-nongraphic  window is 335. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]


[**** Window: graphics, automatically created by extension ]
[ The mere inclusion of the Simple Graphical Window extension automatically creates a window named 'graphic window' ]
The measurement of the graphics window is 36 [units?].
The position of the graphics window is g-placeright.
The rock number of the graphics window is 345. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]


[**** Window: story-hints ]
[ Intention is to have a single-line like in 'Dead Cities'  ]
The story-hints window is a text buffer g-window spawned by the main window.
The position of the story-hints window is g-placebelow.
[ This is the way the status window is defined in the Flexible Windows extension. ]
The scale method of the story-hints window is g-fixed-size.
The measurement of the story-hints window is 1.
[ Testing on interpreters shows that window measurement value of 5 is what works for RemGlk with 80x24 screen size to yield a single line. 4 or less results in 0 height of window. ]
[The scale method of the story-hints window is g-proportional.
The measurement of the story-hints window is 5.]
The rock number of the story-hints window is 355. [ "If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering."]

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
	say "Stuck in the story? [redfox letters]Do not dial 911[default letters]  in the [highlighted letters]USA![default letters] Instead [link 4]Try west[end link] or [link 1001]punt the ball[end link]".


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
window	style name	background color	color
main	special-style-1	"#FF0000"	"#00FFFF"
main	special-style-2	"#FFFF00"	"#000000"
story-hints	special-style-1	"#FF0030"	"#00FFFF"
story-hints	special-style-2	"#FFFF00"	"#002000"

To say red reverse:
	say special-style-1.
To say redfox letters:
	say special-style-1.

To say highlighted letters:
	say special-style-2.

To say default letters:
	say roman type.


The background color of the main window is "#F5FFE3". [light yellow green]
The background color of the side window is "#FFC786". [Peachy]
The background color of the info1-border window is "#607080". [Grey/Dark Blue]
The background color of the info1-border-nongraphic window is "#607080". [Grey/Dark Blue]
The background color of the graphics window is "#FF00FF". [magenta]
The background color of the chargraphics window is "#FF00FF". [magenta]
The background color of the story-hints window is "#FFDEA0". [light brown/tan]


[
 Setting status window this way doesn't work very well in GarGlk Interpreter .
 Discussion from 2011 on technicals. http://www.intfiction.org/forum/viewtopic.php?f=7&t=2588 
Include Glulx Status Window Control by Erik Temple.
]
[ The background color of the status window is "#E5FFB6". ] [green? tint]
[ The background color of the status window is "#5D890B".]  [dark green? tint for reverse text]


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
		say "I just changed the graphics window picture to the gopher; will now refresh the window.";
		now the measurement of the graphics window is 24 [characters wide in the land of 80x25 CGA layout];
		refresh the graphics window;
	otherwise:
		say "The side window is currently closed. This convoluted example needs it open first before you can grab that snapshot.".

Showing the side-altsnapshot is an action out of world. Understand "sidesnapshot" as showing the side-altsnapshot.

Check showing the side-altsnapshot when the location is not the field:
	say "There are no pictures here. You need to be in the Field." instead.
	
Carry out showing the side-altsnapshot:
	if the side window is g-present:
		now the currently shown picture is figure gopher-snapshot;
		say "I just changed the graphics window picture to the gopher; will now refresh the window.";
		now the measurement of the graphics window is 24 [characters wide in the land of 80x25 CGA layout];
		refresh the graphics window;
	otherwise:
		say "The side window is currently closed. This convoluted example needs it open first before you can grab that snapshot.".	


Chapter - Startup Story

Complex Layout is a truth state variable. Complex Layout is true.
LayoutA is a truth state variable. LayoutA is true.

When play begins:
        now the right hand status line is "[link 100]reset story[end link]"

Last when play begins (this is the check screen size rule):
	if Complex Layout is false:
		say "TECH00: Complex Layout are turned off . The command 'complexlayout' will enable the windows.[line break]";
	otherwise:
		if width of the main window is less than 80 or height of the main window is less than 24:
			say "WARNING: Your Interpreter's main window is too small @ [width of the main window]x[height of the main window] for you to use the Complex Layout. This needs 80x24 or larger. Maximize your window if you can, the command 'complexlayout' will enable the additional windows or command 'restart' should redraw everything.[line break]";
			now LayoutA is false;
		otherwise:
			say "TECH00: Screen detected size [width of the main window]x[height of the main window].";
			follow the open up Complex Layout rule.

This is the open up Complex Layout rule:
	[ Note: the order windows are opened determines the size and parent relationship.
	   status window we desire: full width.
	   story-hints window we desire: full width.
	   These are a 'matched pair' visually.
	 ]
	close the graphics window;
	open up the status window;
	open the story-hints window;
	if Fake Graphics is true:
		open the chargraphics window;
		now the side window is spawned by the chargraphics window;
	otherwise:
		open the graphics window;
		now the side window is spawned by the graphics window;
	open side window;
	[ This refresh is essential or the graphic will be centered relative to the height of the full window (screen) and not the new height after opening the side window. ]
	if Fake Graphics is true:
		open info1-border-nongraphic window;
	otherwise:
		open info1-border window;
		refresh the graphics window;
	say "TECH00: Opened windows following the Complex Layout rule.";

[ToDo: implement toggle for 'complexlayout' command to collapse to small-screen single-window behavior.]


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
==  Magical Casting commands
======================================================================================
]

Understand "xyzzy" or "say xyzzy" or "cast xyzzy" as casting xyzzy.
Casting xyzzy is an action applying to nothing.

Check casting xyzzy:
    if the player does not wear the amulet of elocution, say "You are unable to articulate the second 'z' separately from the first, and the spell fails in a disdainful puff. Must be Parisian magic." instead; 
    if the player has the plate, say "The plate of cheeses twitches uncomfortably, aware that it should be doing something, but not sure what." instead.

Carry out casting xyzzy:
    move the plate to the player.

Report casting xyzzy:
    say "Under the influence of the Amulet of Elocution, you pronounce this as Xhi-zee. And lo, from nowhere, a [plate] appears!"

The amulet of elocution is a wearable thing. It is carried by the player. The description is "A heavy gold ring on a chain. If heated in an ordinary house fire, it glows with the words, 'Moses Supposes His Toeses Are Roses.'"

The plate is a portable supporter. On the plate is a very ripe ooze. Instead of smelling the ooze, say "It smells like socks. This is going to be wonderful." The ooze is edible. The printed name of the plate is "plate[if the plate supports the ooze] of cheese[end if]". The description of the ooze is "Definitely genuinely cheese." Understand "cheese" as the ooze.

Instead of eating the ooze: now the ooze is nowhere; say "You are transported..."; move the player to Paradise.

Test spellmagic with "go to cheez factory / x squares / x amulet / x cheese / xyzzy / wear amulet / xyzzy / x ooze / smell ooze / eat ooze".

[
== Technical Misc
]

[
Thanks to Pogoman GO! for code sample
https://github.com/sussman/pogoman-go/commit/ddcb5ccfa232f25da58f06f28da2300bfd56dd4f
]
To decide whether unicodage is enabled:
	(-  glk_gestalt(gestalt_Unicode, 0) -)


[
======================================================================================
==  Main Story Logic of rooms
======================================================================================
]

Place is a room. "Type 'side window' to toggle, another toggle is 'storyhints'. A border window should also appear, three windows in total. This line continues to be lengthy so that you can see how word wrapping is impacted by the toggle of the side window. The quick brown fox jumps over the lazy dog, or did he? Try going west to see letter coloring. East is a Field with graphic images. South has escape tests.[line break]Commands 'apng' and 'agif' should work anywhere. Command 'test allwindows' should open 5-window layout.".

Reverse Attempt is a room, southeast of Place. "Reverse text attempt. Not ready.".


Include (-
	Global myCheck = false;
-)


Wild West is a room, west of Place. "You made it to the [red reverse]Wild Occidental[default letters], type [highlighted letters]'east'[default letters] to return to Place. [redfox letters]Je ne puis pas jouer avec toi, dit le renard."

The Wilder West is west of the Wild West.  "[italic type]This is Italic type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. [bold type]This is bold type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. [fixed letter spacing]This is fixed letter spacing type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E.  [paragraph break]UTF-8 Unicode with more than two bytes? 'For example the code point U+9A69 (驩) is encoded as E9 A9 A9'. The gothic letter hwair U+10348 is supposed to be 4 bytes, with a decimal value of 66,376? I pasted one those hwair characters here in the IDE and the Inform 7 6M62 compiler errored with 'Inform can only handle Unicode characters in the 16-bit range, from 0 to 65535.' Another west?"

The West囍ern End is west of Wilder West.  "Je ne suis pour toi qu'un renard semblable à cent mille renards. Mais, si tu m'apprivoises, nous aurons besoin l'un de l'autre. Tu seras pour moi unique au monde. ... Mais si tu m'apprivoises, ma vie sera comme ensoleillée.[paragraph break]Conditional test, do you see Unicode frowns and a happy Arabic greeting? [if unicodage is enabled][unicode 9785][unicode 9785][unicode 9785]. [unicode 9785][unicode 9785][unicode 9785] - enough of that, positive: أهلاً وسهلاً --- IMPORTANT NOTE: The room name should be 'West囍ern End' with Han 'double happiness' U+56cd symbol between 'West' and 'ern'. [otherwise]No, your Interpreter told me no Unicode. Logic test of Unicode said NOT HERE.[end if] More appears to be to the west.".

South Escape is a room, south of Place. "Here you go. One / Two // Three /// Four //// Five //// Six ////// and the other way too. One \ Two \\ Three \\\ Four \\\\ Five \\\\\ Size \\\\\\ there. Another room South does style changes over and over."

[ RemGlk expands every change, so test a really lengthy string. ]
South Overflow is a room, south of South Escape. "Here you go. [fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E. More: [fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E. Even More: [fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E. Inform 7 build 6M62 limit. 012345678901234567890123456789."

Field is a room, east of Place. "This is a large open field. West is the central Place room. Command 'look' will show the field. Command 'picture' will show a second figure. Command 'side window' still works here - and useful to see how the figure images are cropped when there is not enough display space. Other commands to try: 'Go to Paradise', 'Go to Green Room', 'Go to Back Room'".

Teleporting is an action applying to one visible thing. Understand "go to [any room]" as teleporting. Carry out teleporting: move the player to the noun.

The Cheez Factory is a room. "All around you are squares of pressed orange polymer, or possibly cheez. Your only hope is the magic word your uncle taught you: XYZZY." The squares of pressed orange polymer are scenery in the Factory. The description is "You see nothing special about the squares of pressed orange polymer. Nothing special at all." Understand "square" or "cheez" as the squares.

Paradise is a room. The description is "Well, it might just be one of the posh upper rings of purgatory, if you're entirely honest with yourself."

[
Incomplete expierment with inline Glk calls to try and understand what's missing in various Runtime Interpreters (apps).
These won't work as current design of Glk stylehint system is to only pick up changes win the window is opened, not in the middle of text generation
for an already established window.
]
To say xxx0 -- beginning say_xxx0 -- running on: (-
   print "I said, violence is ";
    if  (1 == 2) {
	glk_stylehint_set(wintype_TextBuffer, style_User1, stylehint_TextColor, $FF0000);
	glk_stylehint_set(wintype_TextBuffer, style_User1, stylehint_BackColor, $000000);
    }
   style bold;
   print "not";
   style roman;
   print " the answer to this one.";
-).
To say /xxx0 -- ending say_xxx0 -- running on: (- style roman; -).

To say xxa0 -- beginning say_xxa0 -- running on: (-
    if  (1 == 2) {
	glk_stylehint_set(wintype_TextBuffer, style_User1, stylehint_TextColor, $00FF00);
	glk_stylehint_set(wintype_TextBuffer, style_User1, stylehint_BackColor, $000030);
	glk_stylehint_set(wintype_TextBuffer, style_User1, stylehint_Size, 4);
    }
  print "ALTERED ";
-).
To say /xxa0 -- ending say_xxa0 -- running on: (-  -).

Green Room is a room. "Does [red reverse]red reverse[default letters] show?: [xxx0][/xxx0]. Is [red reverse]red reverse[default letters] the same?".

Back Room is a room. "Does [red reverse]red reverse[default letters] show?: [xxa0]this is inside xxxa0[/xxa0]. Is [red reverse]red reverse[default letters] the same?".
