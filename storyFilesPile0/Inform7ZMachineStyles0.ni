"Inform7ZMachineStyles0" by "Community"

The story genre is "Other". The release number is 8.  [ genre: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6165 ]
The story headline is "Z-machine Glk technical demonstration".

[ This is intended to be Inform 7 6m62 compiled story that can reproduce some of the text style changes of older Z-machine / Z-code games.
Will not currently work with Glulx targeting in Inform 7, only Z-machine given that color support is vastly different between the two. Someone could make an extension for Inform 7 that allows the say "[red letters]text" syntax convention (even if limited to only two by Glk via style_User1 and style_User2), but I haven't seen one.

Notes: Interpreter Application Testing
fizmo-ncursesw adds an extra char left of room name on South South room. fizmo-sdl2 works fine. Did not open a bug for now.
fizmo-nucrsesw segmentation fault when doing the banner in room to East. fizmo-sdl2 kind of does fine with it.
Frotz crashes currently with this example in the North Overflow room. Open and accepted issue: https://github.com/DavidGriffith/frotz/issues/33
The Inform 7 IDE  (Gnome Inform 7) build 6M62 on Ubuntu 16.04 and Ubuntu 16.10 x86 has a terrible time with Z-machine / Z-code colors. Need to find some of the open bugs, but here is one related: http://inform7.com/mantis/view.php?id=1681 - I can't seem to find  an open bug on the very obvious Z-code color problems?
 ]


Include Basic Screen Effects by Emily Short.


Chapter - Rooms

Place is a room. "Here is [green letters]GREEN[default letters] or [red letters]RED[default letters] text. South is Test Chamber. West is more text styles. North has escape testing. East has a banner quote that appears only once per game and more text color changes.".

Wild West is a room, west of Place. "You made it to the [red letters]Wild Occidental[default letters], type [red letters]'east'[default letters] to return to Place. [blue letters]Je ne puis pas jouer avec toi, dit le renard.[default letters][roman type] Reverse letters working? [bold type]This is bold type.[roman type] Back to roman type."

The Wilder West is west of the Wild West.  "[italic type]This is Italic type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. [roman type][bold type]This is bold type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. [roman type][fixed letter spacing]This is fixed letter spacing type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. [variable letter spacing][default letters][paragraph break]UTF-8 Unicode with more than two bytes? 'For example the code point U+9A69 (驩) is encoded as E9 A9 A9'. The gothic letter hwair U+10348 is supposed to be 4 bytes, with a decimal value of 66,376? I pasted one those hwair characters here in the IDE and the Inform 7 6M62 compiler errored with 'Inform can only handle Unicode characters in the 16-bit range, from 0 to 65535.' East to go back where you came from."

North Escape is a room, north of Place. "Here you go. One / Two // Three /// Four //// Five //// Six ////// and the other way too. One \ Two \\ Three \\\ Four \\\\ Five \\\\\ Size \\\\\\ there. Another room North does style changes over and over."

[ RemGlk expands every change, so test a really lengthy string. ]
North Overflow is a room, north of North Escape. "Here you go. [fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E. More: [fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E. Even More: [fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E. Inform 7 build 6M62 limit. 012345678901234567890123456789."

North Styles is a room, north of North Overflow.  "The 'D' italic in that room description, such as [italic type]this italic text[roman type] should not be bold according to the stylehints I have studied that inform 7 6M62 is generating for this story file. set style is called to set style_Alert stylehint_Weight to 0 and stylehint_Oblique to 1. This is bold off, italic on. :::: Ok, what if [bold type]turn on bold type [italic type]turn on italic type[roman type] now return to roman type; [italic type]italic again; [roman type]roman type. Try further North.".

North Styles2 is a room, north of North Styles. "This text will not be printed, did you see this ROOM-TEXT-0 ?".

after going to the North Styles2:
	say "ROOM-TEXT-1 The 'D' italic in that room description, such as [italic type]this italic text[roman type] should not be bold according to the stylehints I have studied that inform 7 6M62 is generating for this story file. set style is called to set style_Alert stylehint_Weight to 0 and stylehint_Oblique to 1. This is bold off, italic on. :::: Ok, what if [bold type]turn on bold type [italic type]+ turn on italic type[roman type] now return to roman type.  South to turn around.".


To say i -- beginning say_i -- running on: (- style underline; -).
To say /i -- ending say_i -- running on: (- style roman; -).

