"StatusLineOutputTest0" by "Community"

[
 from conversations here:
http://www.intfiction.org/forum/viewtopic.php?f=7&t=7809
]

The story genre is "Other". The release number is 4. The story headline is "Virtual Machine Test". The story description is "Test various Status layouts on the Virtual Machine runtime."


[Cover Art bloats these simple test files, but the docs say: "A file released without cover art now has a generic cover image applied.
Most people releasing Inform 7 works do now include cover art, and we would
like future interpreters and website designs to be able to assume that an
image of some kind can be associated with any I7-produced blorb." ]

Include Basic Screen Effects by Emily Short.

The endnode flag is a number that varies. The endnode flag is 0.

[Rule Set 2]
Rule for constructing the status line:  
	if the endnode flag is 0,
		fill status bar with Table of Fancy Status;
	otherwise  fill status bar with Table of Fancy StatusTwo; 
	rule succeeds.

The blindfold is wearable and carried. Rule for constructing the status line while the blindfold is worn: do nothing.

[Rule set 1]
[Rule for constructing the status line:
fill status bar with Table of Fancy Status;
rule succeeds.]

Table of Fancy Status
left	central	right
"HEY"	"NOW"	"YOU'RE"
"AN"	"ALL"	"STAR!!"

Table of Fancy StatusTwo
left	central	right
"FIRST"	"NOW"	"YOU'RE"
"2ND"	"ALL"	"STAR!!"
"ONE"	"TWO"	"THREE"

Smash Mouth is a room. "The status should have 3 columns, 2 rows. Down is Pizza Palace."

Pizza Palace is a room.  it is down from the Smash Mouth. "The status should have 3 columns, 2 rows. Wear Blindfold to hide status. Down is Arcade."

Arcade  is a room.  it is down from the Pizza Palace.  "The status should have 3 columns, 3 rows. Wear Blindfold to hide status. Up is Pizza Palace."

ArcadeTwo is a room. it is down from the Arcade.

After going to the Arcade:
	Say "Arcade: Welcome to the Arcade room!";
	[Rule for constructing the status line: fill status bar with Table of Fancy StatusTwo;
	rule succeeds;]
	[ShowStatusTwo;]
	now the endnode flag is 1;
	[Trigger the default room entrance behavior.]
	now the player is in the Arcade;
	Say "Updated status line with 3 lines?".


Section ShowStatus

To ShowStatus:
	now the left hand status line is "PogoLevel: A | Hi There | Wow";
	now the right hand status line is "XP: 999".


Section ShowStatusTwo

To ShowStatusTwo:
        Say "ShowStatusTwo called".
	[now  fill status bar with Table of Fancy StatusTwo.]
