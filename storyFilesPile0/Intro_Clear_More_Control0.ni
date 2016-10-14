"Waiting For Room Description 02" by Jay Goemmer

The story headline is "An Interactive Example". 

Include Basic Screen Effects by Emily Short.

When play begins: [This displays the introduction before the title.]
	clear the screen;
	say "[line break][line break]Introductory text.[paragraph break]";
	say "[bracket]MORE[close bracket]";
	wait for any key;
	clear the screen;
	say "[line break]".
		

[ Thanks yet again to Andrew "zarf" Plotkin for coming to the rescue (yet again!) with the layout for the following three pieces of code. ]

This is the post-initial-banner rule:
	say "[bracket]MORE[close bracket]"; 
	wait for any key;
	say "[line break]".

The post-initial-banner rule is listed after the display banner rule in the startup rules.
The post-initial-banner rule is listed before the initial room description rule in the startup rules.


Opening_Room is a room.  The printed name is "Middle of Nowhere".  The description is "Well, here you are.  *Again.*" 


[ I'm trying to print the banner text, followed by a MORE prompt, and *then* the room description with the status line. ]

[ Example transcript:


Introductory text.

[MORE]

(Clears screen)

Waiting For Room Description 02
An Interactive Example by Jay Goemmer
Release 1 / Serial number 121130 / Inform 7 build 6G60 (I6/v6.32 lib 6/12N) SD

[MORE]

Middle of Nowhere
Well, here you are.  *Again.*

>

(Status line is active.) ]