[ Eastward Room in Inform 7 build 6M62 IDE does not render this room correct on Ubuntu 16.10 - if these problems were so easy then other developers wouldn't keep having problems, would they? WIndows 10 of the same IDE does not have this problem.  Perhaps what we need is more Inform 7 source code examples of how-to and mixed style examples to test against. ]

Eastward Room is a room, east of Place. "Welcome to Eastward Room, go West to return to the central Place. Another East is available with colors."

After going to the Eastward Room:
	display the boxed quotation "\ \\\\\\\ Tempus fugit. /////// /";
	say "quote should have appeared on first visit to this room.";
	say  "is this next word [i]underlined?[/i] (Yes, it is on Frotz on Ubuntu 16.10 and Fizmo-ncursesw on Ubuntu 16.10 - modern DEC VT100 style implementations) as it's kind of confusing the style names in the source code. West takes you back to the Place where you came from, Another East is available with colors.".

Eastern End is a room, east of Eastward Room. "West to go back where you came from. [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [bold type]bold type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [italic type]italic type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. More to the East."

Eastern Normalcy0 is a room, east of Eastern End. "Here is a room with normal text and nothing more. Cleanse the Palate of color palettes. Another east mixes bolds and colors."

Eastern Holi0 is a room, east of Eastern Normalcy0. "होली time! West to go back where you came from. [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [bold type]bold type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [italic type]italic type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. Mix colors with bold? [blue letters]blue on [bold type]+ bold on [italic type]+ italic on [magenta letters]magenta letters [default letters] default letters. [magenta letters]magenta letters on [italic type]+ italic type[yellow letters] yellow letters [default letters] default letters. [roman type] roman type. [italic type] italic type [default letters] default letters. [roman type] roman type. ::: Another Holi to to the East."

[ Inform 7 6M62 on Ubuntu 16.10, let's try a {roman type} at start of the text to see if it resets the begin-color issue. I observe the screen window flashes as through there is a quick background change of the IDE's window. ] 

Eastern Holi1 is a room, east of Eastern Holi0. "[roman type] होली time! West[roman type] to go back where you came from. [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [bold type]bold type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [italic type]italic type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. Mix colors with bold? [blue letters]blue on [bold type]+ bold on [italic type]+ italic on [magenta letters]magenta letters [default letters] default letters. [magenta letters]magenta letters on [italic type]+ italic type[yellow letters] yellow letters [default letters] default letters. [roman type] roman type. [italic type] italic type [default letters] default letters. ::: Another Holi to to the East."

[ Inform 7 6M62 showed only the first word "West" as normal in Holi1 in Inform 7 6M62 on Ubuntu 16.10. Let's try default letters and roman type both. ]

Eastern Holi2 is a room, east of Eastern Holi1. "[roman type][default letters]होली time! West to go back where you came from. [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [bold type]bold type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [italic type]italic type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. Mix colors with bold? [blue letters]blue on [bold type]+ bold on [italic type]+ italic on [magenta letters]magenta letters [default letters] default letters. [magenta letters]magenta letters on [italic type]+ italic type[yellow letters] yellow letters [default letters] default letters. [roman type] roman type. [italic type] italic type [default letters] default letters. [roman type] roman type. ::: Another Holi to to the East."

Eastern Holi3 is a room, east of Eastern Holi2. "[black letters][roman type]होली time! West[default letters][roman type] to go back where you came from. [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [bold type]bold type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [italic type]italic type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. Mix colors with bold? [blue letters]blue on [bold type]+ bold on [italic type]+ italic on [magenta letters]magenta letters [default letters] default letters. [magenta letters]magenta letters on [italic type]+ italic type[yellow letters] yellow letters [default letters] default letters. [roman type] roman type. [italic type] italic type [default letters] default letters. [roman type] roman type. ::: Now concludes होली celebration for this season. Hope you had a good holi-day ;)"



Section Test Chamber

[ 
Taken from http://www.intfiction.org/forum/viewtopic.php?f=7&t=19967 
]


A petri dish is carried by the player.
A flask is carried by the player.
A wallet is carried by the player.
A mobile phone is carried by the player.

Test Chamber is a room, south of Place.

[true: use colored text rules from Basic Screen Effects (@set_colour)]
[false: use colored text rules below (VM_SetWindowColours)]
Use extension is initially true.

Before jumping:
	if use extension is true, say blue letters;
	otherwise say blue letters vm;
	say run paragraph on;
	clear the screen.
	
Before waving hands:
	if use extension is true, say green letters;
	otherwise say green letters vm;
	say run paragraph on;
	clear the screen.
	
After going to the Test Chamber:
	now use extension is true;
	if use extension is true, say red letters;
	otherwise:
		enable colours;
		say red letters vm;
	say run paragraph on;
	clear the screen;
	 Say "Test me with 'jump / wave / undo / undo'. South is the Southmost Chamber where another color technique is used.".
	
[I7's VM_SetWindowColours and lib 6/11's SetColour both reject fg and bg args of 0 (CLR_CURRENT), while lib 6/12's SetColour and the @set_colour opcode itself both allow it. So, we set the bg to 1 (CLR_DEFAULT) instead.]
[See http://inform7.com/mantis/view.php?id=1377 for more on this.]

To say red letters vm:
	(- VM_SetWindowColours(3, 1); -)
	
To say green letters vm:
	(- VM_SetWindowColours(4, 1); -)
	
To say blue letters vm:
	(- VM_SetWindowColours(6, 1); -)
	
To enable colours:
	(- clr_on = 1; -)


Southmost Chamber is a room, south of Test Chamber.

After going to the Southmost Chamber:
	now use extension is false;
	if use extension is true, say red letters;
	otherwise:
		enable colours;
		say red letters vm;
	say run paragraph on;
	clear the screen;
	 Say "Test me with 'jump / wave / undo / undo'. Command 'inventory' will produce some text.".
