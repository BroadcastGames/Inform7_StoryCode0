"Inform7ZMachineStyles0" by "Community"

The story genre is "Other". The release number is 6.  [ genre: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6165 ]
The story headline is "Z-machine Glk technical demonstration".

[ This is intended to be Inform 7 6m62 compiled story that can reproduce some of the text style changes of older Z-machine games.
WIll not work with Glulx, only Z-machine given that color support is vastly different between the two.

Notes: Interpreter Testing
fizmo-ncursesw adds an extra char left of room name on South South room. fizmo-sdl2 works fine. Did not open a bug for now.
fizmo-nucrsesw segmentation fault when doing the banner in room to East. fizmo-sdl2 kind of does fine with it.
 ]


Include Basic Screen Effects by Emily Short.

Place is a room. "Here is [green letters]GREEN[default letters] or [red letters]RED[default letters] text. South is Test Chamber. West is more text styles. North has escape testing. East has a banner quote that appears only once per game.".

Wild West is a room, west of Place. "You made it to the [red letters]Wild Occidental[default letters], type [red letters]'east'[default letters] to return to Place. [blue letters]Je ne puis pas jouer avec toi, dit le renard.[default letters][roman type] Reverse letters working? [bold type]This is bold type.[roman type] Back to roman type."

The Wilder West is west of the Wild West.  "[italic type]This is Italic type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. [roman type][bold type]This is bold type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. [roman type][fixed letter spacing]This is fixed letter spacing type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. [variable letter spacing][default letters][paragraph break]UTF-8 Unicode with more than two bytes? 'For example the code point U+9A69 (驩) is encoded as E9 A9 A9'. The gothic letter hwair U+10348 is supposed to be 4 bytes, with a decimal value of 66,376? I pasted one those hwair characters here in the IDE and the Inform 7 6M62 compiler errored with 'Inform can only handle Unicode characters in the 16-bit range, from 0 to 65535.' East to go back where you came from."

North Escape is a room, north of Place. "Here you go. One / Two // Three /// Four //// Five //// Six ////// and the other way too. One \ Two \\ Three \\\ Four \\\\ Five \\\\\ Size \\\\\\ there. Another room North does style changes over and over."

[ RemGlk expands every change, so test a really lengthy string. ]
North Overflow is a room, north of North Escape. "Here you go. [fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E. More: [fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E. Even More: [fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E[fixed letter spacing]A[variable letter spacing]B[bold type]C[italic type]D[roman type]E. Inform 7 build 6M62 limit. 012345678901234567890123456789."

To say i -- beginning say_i -- running on: (- style underline; -).
To say /i -- ending say_i -- running on: (- style roman; -).

Eastward Room is a room, east of Place. "Welcome to Eastward Room, go West to return to the central Place. Another East is available with colors."

After going to the Eastward Room:
	display the boxed quotation "\ \\\\\\\ Tempus fugit. /////// /";
	say "quote should have appeared on first visit to this room.";
	say  "is this next word [i]underlined?[/i] as it's kind of confusing the style names in the source code. West takes you back to the Place where you came from, Another East is available with colors.".

Eastern End is a room, east of Eastward Room. "West to go back where you came from. [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [bold type]bold type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default. [italic type]italic type:  [cyan letters]cyan [default letters][blue letters]blue [default letters][black letters]black [yellow letters]yellow [white letters]white [magenta letters]magenta [default letters]default."

Eastern Endzone  is a room, east of Eastern End. "Here is the end of the line going East. Go back west!"


[ 
Taken from http://www.intfiction.org/forum/viewtopic.php?f=7&t=19967 
]

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
	 Say "Test me with 'jump / wave / undo / undo'.".
