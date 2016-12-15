"My Name is Jack Mills" by Juhana Leinonen


The story genre is "Fiction". Story creation year is 2007. Release number is 1. The story headline is "An Interactive Pulp Fiction".

[

The original code has been compiled with Inform build 4W37 (www.inform-fiction.org). Due to changes in syntax, previous builds will not compile the code. Later builds have not been tested but should work with minimal changes.

Bug reports, typo corrections, better coding solutions, general comments, and anything else is most welcome anytime. See below for e-mail address.

--

Copyright (C) 2007 Juhana Leinonen <juhana [dot] if [at] nitku [dot] net>

This game is free software: you can redistribute it and/or modify it under the terms described in this license.

You may make and give away verbatim copies of the binary or source form of the software without restriction, provided that:

1) You duplicate all of the original copyright notices and associated disclaimers:
a) Redistributions of binary form of the software must retain the above copyright notice, this list of conditions and the following disclaimer in such way that it is easily accessible and readable within the software. Typically in works of interactive fiction, this means that typing LICENSE will print this license and the player is informed of this possibility within help files and/or immediately as the game begins.
b) Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
	 
2) AT LEAST ONE of the following conditions is met:
a) The source code of the software is distributed along with the binary form of the software.
b) The source code of the software is available free of charge from a public web site for at least three (3) years and the web site address is easily accessible and readable within the software.
c) The source code of the software is available in other unrestricted ways free of charge to all those who have access to the binary form of the software.

3) You may sell the software without restriction, by itself or as a part of a collection, provided that the source code of the software is available to those who have bought the software, free of charge, as described in condition 2. You may not restrict in any way the right of the buyers of the software to redistribute the software as described in this list of conditions.


You may modify and distribute binary or source form of software derived from this software without restriction, provided that:

4) You license the derivative work with this license or a license that is fully compatible with it, i.e. a license that does not contradict any of the terms described here.

5) You credit the original author and all the authors that are credited in the software that your work is derivative of.
	
6) The extensions (as defined in the Inform 7 manual) used by the software do not need to be licensed by this license and they do not need to be compatible with this license, WITH THE EXCEPTION that for every extension used by the software, its source code must be either freely and easily available to anyone or distributed with the source code of this software.


THIS SOFTWARE IS PROVIDED 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

]




Book 1 - Settings

Part 1 - Meta-game settings

[Version numbers are included for maximum compatibility.]

[Extensions bundled with Inform 7]
Include version 4 of Basic Screen Effects by Emily Short.  
Include version 3 of Locksmith by Emily Short.

[downloadable from http://www.inform-fiction.org/I7/Download%20-%20Extensions.html]
Include version 3 of Epistemology by Eric Eve. 
Include version 3 of Modified Exit by Emily Short. [Please note! I have removed the Section 6 of the Modified Exit extension, since the same rules are defined here and either defining them twice or the extension's wording made the rule fire way too many times than necessary.]

[downloadable from www.nitku.net/if/i7/extensions]
Include version 1 of Essential Supplements by Juhana Leinonen.
Include version 1 of Auctioneer by Juhana Leinonen. 

Use no scoring, American dialect, sequential action, serial comma and full-length room descriptions.

Release along with the source text.

[these will stop the room description showing when the player leaves a chair or the Dodge. Thanks to Emily for the tip.]
The describe room stood up into rule is not listed in any rulebook.
The describe room emerged into rule is not listed in any rulebook.


[these will be used to format the text when we switch to the first person narrative]
To say first person header: say "[paragraph break][italic type]". 
To say first person footer: say "[roman type][paragraph break]".

[Disabling the get all]
After reading a command:
	if the player's command matches "get/take all" or the player's command matches "pick up all" or the player's command matches "pick all up", say "Sorry, but you have to pick things up one at a time." instead.

After printing the banner text, say "This game is free software. See LICENSE for details.";

[this is just a hack used when the player is prompted something special. I don't remember anymore why this was needed.]
Doing nothing is an action applying to nothing. Understand "do nothing" as doing nothing.

Xyzzying is an action out of world. Understand "xyzzy" and "plugh" and "say xyzzy" and "say plugh" as xyzzying. Carry out xyzzying: say "Wrong game, pal."

When play begins: 
	say "[first person header]The slammer was a depressing mixture of displeasing white and uncaring gray. I walked past the empty cells listening to the steady click-clack of my steps echoing from the walls. In the last cell I found Professor Humphrey.

He had been there for at most hours, but he looked like it had been weeks. He jumped from his bunk and greeted me with wild eyes. 'Jack!' he exclaimed. 'Jack! Jack, I knew you would come!'

'Of course, Prof, no problem,' I said. The mild-mannered gentleman was overtly upset, which was nothing like I'd seen in him before. 'Why don't you first tell me why are they keeping you here and I'll bail you out,' I proposed.

He squirmed in his wrinkled gray suit. 'No, Jack, I called you because there's a favor I need to ask you. I ended up here trying to retrieve something that was stolen from me. A valuable historical artifact. And I need it back, badly.'

My name is Jack Mills. This was going to become a long night.[first person footer]";
change the right hand status line to "[area name of the location]";
change the command prompt to ">".



[For historical interest, here's the first version (actually maybe the second or third) of the intro:

"Professor Humphrey called me one gray thursday afternoon. He babbled franticly for a moment before I could calm him down enough to tell me what had happened. He was being arrested for assault in the local police station and was now begging for my help.

Professor and I go way back, and this was something I could not have expected. I hung up the phone, grabbed my coat and went off.[paragraph break]";
	center "***";
	say "[paragraph break]The Professor jumped up from his bunk and ran to the bars. 'Jack, how glad I am to see you!', he yelled out. 'I need your help now more than ever.'

I looked at him inquisitively. 'You see,' he said, 'I ended up here trying to get back something that was stolen from me. From the University.'

'I need to get the artifact back. If I don't, I'll lose my job and even worse.' He coughed nervously. 'Jack, please, you know I wouldn't ask if it wasn't of topmost importance.'[roman type]" ]


Chapter 1 - Help

General help is an action out of world. 

Understand "help" as general help.

Carry out General help: 
	say "You may want to read the following help files:

[bold type]ABOUT[roman type] - Introduction and credits (recommended to read)
[line break][bold type]NEWBIE[roman type] - Some basics to get you started with Interactive Fiction
[line break][bold type]COMMANDS[roman type] - The list of all commands available";
say "[line break][bold type]VERSION[roman type] - The game version and extension credits
[line break][bold type]LICENSE[roman type] - About the license[line break]";

Hinting is an action out of world.

Understand "hint" and "hints" and "walkthrough" and "walkthru" as hinting.

Carry out hinting:
say "There's no in-game hint system but you really get stuck, you can find the walkthrough bundled with the game files or at [italic type]www.nitku.net/if/jackmills[roman type]."

Help-about is an action out of world.

Understand "about" and "info" as help-about.

Carry out help-about:
	say "[line break][bold type]About [italic type]My Name is Jack Mills[roman type][paragraph break]";
	say "Welcome to [italic type]My Name is Jack Mills![roman type] If you are a seasoned player, you should be able to jump right in. For newcomers to Interactive Fiction it is recommended to type NEWBIE if you feel lost. Other in-game documents are covered in the HELP menu.[paragraph break]";
	say "As a general rule, whatever you do you can't get yourself in a situation where you can't finish the game. Your actions may make [italic type]some[roman type] endings impossible, but there will always be at least one way to get to the end.[paragraph break]";
	say "The standard commands should work, in addition to some new ones (you can view them with COMMANDS). To get to different places around the city, use DRIVE TO [italic type]destination[roman type]. Note that the commands used for conversations are ASK [italic type]person[roman type] ABOUT [italic type]keyword[roman type], YES and NO.[paragraph break]";
	say "[italic type]My Name is Jack Mills[roman type] is created by Juhana Leinonen. A big thank you to the beta testers: Taleslinger, Poster, and Jackie Keith. For platform and extension credits, see VERSION.[paragraph break]";
	say "For future updates and other related stuff, visit the game's web page at [italic type]www.nitku.net/if/jackmills[roman type]. The author can be contacted at [Juhana's email]. Bug reports and other comments are most welcome.";

To say Juhana's email: say "[italic type]juhana[unicode 46]if[unicode 64]nitku[unicode 46]net[roman type]". [...because the source code is published in the web. I don't like spam.]

Help-license is an action out of world.
Understand "license" and "licence" and "lisense" and "lisence" and "copyright" as help-license.

Carry out help-license:
	say "[paragraph break]Copyright (C) 2007 Juhana Leinonen  <[Juhana's email]>

This game is free software: you can redistribute it and/or modify it under the terms described in this license.

You may make and give away verbatim copies of the binary or source form of the software without restriction, provided that:

1) You duplicate all of the original copyright notices and associated disclaimers:
[line break]a) Redistributions of binary form of the software must retain the above copyright notice, this list of conditions and the following disclaimer in such way that it is easily accessible and readable within the software. Typically in works of interactive fiction, this means that typing LICENSE will print this license and the player is informed of this possibility within help files and/or immediately as the game begins.
[line break]b) Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
	 
2) AT LEAST ONE of the following conditions is met:
[line break]a) The source code of the software is distributed along with the binary form of the software.
[line break]b) The source code of the software is available free of charge from a public web site for at least three (3) years and the web site address is easily accessible and readable within the software.
[line break]c) The source code of the software is available in other unrestricted ways free of charge to all those who have access to the binary form of the software.[paragraph break]";
say "3) You may sell the software without restriction, by itself or as a part of a collection, provided that the source code of the software is available to those who have bought the software, free of charge, as described in condition 2. You may not restrict in any way the right of the buyers of the software to redistribute the software as described in this list of conditions.
[paragraph break]You may modify and distribute binary or source form of software derived from this software without restriction, provided that:
[paragraph break]4) You license the derivative work with this license or a license that is fully compatible with it, i.e. a license that does not contradict any of the terms described here.
[paragraph break]5) You credit the original author and all the authors that are credited in the software that your work is derivative of.
[paragraph break]6) The extensions (as defined in the Inform 7 manual) used by the software do not need to be licensed by this license and they do not need to be compatible with this license, WITH THE EXCEPTION that for every extension used by the software, its source code must be either freely and easily available to anyone or distributed with the source code of this software.";
say "[paragraph break]THIS SOFTWARE IS PROVIDED 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.";

Understand "talk to [someone]" as a mistake ("You should rather ASK people ABOUT subjects.").
Understand "use [something]" as a mistake ("You should use a more precise verb. See COMMANDS for a list of supported verbs.").
	
Instead of answering, say "(you can only ASK people ABOUT subjects, or say YES or NO.)".

Help-commands is an action out of world.

Understand "commands" and "command" as help-commands.

Carry out help-commands:
	say "These are standard commands available in most Interactive fiction games (abbreviations in parentheses):

[bold type]Movement:[roman type] NORTH (N), SOUTH (S), EAST (E), WEST (W), UP (U), DOWN (D), ENTER, EXIT, CLIMB, JUMP, WAIT (Z)
[line break][bold type]Senses:[roman type] LOOK (L), EXAMINE (X), SEARCH, READ, LISTEN, SMELL
[line break][bold type]Objects:[roman type] INVENTORY (I), TAKE, GIVE, DROP, PUT x ON/IN y, OPEN, CLOSE, LOCK x WITH y, UNLOCK x WITH y, BUY
[line break][bold type]Conversation:[roman type] ASK x ABOUT y, TELL x ABOUT y, YES (Y), NO
[line break][bold type]Characters:[roman type] ATTACK, KISS
[line break][bold type]Game controls:[roman type] SAVE, RESTORE, RESTART, QUIT (Q)

In addition you may need to use the following commands:";
	say "[paragraph break]DRIVE TO [italic type]destination[roman type], CALL [italic type]number[roman type], PHOTOGRAPH [italic type]target[roman type], STAB [italic type]target[roman type][paragraph break]";
	say "Note that conversation is implemented with [bold type]ASK x ABOUT y[roman type], [bold type]YES[roman type] and [bold type]NO[roman type]."


Newbie-helping is an action out of world.

Understand "newbie" as newbie-helping.

Carry out newbie-helping:
	say "If you are new to Interactive Fiction, navigating the game might feel strange at first. The game is a story that unfolds as you write commands to the protagonist (in this case Jack Mills) that tell him what he should do. The narrator will tell you if Jack is willing or able to do the things you suggest and what happens when he does.
	
The commands are typed after the > prompt. You could command, for example, EXAMINE KEYS, TAKE PAPERS, or ASK POLICE ABOUT PRISONER. Note that while the parser is fairly intelligent, it doesn't understand too complex sentences. So instead of TAKE A CLOSER LOOK AT THAT CHARMING FELLOW you should rather try EXAMINE MAN.

Some important and often used commands:[line break]
INVENTORY (or I for short) shows what items you are carrying at the moment.[line break]
EXAMINE (or X) gives more detailed information about items and characters. You should use this command often.[line break]
N, S, E, W, SE, SW, NE, NW, UP and DOWN are directions you can go (compass directions). The possible directions are listed in the room description (use LOOK to re-read it).[line break]
ASK [italic type]character[roman type] ABOUT [italic type]topic[roman type] is used for conversations. Topics are usually one-word keywords.
DRIVE TO lets you get around the city when you find out about places you might want to visit.
SAVE and RESTORE let you save your progress and continue later from there.

For a list of other commands, type COMMANDS. To get started you might want to go through the first steps with a guide - you probably got a file called [italic type]HowToPlay.txt[roman type] with the game. In it there's a solution for the first part of the game. Reading it should give a good general idea how the game works.

For further details there are some helpful links collected in the HowToPlay.txt."


Part 2 - Actions and objects

Chapter 1 - Old commands

[most of these are in the "Essential supplements" extension.]
Understand the command "ask" as something new.
Understand "ask [something] about [text]" as asking it about.
Understand "ask [something] about the [text]" as asking it about. [this lets users type "the" in front of topics] 
Understand "ask [something] about a [text]" as asking it about.
Understand "ask [something] for a [text]" as asking it about.
Understand "ask [something] for the [text]" as asking it about.
Understand "ask [something] for [text]" as asking it about.


[rubbing]
Instead of rubbing a person, say "[The noun] might need a backrub, but you're afraid to make the advance."
Instead of rubbing the player, say "You can do that later at home."

[giving]
The block giving rule is not listed in the check giving it to rules. 

Instead of giving something to someone:
	say "[The second noun] is not interested."

[asking]
Instead of asking someone for something, try asking the noun about the topic understood.

Instead of telling someone about something, try asking the noun about the topic understood.

[waking up]

Instead of waking up,
	say "You wouldn't want to wake up yet, would you?".
	
[tasting]

Instead of tasting,
	say "It would be very unhygienic."


Chapter 2 - New commands

Section 1 - Reading

[moved to the Essential Supplements extension]


Section 2 - Knocking

[moved to the Essential Supplements extension]



Section 3 - Breaking

[we'll redefine breaking]

Breaking it with is an action applying to two visible things.

Understand the command "break" as something new. Understand "break [something] with [something] " as breaking it with. Understand "break [something]" as breaking it with.

Rule for supplying a missing second noun while breaking: change the second noun to the player. [here we suppose that "the player" means player's hands (or feet or whatever).]

Check breaking it with:
	say "You probably shouldn't." instead;


Section 4 - Threatening

Threatening it with is an action applying to two visible things.

Understand "threaten [something] with [something]" and "intimidate [something] with [something]" and "threaten [something]" and "intimidate [something]" as threatening it with.
Understand "point [weapon] at [something]" as threatening it with.

Check threatening it with:
	if the noun is not a person, say "Inanimate objects don't get scared that easily." instead;
	if the noun is the player, say "Yes, you are so tough you scare yourself sometimes." instead.

Carry out threatening it with:
	say "Physical threats would do more harm than good at this point."

Rule for supplying a missing second noun while threatening: change the second noun to the player. [same logic as with breaking - now we're intimidating people with fists or spoken threats]

Section 5 - Shooting it with

[SEE CHAPTER 4, SECTION 1]


[a puzzle in an early version required unfolding.
Section 5 - Folding and unfolding

Unfolding is an action applying to one thing.

Understand "unfold [something]" as unfolding.

Check unfolding:
	if the noun is not paper, say "[The noun] isn't folded." instead;
	if the noun is unfolded, say "[The noun] is already as unfolded as it gets." instead.

Carry out unfolding:
	now the noun is unfolded.

Report unfolding:
	say "You unfold [the noun]."


Instead of opening a paper, try unfolding the noun instead.

Folding is an action applying to one thing.

Understand "fold [something]" as folding.

Check folding:
	if the noun is not paper, say "[The noun] just doesn't fold." instead;
	if the noun is unfolded, say "[The noun] is already folded." instead.

Carry out folding:
	now the noun is folded.

Report folding:
	say "You fold [the noun]."
]

Section 6 - Dancing with

[moved to the Essential Supplements extension]

Section 7 - Stabbing with

Stabbing it with is an action applying to two visible things.

Understand "stab [something]" and "stab [something] with [something]" as stabbing it with.

Understand "cut [something] with [something]" as stabbing it with.
Understand "stick [something] with [something]" as stabbing it with.
Understand "thrust [something] at [something]" as stabbing it with (with nouns reversed).
Understand "slash [something] with [something]" and "slash [something]" as stabbing it with.
Understand "attack [something] with [kitchen knife]" as stabbing it with.

Rule for supplying a missing second noun while stabbing:
	if the player carries the kitchen knife
	begin;
		change the second noun to the kitchen knife;
	otherwise;
		change the second noun to the player;
	end if. 

Check stabbing:
	if the second noun is the player, say "You don't have anything suitable for that kind of action." instead;
	if the second noun is not kitchen knife, say "[The second noun] is not ideal for stabbing." instead;
	if the noun is the player, say "The situation is not that dire yet." instead;
[	if the noun is not a person, say "As gruesome as it might sound, stabbing people is far more effective." instead;]
	say "Violence is not the solution here." instead.


Section 8 - Greeting

[moved to the Essential Supplements extension]


Section 9 - Photographing
	
Photographing is an action applying to one thing.

Understand "photograph [something]" and "photo [something]" as photographing.
[Understand "photograph [any person]" as photographing.]

Check photographing:
	if the player is not carrying the camera, say "Photographing requires equipment, like maybe a camera." instead;
	if the noun is the player, say "Don't be such a narcist." instead;
	say "Surely [the noun] is not worth photographing." instead.


Section 10 - Telephoning

Telephoning is an action applying to one topic.

Understand "telephone [text]" and "call [text]" and "ring [text]" and "phone [text]" and "dial [text]" and "buzz [text]"  as telephoning.

Table of Calling Places
topic	reply
"police/cops/911/112/help"	"I'm afraid you're on your own now."
"[professor]"	"He's in jail, remember? You could just walk inside the police station if you wanted to talk to him."
"[yourself]"	"Talking to yourself makes you a bit strange. Talking to yourself over the phone makes you mentally ill."
"[geigner]"	"You don't know his number."
"home"	"Unfortunately there's no-one there to answer the phone."

Check telephoning:
	if the payphone is not in the location, say "You'd need a telephone for that." instead.

Carry out telephoning:
	if the topic understood is a topic listed in the Table of Calling Places, say "[reply entry][line break]" instead;
	say "Uh, now who did you want to call again?".

Instead of telephoning "[geigner]" when the player has the business card:
	say "[if the player has the faux mask]Well, you do have a mask, but there's a zero chance that Geigner could be fooled into thinking it is the real thing.[otherwise]There's no reason to call Geigner before you have the mask."

Section 11 - Comforting

[This action was needed for a puzzle that was later dropped. No harm done to leave it be.]
Comforting is an action applying to one visible thing.

Understand "comfort [person]" and "cheer up [person]" and "cheer [person] up" and "pity [person]" as comforting.

Check comforting:
	if the noun is the player, say "There's no time for self-pity." instead;

Report comforting:
	say "[The noun] doesn't need comforting."
	

Chapter 3 - Room definitions

[If a room is a destination, you can drive there with a car. Even the future to-be destinations are initially non-destinations so that the player doesn't "accidentally" drive there before the player character has learned about it in-game.]
A room can be a destination. A room is usually not a destination. 

[this is printed on the right side of the status bar. It defaults to "the chase", so that the chase rooms don't need to be named individually]
A room has some text called area name. The area name of a room is usually "The Chase".


[settings for atmospheric narrative]

A room has a table-name called atmospheric narrative. The atmospheric narrative of a room is usually the Table of no narrative.


Table of no narrative
Narrative
text

Every turn:
	if a random chance of 1 in 10 succeeds and the atmospheric narrative of the location is not the Table of no narrative
	begin;
		choose a random row in the atmospheric narrative of the location;
		say "[narrative entry][line break]";
	end if.
	



Chapter 4 - Item definitions

Weapon is a kind of thing. 

[Instead of dropping a weapon while someone who is not the player is in the location: say "Someone would probably see you leave it and call the cops."]

[The Colt was implemented early on and kept all through to the beta testing, where it was dropped. 
Section 1 - The Colt

The Colt revolver is a weapon. The description is "The good ol['] Colt. Not something that goes unnoticed in the streets, but you can conceal it easily under your jacket.[if we have taken the Colt][paragraph break][verbal bullet count]". [the bullet count is shown even if we drop the gun later on and then examine it on the ground - the assumption is that the bullet count has not changed in the meantime]

The Colt has a number called bullets. The bullets of colt is 6. 

The verbal bullet count is text that varies. The verbal bullet count is "There [if bullets of Colt is 1]is[otherwise]are[end if] [bullets in words] bullet[s] left." [is/are-shortcut doesn't seem to work here]

Understand "gun/pistol/weapon" as the Colt.


[The following is modified from the example code 104 of the Inform 7 manual chapter 8.10. The Colt is the only (player-controlled) firearm in the game, so the action needs to apply to it only.]

Shooting it with is an action applying to two visible things.

Check shooting something with something:
	if the player is not carrying the Colt, say "You try to shoot [the noun] with your index finger, but the damage is nominal." instead;
	if the second noun is not the Colt, say "You can't shoot anything with [The second noun]." instead;
	if the noun is the Colt, say "That would be quite paradoxical, don't you think?" instead;
	if the noun is the player, say "The situation is not that bad yet." instead;
	say "Random shooting doesn't solve anything.";


Definition: a thing is ungunlike if it is not the Colt.

Understand "shoot [Colt] at [something ungunlike]" as shooting it with (with nouns reversed).

Understand "shoot [something ungunlike] with [Colt]" as shooting it with. Understand "shoot [something] with [something]" as shooting it with.

Understand "shoot [something] at [something]" as shooting it with (with nouns reversed). Understand "fire [Colt] at [something ungunlike]" as shooting it with (with nouns reversed). Understand "fire at [something ungunlike] with [Colt]" as shooting it with. Understand "fire at [something] with [something]" as shooting it with.

Understand "shoot [something]" as shooting it with. Understand "fire at [something]" as shooting it with.

Understand "attack [something] with [Colt]" as shooting it with.


Rule for supplying a missing second noun while shooting:
	if the player has the Colt, change the second noun to the Colt;
	otherwise say "You try to shoot [the noun] with your index finger, but the damage is nominal."

[the effects of firing the gun at something are not handled here but in the thing's own code instead]

Report taking the Colt for the first time: 
	say "Taken. There's no knowing when a little extra protection will come in handy." instead;
	
Instead of switching on the Colt, say "That's not how it works."]


Section 2 - The Dodge

The Dodge is fixed in place, enterable, openable, closed, transparent, lockable and locked container. "[if the Police station is unvisited]Your car, the old faithful Dodge, is parked nearby and ready to go.[otherwise]The Dodge waits obediently." The description is "The Dodge is as old as time itself but still works like charm. Possibly because of the countless hours you've spent repairing it." [[if the glove compartment is closed] Speaking of repairs, you make a mental note to fix the glove compartment. It's having a hard time staying on its hinges.[end if][if the glove compartment is open and the Colt is inside the glove compartment] There is a Colt revolver inside the opened glove compartment."]

Before entering the closed dodge:
	if the Dodge is locked, silently try unlocking the Dodge with the carkeys;
	silently try opening the Dodge;

Before exiting while the player is inside the closed dodge:
	if the Dodge is locked, silently try unlocking the Dodge with the carkeys;
	silently try opening the Dodge;

[we could additionally write rules so that the PC would also lock the doors automatically whenever he gets out of the Dodge, but it's probably not worth the trouble for such a small detail]

Instead of taking the Dodge, say "It doesn't fit in your pocket."

Instead of pushing or pulling the Dodge, say "The Dodge works fine - you could just drive it where you want it to."

Instead of looking under the Dodge, say "Nothing but dirt there."

Instead of touching the Dodge, say "You give the Dodge a gentle pat on the hood. Good girl."

Instead of listening to the Dodge, say "The motor is not running at the moment."

Understand "car/auto/vehicle" as the Dodge.



Carry out looking when the player is inside the Dodge: say "You are sitting inside the parked Dodge."; try examining the Dodge instead.

Instead of going nowhere while the player is inside the Dodge, say "Driving around the town aimlessly would not be very wise. You should first decide where you want to drive to."

After entering the Dodge for the first time:
	if the location is the Police station
	begin;
		say "You get into the Dodge.[paragraph break](Use DRIVE TO [italic type]destination[roman type] to drive.)[line break]";
	otherwise;
		continue the action;
	end if;

Instead of smelling when the player is inside the Dodge, say "[if Trading for the Coin has happened]The scent of Violet's parfume lingers in the air.[otherwise]The new car smell is long gone."

[Instead of shooting the Dodge with something, say "Shoot your own car? How would you then get around?"]

Instead of attacking or breaking or stabbing the Dodge with, say "You must be joking. You would never do anything to harm your baby."

[car doors]

The cardoors are part of the Dodge. The cardoors are plural-named. The cardoors are scenery. The cardoors can be closable. The cardoors are closable. The printed name of cardoors is "car doors". [I don't know how to suppress "car" if the item would be called "car doors", so let's do it this way.]
Understand "car door/doors" as the cardoors. 
Understand "door/doors" as the cardoors.

Instead of opening the cardoors, try opening the Dodge.
Instead of closing the cardoors, try closing the Dodge.
Instead of locking keylessly or locking the cardoors with, try locking keylessly the Dodge.
Instead of unlocking keylessly or unlocking the cardoors with, try unlocking keylessly the Dodge.


[glove compartment]

[The glove compartment is closed lockable openable container and part of the Dodge.

[** "other than examining" doesn't seem to work with the location restriction.]
Instead of doing something other than examining with the glove compartment when the player is not inside the Dodge: say "You can't do anything with the glove compartment from outside the car."

Instead of locking keylessly or locking the glove compartment with, say "There's a lock on the glove compartment, but the key has been missing for years."

Instead of entering the glove compartment, say "It's way too small."
]

[back seat]

The back seat is scenery inside the Dodge. Understand "backseat/behind" as the back seat.


Section 3 - Driving to

Driving to is an action with past participle "driven to" applying to one thing. 

Understand "drive dodge to [any destination room]" or "drive to [any destination room]" or "drive [any destination room]" or "drive car to [any destination room]" as driving to.

Check driving to:
	if the noun is the location, say "You are already there." instead;
	if the Dodge is not in the location, say "You turn an invisible steering wheel and make motor sounds with your mouth until you realize that to actually get anywhere you'd need a real car." instead;
	if the noun is not a destination room, say "Obviously you can't drive there." instead;
	if the noun is Hotel Falcon and the roman coin is unidentified, say "Before you go on to face the culprit, you should probably know what the item is that you're looking for. Maybe the Professor could help you on that?" instead;
	if the noun is Outside the Club and the poster is unfamiliar, say "The Geigner's calendar referred to 'the club', but there must be hundreds of clubs in the city. You can't just go through all of them. There must be more clues in the hotel room." instead;

[* should add an action for driving to Professor's house]

Carry out driving to:
	say ""; [without this there's no empty line before the room description]
	if the noun is Hotel Falcon
	begin;
		if driving to the Hotel Falcon for the first time, say "[first person header]The Hotel Falcon was in the shadier side of the town. From what I knew, it was no Hilton. A pit stop for travelling businessmen with small budgets and for cheating husbands who were classy enough not to take their girlfriends to a cheap motel.

The city lights flashed past me. I was mentally preparing to face the thief, but part of me wished he wouldn't be there at all.[first person footer]"; [I put this here since if you use "after driving to the..." then this description comes after the room description, which it should not do. If I use "before..." then I'd have to do all the validity checks again.]
		if the silver BMW is on-stage
		begin;
			change the initial appearance of the Dodge to "The Dodge is parked next to a silver BMW.";
		otherwise;
			change the initial appearance of the Dodge to "The Dodge is parked nearby.";
		end if;	
	end if;

	if the noun is the Police station
	begin;
		change the initial appearance of the Dodge to "The Dodge waits obediently.";
	end if;

	if the noun is Outside the Club
	begin;
		if the Outside the Club is unvisited, say "[first person header]Geigner wasn't in the hotel, and neither was the Professor's coin. It looked like I would have to face the man after all. Maybe we could work out a deal, one way or another.[first person footer]";
		change the initial appearance of the Dodge to "The Dodge is parked in front of the club.";
	end if;

	if the noun is the restaurant parking lot
	begin;
		change the initial appearance of the Dodge to "The Dodge is parked here.";
	end if;

	if the noun is the Gate to Greenfeld's mansion
	begin;
		change the initial appearance of the Dodge to "There are several cars parked alongside the road. You had some trouble finding space to park, but the Dodge is within a short walking distance.";
	end if;

	move the Dodge to the noun;
	now the player is in the noun.

Home-going is an action applying to nothing. Understand "drive to home" and "drive home" as home-going.

Check home-going:
	if the Dodge is not in the location, say "Even if the Dodge were here now, going home wouldn't be very heroic." instead.

Carry out home-going:
	say "[first person header]'I was on the verge of giving up. The task given to me seemed to weigh too heavily on my shoulders.

After sitting in the car for a while pondering my options I cut the motor and decided to carry on with my pursuit.'[first person footer]";

[To stop those annoying disambiguations "which do you mean, X or Y?":]
Does the player mean driving to the Police station: It is very likely. 
Does the player mean driving to the Hotel Falcon: It is very likely.
Does the player mean driving to the Outside the Club: It is very likely.
Does the player mean driving to the restaurant parking lot: It is very likely.
Does the player mean driving to the Gate to Greenfeld's mansion: It is very likely.

Section 3 - The Coin

[The coin is the MacGuffin of the game]

The roman coin is a thing. The roman coin can be unidentified. The roman coin is unidentified. [When the professor tells us what the object is, then the coin is not unidentified. "Identified" seems to be a reserved word.]
The printed name of the coin is "item".

Section 4 - Things initially carried by the player

[car keys]
The carkeys are carried by the player. The description is "The keys are for the Dodge." Understand "car keys" and "keys/key" as carkeys. The printed name of the carkeys is "car keys". The carkeys are plural-named. 

[Inform wants to name the car keys "some car keys", so here's a hack for it:]
The inventory listing of the carkeys is "car keys".

The carkeys unlock the Dodge.

Instead of throwing or dropping the carkeys, say "You can't leave your car keys! How will you get into the Dodge?".

[coins]
Some loose change are carried by the player. The description is "You left in such a hurry you forgot your wallet. At least you have a handful of coins in your pocket."
Understand "coins/coin/money/cash" as loose change.
The indefinite article of the loose change is "some".

Instead of throwing or dropping the loose change, say "That's all of the little money you have with you. You can't just go throwing it around."

Instead of eating the loose change, say "You did stuff like that when you were five. Grow up already."


Chapter 5 - Character definitions


Section 1 - The Player Character

Instead of examining the player, say "[first person header]My name is Jack Mills.[first person footer]".

Understand "Jack Mills" and "Jack/Mills" as yourself.


Section 2 - NPC's

Understand "man/guy/dude" as a man.
Understand "woman/girl/lady" as a woman.



Book 2 - The World

Part A - Police Station

The Police-station is a region. The Jail and The Station lobby are in Police-station.

Instead of doing something with a weapon in the Police-station, say "Handling a weapon in a police station is probably not the best idea you've come up with."

The area name of the Jail is "Police station".
The area name of the Station lobby is "Police station".
The area name of the Police station is "Police station".


Chapter 1 - Jail

Section I - Room

The Jail is a room. "The dimly lit cell section is not easy on the eyes, or on the nose. Small jail cells line the walls; most of them are empty. The only exit lies to the east.".

After looking in the Jail for the first time, say "(Type ABOUT for general introduction or HELP for other information.)[paragraph break]".

Instead of smelling the Jail, say "The damp air smells of urine, with a touch of rat droppings thrown in for good measure."

Instead of listening to the Jail, say "A faint wailing of a drunken fool echoes from the far end of the section. Come to think of it, he is probably the source of the odor as well."

Instead of exiting in the jail, try going east.

Before going east from the jail for the first time, say "The Professor nods to you as you go. 'I'm counting on you, Jack,' he says.";


The atmospheric narrative of the Jail is the Table of Jail Atmosphere.

Table of Jail Atmosphere
narrative
"The Professor lets out a nervous whimper."
"A brief scratching sound comes from inside a nearby wall. It must be a mouse or some other critter."
"The Professor sneezes barely audibly. 'Pardon me. The air is so damp here,' he apologizes."


Section II - Things

The jail cell door is scenery in the Jail. The description is "The jail is as plain as it gets." Understand "bar/bars" as the jail cell door.

Opening the jail cell doors is busting out.
Unlocking the jail cell doors with something is busting out.
Unlocking keylessly the jail cell doors is busting out.

Instead of busting out, say "Busting the Professor out is not the best option at the moment."

Instead of entering the jail cell doors, say "You'd rather stay on this side if at all possible."

Instead of closing the jail cell doors, say "The cells are already closed."

Instead of touching or rubbing the jail cell doors, say "The place makes you not want to touch anything."

Instead of smelling the jail cell doors, try smelling.

Instead of listening to the jail cell doors, try listening.

Instead of tasting the jail cell doors, say "There are probably a dozen diseases you'll get if you put your mouth on anything here."

[walls]

The jailwalls are plural-named and scenery in the Jail. The printed name of jailwalls is "walls". The description is "The walls are painted grayish white." Understand "wall/walls" as the jailwalls.


Section III - Characters


Professor Humphrey is a man in the jail. "Professor Humphrey paces the cell nervously on the other side of the bars." The description of Professor is "Professor Humphrey is a middle-aged graying man in a suit that was probably looking much fresher this morning. He looks out of place in the plain jail cell - you're used to seeing him in quite different surroundings. His fingernails are bitten so short they are on the verge of bleeding." 

Understand "prof/professor/humphrey/humprey/allan/gentleman" as "[professor]". Understand "prof/humprey/allan/gentleman" as Professor Humphrey.

[1 means the row is deleted after it's mentioned; 0 means it's not]
Table of Professor Humphrey conversation topics
Topic		Answer		Delete	Learn hotel destination
"artifact/item/object/coin"	"'Excuse me? Oh, of course, the item. It is a silver coin from the early Roman Empire. It was in a red satin casing when I last saw it.'[paragraph break]At least now you know what to look for."	1	0
"arrest/assault/theft/thievery/thieving/artifact/item/object/coin"	"The professor looks clearly ashamed. 'Jack, the artifact was stolen from me. There are... circumstances that make it imperative for me to get it back to the University.' He coughs dryly. 'I managed to track down the thief and tried to recover the artifact from him. Long story short, they arrested me for assault and the thief walks.'[paragraph break]'I guess I lost my judgment for a while', he says after a pause."	1	0
"thief" or "[Geigner]"		"'The thief is a businessman called Julian Geigner,' the Professor tells you. 'He's an art collector, or should I say art abuser... When he stumbles upon something he wants, he gets it by all means necessary. He only wants them to own them. No respect for history, not at all!'"	1	0
"directions/address/adress/hotel/falcon/room/whereabouts/thief/theft/stealing/artifact/item/object/coin" or "hotel falcon" or "[Geigner]"	"'I managed to find out that Geigner, the thief, has a room in the Hotel Falcon, which he owns. I believe he has [the roman coin] there.' Professor lowers his voice and whispers, 'Please get it back for me, please? He stays in room 405. And Jack - watch your back, will you?'"	1	1
"[Geigner]" or "thief"	"'Geigner is a tycoon who owns hotels, restaurants and other businesses in fifteen cities. And he's a corrupt, dangerous vulture. I wouldn't be surprised if he had blood on his hands as well.'"	0	0
"artifact/item/object/coin/casing" or "satin casing"	"'I don't know what else to tell you about [the roman coin]. It's in a red satin casing, you should recognize it easily' the Professor says."	0	0
"[professor]" or "himself/jail/cell/prison/slammer/station/fingers/fingernails"		"'I'm fine. Not that I've ever been to a jail, but it's not as bad as you might imagine. Now stop worrying about me and go get [the roman coin] back!'"		0	0
"university/circumstances/brenett/college" or "brenett university/college" 	"The professor turns his eyes down. 'The University has given everything to me, and now I'm about to let them down. Please, Jack, you have to help me!'"	0	0
"Greenfeld/Greenfield"	"Professor looks puzzled by your question. 'Greenfeld? He's another collector - not like Geigner, though, he's a different kind altogether. At least Greenfeld has [italic type]some[roman type] respect for history.'[paragraph break]'I'm surprised you know about him, Jack. You don't suspect he's somehow involved?' He shakes his head. 'No, why would he be?'"	1	0
"Greenfeld/Greenfield"	"'He lives somewhere in the outskirts of the city. I'm afraid there's not much more I know about him.'"	0	0
"hotel/falcon/405" or "room 405"	"'The Falcon is in the eastern part of the city. Nothing more than a cheap flea-infested hotel. I believe Geigner has a permanent residence there - he's an out-of-towner.'"	0	0
"jack/mills/me/myself/i" or "jack mills"	"'Well... You are you, aren't you?'"	0	0


Table of Professor Humphrey general answers
Answer
"The Professor is far too nervous to answer that."
"'I'm sorry, Jack - could we discuss that later? I'm not in a mood for chitchat right now,' the Professor says."
"You're about to ask, but then decide not to disturb him with trivialities."

After asking Professor about a topic listed in the Table of Professor Humphrey conversation topics:
	say "[answer entry][paragraph break]";
	if the learn hotel destination entry is 1, now the Hotel Falcon is destination;
	if delete entry is 1, blank out the whole row.

After asking Professor about something:
	choose a random row in the Table of Professor Humphrey general answers;
	say "[Answer entry][paragraph break]" instead.

Before asking Professor about "artifact/item/coin/object" for the first time:
	now the roman coin is not unidentified;
	now the printed name of the roman coin is "coin".

[The logical choice would've been making the destination checks after and topics before, but it kept saying the default "far too nervous" all the time.]

Instead of comforting Professor, say "'Thanks for your concern, Jack,' he says, 'but I'll be just fine. I'll feel much better when you've found [the roman coin].'"

Taking Professor Humphrey is busting out. [see section above]

Instead of searching Professor Humphrey, say "The police has already taken everything he had on him."

Instead of attacking or stabbing or threatening Professor Humphrey with, say "Stop that! He's your friend."

Instead of smelling Professor Humphrey, say "He doesn't smell like roses and honey, so don't even try."

Instead of listening to Professor Humphrey, say "He lets out nervous whimpers every now and then."

Instead of breaking Professor Humphrey with, say "He's already quite broken."



Chapter 2 - Station lobby

Section I - Room

The Station lobby is east from the jail. "The police station is surprisingly quiet at this hour. The air is stagnant in the lobby. Interesting things don't generally happen in this part of the city.

Corridors lead further inside the station. The western corridor leads to the cell section where the Professor is being kept. The exit is to the south.

[if we have readed the policewoman]Officer Winters[otherwise]The officer behind her desk[end if] is [if we have readed the paper piles]eyeing you suspiciously.[otherwise]paying more attention to her paperwork than to you." ["readed" is not English, but I couldn't get "read" to work.]

Instead of going inside while in the Station lobby, try going west.

Instead of exiting while in the Station lobby, try going south.

Instead of going nowhere from the Station lobby, say "'Sir, you're welcome to visit your friend', [Policewoman] says, 'but the other sections are off limit.'".




Section II - Things

The paper piles are on the desk. The desk is in the Station lobby. The desk and the paper piles are scenery. The description of the paper piles is "The papers seem to be mostly police reports. On one pile you catch a glimpse of a paper with the Professor's name on it."

The printing of paper piles is "[first person header]I decided to take a little liberty of my own to check the papers the nicely formed but somewhat distant police officer was keeping on her desk. 

I stood around the desk, making idle conversation. I waited until she got tired of my chatter and turned her attention to somewhere else. Turning my head I caught a glimpse of the report detailing the Professor's case:


[roman type][fixed letter spacing] Nature:    Assault[paragraph break]
 Victim:    Geigner, Julian (Mr.)
[line break]            Hotel Falcon, room 405[paragraph break]
 Suspect:   Humphrey, Allan (Prof.)
[line break]            1629 May Road[paragraph break]
 Narrative: Victim claims to have been attacked by 
[line break]            the suspect at 4:35 PM while trying to
[line break]            enter his vehicle. The suspect giv
[line break]            the motivation for the attack 
[line break]            attempt to recover stolen 
[line break]            from the victim. The s
[line break]            to give further de
[line break]            of the stolen 
[line break]            informatio
[line break]            theft[variable letter spacing]


[italic type]Another paper covered most of the report, but it didn't matter. I turned my head back just as the officer returned to her desk. She frowned, without giving much effort to cover her suspicious expression. I threw back a big smile.[first person footer]".
[margin: 12 spaces + 38 ]
[ Narrative:      Victim claims to have been attacked
[line break]                 by the suspect at 6:35 PM while trying
[line break]                 to enter his vehicle. The suspect says
[line break]                 the motivation for the attack was an 
[line break]                 attempt to recover stolen property 
[line break]                 from the victim. The suspect refuses 
[line break]                 to give further details of the nature 
[line break]                 of the stolen property or any other 
[line break]                 information relating to the alleged 
[line break]                 theft. The victim denies theft and [variable letter spacing]
]

After reading paper piles:
	now the Hotel Falcon is destination. 

Instead of reading paper piles at least twice:
	say "You already have the information you need: Julian Geigner, Hotel Falcon, room 405. If you push your luck too far, you might get yourself arrested."
	
Instead of searching the paper piles, try reading the paper piles.

Instead of taking or pushing or touching the paper piles, say "[The policewoman] would at least stop you if you tried to steal her papers."

[corridors]
The corridors are scenery in the station lobby. The description is "The corridors lead inside the police station. The western corridor leads to the cell section."
Understand "corridor/inside" as the corridors. The corridors are plural-named.

Instead of entering the corridors, try going west.

[desk]
The description of the desk is "The reception desk is filled with stacks of papers and files." Understand "pile/piles/report/reports/paper/papers/file/files/stack/stacks/paperwork/form/forms" as paper piles. 

Instead of searching the desk, try examining the desk.

Section III - Characters

The policewoman is a woman and scenery in the Station lobby. "The policewoman is filling out forms from one pile and then moving them into another." Understand "officer/police/cop/clerk/policeofficer/winters" as the policewoman. The printing of policewoman is "Her shirt reads 'D. Winters'.".

After reading the Policewoman: 
	change the printed name of the Policewoman to "officer Winters";
	now the Policewoman is proper-named.

Table of Policewoman conversation topics
Topic		Answer		Delete
"papers/paper/paperwork/piles/stacks/form/forms/reports/report"	"'The paperwork, it never ends, you know?' She assumes you get the hint and continues with her work."	0
"[professor]" or "prisoner"	 "The officer points to the western corridor. 'He's over there in cell 7.'"	1
"[professor]" or "prisoner"	"'From the way he looks, you wouldn't believe he'd do something like that, would you?'"	1
"[geigner]"	"'I don't know anything about him.'"	1
"[geigner]" or "[professor]" or "prisoner/theft/crime/thievery/thieving/stealing"	"'You know, your friend [italic type]could[roman type] be telling the truth and Geigner has really stolen something from him. But if he can't even say what it is that's been stolen... We can all draw conclusions from that. Well, it's not my job to be the judge.'[paragraph break]She coughs professionally and looks somewhat ashamed, as if she had said a bit too much."	1 
"[geigner]" or "[professor]" or "prisoner"	"She doesn't have anything else to say about him."	0
"bail/release"	"'Oh, there's no bail. He's just waiting for additional questioning if necessary. And maybe a couple of hours in the cooler assures this is the last time he'll end up here, right?'"	0
"hotel/falcon" or "hotel falcon"	"'Yeah, I know the place. When I was working in the eastern precinct, we were called there all the time. Not my problem anymore, thankfully.'"	0


After asking Policewoman about a topic listed in the Table of Policewoman conversation topics:
	say "[answer entry][paragraph break]";
	if delete entry is 1, blank out the whole row.

After asking Policewoman about something, say "She doesn't see the subject important enough to interrupt her work.";

Instead of searching the Policewoman, say "It's usually the police who does the frisking, not the other way around."

Instead of attacking or touching or smelling or tasting or rubbing or cutting or threatening or stabbing the Policewoman with, say "That would most certainly get you arrested."

Instead of listening to the Policewoman, say "You hear scraping of the pencil agains paper and occasional thuds when she stamps something."

Instead of greeting the Policewoman, say "'G'day sir,' she replies."



Chapter 3 - Outside the Police Station

Section I - Room

The Police station is south from Station lobby. "The police station of this district is one of the quietest in the city. The Brenett University is nearby so people who get arrested are usually drunken students, but now it's the Professor who is sitting in the jail. The station doors are to the north." The Police station is destination. Understand "jail/prison/professor" as the Police station. The printed name of the Police station is "Outside the police station".

Instead of going inside while in the Police station, try going north.


Section II - Things

The Dodge is in the Police station. [The Colt revolver is in the glove compartment.]

[payphone]
The payphone is in the Police station. "There's a payphone mounted on the wall across the street." The description is "It's a dirty old coin-operated payphone. Surprisingly it looks like it's still functional." The payphone is fixed in place.

Understand "phone/telephone" and "coin/pay phone/telephone" as the payphone.

Instead of searching the payphone, say "Scooping the coin return for forgotten coins turns out fruitless. Now you just have a sudden urge to wash your hands."

Instead of taking the payphone, say "It's not a cell phone."

Understand "Greenfeld/Greenfield/555-2866/5552866" or "555 2866" as "[Greenfeld's phone number]".

Instead of telephoning when the player is not carrying the loose change:
	say "You need coins to use the phone."

Instead of telephoning "[Greenfeld's phone number]" when the player is carrying the loose change and the payphone is in the location:
	if the Gate to Greenfeld's mansion is a destination,
			say "You've already called the mansion. Greenfeld is having an auction at 7 Mayflower Avenue - that's all you need to know." instead;
	if Trading for the Coin has happened
	begin;
		if the we have readed the open matchbook
		begin;
			say "[first person header]So Geigner had the coin. He wanted to trade. Greenfeld was my key to the coin. I punched in the numbers.

A woman's voice answered. 'Greenfeld residence, lady of the house speaking.'

'Um.. Could I speak to Mr. Greenfeld?' I asked.

'Gregor is holding an auction downstairs and can't come to the telephone at the moment. May I ask him to call you back?'

Not even pausing to think, I assumed the cover character of an art collector.

'No need, my dear, I'm actually on my way to the said occasion but alas! I seem to have misplaced the address and I'm merely ringing to find it out.'

'Of course. We are located at 7 Mayflower Avenue.'

'Jolly good! I shall stroll to your place of habitation in a jiffy. Great many thanks to you and ta-ta!'

There was a brief silence on the other end. I hung up before I'd blow my role by taking it too far.[first person footer]";
			now the Gate to Greenfeld's mansion is a destination;
		otherwise;
			say "So Greenfeld has the mask Geigner wants - if only you had his phone number...";
		end if;
	otherwise;
			say "The leads are all pointing towards Geigner. There's no reason to contact Greenfeld now.";
	end if;

Instead of inserting loose change into the payphone, say "You have to dial the number first."

Instead of switching on the payphone, say "It needs coins to operate."

Instead of attacking or breaking the payphone with, say "You're not a vandal."

[police station]

The station building is scenery in the Police station. 
Understand "door/doors" and "station door/doors" and "police station door/doors" as the station building.

Instead of examining the station building, try looking. 

Instead of entering the station building, try going north.


Part B - Hotel Falcon

The area name of the Hotel Falcon is "Hotel Falcon".
The area name of the Hotel reception is "Hotel Falcon".
The area name of the Fourth floor hallway is "Hotel Falcon".
The area name of the Geigner's room is "Hotel Falcon".
The area name of the Back alley is "Hotel Falcon".
The area name of the Fire escape is "Hotel Falcon".


Chapter 1 - Outside the Hotel Falcon

Section I - Room

The Hotel Falcon is a room. "A neon sign reading 'Hotel Falcon' flickers above the main entrance to the north. Most buildings in the block are apartments. The nearest building to the east has a butcher's shop in the ground floor. The northeastern alley leads behind the hotel."

Instead of going east when the location is the Hotel Falcon, try opening the butcher's shop.


Section II - Things

[hotel building]
The hotel building is scenery in the Hotel Falcon. Instead of examining the hotel building, try looking.
Understand "main doors/entrance" and "entrance/door/doors" as the hotel building.

Instead of entering or opening the hotel building, try going north.

Instead of climbing the hotel building, say "There's nothing suitable for climb on this side of the building."

[neon sign]
The flickering neon sign is scenery in the Hotel Falcon. The printing of the neon sign is "'Hotel Falcon - vacant'".

Instead of examining the neon sign, try reading the neon sign.

Instead of looking under the neon sign, say "The main entrance to the hotel is under the sign."

Instead of listening to the neon sign, say "The neon sign gives a faint electronic 'bzzt' sound."

[other buildings]
The other buildings are scenery in the Hotel Falcon. The other buildings are plural-named. The description is "It's still quiet at this time of day, but there's bound to be some action when the sun sets."
Understand "apartments/apartment" and "apartment buildings" as the other buildings.

[alley]
The alley leading behind is scenery in the Hotel Falcon. The printed name of the alley leading behind is "alley leading behind the hotel". The description is "The alley leads behind the hotel."

Instead of entering the alley leading behind, try going northeast.


[the BMW]

The silver BMW is scenery in the Hotel Falcon. The description is "A rather expensive looking silvery BMW is parked in front of the hotel. It seems to be the last year's model and in flawless condition[if the BMW tires are slashed] - if you don't count the slashed tire[end if]. A small red light is blinking under the windshield.". Understand "car" as silver BMW.

Instead of unlocking keylessly the silver BMW, say "You don't have the keys."

Instead of unlocking the silver BMW with the carkeys, say "They fit only your car."

The silver BMW can be silent or beeping. The silver BMW is silent.

[Instead of shooting the BMW with the Colt, say "That'd be a bit extreme solution, don't you think?".]

Instead of stabbing the BMW with, try stabbing the BMW tires with the second noun.


[Car alarm]
The small blinking red light is part of the silver BMW. The description is "A blinking red led on top of the BMW's dashboard is to notify potential thieves that the car is equipped with a car alarm. And to show passersby that the car is worth protecting." Understand "windshield/dashboard/alarm/led" and "car alarm" as the blinking red light.

Instead of switching off the blinking red light, say "The alarm can only be turned off with a transmitter. Which you don't have."


[setting off the alarm]
Setting off the alarm is an action applying to nothing. 
Instead of pushing the BMW while the BMW is in the Hotel Falcon:
	say "You give the BMW a good push downwards. [run paragraph on]";
	try setting off the alarm.
	
Instead of touching or rubbing or knocking the BMW while the BMW is in the Hotel Falcon:
	say "You tap the hood of the BMW gently. [run paragraph on]";
	try setting off the alarm.
	
Instead of opening the BMW, try entering the BMW.

Instead of entering the BMW when the Car Alarm is not happening and the BMW is in the Hotel Falcon:
	say "You try to open the BMW doors, but not surprisingly they are locked. [run paragraph on]";
	try setting off the alarm.

Instead of doing something with the BMW during the Car Alarm, say "You could get yourself in troubles if you hang around the car when the alarm is on." 

Check setting off the alarm:
	if the BMW is beeping, say "You could get yourself in troubles if you hang around the car when the alarm is on." instead;
	if the BMW is not in the Hotel Falcon, say "This is not the place to toy around with Geigner's car." instead;

Carry out setting off the alarm:
	now the BMW is beeping.

Report setting off the alarm:
	say "The car alarm goes off with ear-popping beeps. You make a quick retreat away from the car."

Every turn during the Car Alarm:
	if the time since Car Alarm began is one minute
	begin;
		if the Hotel reception is unvisited
		begin;
			now the printed name of the receptionist is "man";
		end if;

		try receptionist trying going south;
	end if;

	if the time since Car Alarm began is two minutes
	begin;
		if the location is Hotel reception or the location is Back alley, say "The loud beeping of the BMW's car alarm in the street ceases.";
		now the BMW is silent;
		now the receptionist is not scenery;
		try receptionist trying going north;
		now the printed name of the receptionist is "receptionist";
	end if;

[What is printed when the receptionist moves around]

Report receptionist trying going to Hotel Falcon while in Hotel Falcon:
	say "[if the Hotel reception is unvisited]A man in a dark suit and a name tag pinned in his jacket[otherwise]The hotel receptionist[end if] arrives from the hotel doors holding a set of car keys in his hand. He mutters something you can't hear under the noise of the car alarm." instead.

Report receptionist trying going to Hotel reception while in Hotel Falcon:
	say "[The receptionist] pushes a button on the car keys and the alarm stops. He glances around, shakes his head and returns to the hotel[if the BMW tires are slashed]. Luckily he doesn't notice the flat tire[end if]." instead.

Report receptionist trying going to Hotel Falcon while in Hotel reception:
	say "As you enter the hotel lobby [the receptionist] sighs and reaches for something under the reception desk. He pulls out a set of car keys and walks out the front door. 

'If you excuse me, sir, I will attend to you in a moment. I'll just take care of that damn car alarm', he says as he passes you." instead.

Report receptionist trying going to Hotel reception while in Hotel reception:
	say "[The receptionist] comes inside. 'I'm very sorry for my absence, sir', he says[if the player has the room 405 key]. He goes back behind his desk but doesn't notice that one of the keys is missing[end if]." instead.

[tires]

The BMW tires are part of the silver BMW. The BMW tires can be slashed or intact. The BMW tires are intact. The BMW tires are plural-named.
Understand "BMW tyres/tyre/tire/wheels" and "tyres/tyre/tire/wheels" as BMW tires. 
Instead of cutting the BMW tires, try stabbing the BMW tires with.

Instead of stabbing the BMW tires with the kitchen knife when the BMW is in the Hotel Falcon:
	if the BMW tires are slashed, say "You've already slashed one tire. That should be enough." instead;
	say "There's a loud bang and the tire flattens rapidly. I'm not quite sure what good does it do other than vent out your frustrations.";
	now the BMW tires are slashed;
	try setting off the alarm.


[The Butcher's]

Instead of going east from the Hotel Falcon, say "The butcher's shop is closed."

The butcher's shop is scenery in the Hotel Falcon. The description is "The butcher's shop has a sign over it reading 'Biff's Beef'. It is closed and a note is left in the window." Understand "Biff's Beef" and "sign/door/butcher" as the butcher's shop.

Instead of reading the butcher's shop, try examining the butcher's shop.

Instead of opening the butcher's shop, say "The shop is closed. A note is left on the display window."

Instead of unlocking or breaking the butcher's shop with something or attacking or unlocking keylessly the butcher's shop, say "There's nothing so important in the butcher's shop that would be worth the effort."

Instead of entering the butcher's shop, try going east.


[butcher's note]
The butcher's note is scenery in the Hotel Falcon. Understand "window/paper/display" as butcher's note. The description is "A note on the display window is written on a wrapper paper in large, shaking handwriting: 'Closed due to illness. -Biff'".

Instead of reading butcher's note, try examining butcher's note. Instead of doing something other than examining or reading to butcher's note, say "The note is on the other side of the window so you can't reach it."

Instead of unlocking or breaking the butcher's note with something or attacking the butcher's note, try attacking the butcher's shop instead.
 

Section IV - Scenes

Car Alarm is a recurring scene. Car Alarm begins when the silver BMW is beeping. Car Alarm ends when the time since Car Alarm began is three minutes.

When the Car Alarm begins:
	now the receptionist is scenery. [prevents him from showing up in the room descriptions]



Chapter 2 - Hotel reception

Section I - Room

The Hotel reception is north of the Hotel Falcon. "[if unvisited]You enter the dimly-lit lobby of the Hotel Falcon. [end if]The hotel is a breeze from the past, with its worn-out pink wallpaper and tacky decorations. An elevator is waiting for passangers. Behind the reception desk hang several rows of labeled room keys."

Instead of exiting in the hotel reception, try going south.


The atmospheric narrative of the Hotel reception is the Table of Hotel Reception Atmosphere.

Table of Hotel Reception Atmosphere
narrative
"The phone rings [if the receptionist is in the Hotel reception]and the receptionist answers it. After a brief exchange of single words he hangs up.[otherwise]somewhere behind the desk. It stops when nobody answers."
"[if the receptionist is in the Hotel reception]The receptionist takes a pen and a notepad and makes a few quick doodles.[otherwise]Over the car alarm you hear [the receptionist] swearing."
"The sound of a police car siren comes from outside and fades away."


Section II - Things

[wallpaper]

The pink wallpaper is a backdrop. The pink wallpaper is in Hotel reception. The description is "The wallpaper has pink flowers on white background. It has seen its fair share of days." Understand "wall/walls" as the pink wallpaper.

Instead of looking under the pink wallpaper, say "It's pasted on the wall. You can't peek underneath but I doubt if there's a hidden treasure."

Instead of smelling the pink wallpaper, say "It smells vaguely like tobacco."


[desk]
The deskinreception is scenery in the Hotel reception. The printed name is "reception desk". The description is "A gray marble pattern is taped on the plastic reception desk and the dim lighting almost fools you until you touch the surface. A pretty little golden bell on the desk looks out of place in these surroundings." Understand "counter/desk/table" and "reception desk/counter/table" as the deskinreception.
[the object can't be called "reception desk" or "receptiondesk" because it disambiguates with receptionist (only first 8 letters are significant). Thanks to Roger for the hack.]

Instead of searching the deskinreception, try examining the deskinreception.

Instead of touching the deskinreception, say "Instead of hard cold marble, it feels like soft and warm plastic."




[bell]
The golden bell is scenery on the deskinreception. The description is "The elegant little bell is for calling the receptionist when he is not around."

Bellringing is an action applying to one thing.

Understand "ring [golden bell]" as bellringing.

Instead of pushing the golden bell, try bellringing the golden bell.
Instead of attacking the golden bell, try bellringing the golden bell. [mainly for "hit bell"]

Instead of listening to the bell:
	say "The bell rings in a delightful tone.";
	try bellringing the golden bell.

Carry out bellringing:
	if the receptionist is in the location
	begin;
		if the number of filled rows in the Table of bell ringing responses is greater than 0
		begin;
			choose row with Number of 1 in the Table of bell ringing responses;
			say "[quip entry][paragraph break]";
			blank out the whole row;
		otherwise;
			say "The receptionist puts his hand on the bell before you have time to reach for it. 'Yes, I get it. Ha ha. But sir, please!'";
		end if;
	otherwise;
	say "You ring the bell for a while but there's no answer."; [the receptionist is never longer away than 1 turn, so this is acceptable]
	end if.

[I'm not a wizard with the tables, so it seems; I had to add a dummy "number" column to get the damn thing to work.]
Table of bell ringing responses
Number		Quip
1	"The receptionist blinks. 'Yes?'"
1	"'Yes sir, how may I help you?' the receptionist asks."
1	"'Sir, please. I am right here.'"
1	"The receptionist coughs professionally and says pronouncing each word very carefully: 'That..is..quite..unnecessary..sir. If I may do anything for you, please just let me know.'"

Instead of taking the bell, say "The bell is chained to the desk, and even if it wasn't, it would hardly be of any use to you."


[room key]

The room 405 key is in the Hotel reception. The description is "A key fob with Hotel Falcon logo and number '405' dangles from the small key." Understand "fob/keys/row/rows/nails" and "labeled key/keys" as the room 405 key. The printed name of the room 405 key is "key to the room 405".

Instead of examining the room 405 key when we have not taken the room 405 key, say "Rows of room keys hang from nails on the wall behind the desk. You spot the key to the room 405 among them."

Rule for listing nondescript items of the Hotel reception: change the room 405 key to not marked for listing.

Instead of taking the room 405 key when the receptionist is in the location and we have not taken the room 405 key, say "[The receptionist] blocks you with his hand. 'Sir! The keys are for guests only!' he exclaims."

Report taking the room 405 key when we have not taken the room 405 key:
	say "You reach across the counter and grab the key to the room 405." instead.

Instead of doing something to the room 405 key when the receptionist is in the location and the player has the room 405 key, say "It's better not to do anything with the key when the receptionist is around. He might not appreciate the way you acquired it."

Does the player mean doing something to the room 405 key: it is likely.

[elevator]

The elevator to upstairs is a closed enterable container in Hotel reception. The elevator to upstairs is fixed in place. The description is "The elevator is waiting to take someone to the upper floors." The printed name of the elevator to upstairs is "elevator".

Understand "elevator door/doors" and "lift" as elevator.

Instead of entering the elevator upstairs:
	say "You enter the elevator and push the button for the fourth floor.";
	try going up.

Instead of opening the elevator upstairs:
	say "You open the elevator doors and push the button for the fourth floor.";
	try going up.
	
Instead of switching on the elevator to upstairs, say "You have to go inside first."

[phone]

The reception telephone is scenery in the Hotel reception. The description is "The phone is somewhere under the desk." Instead of doing something except examining to the reception telephone, say "The phone is not important." Understand "phone" as the reception telephone.


Section III - Characters

The receptionist is a man in the Hotel reception. "[The receptionist] is standing behind the front desk. [if Hotel reception is unvisited]'How may I help you, sir?' he asks." The receptionist is wearing the name tag. Understand "Mark/clerk" as the receptionist. The description of the receptionist is "[The receptionist] is in his mid 30s and wears a dark suit with a name tag pinned to it."

The printing of name tag is "[The receptionist]'s name tag reads 'Mark'."

Instead of reading the receptionist: try reading the name tag.

Instead of smelling the receptionist, say "He smells of cheap cologne."

Instead of asking the receptionist about something when the location is not the Hotel reception: say "Now is not the best time to talk to him."

Table of receptionist conversation topics
Topic		Answer		Delete
"[Geigner]"	"'He's not in right now, would you like to leave a message?'[paragraph break]You decline politely."	1
"[Geigner]"	"'Sir, his whereabouts are not my business.'"	0
"falcon/hotel" or "hotel falcon"	"'Yes sir, Hotel Falcon is the finest in the area!'[paragraph break]You'd hate to visit the worst hotel in the area."	0
"car/auto/bmw/alarm" or "silver car/auto/bmw" or "car/auto/bmw outside/alarm" or "alarm system"	"'Mr. Geigner took a taxi and left his car here. The thing is making me crazy! The alarm system is so sensitive it goes off almost by itself. Thank God Mr. Geigner left his car keys here so I can go shut it off when it goes.'"	0
"room"	"You don't need to get a room. You have a perfectly good apartment."	0
"bell"	"'The bell is for calling me when I'm not here. But I'm here now, sir.'"	0
"Greenfeld/Greenfield"	"He flips through his files. 'No, I'm afraid there's nobody here with that name, sir.'"	0
"phone/telephone"	"'I'm sorry, but the telephone is for guests only.'"	0
"key/keys" or "room key/keys"	"'No, sir, you may not have the keys. They are for staff only.'"	0
"room/door 405" or "405"	"'I'm sorry, sir, but I'm not allowed to give any information about our guests.'"	0
"himself/receptionist/clerk/mark"	"'Me? Uh... We're not allowed to get personal with customers,' he says, a bit confused."	0
"biff/butcher/butcher's" or "butcher's/butcher shop"	"'If you need fresh meat, I can recommend Biff's Beef. We get all our meat from there.'"	0
"veiled rose" or "restaurant veiled rose" or "veiled/rose/restaurant"	"'If you wish to treat yourself to a fine evening, I can recommend the Veiled Rose. One of the finest restaurants in the city."	0

Instead of greeting the receptionist, say "'Good evening to you, sir. How may I help you?'".


After asking the receptionist about a topic listed in the Table of receptionist conversation topics:
	say "[answer entry][paragraph break]";
	if delete entry is 1, blank out the whole row.

After asking receptionist about something:
	if a random chance of 1 in 3 succeeds then say "The receptionist ponders for a while, then shakes his head. 'I'm sorry, sir, but I can't help you with that.'" instead;
	if a random chance of 1 in 2 succeeds then say "'I must confess I'm not an expert on the subject, sir,' the receptionist says, looking disappointed in himself." instead;
	say "'I'm sorry, sir, my mind must have been wandering. Could you repeat that?'" instead.




Chapter 3 - Fourth floor hallway

Section I - Room

Before going from the Hotel reception to the Fourth floor hallway for the first time: 
	if the Geigner's room is unvisited, say "[first person header]The elevator took me to the fourth floor of the hotel. I followed the corridor counting door numbers: 401... 402... 403... 405, Geigner's room.[first person footer]".

Instead of exiting in the Fourth floor hallway, try going down.

The Fourth floor hallway is up of the Hotel reception. "The retro theme continues in the hallways. The ceiling shows signs of water damage and pale pink wallpaper decorates the walls between the elevator leading down and Geigner's room to the east."

Instead of listening to the Fourth floor hallway, say "You hear the steady hum of air conditioning."

Instead of entering in the Fourth floor hallway, try going east.



Section II - Things

[wallpaper]
The pink wallpaper is in the Fourth floor hallway. [defined in the lobby room]


[ceiling]
The damaged ceiling is scenery in the Fourth floor hallway. The description is "There are bulges under the paint in the ceiling. It's probably leaked water." Understand "bulge/bulges/water/damage" and "water damage" as the damaged ceiling.

[elevator]

The elevator to downstairs is a closed enterable container in Fourth floor hallway. The elevator downstairs is scenery. The description is "The elevator is ready to take someone to the ground floor."

Understand "elevator/lift door/doors" and "lift" as elevator.

Instead of entering the elevator to downstairs:
	say "You enter the elevator and push the button for the ground floor.";
	try going down.

Instead of opening the elevator to downstairs:
	say "You open the elevator doors ans push the button for the ground floor.";
	try going down.
	
Instead of switching on the elevator to downstairs, say "You have to go inside first."


[door to Geigner's room]

The door 405 is lockable, locked and scenery door. The door 405 is east of the Fourth floor hallway. The description is "[if the location is Fourth floor hallway]The door to room 405 is the only one with a peephole.[otherwise]The door leads back to the hallway."  Room 405 key unlocks the door 405. 

Understand "room 405" and "Geigner's room/door" as the door 405. 

Instead of looking under the door 405, say "The crack under the door is not large enough to look through."

Instead of listening to the door 405, say "[if the location is Fourth floor hallway]You put your ear against the door but hear nothing inside.[otherwise]You put your ear against the door but hear nothing outside. It's safe for a little while longer."

Instead of attacking or breaking the door 405 with, say "It looks sturdy enough not to give in that easily."

[Instead of shooting the door with the Colt, say "Shooting the lock would work, but it would draw attention and you don't have a silencer."]

The printing of door 405 is "[if the location is Fourth floor hallway]'405'[otherwise]There's nothing written on this side."

Instead of knocking the door 405 for the first time:
	if the Geigner's room is unvisited, say "[first person header]*knock knock*[paragraph break]There was no answer.[paragraph break]*knock knock*[paragraph break]Still nothing. I listened for a while but all I heard was the silent humming of the air conditioning.[first person footer]";
	otherwise say "You knock on the door, but there's no answer."

Instead of knocking the door 405:
	say "You knock on the door, but there's no answer."

Before going to Hotel reception when the door 405 is unlocked and the location is the Fourth floor hallway:
	say "You lock Geigner's room before you leave. Better not to arouse any suspicions.";
	now the door 405 is closed;
	now the door 405 is locked.
	
Instead of unlocking keylessly the door 405 when the location is Geigner's room and the player does not have the room 405 key:
	say "The door needs a key to unlock, even from inside the room.";
	
Instead of locking keylessly the door 405 when the location is Geigner's room:
	say "You lock the door - just to play it safe.";
	now the door 405 is locked.

Does the player mean unlocking the door 405 with the room 405 key: it is very likely.

Does the player mean doing something to the door 405: it is likely. [..instead of doing it to the keys]

	

[peephole]
The peephole is backdrop. It is in the Fourth floor hallway and the Geigner's room. Understand "eyehole" and "peep/eye hole" as the peephole. The description is "[if location is Fourth floor hallway]You can't see through the hole from this side of the door.[otherwise]You see the empty hotel hallway."

Instead of searching the peephole, try examining the peephole.


[all the other doors]

Other doors are scenery in the Fourth floor hallway. The description is "The other doors are of little interest." Understand "401/402/403/406/407/408" and "room/door 401/402/403/406/407/408" as other doors. 

Instead of opening other doors, say "You don't have any business in the other rooms." Instead of unlocking the other doors with anything, say "You don't have a key for the other doors and why would you want to go there anyhow?".

Instead of knocking other doors, say "There's no-one there you'd want to meet."

[some mandatory geek humor]
The room 404 is scenery in the Hallway. Instead of doing something with the room 404, say "404: Door not found." Understand "door 404" as room 404.



Chapter 4 - Geigner's room

Section I - Room

[the window is handled in the chapter on fire escape; the door is in the previous chapter]

Geigner's room is east of the door 405. "The hotel room is neat and clean. An empty wastebasket has been tucked under the writing table. With framed posters on the walls and clothes in the closet well enough for a couple of days but no suitcases, it is apparent that the room is permanently reserved for Geigner's use. 

The window to the east shows a dull scene of red brick wall. The door to the hallway is to the west."

After going to the Geigner's room when Geigner's room is unvisited:
	say "[first person header]I was finally in Geigner's hotel room. He wasn't there, which would make my job a lot easier. 

A red satin lined case twice the size of a cigarette pack was on the writing table. All that was inside was a coin-sized impression in the fabric. Well, it couldn't have been that easy.

Keeping my ears open for anyone trying to enter the room, I started searching. After an hour I had looked through every nook and corner of the room. Nothing.[first person footer]";
	continue the action. [otherwise the looking action is suppressed]

Instead of searching or looking under anything when the noun is in Geigner's room and the noun is not the wastebasket and the noun is not the peephole and the noun is not the pocket calendar:
	say "You've already searched the room thoroughly. There's nothing hidden there."
	
Instead of listening to the Geigner's room, say "Is there someone trying to get in? You pause for a moment and listen still, but it was just your imagination."

The atmospheric narrative of Geigner's room is the Table of Geigner's room Atmosphere.

Table of Geigner's room Atmosphere
narrative
"There's a sound of footsteps behind the door. You're ready to bolt from the window, but they pass without entering."
"Sudden rustling behind the window alarms you. It turns out to be a pidgeon flying down to rest on the fire escape."
"You are startled by a sound from behind the door. It doesn't take long to realize it's just a cleaning lady's cart squeaking by."
"[if the hotel room window is broken]A shard of glass falls to the floor from the broken window.[otherwise]A gust of wind rattles the window briefly."

[Instead of exiting in the geigner's room, try going west. - omitted, since the player might want to exit through the window]


Section II - Things


A thing can be furniture. Instead of pushing or pulling or turning furniture, say "Rearranging the furniture does not help."


[wastebasket]

The wastebasket is a container and scenery in the Geigner's room. The wastebasket is furniture. Understand "waste/trash/garbage basket/bin/can/container" and "basket/bin/can/container/wastebin/wastecan/trashcan/trashbin/trashcontainer" as the wastebasket.

Instead of taking the wastebasket, say "It's a bit too big to carry around."


[writing table]

The writing table is furniture and scenery in the Geigner's room. 
The description is "On the writing table [is-are a list of things on the writing table]".

Understand "desk" and "writing desk" as the writing table.


[closet]

The closet is openable furniture scenery in the Geigner's room. The closet is open. The description is "[if closed]The closet doors are closed.[otherwise]In the closet you find some white shirts, a pair of straight trousers and some underwear."
Understand "closets/wardrobe" as the closet.
Instead of knocking the closet, say "The bogeyman doesn't come out until it's dark."
Instead of entering the closet, say "Unfortunately this wardrobe doesn't lead to Narnia."

[clothes]
Some clothes are in the closet. The description is "The clothes are clean and neatly ironed. You already checked the pockets and they contain nothing."
Understand "clothing/pocket/pockets/shirt/shirts/trousers/slacks/pants/underwear/suit/suits" and "straight trousers/pants/slacks" as clothes.
Instead of wearing or taking the clothes, say "You already have a perfectly good set of clothing on you. Besides the clothes look three sizes too big."

Instead of smelling the clothes, say "They smell clean."


[satin case]
The red satin case is on the writing table. The description is "The satin casing is empty."
Understand "casing/lining" and "red/satin casing" and "red satin casing" as the red satin case.

Instead of taking the red satin case, say "The empty case is of no use, you need the coin that was inside."

Instead of inserting something into red satin case, say "It's meant for holding a coin only." 

Instead of inserting loose change into red satin case, say "Your coins would fit, but they wouldn't magically transform into the roman coin the Professor is after."

Instead of searching or looking under the red satin case when in Geigner's room, say "You search the case thoroughly, but there's nothing inside or under the lining."
[had to add the "when in geigner's room" because otherwise this would be (mis)interpreted as a more general rule than the previous "searching anything"]

Instead of touching the red satin case, say "The satin feels nice and smooth."


[photo frame]
A photo frame is on the writing table. The description is "The photo depicts a bulky man in a suit and a stunning brunette next to him. They stand smiling in front of [if Outside the Club is unvisited]some building[otherwise]Club Zephyr[end if], arms around each other's waists."

The picture's building is a part of the photo frame. The description is "[if Outside the Club is unvisited]The couple in the photograph is in front of some building, maybe a restaurant or a club. There aren't enough details to know for sure.[otherwise]The building on the photo is probably Club Zephyr."

Understand "brunette/woman/man/suit" as the photo frame.

Instead of taking the photo frame, say "It's of no use to you. Better leave it here."


[poster]
The poster is furniture scenery in the Geigner's room. The description is "A poster on the wall is an ad for dj's in Club Zephyr two years ago:

[fixed letter spacing]Club Zephyr presents
[line break]DJ GO-MOKU
[line break]DJ CARLEMOS

Start: 18:00 - End: 04:00
[line break]Entry: free
[variable letter spacing]

Club Zephyr was opened for public around the same time, which is probably why the otherwise unassuming poster has been kept and framed."

Understand "wall/walls/posters" as the poster.

Instead of taking the poster, say "It's too bulky to carry around."

Instead of reading the poster, try examining the poster.

After examining the poster:
	now the poster is familiar.


[plastic bag]
The red plastic bag is a container in the wastebasket. The plastic bag is openable. The inventory listing of the plastic bag is "a garbage bag from Geigner's room". Understand "waste/garbage" and "red/garbage/waste/trash bag" and "Geigners/geigner/geigner's bag" as plastic bag. 

Before examining the plastic bag: say "The plastic bag is bright red with no printing. [run paragraph on]".

[calendar]
The pocket calendar is on the writing table. The description of pocket calendar is "It's Geigner's personal calendar. It has fake leather covers and the year printed on the front in gold letters." The printing of pocket calendar is "There are two entries for today:[paragraph break] - Meet Greenfeld at the club[line break] - Dinner with E at Veiled Rose". The inventory listing of the pocket calendar is "Geigner's calendar". Understand "calender/journal/diary" or "Geigner's/geigner/geigners calendar/calender/journal/diary" as calendar.

Instead of opening or searching the pocket calendar, try reading the pocket calendar.

After reading the pocket calendar:
	now the Outside the Club is a destination;
	now the restaurant parking lot is a destination.

Report taking the pocket calendar for the first time:
	say "[first person header][if the hotel room window is broken]I took the calendar with me. The window was already shattered, Geigner would know immediately that someone has been in the room. No point in being subtle anymore.[otherwise]I pocketed the calendar. It could be useful, even though there was a chance Geigner would now know someone had broken into his room. If I left no traces of myself there, I'd steer clear.[end if][first person footer]" instead.
	
[bed]
The bed is furniture scenery in Geigner's room. The description is "It's just a plain bed."

[brick wall]
The red brick wall is a backdrop in Geigner's room. The description is "Hopefully the guests aren't paying extra for the view." Understand "scene/scenery" as the brick wall.

Instead of climbing the brick wall, say "There's no foothold. Climbing the wall would be nearly impossible."

The printing of the red brick wall is "Surprisingly there's no graffiti."


 

Chapter 5 - Back alley

Section I - Room

Back alley is northeast of the Hotel Falcon. "The back alley leads to a dead end, back to southwest is the only way out. The only things here are a rather large waste container and fire escape stairs that are mounted on the hotel wall."

Before going nowhere from the back alley when the player is not on the metal lid, say "The back alley is a dead end. [run paragraph on]".

Instead of exiting in the back alley, try going southwest.

Instead of listening to the back alley, say "The sounds of the street can be heard."

Instead of smelling the back alley, say "The waste container smells like decomposing food."


Section II - Things

The brick wall is in the Back alley. [defined in Geigner's room, chapter 4]

[waste container]

The waste container is openable closed scenery container in the back alley. Understand "trash/garbage/bin/wastebin/garbagebin" and "trash/garbage/waste container/bin" as the waste container.

Before examining the waste container, say "The waste container has probably never been washed. One corner is slightly damaged and leaks smelly brown goo. [run paragraph on]".

Understand "stand on [waste container]" as climbing.
Understand "climb down" as exiting. 

Instead of going down when the player is on the metal lid, try exiting.

Instead of entering the waste container, say "You can do whatever you need from outside the waste container. You don't want to reek of trash the rest of the day, do you?"

Instead of pushing or pulling or turning the waste container, say "The container is way too heavy to move."

Understand "move [container] under [something]" as pushing it to.

Before of pushing the waste container to something, try pushing the waste container instead.


[goo]
The smelly brown goo is part of the waste container. Instead of doing something other than smelling to the smelly brown goo, say "Trust me, you really don't want to do anything with the goo." Instead of smelling the smelly brown goo, say "It smells... awful." Understand "corner" as the smelly brown goo.

Instead of smelling the waste container, try smelling the smelly brown goo.


[the lid]

[the lid is needed because the waste container can't be a container and a supporter at the same time. Or maybe it could be, but this simplifies things a lot.]

The metal lid is a enterable supporter and part of the waste container. The description is "The lid of the waste container is [if the waste container is open]open[otherwise]closed."

Check entering the lid:
	if the waste container is open, say "With the lid open you would climb inside the waste bin and you really don't want to do that." instead.

Instead of opening the lid, try opening the waste container.

Instead of closing the metal lid, try closing the waste container.

Instead of climbing the waste container, try entering the lid.

Instead of climbing the metal lid, try entering the metal lid.

Instead of exiting in the back alley while the player is on the metal lid, try getting off the metal lid.


[colorful bags]
colorful trash bags are closed openable containers in the waste container. Colorful trash bags are fixed in place and plural-named. The description is "Many colorful plastic trash bags fill the container almost to the brim." 
Understand "red/green/blue/yellow" and "colourful/colored/coloured/trash/waste bags/bag" and "colourful/colored/coloured/bag" and "colorful/colourful waste/trash bag" as colorful trash bags. 

Instead of searching or taking or opening the colorful trash bags, say "The colorful waste bags are just... waste."

[The matchbook was originally inside the waste container. The following code is a remnant of that.

Definition: the colorful trash bags are recognized if the plastic bag is known.

Instead of searching or taking or opening the colorful trash bags when the colorful trash bags are not recognized, say "There's a good chance some of the plastic bags are from Geigner's room, but there are too many to go through for now. You'd have to know what you are looking for."

Instead of searching or taking or opening the recognized colorful trash bags for the first time: 
	say "A bright red trash bag lies near the top inside the waste container. It matches the color of the bag that was in Geigner's room, so you take a closer look.[paragraph break]Inside you find miscellaneous junk, but a matchbook catches your attention.";
	now the matchbook is inside the waste container.

Instead of searching or taking or opening the recognized colorful trash bags: say "You don't need to (nor want to) search any deeper."
]
[white bags]
white trash bags are in the waste container. The white trash bags are closed, openable and fixed in place. The white trash bags are plural-named. The description is "The white trash bags have 'Biff's Beef' written on them with large red letters." The printing is "'Biff's Beef'". 
Understand "white trash/waste bag" and "white/trash/waste bag" and "white trash/waste bag" and "bag" as white trash bags.

Instead of taking the white trash bags, say "The bags themselves are of no use."

Instead of pushing or pulling or turning the colorful trash bags, 
	say "For hygienic reasons, it'd be best not to touch the bags unless absolutely necessary."

Instead of pushing or pulling or turning the white trash bags, 
	say "For hygienic reasons, it'd be best not to touch the bags unless absolutely necessary."



[knife]

The kitchen knife is a weapon inside the white trash bags. The description is "It's dull and the point is broken, which is probably the reason it was tossed in the first place."

Understand "weapon" as the kitchen knife.

Instead of smelling the kitchen knife, say "The knife smells of meat and blood."

Instead of breaking the kitchen knife with, say "It's already broken enough."


[meat]

The package of spoiled meat is inside the white trash bags. The description is "Something gray is growing on it. The meat is wrapped in plastic that keeps most of the smell at bay, fortunately.[if the spoiled meat is carried by the player] Why anyone would want to carry the thing around is beyond comprehension."

The printing of spoiled meat is "There's an expiration date printed on the... oh man, it was a week ago."

Instead of eating the spoiled meat, say "That's just gross. You couldn't force yourself to eat the spoiled meat."

Instead of opening the spoiled meat, say "Please don't. The packaging keeps the smell at tolerable levels."

Instead of smelling the spoiled meat, say "Yes. It smells bad."


[matchbook]

The matchbook is a thing. The matchbook can be open or closed. The matchbook can be openable or unopenable. The matchbook is closed. The matchbook is openable. The description is "It's a promotion for Club Zephyr.[if open] All the matches have been used. Something has been written inside the cover.[otherwise] It's closed." The printing is "[if open]Someone has scribbled inside the cover with a ball-point pen:[paragraph break] G. Greenfeld (the collector)
[line break]
555-2866[line break]
has one[otherwise]The logo on the cover says 'Zephyr - The Place to Be'".

Understand "match/matches/book/matchbox/cover/logo/writing/scribble" and "match book/box" as the matchbook.

Report opening the matchbook:
	say "All the matches have been used, but there's something scribbled on the inside of the cover." instead.
	
Instead of searching the closed matchbook, try opening the matchbook.
Instead of searching the open matchbook, try examining the matchbook.


[these are from the time when the matchbook was inside the hotel's trash container

After reading or examining the closed matchbook: 
	if the poster is not familiar
	begin;
		now the poster is familiar;
		if we have readed the pocket calendar, say "Club Zephyr... That must be the club that was referred to in the calendar.";
	end if;
	
After examining the open matchbook:
	if the poster is not familiar
	begin;
		now the poster is familiar;
		if we have readed the pocket calendar, say "Club Zephyr... That must be the club that was referred to in the calendar.";
	end if;
]


Chapter 6 - Fire escape

Section I - Room

Fire escape is a room. "[if Geigner's room is unvisited]Behind a fourth floor window you make out a hotel room to the west with a small red casing on a table - it must be the casing Professor mentioned. Looks like there's nobody inside[otherwise]On the west side is the window to room 405[end if]. [if hotel room window is broken]The window is shattered and shards are lying on both sides of it. [end if]Stairs lead down to the back alley."

Instead of exiting in the fire escape, try going down instead.

Instead of going inside in the fire escape, try going west instead.


Section II - Things

The brick wall is in the Fire escape. [defined in Geigner's room, chapter 4]

[window]

The hotel room window is closed, lockable and locked door. The hotel room window is scenery. The hotel room window is east of Geigner's room and west of Fire escape. The matching key of the hotel room window is the kitchen knife. Understand "latch" as the hotel room window. The description is "The Geigner's hotel room window is [if open]open[otherwise]closed[end if]. You see [if the location is Geigner's room]a fire escape and the brick wall of the opposite building.[otherwise]inside Geigner's room.[end if][if broken] The glass has been shattered.[end if][if locked] A latch is holding the window locked." [phew]

The hotel room window can be broken. The hotel room window is not broken. Understand "glass/shard/shards" as the hotel room window.

Instead of searching the hotel room window,
	say "This is undoubtedly Geigner's room. You see a small red casing on the writing desk."

Understand "open [door] with [weapon]" as unlocking it with.

Check unlocking the hotel room window with the kitchen knife:
	if the hotel room window is unlocked, say "The window is already unlocked." instead;
	if the hotel room window is broken, say "The glass is broken, you could just reach in and open the latch." instead;
	if the location is the Geigner's room, say "You are already inside. You could just open the latch." instead;

Carry out unlocking the hotel room window with the kitchen knife:
	now the hotel room window is unlocked;
	now the hotel room window is open.

Report unlocking the hotel room window with the kitchen knife:
	say "You manage to put the knife's blade through the side of the window. After that wiggling the latch open is easy. You pull the window open just enough to give room to crawl through." instead.

[here's where the Locksmith kicks in]
Before unlocking keylessly the hotel room window:
	if the hotel room window is unlocked, say "[The hotel room window] is already unlocked." instead;
	if the location is Geigner's room
	begin;
         		now the hotel room window is unlocked;
		say "You flip the latch and unlock the window." instead;
	end if.
	if the hotel room window is broken
	begin;
		now the hotel room window is unlocked;
		say "You reach your hand through the window frame and unlock the hatch." instead;
	end if;
	say "The latch is on the other side; you can't reach it from here." instead;

Before locking keylessly the hotel room window:
         if the hotel room window is locked, say "[The hotel room window] is already locked." instead;
	if the hotel room window is open, say "The mechanism prevents the window to be locked when it's open." instead;
	if the location is Geigner's room or the hotel room window is broken
	begin;
         		now the hotel room window is locked;
		say "You flip the latch and lock the window." instead;
	end if;
	say "You can't reach the latch from outside the room." instead.

Instead of breaking the hotel room window with the kitchen knife:
	now the hotel room window is broken;
	say "You hold the knife and hit the window with the hilt. The window shatters with a loud crash." instead.

Check breaking the hotel room window with:
	if the hotel room window is broken, say "The window already lies shattered on the floor." instead;
	if the Geigner's room is visited, say "You already have access to Geigner's room, there's no need to break in anymore." instead;
	if the second noun is the player, say "You'd cut yourself badly if you tried to break the window with your bare hands." instead;
	[if the second noun is the kitchen knife, say "You could be on to something here, but the knife is probably not strong enough to shatter the glass." instead; - originally a revolver was used to break the window.]
	if the second noun is not the kitchen knife, say "[The second noun] wouldn't break the glass." instead.

[ladder]

The fire escape ladder is a door and scenery. The description is "Specks of rust are blooming through the red paint on the fire ladder[if closed]. The ladder is up, just out of reach.[otherwise]. The ladder is down and the spring mechanism is broken." The fire ladder is up of the back alley and down of the fire escape. Understand "stairs" as the fire ladder.

Understand "jump to stairs" and "jump to ladder" as jumping.

Check opening the fire ladder:
	if the fire ladder is open, say "The spring mechanism is broken, so the ladder stays down." instead;
	if the location is the back alley and the player is not on the metal lid, say "The ladder is too high to reach." instead.

Carry out opening the fire ladder:
	if the player is on the metal lid, try silently getting off the metal lid.

Report opening the fire ladder:
	if the location is the back alley, say "You jump towards the ladder and catch hold of the lower step. The spring mechanism that holds the ladder up breaks with a snap and the ladder comes rumbling down." instead;
	if the location is the fire escape, say "You step on the ladder and the spring mechanism holding it up snaps. The ladder comes rumbling down, and you with it." instead.

Instead of closing the fire ladder:
	if the fire ladder is open, say "The spring mechanism is broken, so the ladder wouldn't stay closed.";
	if the fire ladder is closed, say "It's already closed. The problem here is to get it open."

Instead of climbing the fire ladder:
	if the location is back alley, try going up instead;
	if the location is fire escape, try going down.

Instead of jumping in the back alley when the fire escape ladder is closed:
	if the player is on the metal lid, try opening the fire ladder;
	otherwise say "You try to reach the fire escape ladder by jumping to it, but it's no use. The ladder is still too high to reach."

Instead of looking under the fire escape ladder, say "The ladder is almost directly above the waste container."

Instead of pulling or pushing the fire escape ladder, try opening the fire escape ladder.

Instead of throwing something at the closed fire escape ladder, say "The ladder needs weight on it to come down. [The noun] is too light, even if it would stick to it."



Part C - Club Zephyr

The area name of the Outside the Club is "Club Zephyr".
The area name of the Back room is "Club Zephyr".
["Inside Club" is such a pain in the ass it's area name must be declared after the room has been defined]

Chapter 1 - Outside the Club

Section I - Room

Outside the Club is a room. "[the description of the club facade]".
Understand "disco/zephyr" and "club zephyr" as Outside the Club.

Instead of listening while in the Outside the Club, say "There is a very audible 'thump thump thump' bass sound coming from the club."


Section II - Things

The camera is a thing. The camera can be incriminating evidence. The camera is not incriminating evidence. The description is "It's a small disposable camera that [if the camera is incriminating evidence]has a picture of Geigner and his girlfriend taken with it.[otherwise]you're supposed to use to take a picture of Geigner and his girlfriend."

[building]
The club facade is scenery in the Outside the Club. The description is "The Zephyr is a popular club for the young and trendy. It was opened a couple of years ago with a lot of media coverage and nowadays it is 'The Place to Be' as their slogan goes. The entrance is to the north." Understand "entrance/building" as the club facade.

Instead of entering the club facade, try going north.


Section III - Characters

[Violet makes her first appearance as the "mysterious woman in red" later in the club back room. Note that she is initially out of play until the scene in the back room ends.]
Violet is a woman and scenery. The description is "She wears the same red dress and has a small black purse next to her."

Understand "voice/sound" as Violet. 

Instead of driving to somewhere or home-going when Violet is in the Dodge:
	if the player is not in the Dodge
	begin;
		try entering the Dodge; [this triggers the scene]
	otherwise;
		say "Driving around right now would not be very wise.";
	end if.

Instead of exiting when the player is in the Dodge and Violet is in the Dodge, say "Leave the car when someone is there? No way."


Section IV - Scenes

The Stranger in my Car is a scene. The Stranger in my Car begins when the player is in the Dodge and Violet is in the Dodge. The Stranger in my Car ends when the Violet's Quest begins.

When the Stranger in my Car begins:
	say "[first person header]I was facing an another dead end. Maybe I could somehow get the mask Geigner wanted and make the trade. I would have to find this Greenfeld character who I had just posed as, find the mask and think of a way to get it in my hands.

I went to my car and sighed as I put the key in the ignition. Suddenly I smelled something resembling...
	
...strawberries.

'Hello there, [']Mr. Greenfeld[']', said a voice from the back seat.[first person footer]".

Instead of doing something other than greeting to Violet while the Stranger in my Car is happening, try greeting violet.
After greeting Violet while the Stranger in my Car is happening:
	say "[first person header]I took a glance at the rear view mirror. There she was, sitting right behind me, with her wry smile.

'Violet,' I greeted her, not really knowing what else to say.

'I know who you are,' she said. 'Or should I say, I know who you are not. There aren't many who would pull the same stunt as you did on Geigner.'

I didn't say anything. She spoke and I let her voice flow through my head like heavenly music. 'So, [']Greenfeld['], I have a proposition for you. Are you interested?'[first person footer]";
	now Violet carries the camera. 
[Giving Violet the camera now is a hack that triggers the next scene. It doesn't react to "when we have greeted Violet" or the like.]

[if we do something that should advance the game, we'll translate it to greeting violet that'll kick the next scene going.]

Instead of looking while the Stranger in my Car is happening, try greeting Violet.
Instead of doing something to the back seat while the Stranger in my Car is happening, try greeting Violet.
Understand "look [back seat]" as examining. [parses "look back" correctly]

Does the player mean greeting Violet: it is very likely.


The Violet's Quest is a scene.
The Violet's Quest begins when Violet carries the camera.
Violet's Quest ends positively when saying yes.
[Violet's Quest ends negatively when saying no.]

Instead of saying yes while the Violet's Quest is happening:
	say "[first person header]'I knew you'd agree', she said. 'You're an open book, mister.'
	
'Get to the point, lady', I snapped. She was getting nowhere with the banter.
	
'My husband is not in town only for trading moldy relics,' she said with disdain. 'He's cheating on me and he's here to visit his girlfriend. Again.' I found it strange for a man with such a wife to have a mistress but I said nothing.
	
She took a small disposable camera from her purse and handed it to me. 'I need proof. Take some pictures of him and the girl and meet me at the park...' She leaned forward and whispered in my ear, '...then I'll get you the coin.'
	 
A moment later she was gone.[first person footer]";
	now the player carries the camera;
	remove Violet from play.

Instead of saying no while the Violet's Quest is happening:
	say "'I'm sure you don't mean that. I know men like you... Always wanting to play games, never a straight answer from their mouth,' she says and looks at you wryly.";
[
	say "Violet lifts her eyebrows in surprise. 'I did not expect that from you, mister whoever-you-are. But have it your way.'

She opens the door and walks away.";
	remove Violet from play.] [This was just too much of a hassle to maintain.]






Chapter 2 - Inside Club Zephyr


Section I - Room

A room called Inside Club Zephyr is north of Outside the Club. "Even though it's not very late, the club is already quite full with partying people. The dance floor is on the center of the nightclub and surrounded by high tables without chairs, designed only for holding the drinks of the dancers. Red, green, and blue laser lights sweep through the air to the beat of the music and scatter in smaller rays every time they hit one of the disco balls." The printed name of Inside Club Zephyr is "Club Zephyr". The area name is "Club Zephyr".

Instead of listening to the Inside Club Zephyr, say "The endless and loud flow of techno beat never stops."
Instead of smelling the Inside Club Zephyr, say "The air is heavy and smells like a mixture of alcohol and sweat."


The atmospheric narrative of the Inside Club Zephyr is the Table of Club Atmosphere.

Table of Club Atmosphere
narrative
"With a subtle transition the techno beat changes to another tune."
"With a subtle transition the techno beat changes to another tune."
"With a subtle transition the techno beat changes to another tune." [multiplied so that it'd show up more probably than other options.]
"Someone bumps into you and spills some of his drink on you. 'Oh, sorry', he says and disappears into the crowd."
"A clubber orders a colorful drink and retreats to enjoy it with her friends."
"A drunken dancer gets on the stage and removes her shirt. She gets to dance for a few seconds before the security escorts her swiftly out." 
"The tune changes into another and is greeted with a cheer. It must be the hit of the day."


Instead of exiting while in the Inside Club Zephyr:
	try going south.

Instead of singing while the location is the Inside Club Zephyr, say "This is not a karaoke bar."

Check going north from the Inside Club Zephyr:
	if the Trading for the Coin has happened, say "The thug stands in your way. 'You've had your meeting,' the bartender tells you. 'Now bugger off.'" instead;
	if the player carries a weapon, say "The thug stops you in your tracks, frisks you and finds [the list of weapons carried by the player]. 

'Hey, no weapons if you want to see the boss. You'll have to leave [']em with me', the bartender says. 'Don't worry, I'll give them back when you ask for them.'" instead;



Before going south from the Inside Club Zephyr when the bartender has a weapon  for the first time , say "Hmm... Have you not forgotten something of yours? Well, maybe you'll remember it eventually."


Section II - Things

[backroom door]
The backroom door is a lockable locked scenery door. The backroom door is north of the Inside Club Zephyr. The description is "The door looks interesting, but the thug isn't exactly inviting you in." Understand "back room door" and "back/room door" as the backroom door.

Instead of unlocking keylessly the backroom door when the backroom door is locked, say "You bump into the thug. He's not moving."



[dancers]

The dancers are scenery in Inside Club Zephyr. The description is "Youngsters are dancing and having a good time on the dance floor." Understand "people/floor/youngsters/clubbers" and "dance floor" as the dancers.

Instead of dancing with yourself while in Inside Club Zephyr, say "You take a few steps on the dance floor but keep being ignored. You get an uncomfortable feeling of old age." 

Instead of dancing with the dancers while in Inside Club Zephyr, say "You're quite sure no-one wants to dance with you. You're here for other things, anyhow."

[music]

Loud techno music is scenery in Inside Club Zephyr. The description is "You don't recognize the tune - then again, you can't tell one techno song from another."

Instead of listening to the loud techno music, try listening instead.


[disco ball & lasers]
The disco ball is scenery in the Inside Club Zephyr. The description is "Tacky." Understand "laser/lasers/lights" as the disco ball.


[Tables]
The club tables are scenery in the Inside Club Zephyr. The club tables are plural-named. The description is "The tables are sticky from spilled drinks. No-one here uses coasters."

Instead of touching the club tables, try examining the club tables.

[bar]

The bar is scenery in the Inside Club Zephyr. The description is "The bar has rows upon rows of different alcolholic beverages."
Understand "drink/beer/wine/whisky/pint/ale/alcohol/glass/mug/bottle" as the bar. 

Instead of taking or buying the bar, say "Something for your dry throat would be nice, but you need to stay sharp. Maybe after all this is over." 


Section III - Characters

The bartender is a man in Inside Club Zephyr. "Near the northern part of the club a bartender is busy serving drinks to thirsty dancers. Behind him is a door guarded by a thug with fists bigger than your head." The description is "The bartender is in his late twenties and has a thin black moustache. He wears a blue tie-dyed aloha shirt and a heavy silver necklace chain. The customers are keeping him relatively busy." The bartender can be querying. The bartender is not querying.

Understand "barkeeper/barkeep/barman/mixologist" as the bartender.

Instead of greeting the bartender, say "'Yeah, what can I get you?'".

	

Table of bartender conversation topics
Topic		Answer		Delete
"[Geigner]"	"'Yeah, I know Geigner. He might be here. It all depends on who's asking.'"	1
"[Geigner]"	"'And who did you say you were again?'"	0
"[Geigner]"	"'Go on in, he's waiting for you', he says, nodding towards the back door."	0
"[Geigner]"	"'He's a busy man, mister. Get another appointment if you want to see him again."	0
"[thug]"	"'Tommy here just makes sure nobody does anything stupid. And at the moment, by nobody I mean you.'"	0
"door/backroom" or "back room"	"'Sorry, the backroom is for employees only.'"	0
"drink/beer/wine/whisky/pint/ale/alcohol/glass/mug/bottle"	"Something for your dry throat would be nice, but you need to stay sharp. Maybe after all this is over."	0
"club/zephyr/dance/dancer/dancers" or "club zephyr"	"'We're the number one in town. And as things are going, looks like we're going to be on top for a long time.'"	0
"[Bartender]"	"'My business is my own.'"	0
"himself"	"'My business is my own.'"	0
"moustache/beard/shirt/chain/necklace" or "aloha/tiedyed/tie-dyed/dyed shirt"	"'It's all part of the look, you dig?'"	0


After asking the bartender about a topic listed in the Table of bartender conversation topics:
	say "[answer entry][paragraph break]";
	if delete entry is 1, blank out the whole row.

After asking the bartender about something:
	if a random chance of 1 in 4 succeeds then say "The beat of techno drowns his answer." instead;
	if a random chance of 1 in 3 succeeds then say "'Look now, mate, if you don't want to order anything, I have customers to attend to.'" instead;
	if a random chance of 1 in 2 succeeds then say "You're about to ask, but he looks so busy you don't want to disturb him with trivialities." instead;
	say "'I'm sorry, but you have to speak up', the bartender shouts over the music and points to his ear." instead.

Understand "Greenfeld/Greenfield" and "I am Greenfeld/Greenfield" and "I'm Greenfeld/Greenfield" and "My name is Greenfeld/Greenfield" and "Mr./Mr Greenfeld/Greenfield" as "[greenfeld answer]".
 
Before asking the bartender about "[geigner]":
	now the bartender is querying; [starts the scene]
	
Asking for Back Room Access is a recurring scene. Asking for Back Room Access begins when the bartender is querying and the backroom door is locked. Asking for Back Room Access ends when the time since Asking for Back Room Access began is 2 minutes. [one prompt in between]

When Asking for Back Room Access begins:
	change the command prompt to "? ";
	now the bartender is not querying.

When Asking for Back Room Access ends:
	change the command prompt to ">";

Table of bartender's unknown quips
Quip
"'Never heard of [']im. Get lost', the bartender snaps at you."
"'Nah, don't know you.'"
"'Right. Now buzz off, Geigner has [italic type]real[roman type] appointments as well.'"
"'I see no reason why Geigner would want to see a total stranger like you.'"


After reading a command when Asking for Back Room Access is happening:
	if the player's command includes "geigner"
	begin;
		say "'Oh, a wiseguy, eh? I'm laughing my lungs out. Now get lost before I ask Tommy here to throw you out.'";
	otherwise;
		if the player's command includes "greenfeld/greenfield"
		begin;
			say "'Greenfeld, eh?' He stares at you blankly for some time, as if trying to remember. 'Yeah, boss mentioned you would show up.' He turns to the goon. 'Tommy, he's ok.'";
			now the backroom door is unlocked;
			choose row 2 in the Table of bartender conversation topics;
			blank out the whole row; [so that he won't ask our name again]	
		otherwise;
			choose a random row in the table of bartender's unknown quips;
			say "[quip entry][line break]";
		end if;
	end if;
	replace the player's command with "do nothing".

[
After answering bartender that:
	if there is an answer in row 1 of the Table of bartender conversation topics
	begin; [if there is a row 1, we haven't asked about geigner yet]
		say "The bartender doesn't seem to pay attention to you." instead;
	end if;]


Instead of giving a weapon to the bartender when the player carries the noun:
	if the backroom door is locked, say "Why would you give it away?" instead;
	say "The bartender takes [the noun] and puts it under the counter. 'When you're done with the boss, just ask for it and you'll get it back', he says.";
	now the bartender carries the noun.

Instead of taking a weapon when the bartender carries the noun and the player is in Inside Club Zephyr:
	say "[The bartender] takes [the noun] from under the counter and discreetly hands it to you.";
	now the player carries the noun.
	
Instead of asking the bartender about "kitchen/knife/weapon", try taking the knife.
Instead of asking the bartender about "kitchen/your/my knife", try taking the knife.

Understand "ask [bartender] about [weapon]" as asking it for.



[the thug]

The thug is a man in Inside Club Zephyr. The thug is scenery. Understand "gorilla/guard/goon/Tommy" as the thug. The description is "The thug is a mountain of muscle in a black suit that's a bit tight on the shoulders. He keeps his arms crossed and eyeballs you suspiciously."

Instead of asking the thug about something, say "There's no reaction. [The thug] keeps staring you down without an expression on his face."

Instead of telling the thug about something, say "[The thug] gives no reaction whatsoever."

Instead of answering the thug that something, say "[The thug] gives no reaction whatsoever."

Instead of attacking or stabbing the thug with, say "Are you crazy? [The thug] looks like he could break your neck with only his thumb and index finger."

Instead of pushing or pulling or turning the thug, say "You'd need a fork lift to move him."

[Instead of shooting someone with the colt while the location is Inside Club Zephyr, say "The club is too public place to start a shootout."]

Instead of threatening the thug with, say "[The thug] smiles. Looks like he's not easily intimidated."

Instead of giving a weapon to the thug, say "'Tommy doesn't need one of those,' the bartender laughs[if the backroom door is not locked]. 'Give it to me before you go see the boss,' he says[end if]."


Chapter 3 - Back room 


Section I - Room

The Back room is a room. The Back room is north of the backroom door. "The walls may have been white in the past but age and tobacco smoke have colored them pale yellow.

The furniture clashes in style with the rest of the room: an antique mahogany desk, fancily decorated chairs with cracked leather cushions, oil paintings in gold frames. They look expensive but out of place here."

Instead of listening while in the back room, say "A steady beat of trance music penetrates the back room door easily."

Instead of smelling while in the back room, say "The smell of cigars lingers in the air."

Instead of exiting while in the back room and the player is not on the fancy chair, try going south instead.

Before going south from the back room when the Trading for the coin has happened:
	say "'Goodbye, Mr. Greenfeld,' Geigner says as you are leaving. 'I hope to hear from you soon.'";
	choose row 3 in the Table of bartender conversation topics;
	blank out the whole row; [correct reply if the player queries about Geigner from him again]	


Section II - Things

[desk]
The antique mahogany desk is scenery in the back room. The description is "The dark mahogany desk is large and bulky. It's a wonder that they got it in the room in one piece.[paragraph break]On the desk you see [the list of things on the antique mahogany desk]."
Understand "table" as the antique mahogany desk.

[chair]
The fancy chair is supporter. The fancy chair is enterable scenery in the back room.
The description of the fancy chair is "The chair has round brown leather cushioning on the seat but none on the back of the chair. Carvings in the armrests and gold paint decorations on them make the chair look older than it probably is[if the player is on the fancy chair]. It's much more comfortable than what it looks[end if]."
Understand "cushioning/cushion/leather" as the chair.

Does the player mean entering the fancy chair: it is very likely.

[paintings]
Some oil paintings are scenery in the back room. The description is "The oil paintings on the walls are of several kind with no common theme. There are portraits of royalties, a landscape of a rye field, a lighthouse in a storm. The frames are unnecessarily large and decorative. No dogs playing poker, even though you were expecting them."
Understand "painting/wall/walls/portrait/portraits/field/royalties/lighthouse/storm/frame/frames" and "rye field" as oil paintings. 

[cigar box]
The cigarbox is closed openable container on the mahogany desk. Understand "cigar box" and "cigar/box" as the cigarbox. The printed name of the cigarbox is "cigar box".
Instead of taking the cigarbox, say "It'd be rude to take more than one."

Rule for printing room description details of the cigarbox: 
	say "[if the cigarbox is closed], which is closed[otherwise] with some cigars inside";
	omit contents in listing.
	
Does the player mean doing something to the cigarbox: It is very unlikely.

[cigar]
[
A cigar is a kind of thing.  In the cigarbox are 6 cigars. 
Instead of taking a cigar when the noun is in the cigarbox and we have taken a cigar more than once, say "It'd be rude to take more than one." [looks like "more than once" is necessary, since it counts the ongoing taking as one]

]
The cigar is in the cigarbox. The cigar can be unsmoked or smouldering. The cigar is unsmoked. The cigar has a number called length. The length of the cigar is 20. 

Instead of eating the cigar, say "That's not how they are used."


To say the size of the cigar:
	if the cigar is unsmoked begin;
		say "unsmoked";
		continue the action; 
	end if;
		
	if the length of the cigar is greater than 14 
	begin;
		 say "smoked just a bit";
		continue the action;
	end if;
		
	if the length of the cigar is greater than 7
	begin;
		say "about halfway through";
		continue the action;
	end if;
	
	if the length of the cigar is greater than 3
	begin;
		say "soon finished";
		continue the action;
	end if;
	say "almost completely smoked".

The description of the cigar is "It's a smallish cigar. Looks expensive. It's [the size of the cigar]."

After inserting the cigar into the cigarbox for the first time:
	say "'Changed your mind?' Geigner asks. 'Perhaps you're right, they may be too strong for you.'".
	
Smoking is an action applying to one thing.

Understand "smoke [the cigar]" as smoking.

Instead of burning the cigar, try smoking the cigar.

Check smoking the cigar:
	if the cigar is smouldering, say "You're already smoking the cigar." instead;
	if the location is not the back room, say "You don't have any matches.";

Carry out smoking the cigar:
	if the player is not carrying the cigar, try taking the cigar;
	say "You pat your pockets to find matches but find none. Geigner takes a matchbook from his shirt pocket and gives it to you. There's exactly one match left which you use to light the cigar. The matchbook you put in your pocket, out of habit.

The cigar burns with a rich, thick flavour. 'Exquisite, isn't it?' Geigner says, grinning.";
	now the cigar is smouldering;
	now the player has the matchbook.
	
Putting it out is an action applying to one thing.

Understand "put [the cigar] out" and "put out [the cigar]" as putting it out.

Check putting the cigar out:
	if the cigar is unsmoked, say "The cigar has not been lit yet." instead;
	
Carry out putting the cigar out:
	say "You put out the cigar and throw away the stub.";
	now the cigar is unsmoked;
	remove the cigar from play.

	
Every turn when the cigar is smouldering:
	decrease the length of the cigar by 1;
	if the length of the cigar is 2, say "There's not much left of the cigar you're smoking.";
	if the length of the cigar is 0
	begin;
		say "The cigar burns to the end until there's nothing left. You put it out and toss the stub.";
		now the cigar is unsmoked; [to prevent overflows]
		remove the cigar from play;
	end if.
	

[business card]
The business card is a thing. The description is "It's Geigner's business card with his name, address and telephone number." The printing of the business card is "Julian Geigner, Geigner Incorporated. The address and the phone number are for his out of town office."


Section III - Characters

Geigner is a man in the back room. "Behind the desk sits [Geigner]." The description is "Geigner is dressed in an expensive three-piece suit. He sits there in his chair looking like the man who owns the world."
Understand "Julian/Geigner" and "Julian Geigner" and "large-built/largebuilt/large/big man" and "large-built/largebuilt/large" as Geigner.
Understand "Julian/Geigner/thief/tycoon/businessman" and "Julian Geigner" as "[Geigner]".
The printed name of Geigner is "a large-built man".

Table of Geigner conversation topics
Topic		Answer		Delete
"[Geigner]" or "himself"	"'Well, Mr. Greenfeld, I am not a man who wants to make a number out of himself', he says. 'I am just a businessman and a fellow collector.'"	0
"goon/thug/tommy"	"'I hope Tommy didn't give you any trouble. He's a good boy. Not the sharpest tool in the shed but a good boy nevertheless.'"	0
"backroom/antiques/antiquities/chair/chairs/table/desk" or "back room"	"'I am, as they say... a [italic type]connaisseur[roman type] when it comes to antiquities.'"	0
"[professor]"	"Geigner looks at you silently, squinting his eyes. After a moment he says, 'I see that the news of my little run-in with the old man has spread already.'[paragraph break]He takes a smoke from his cigar before continuing. 'There was some misunderstanding on his part of the legitimate ownership of the coin. I believe the matter has been or at least will be settled.'"	0
"violet/wife/woman/lady"	"'You noticed my wife. People usually do,' he says and laughs heartily[if the mysterious woman in red is in the location]. She raises an eyebrow briefly, but doesn't otherwise react[end if]. 'Yes, she is the light of my life.'"	0
"hotel/falcon" or "hotel falcon"	"'Ah, you are familiar with my business in the city,' Geigner says, delighted that you brought up the subject. 'Unfortunately the Falcon is by far not the crown jewel of my ventures.'"	0
"club/zephyr/disco" or "club zephyr"	"'Yes, look at Zephyr! The sun has not even set but we're already full with customers. In two hours from now the last ones on the line waiting to get in won't see where the line ends. The Zephyr has been one of my better ventures in this city.'"	0
"mask" or "egyptian mask"	"[if Trading for the Coin has ended]'I know the mask must be of value to you. I also known the coin is of value. To me, that sounds like a fair trade.'[otherwise]'Excuse me?' Geigner says."	0


After asking Geigner about a topic listed in the Table of Geigner conversation topics:
	say "[answer entry][paragraph break]";
	if delete entry is 1, blank out the whole row.

[After asking Geigner about "coin/item/object/artifact": See Section IV - Scenes]

After asking the Geigner about something:
	if a random chance of 1 in 4 succeeds then say "'I thought you came here to talk business', Geigner replies. 'Perhaps we could get to the point already?'" instead;
	if a random chance of 1 in 3 succeeds then say "Geigner concentrates momentarily on his cigar and doesn't hear your question." instead;
	if a random chance of 1 in 2 succeeds then say "You're about to ask, but then the question starts to seem silly and you decide not to." instead;
	say "'Yes, well, I don't know about that', he says." instead.


[Violet as the Mysterious Woman - note that as far as the game mechanics go, the mysterious woman in red is NOT the same character as Violet. It's much easier to have a different "actor" for her in the back room and later in the car.]
The mysterious woman in red is a woman in the back room. "[A mysterious woman in red] sits on a chair next to [Geigner]." The description is "As you said - she's a real stunner.";

Instead of examining the mysterious woman for the first time: [won't work if you use "the mysterious woman in red", probably the "in" is what confuses it]
	say "[first person header]The woman was a piece of heaven on earth. She had the looks of an angel dressed as the devil. Her fiercely red dress complimented her long straight hair and hazel eyes that could melt steel. She was a woman any man could fall for and never get up again. What she was doing with Geigner, I had no idea.
	
She looked at me and smiled, smiled like a cat would smile to a mouse.[first person footer]";

Instead of asking the mysterious woman about, say "Geigner would surely find it inappropriate if you conversated with the lady instead of him."


Section IV - Scenes

[The scene structure in the back room is as follows:

WAITING TO BE SEATED
The player can't do anything but examine the place before he sits down.

PLAYING IT BOGART
The player can chit-chat with Geigner. When he asks about the coin, Violet leaves and the scene ends.

TRADING FOR THE COIN
Geigner offers to trade the coin for the mask. After this the scene ends and the player can leave, but not return.
]

The Waiting to be Seated is a scene. The Waiting to be Seated begins when the player is in the back room for the first time. The Waiting to be Seated ends when the player is on the fancy chair.

When the Waiting to be Seated begins:
	say "[first person header]Geigner was waiting for me in the back room. He was a large fellow, not muscular like the goon outside but like a man who never missed his meal. Behind his tacky antique table he leaned back self-confidently. 'Mr. Greenfeld, I presume. Please, sit down.'

If Geigner thought I was Greenfeld, that's how I'd have to play my cards.[first person footer]";
	change the printed name of Geigner to "Julian Geigner";

Instead of doing something except examining, looking or entering while Waiting to be Seated is happening:
	say "Geigner looks at you, expecting you to sit down."

Instead of asking or telling or answering while Waiting to be Seated is happening:
	say "'Have a seat, Mr. Greenfeld, and we'll talk', Geigner says."

Instead of asking or telling or answering while Trading for the Coin is happening:
	say "'We can get to that subject later', Geigner says. 'Now, are you interested in the trade or not?'";	

Instead of going while Waiting to be Seated is happening:
	say "You can't leave now or you'll never get the coin back!".
	

Instead of giving the room 405 key to Geigner, say "You should keep that to yourself. He would probably get pretty mad if he saw you have it."

Instead of giving the calendar to Geigner, say "You should keep that to yourself. He would probably get pretty mad if he saw you have it."


[Playing it Bogart]

The Playing it Bogart is a scene. The Playing it Bogart begins when the Waiting to be Seated ends. Playing it Bogart ends when the mysterious woman in red is not in back room.

When the Playing it Bogart begins:
	say "[first person header]'I am very pleased you could come in such a short notice, Mr. Greenfeld', Geigner said. 'I understand you've met my wife already...'

My heart skipped a beat. I looked at the lady, who looked back at me with a cold, cruel smile that meant she knew she could crush me anytime with just one word. For whatever reason she decided just to nod briefly.

Geigner opened the cigar box, took a cigar and pushed the box across the table. 'Please, help yourself.'[first person footer]";
	now the cigarbox is open.

[After doing something other than taking while time since Playing it Bogart began is one minute and the noun is not a cigar:
	say "'Not a smoker, eh? Suit yourself', Geigner says[if the cigarbox is open] and closes the cigar box[end if].";
	now the cigarbox is closed.]

Instead of asking Geigner about "item/artifact/object/coin" while the Playing it bogart is happening:
	say "[first person header]'I believe you have gotten your hands on something I'm interested in', I proclaimed. 'A roman coin.'

Geigner grunted and turned towards the girl. 'Violet, dear, we're about to talk business and I don't want you to get bored. Go get yourself another martini or something.' He took out his wallet and put a ten dollar bill on the table. Violet glanced at the money, turned her head very slowly towards Geigner and stared at him icily. Geigner leaned back with a self-satisfied smirk of an owner.

Violet got up and walked past me far closer than necessary, with her hips swinging from side to side. The strawberry scent of her perfume took hold of me and didn't let go until long after she had left the room. 

'Now then,' Geigner said. 'I had a feeling the item would interest collectors. Maybe you would be interested in a trade, hmm?'[first person footer]";
	remove the mysterious woman in red from play.


[Trading for the Coin]

Trading for the Coin is a scene. Trading for the Coin begins when the Playing it Bogart ends. Trading for the Coin ends when Violet is in the Dodge.

Instead of asking Geigner about "trade" while Trading for the Coin is happening, try saying yes.

Instead of saying yes while Trading for the Coin is happening:
	say "[first person header]'Excellent.' Geigner put the cigar in his mouth and lit it slowly.[paragraph break]'I've been going with this Roman slash Greece theme but frankly, it bores me,' he told me. 'I'm starting a new collection and I'm thinking Egypt this time. I've been looking for a good item to get it started.'[paragraph break]Geigner opened the top drawer of his desk and reached for something. He pulled out a book, titled 'Catalogue of Historical Egyptian Religious Clothing'. Running through the pages quickly to find an earmarked page, he opened it and showed it to me. The page had a picture of a plain silver mask with a flat top and almond shaped eyes, as one would seen in pictures of Egyptian art.[paragraph break]'So here's the deal. I know you have one of these and I'm willing to trade the coin for it.' Geigner took a deep breath from the cigar and tried to blow smoke rings, failing miserably.[paragraph break]'I need some time to make the arrangements', I said. And by 'arrangements' I meant thinking how the hell I would get the thing in my hands. 'Fine', he replied, 'here's my card. I'll write down the number for the hotel I'm staying in.' He took a business card and a pen from his breast pocket and wrote on the backside of the card. 'Call me when you're ready to make the trade.'[first person footer]";
	now the player carries the business card;
	now Violet is in the Dodge.

Instead of saying no while Trading for the coin is happening:
	say "'I know you don't mean that', Geigner says. 'At least you could hear me out, hmm?'".

Instead of getting off the chair when the Trading for the Coin has not ended:
	say "You're about to get off the chair, but Geigner stops you. 'Mr. Greenfeld! I didn't think we'd be finished yet,' he says."

When the Trading for the Coin ends:
	remove the BMW from play.	[geigner goes back to the hotel, then drives to the Veiled Rose. I realize there are some continuity issues here, but this is good enough.]


Part D - Veiled Rose

The area name of the Restaurant parking lot is "Veiled Rose".
The area name of the Behind the restaurant's window is "Veiled Rose".
The area name of the Veiled Rose foyer is "Veiled Rose".
The area name of the Dining area is "Veiled Rose".

Restaurant area is a region.

Dinner for Three is a scene. Dinner for Three begins when the player is in the Restaurant parking lot and Violet's Quest has happened. [The scene starts when we have agreed to take Violet's mission]

[When does Geigner arrive to the restaurant?
a) If the player has done nothing to the hotel room (not suspicious of theft, not missing his calendar): 2 turns after the player arrives.
b) If the player has removed the calendar from the hotel room, but done nothing else (not suspicious of theft, is missing his calendar): 10 turns.
c) If the player has broken the hotel room window but not taken the calendar (is suspicious of theft, not missing his calendar): doesn't show up, sends message after 10 turns.
d) If the player has broken the hotel room window or left it open and taken the calendar or the BMW has slashed tires (is suspicious of theft, is missing his calendar): doesn't show up at all.
]

Definition: Geigner is suspicious of theft if the hotel room window is broken or (the hotel room window is open and the location of the pocket calendar is not the Geigner's room).
Definition: Geigner is missing his calendar if the location of the pocket calendar is not the Geigner's room.

Geigner's Arrival to Restaurant is a scene. 
Geigner's Arrival to Restaurant begins when (Geigner is not suspicious of theft and Geigner is not missing his calendar and the time since Dinner for Three began is 4 minutes and the BMW tires are intact) or (Geigner is not suspicious of theft and Geigner is missing his calendar and the time since Dinner for Three began is 10 minutes and the BMW tires are intact).

Geigner's Arrival to Restaurant ends when Geigner is in the Dining area.

When Geigner's Arrival to Restaurant begins:
	now Geigner is in the Restaurant parking lot;
	now BMW is in the Restaurant parking lot; 
	now the initial appearance of the Dodge is "The Dodge is parked two spaces from Geigner's BMW.";
	if the location is the Restaurant parking lot,
		say "Geigner pulls in to the parking lot. You hide behind the Dodge and remain unseen.";
	if the location is the Behind the restaurant's window,
		say "You see Geigner pulling in to the parking lot.";
	now the initial appearance of Geigner is "Geigner has just pulled in to the parking lot with his BMW." 

Every turn while Geigner's Arrival to Restaurant is happening:
	if the time since Geigner's Arrival to Restaurant began is 0 minutes
	begin;
		if the player is in the Restaurant parking lot or the player is in the Behind the restaurant's window,
			say "Geigner gets out of the BMW and straightens his jacket.";
		now the initial appearance of Geigner is "You see Geigner here.";
	end if;
	if the time since Geigner's Arrival to Restaurant began is 1 minute
	begin;
		if the player is in the Restaurant parking lot or the player is in the Behind the restaurant's window,
			say "Geigner walks to the restaurant entrance and goes in.";
		now Geigner is in the Veiled Rose foyer;
	end if;
	if the time since Geigner's Arrival to Restaurant began is 2 minutes
	begin;
		now Geigner is in the Dining area; [has to be here to avoid "you see geigner here" messages.]
		if the location is the Veiled Rose foyer
		begin;
			say "Suddenly you see Geigner coming in. You turn away and hope he hasn't recognized you - and looks as if he hasn't. He starts talking to the head waiter and you decide it'd be best to scram.";
			try going east;
		end if;
		if the location is the Dining area
		begin;
			say "Over [Emmy]'s shoulder you see Geigner coming in to the restaurant. Him seeing you here can only spell trouble.[if the player is on the dining chair] You excuse yourself to the bathroom.[end if] There's no way around Geigner when he's in the foyer, but you stay lurking around so you can leave when the opportunity comes.

After some heated argument with the head waiter, Geigner finally starts towards[Emmy]. You decide this is your chance and get out.";
			try going north;
		end if;
		if the location is the Behind the restaurant's window, say "Geigner comes to the restaurant and talks to the head waiter for a while. He then makes his way to the dining area to meet [Emmy].";
		if the printed name of Emmy is "the lonely woman", now the printed name of Emmy is "Geigner's girlfriend";	
	end if;

When Geigner's Arrival to Restaurant ends:
	if the location is Behind the restaurant's window or the location is Veiled Rose foyer, say "Geigner sits down on the table.". 


Chapter 1 - The Restaurant Parking Lot

Section I - Room

Restaurant parking lot is a room. "The restaurant is one of the better ones in the city, themed after 19th century England. Even the parking lot has been decorated according to the theme - the street lamps resemble old-fashioned gas lamps and the ground has been paved with cobblestones.

The entrance to the restaurant is to the west and a small path leads southwest behind the window."

The Restaurant parking lot is in the Restaurant area.

Understand "veiled/rose" and "veiled rose" as the restaurant parking lot.


Section II -Things

[facade]
The restaurant entrance is scenery in the Restaurant parking lot. Instead of examining the restaurant entrance, try looking. The printed name of the restaurant entrance is "restaurant".

Instead of entering the restaurant entrance, try going west.

Does the player mean entering the restaurant entrance: it is very likely. 

[scenery]
The old-fashioned street lamps are plural-named scenery in the Restaurant parking lot. The description is "The street lamps are made to look like gas lamps but they're normal fluorescent lights, of course."

Instead of climbing the old-fashioned street lamps, say "Climbing is fun, but other than for recreation, there's no reason to climb the lamps."

[cobblestones]
The cobblestones are plural-named scenery in the Restaurant parking lot. The description is "They look nice, but are a pain to walk on." Instead of taking the cobblestones, say "The stones are wedged to the ground pretty tight. There are no loose stones around." Understand "stone/rock/stones/cobble" and "cobble stones" as the cobblestones.

[path]
The path behind the restaurant is scenery in the Restaurant parking lot. The description is "A small path leads behind the restaurant. It doesn't look like it's used much, probably mainly for maintenance purposes."



Chapter 2 - Behind the Restaurant's Window

Section I - Room

Behind the restaurant's window is southwest of the Restaurant parking lot. "There's a nice spot behind cranberry bushes to see inside. It's unlikely anyone inside can see you unless they know what they're looking.

[the description of the restaurant window]".
Behind the restaurant's window is in the restaurant area.

Instead of going to behind the restaurant's window when the Violet's quest has not happened, say "There's a small path leading southwest behind the dining area's window, but there's no reason to go there. You'd get yourself all tangled in the bushes."

Instead of going outside when the location is the Behind the restaurant's window, try going northeast instead.


Section II -Things

[window, bushes, patrons, lady, etc]

[window]
The restaurant window is scenery in the Behind the restaurant's window. The description is "Through the window you see people enjoying their meals.[if Emmy is in the Dining area and Geigner is not in the Dining area] A lonely woman sits in a table near the window.[end if][if Emmy is in the Dining area and Geigner is in the Dining area] Geigner is in the dining area with his girlfriend.[end if ]". Instead of searching the restaurant window, try examining the restaurant window.

Instead of opening or entering the restaurant window, say "It's not the kind that opens."

Instead of breaking or attacking the restaurant window, say "Breaking the window would just create an unnecessary hassle."

[bushes]
The cranberry bushes are plural-named scenery in the Behind the restaurant's window. The description is "The cranberry bushes behind the window offer an excellent hiding place." Understand "bush/berries/berry/cranberries" and "berry/cranberry bush/bushes" as the cranberry bushes.

Rule for implicitly taking the cranberry bushes when eating:
	say "There are no berries and the other parts are inedible."; [can't use "instead of eating", since "instead of taking" fires up first]


Instead of taking or pushing or pulling or turning the cranberry bushes, say "This is not the time for gardening!".

[patrons]
The restaurant patrons are scenery in the Behind the restaurant's window.

[dummies]
The dummies-behind-window are scenery people in the Behind the restaurant's window. The description is "[if Geigner is not in the Dining area and Emmy is not in the Dining area]You can't see any such thing.[end if][if Geigner is not in the Dining area and Emmy is in the Dining area]In the restaurant [an Emmy] sits alone, sipping water.[end if][if Geigner is in the Dining area]Geigner is in the restaurant with his girlfriend.[end if]".
Understand "Geigner/woman/Emmy/couple/man/woman/girlfriend" as the dummies-behind-window.

Instead of doing something other than examining or photographing to the dummies-behind-window, say "The people in the restaurant are out of reach."


Section IV - Scenes

[Photographing rules are here.]

Paparazzing is an action applying to nothing.

Carry out paparazzing:
	now the camera is incriminating evidence.

Instead of photographing dummies-behind-window:
	if Emmy is not in the Dining area, say "The opportunity for that has already passed." instead;
	if the location is not the Behind the restaurant's window and the location is not the Veiled Rose foyer and the location is not the Dining area, say "You can't see her from here." instead;
	if Geigner is not in the Dining area, say "Violet needs proof; a photograph of a woman sitting alone isn't very incriminating." instead;
	try paparazzing instead.

Instead of photographing Geigner:
	if the location is not in the Restaurant area or Geigner is not in the Restaurant area, say "That's the plan, yes, but Geigner isn't here now." instead;
	if Geigner is not in the Dining area, say "You have to photograph Geigner together with his girlfriend or the photo has no value at all.";
	if the location is not the Behind the restaurant's window and the location is not the Veiled Rose foyer, say "You can't see him from here." instead;
	try paparazzing instead.
	


[when we have photographed the couple]

Geigner Gets Angry is a scene. [Geigner Gets Angry begins when we are photographing Emmy or we are photographing Geigner.]
Geigner Gets Angry begins when the camera is incriminating evidence.
Geigner Gets Angry ends when the player is in the Dodge.

When Geigner Gets Angry begins:
	say "*click* [bold type]*FLASH*[roman type]

The camera has a built-in flash which, as it seems, can't be disabled. Geigner's head swivels towards you. [if the player is in Behind the restaurant's window]You lip-read him mouth 'Greenfeld' in surprise, then he[otherwise]'Greenfeld!' he shouts and[end if] jumps up from the table.

Think fast!";

When Geigner Gets Angry ends:
	now the player is in D3.

Instead of going when the Geigner Gets Angry is happening:
	if ( the noun is east and the location is the Veiled Rose foyer ) or ( the noun is northeast and the location is Behind the restaurant's window )
	begin;
		now the player is in the Restaurant parking lot;
		now Geigner is in the Restaurant parking lot;
		now the initial appearance of Geigner is "Geigner bursts out of the restaurant mad as hell. He reaches for something in his pocket - it turns out to be a pistol.";
	otherwise;
		continue the action;
	end if;

Instead of attacking Geigner when the Geigner Gets Angry is happening:
	if the noun is Geigner, say "No way. He'd shoot you before you'd get even near.";

Instead of stabbing the BMW with the kitchen knife when the Geigner Gets Angry is happening:
	say "You take the knife and take a sharp stab at Geigner's car. The front wheel explodes into shreds.";
	now the BMW tires are slashed.

Instead of doing something other than going or looking or attacking or entering or or exiting or stabbing when the Geigner Gets Angry is happening:
	say "There's no time for that. Geigner is about to come after you. You need to move!";
	
Instead of entering the restaurant entrance when the Geigner Gets Angry is happening:
	say "You can't go face Geigner, he'll shoot you full of holes!";
	
Instead of driving to when the Geigner Gets Angry is happening and the location is the Restaurant parking lot, try entering the Dodge instead.

Check entering the Dodge while the Geigner Gets Angry is happening:
	if the BMW tires are slashed
	begin;
		say "[first person header]If Geigner wasn't furious before, the slashed tire certainly pushed him over the edge. I dived in the Dodge and drove away. He took a random shot at me, but it went wide.
		
I had the camera with the picture Violet wanted. Soon Geigner would lose even more than a tire. Maybe he'll learn that you can't win every time.

[bold type]My name is Jack Mills. I'm a private eye.[roman type][first person footer]";
		end the game in victory;
		stop the action;
	end if;
	
Report entering the Dodge while the Geigner Gets Angry is happening:
	say "[first person header]I ran to the Dodge and dived in. I cursed for not having my gun with me - now would've been a perfect time to use it.

I started the car and took off. Geigner pointed his piece at me but didn't have time to fire before I was already out of the way. Moments later his BMW shot into sight. 

He might've had the horsepowers, but it was my city. I knew every street corner better than the back of my hand. He'd have to drive like the devil if he wanted to catch me.[first person footer]" instead.


Chapter 3 - The Veiled Rose foyer

Section I - Room

The Veiled Rose foyer is west of the Restaurant parking lot. South of the Veiled Rose foyer is nowhere.
[for the sake of simplicity (well, actually because I'm too lazy to think of a better solution) the dining area is mapped only after we have access to it.]

The Veiled Rose foyer is in the Restaurant area. The description is "Inside the restaurant you feel out of place. Patrons in the dining area to the south are the kind of people you normally don't spend time with."

Instead of going south while the location is the Veiled Rose foyer and the Dining area is not mapped south of the Veiled Rose foyer, say "[The head waiter] stops you. 'I'm sorry sir, we are booked full for tonight. If you have a reservation you will be assigned to your table.'"

Instead of going south while the location is the Veiled Rose foyer and Geigner is in the Restaurant area, say "No, it's way too dangerous to face Geigner! You'll have to find another way."

Instead of exiting while in the Veiled Rose foyer, try going east instead.


Section II - Things

The reservation book is scenery in the Veiled Rose foyer. The description is "The reservation book is full of names, times and table numbers." The printing is "The head waiter is blocking the view - you can't make out the names on the list."

Instead of taking the reservation book, say "[The head waiter] doesn't leave the book from his sight."


Section III - Characters

The head waiter is a man in the Veiled Rose foyer. "The head waiter is assigning seats to the patrons." The description is "The head waiter is dressed in a waistcoat that has a pocket watch attached to it in a gold chain. He looks busy, mainly assigning seats to customers but occasionally giving orders to other waiter."

Table of Head Waiter conversation topics
Topic		Answer		Delete
"veiled rose" or "restaurant" 	"'We are the best. And we take pride in being the best.'"	0
"[professor]" or "Greenfeld/Greenfield" or "[Geigner]"	"'I'm sorry, but I don't know anyone with that name.'"	0
"e"	"[The head waiter] sneers. 'This is not the kind of restaurant where people would use cover names', he says."	0


After asking the head waiter about a topic listed in the Table of Head Waiter conversation topics:
	say "[answer entry][paragraph break]";
	if delete entry is 1, blank out the whole row.

Instead of asking the head waiter about "table/reservation/seat":
	if the dining area is mapped south of Veiled Rose foyer
	begin;
		say "'I hope everything is to your satisfaction,' [the head waiter] says politely." instead;
	end if;
	say "'Of course, sir,' [the head waiter] says and opens the reservation book. 'And under what name is your reservation?'";
	now the head waiter carries the reservation book. [kickstarts the Asking for Table Reservation scene.]

Instead of asking the head waiter about,
	say "He is too busy to answer you."


Section IV - Scenes

[asking for table reservation]
Asking for Table Reservation is a recurring scene. Asking for Table Reservation begins when the head waiter carries the reservation book. [the waiter never carries the reservation book if we already have given the right answer]

Asking for Table Reservation ends when the time since Asking for Table Reservation began is 2 minutes. [=the player gets one prompt during this time.]

When Asking for Table Reservation begins:
	change the command prompt to "? ".

After reading a command when Asking for Table Reservation is happening:
	if the player's command includes "Geigner/Geigner's/Geigners"
	begin;
		if the Violet's Quest has not happened
		begin;
			say "The head waiter goes through the today's entries in the reservation book. 
			
'Yes, a table for two for Mr. Geigner... Ah, you are a bit early. The table is not free yet, and we're quite full today, so I must ask you to come back later.'";
		end if;
		if the Violet's Quest has happened
		begin;
			say "The head waiter goes through the entries in the reservation book.
			
'Yes, that is right, Mr. Geigner, table 7. This way, if you may,' he says, pointing south towards a table where the lonely woman is sitting. 'Your companion is already waiting for you.'";
			now the Dining area is mapped south of Veiled Rose foyer;
		end if;
	otherwise;
		say "[The head waiter] runs his finger through the entries in the reservation book. 'I'm very sorry, sir, but I can't find any reservations under that name for today.'";
	end if;
	replace the player's command with "do nothing". [stops the engine from interpreting the answer as a command but still advances the time so that the scene can end.]

When Asking for Table Reservation ends:
	now the reservation book is in the Veiled Rose foyer;
	change the command prompt to ">".
	

Chapter 4 - Dining area

Section I - Room

The Dining area is a room. North of the Dining area is the Veiled Rose foyer. [The connection is initially one-way; see chapter 3.]

Dining area is in the Restaurant area.

Instead of exiting in the the Dining area, try going north instead.

Instead of dancing with when the player is in the Dining area, say "It's not that kind of restaurant."


Section II - Things

[table]
The dining table is scenery in the Dining area.

[chairs]
The dining chair is a supporter in the Dining area. The dining chair is scenery and enterable. Understand "chairs" and "dining chairs" as the dining chair. 

Does the player mean entering the dining chair: it is very likely.

[candle]
The candle is scenery on the dining table. The description is "The candle is throwing a soft, pleasant light on the table."

[the red rose]
[The red rose is carried by the rose girl.]
The red rose is a thing. The description is "The rose is young and the petals have barely opened."
Understand "flower" as the red rose.

Instead of smelling the red rose, say "It smells delightful."

The rose girl carries the red rose.

Does the player mean buying or taking the red rose: it is likely.

Instead of taking the red rose when the rose girl has the red rose, try buying the red rose.

Instead of buying the red rose:
	if the player is not carrying the loose change,
		say "You'd buy a rose, but you don't have any money with you.";
	if the player is on the dining chair
	begin;
		if the Rose Girl Approach is happening, say "You count the coins you have and buy a rose from the girl.";
		otherwise say "You call the girl selling roses[if the Rose Girl Approach has happened] back[end if] and buy a rose from her with the coins in your pocket.";
		now the player carries the red rose;
	end if;

[crowd]
The other diners are scenery in the Dining area. Understand "others/crowd/people/patrons/customers" as the other diners. The description is "The other diners are chatting and enjoying their evening. They are mostly much better dressed than you."


Section III - Characters

[emmy]

Emmy is a woman in the Dining area. "In one of the tables, [Emmy] sits sipping water now and then." The description is "The woman is wearing a blue evening dress. Her medium length sand-colored hair is combed and pinned neatly.

She's a very plain looking woman. Usually men have wives like her and mistresses like Violet.".
The printed name of Emmy is "the lonely woman". [since we don't yet know if she's Geigner's girlfriend.]

Understand "lonely woman/girl" and "lonely/girlfriend/mistress" and "geigner's girlfriend/mistress" as Emmy.

Emmy has a number called the charmedness. [me fail English? that's unpossible!]
The charmedness of Emmy is 1. 
[At one point the player was supposed to be able to seduce Emmy and therefore gain access to the coin "from the inside" - this was later dropped due to time constraints and because it would be very tedious work to make the scene credible. At the moment it serves no purpose.]

Definition: Emmy is befriended if the printed name of Emmy is "Emmy". [not a very good coding practice this here]


Table of lonely woman conversation topics
Topic		Answer		Delete
"[Geigner]" or "boyfriend/lover"	"'Oh, did he send another goon to tell me he'll be late? Or is he about to show up at all?' The woman sneers and crosses her arms in frustration."	0
"Violet/wife" or "Geigner's wife"	"You don't get to finish your sentence before she snaps at you: 'Now what are you talking about? Who are you, anyway? I'm waiting for someone, if you don't mind.'"	0

Table of befriended Emmy conversation topics
Topic		Answer		Delete
"[Geigner]" or "boyfriend/lover"	"'Julian is a very sweet man,' she says. Obviously she sees the world through pink-colored glasses.[paragraph break]'He just happens to be late. Very often', she sighs."	1
"[Geigner]" or "boyfriend/lover"	"'I understand you work for him? You wouldn't be here if you didn't.'"	0
"coin/item/object/artifact/antique/antiques/mask"	"'Julian loves all those dusty old things. They're not for me, though,' she says indifferently."	0


Instead of asking befriended Emmy about a topic listed in the Table of befriended Emmy conversation topics:
	say "[answer entry][paragraph break]";
	if delete entry is 1, blank out the whole row.

Instead of asking Emmy about a topic listed in the Table of lonely woman conversation topics when Emmy is not befriended:
	say "[answer entry][paragraph break]";
	if delete entry is 1, blank out the whole row.

Greeting Emmy and asking Emmy about "[Emmy]" and asking Emmy about "yourself/herself" and asking Emmy about "[yourself]" and entering the dining chair is introducing yourself to Emmy.





Before introducing yourself to Emmy for the first time:
	now the player is on the dining chair;
	now the printed name of Emmy is "Emmy";
	say "[first person header]I sat on the chair opposite to the girl and leaned towards her. 'Hello there, beautiful,' I said. 'My name is Jack Mills.'
	
'I'm Emmy,' she replied, a bit confused. 'I'm sorry, but...'

I had read her right. My bold attitude had gotten her attention.[first person footer]" instead;

	
Asking befriended Emmy about "Violet/wife" is revealing the wife.
Asking befriended Emmy about "Geigner's wife" is revealing the wife.
Before revealing the wife:
	say "[first person header]'I know that look,' I said. It was the look of a woman who wanted to be in love but deep inside knew it was the wrong man.

'Oh really?' Emmy asked. 'Yes,' I replied, 'it's the look of a woman in love.' She blushed slightly. 'That's why it breaks my heart to be the one to tell you this.'

I told her a story of a foolish young girl who fell in love with a married man. I told of a manipulative, pompous man, who took women for granted and threw them away. Needless to say I added a thing or two for flavor, but it worked. She was in tears.

I took her to my arms. 'Now now there, don't cry. No use crying over the bastard. I have a plan that'll make him hurt, just like he has hurt you. There's this antique coin he has...'

[bold type]My name is Jack Mills. I'm an agent of vengeance.[roman type][first person footer]";
	end the game in victory;

Instead of asking befriended Emmy about:
	if a random chance of 1 in 2 succeeds, say "You're about to ask, but then the question starts to seem silly and you decide not to." instead;
	say "'I'm sorry, I wasn't listening,' [Emmy] says." instead.

Instead of asking Emmy about:
	if a random chance of 1 in 2 succeeds, say "The woman tries to ignore you." instead;
	say "'Excuse me, but I'm waiting for someone. Could you please leave?' she asks.".


[rose girl]
The rose girl is a woman in the Dining area. "A flower girl is going from table to table selling roses." Understand "flower girl" as the rose girl.


[crumpled piece of paper]
The crumpled piece of paper is a thing. The printing of the crumpled piece of paper is "The paper reads: [paragraph break]'Something very important has come up, I have to cancel tonight. I'm sorry.[line break]xxx Julian'";


Section IV - Scenes

Message to Emmy is a scene.
Message to Emmy begins when the time since Dinner for Three began is 10 minutes and Geigner is suspicious of theft and Geigner is not missing his calendar.
Message to Emmy ends when the time since Message to Emmy began is 4 minutes.

When Message to Emmy begins:
	if Emmy is befriended and the location is the Dining area, say "A waiter brings a folded piece of paper to [Emmy]. She reads it and crumples it immediately, frowning.

'That lousy bastard, I should've guessed already', she spits.";
	now the crumpled piece of paper is on the dining table;
	decrease the charmedness of Emmy by 1.

[Instead of comforting Emmy when Message to Emmy is happening:
	increase the charmedness of Emmy by 2;
	say "You do your best to comfort her.".]

The Rose Girl Approach is a scene.
The Rose Girl Approach begins when the player is on the dining chair and Emmy is befriended and a random chance of 1 in 3 succeeds.
The Rose Girl Approach ends when the time since the Rose Girl Approach began is 3 minutes.

When the Rose Girl Approach begins:
	say "The flower girl comes to your table. 'A rose for the lady, perhaps?' she asks you.";
	if the charmedness of Emmy is greater than 3, say "[paragraph break]Emmy looks at you and is about to say something. She changes her mind and looks away shyly.";

When the Rose Girl Approach ends:
	if the Rose Girl is carrying the red rose, say "Thinking that she won't be getting the sale this time, the flower girl moves on to the next table.";


Part E - The Chase

Chapter 1 - Map layout

Section I - Rooms

[root level]
D3 is a room. The printed name of D3 is "Maple and Apple".

[1st level]
C3 is west of D3. The printed name of C3 is "Maple and Garden".
D2 is north of D3. The printed name of D2 is "Pine and Apple".
E3 is east of D3. The printed name of E3 is "Maple and Park".

[2nd level]
C4 is south of C3. The printed name of C4 is "Cedar and Garden".
C2 is west of D2. The printed name of C2 is "Pine and Lake".
B3 is west of C3 and southwest of C2. The printed name of B3 is "Maple and Hill".
D1 is north of D2. The printed name of D1 is "Oak and Apple".
E2 is north of E3. The printed name of E2 is "Ash and Park".
F3 is east of E3. The printed name of F3 is "Maple and Cherry".
E4 is south of E3. The printed name of E4 is "Elm and Park".

[3rd level]
C5 is south of C4. The printed name of C5 is "Garden Street".
A3 is west of B3. The printed name of A3 is "Freeway".
C1 is north of C2 and west of D1. The printed name of C1 is "Oak and Lake".
F2 is east of E2. The printed name of F2 is "Ash Street".
G3 is east of F3. The printed name of G3 is "Maple Street".
E5 is south of E4. The printed name of E5 is "Park Street".


The description of D3 is "The Veiled Rose is in the southern end of Apple Street. Maple Street runs east-west.

You could drive straight north to Apple Street or take the Maple Street west towards the freeway, or east towards the city center."

The description of C3 is "The Maple Street continues to west. To the south you could take the Garden Street."

The description of D2 is "On the right side is the central hospital complex; if you don't shake Geigner from your tail, that's where you might just find yourself.

The road turns here west to Pine Street. Apple Street continues north."

The description of E3 is "You are at the intersection of Maple Street and Park Avenue. The roads turn to all cardinal directions."

The description of C4 is "You pass a row of small boutiques. A magic shop called [italic type]Jack in the Box[roman type] catches your eye - that's what they can call you if Geigner catches you. Jack in a box, six feet under.[paragraph break]Garden Street continues south and Cedar Street takes off to the west."

The description of C2 is "From there the road goes towards the freeway in southwest. Another option is to take the Lake Street to north."

The description of B3 is "You arrive at the busy intersection of Maple Street and Hill Street. The road continues west towards the freeway. North and south lead to Hill Street."

The description of D1 is "The headquarters of NeroMed are at the end of Apple Street. It's some sort of medical research company - but at the moment it's just blocking your way. The only option is to turn to Oak Street, to west or east."

The description of E2 is "The road turns east to Ash Street or continues north along the Park Street."

The description of F3 is "Maple Street continues to the east. You could also turn south to Cherry Street."

The description of E4 is "The City Botanical Gardens are to your right. They say it has a great zen garden there. You wouldn't know.[paragraph break]The street continues to south or turns east to Elm Street."

[The following need not be described, since the player never gets to them]
The description of C5 is "".
The description of A3 is "".
The description of C1 is "".
The description of F2 is "".
The description of G3 is "".
The description of E5 is "".


Section IV - Scenes

Table of Chase Atmosphere
narrative
"Geigner is drives so close the cars['] bumpers almost touch."
"You know it's your imagination, but you can almost hear Geigner laugh as he closes in on you."
"Glimpsing at the rear mirror you see Geigner's murderous gaze as he races towards you. If he catches you, it will surely be the end of Jack Mills."
"You race past a red sedan that has to brake to avoid collision. Too late though - Geigner scratches it and the car loses control, crashing to the nearby wall. Unfortunately Geigner keeps on your tail."

After going when the Chase is happening:
	if the location is not D3
	begin;
		choose a random row in the Table of Chase Atmosphere;
		say "[narrative entry][line break]";
		blank out the whole row;
	end if;
	continue the action.
	

The Chase is a recurring scene. The Chase begins when the player is in D3.
The Chase ends when the location is the Construction site.

The previous intersection is a direction that varies.

When the Chase begins:
	now the Dodge is scenery;
	now the Dodge is in D3.

After going while the Chase is happening:
	change the previous intersection to the noun;
	now the Dodge is in the location;
	try looking;

Instead of going opposite of the previous intersection while the Chase is happening:
	say "There's no room for a u-turn.";

Instead of doing something other than going or looking or taking inventory while the Chase is happening:
	say "There's no time for that! Geigner is right on your tail, you have to decide where to drive!"
	
The tced is a number that varies. The tced is 0.

To die crashing:	
	pause the game;
	clear only the main screen;
	Increase the tced by 1;
	if the tced is 1,
		say "[first person header]Now wait a minute.[first person footer]Yes?[first person header]That's not how it happened.[first person footer]It's not?[first person header]Well, obviously not! As I was saying, back in the parking lot Geigner was coming at me guns blazing. I jumped to the Dodge and hit the road...[first person footer]";
	if the tced is 2,
		say "[first person header]You're doing it again.[first person footer]Doing what?[first person header]We'll go through this again and again until you get it right.[first person footer]Well, fine. So, you got to the Dodge just in time and found yourself in...[paragraph break]";
	if the tced is greater than 2,
		say "[first person header]Now this is just getting ridiculous.[first person footer]Sorry.[first person header]Right. There I was, about to get shot by the madman...[first person footer]";
	now the player is in D3;
	now the Dodge is in D3;
	change the previous intersection to north;
	[next we'll make sure the chase atmosphere table is refilled]
	Choose row 1 in the Table of Chase Atmosphere;
	change the narrative entry to "Geigner is drives so close the cars['] bumpers almost touch.";
	Choose row 2 in the Table of Chase Atmosphere;
	change the narrative entry to "You know it's your imagination, but you can almost hear Geigner laugh as he closes in on you.";
	Choose row 3 in the Table of Chase Atmosphere;
	change the narrative entry to "Glimpsing at the rear mirror you see Geigner's murderous gaze as he races towards you. If he catches you, it will surely be the end of Jack Mills.";
	Choose row 4 in the Table of Chase Atmosphere;
	change the narrative entry to "You race past a red sedan that has to brake to avoid collision. Too late though - Geigner scratches it and the car loses control, crashing to the nearby wall. Unfortunately Geigner keeps on your tail.";




Chapter 2 - Construction site

After going to the Construction site:
	say "[first person header]I drove like a maniac through the city streets. Geigner was gaining on me, practically almost touching the Dodge's bumper.

The way was blocked. A truck was parked on the street and another car was approaching from the opposite direction. I took a tight turn right - throught a fence into a construction site of an office building.

I didn't get far, of course. I hit the brakes just before the Dodge bumped into a small cement mill. Geigner drove in, slowly, mockingly, as if he wasn't in any hurry to finish his job.[first person footer]";
	try looking.



Section I - Room

Construction site is north of E2 and east of D1 and north of B3 and south of B3 and west of C4 and east of E4 and south of F3. "The City is building another office block to the intersection of Oak Street and Park Avenue. At the moment it's nothing more than a skeleton of dark red iron girders. 

There is nobody working at the site at the moment. There's a cement mill and other construction tools and materials on the ground, and a wheelbarrow on top of the construction. Behind you is a simple elevator leading up to the girders."

South of Construction site is nowhere.
West of Construction site is nowhere.

Instead of exiting in the Construction site when the player is not in the Dodge, say "There's no escape."

Instead of going nowhere while the location is the Construction site: say "Geigner blocks the only exit - there's no hope of getting through there. The elevator up seems to be the only way to go."

Instead of driving to while the location is the Construction site: say "Geigner's car blocks the way. Ramming him would achieve nothing."


Section II - Things

Geigner's car is a backdrop. The Geigner's car is in the Construction site and the Girders-room. The description is "Geigner's car is in the construction site." Understand "BMW" and "Geigner's BMW" as Geigner's car. 

[elevator]
The construction elevator is scenery in the Construction site. The description is "The elevator leads up to the girders."

Instead of entering the elevator, try going up.



Chapter 3 - On the girders

Section I - Room

Before going to the Girders-room, say "[first person header]The elevator rose to the heights slowly, the steel parts squeaking like lost souls. Geigner ran to the base of the elevator, took aim and squeezed the trigger. I jerked backwards as the bullet ricocheted off the side of the elevator. He couldn't hit me from there, but I wasn't going to be safe for long.

The elevator reached its destination and I stepped out, hesitating. There were only a few girders to stand on. Geigner called the elevator down and was soon on it, coming to finish me off.[first person footer]".

Girders-room is above the Construction site. "The wind blows in ruthless gusts on top of the half-finished iron skeleton of the construction.   

Geigner's elevator ascends slowly towards the top level."
The printed name of the Girders-room is "On the girders".

Instead of going to the Construction site from the Girders-room, say "The elevator is the only way down, and Geigner is in it."


Section II - Things

The ascending Geigner is a proper-named man and scenery in the girders-room. The description is "Geigner ascends slowly towards you, holding his pistol. He looks quite angry." The printed name of the ascending Geigner is "Geigner". Understand "elevator" as the ascending Geigner.

The wheelbarrow is in the girders-room. "A dirty wheelbarrow full of tools is here." The description is "The wheelbarrow is full of miscellaneous tools, bolts and nuts. Its location is just about on top of Geigner's car."

Instead of searching the wheelbarrow, try examining the wheelbarrow.

Instead of throwing or taking the wheelbarrow, say "It's way too heavy to lift. That's why it has a wheel."

Instead of pushing the wheelbarrow:
	say "[first person header]'Hey Geigner. Check this out.'

He had just emerged from the elevator and was waving his gun at me. His expression changed from bewilderment to horror as he watched me push the wheelbarrow over.

The nuts and bolts rapped on the BMW's hood like a rain of hails. Then the bolt gun smashed the windshield, and finally the wheelbarrow itself landed on the roof and collapsed it.

Geigner looked at the destruction in disbelief, almost crying. I saw my chance had come and charged at him. His gun flew from his hand and landed somewhere below. Geigner was of no match to me - or maybe he was already beaten. 

I pushed him down and rushed for the elevator. Before he could even get up, I was already on my way down to my car. There was no other way down - he would have to wait for the elevator. 

I could hear Geigner curse like a sailor, but I was all smiles. I drove past the wreck of his car and glanced at the camera. Now I would meet Violet and trade the camera for the coin. Professor would get his artifact back, Violet would do whatever she wanted with the picture, and I would call it a day.

[bold type]My name is Jack Mills. I'm a private eye.[roman type][first person footer]";
	end the game in victory;


[contents of the wheelbarrow]

The assorted tools are plural-named scenery in the girders-room. The description is "There are some power tools, bolts and nuts in the wheelbarrow." Understand "bolt/bolts/nut/nuts/tool" as the assorted tools.

Instead of taking the assorted tools, say "They are of no use at the moment to you."

Instead of pushing the assorted tools, try pushing the wheelbarrow.


[girders]
The supporting girders are scenery in the girders-room. The description is "The girders are just wide enough to stand on."


Chapter 4 - Death by Truck

Instead of going to C1:
	say "Geigner has almost gained you. Nearly panicing you take a sharp turn left, but the road is blocked: There's another car in front of you and from the other direction there's a big truck coming your way. 

About to hit the other car, you make an emergency turn to the opposite lane, where the truck runs you over. You die instantly, without feeling pain.";
	die crashing.


Chapter 5 - Deaths

Instead of going to G3:
	say "You keep driving on the Maple Street, hoping to outrun your opponent. Then the toll of driving around the city all night hits - the Dodge runs out of gas. You pull over, cursing your bad luck, as Geigner drives to the side of you. The last thing you see is the flash of fire from the muzzle from his gun.";
	die crashing.


Instead of going to A3:
	say "You keep driving on the Maple Street, hoping to outrun your opponent. Then the toll of driving around the city all night hits - the Dodge runs out of gas. You pull over, cursing your bad luck, as Geigner drives to the side of you. The last thing you see is the flash of fire from the muzzle from his gun.";
	die crashing.
	


[Currently these are just placeholders - they should all be changed to something original.]
Instead of going to F2:
	say "Geigner has almost gained you. Nearly panicing you take a sharp turn left, but the road is blocked: There's another car in front of you and from the other direction there's a big truck coming your way. 

About to hit the other car, you make an emergency turn to the opposite lane, where the truck runs you over. You die instantly, without feeling pain.";
	die crashing.

Instead of going to C5:
	say "Geigner has almost gained you. Nearly panicing you take a sharp turn left, but the road is blocked: There's another car in front of you and from the other direction there's a big truck coming your way. 

About to hit the other car, you make an emergency turn to the opposite lane, where the truck runs you over. You die instantly, without feeling pain.";
	die crashing.
	
Instead of going to E5:
	say "Geigner has almost gained you. Nearly panicing you take a sharp turn left, but the road is blocked: There's another car in front of you and from the other direction there's a big truck coming your way. 

About to hit the other car, you make an emergency turn to the opposite lane, where the truck runs you over. You die instantly, without feeling pain.";
	die crashing.		
	

Part F - The Auction

The area name of the Gate to Greenfeld's mansion is "Auction".
The area name of the Garden path is "Auction".
The area name of the Mansion front hall is "Auction".
The area name of the Auction hall is "Auction".

Chapter 1 - Gate to Greenfeld's Mansion

Section I - Room

The Gate to Greenfeld's mansion is a room. Understand "auction/mask/garden/mayflower/greenfeld" and "mayflower avenue" and "7 mayflower avenue"  as the Gate to Greenfeld's mansion.


Section II - Things

The facade of Greenfeld's mansion is a backdrop. The facade of Greenfeld's mansion is in the Gate to Greenfeld's mansion and the Garden path. The description is "Greenfeld doesn't play with pennies, judging by the looks of his mansion."


Chapter 2 - Garden path

Section I - Room

The Garden path is east of the Gate to Greenfeld's mansion. "The mansion's garden is lavish and well-groomed. There are no trees or flowers; the scenery is dominated by hedges and shrubs instead, some of which are cut into delicate animal characters.

Along the gravel path leading north to the front doors are several stone statues that depict gargoyle-like characters. The largest of them is made a water fountain with a stream of water shooting from its mouth. From the fountain the path takes a turn west back to the gate."

Section II - Things

[hedges/shrubs, garden, gravel path, statues, fountain, mask]

The gargoyle statues are scenery in the Garden path. The description is "In a way the gargoyles are very unsettling."

The gargoyle fountain is scenery in the Garden path. The description is "The statue is in a pose that is supposedly meant to depict dancing but the extended arms resemble more a predator jumping on its prey.[if the long-chinned mask is a part of the gargoyle fountain] Attached to the face of the gargoyle is a golden mask.[otherwise] Traces of plaster line the face of the statue where [the faux mask] used to be.[end if] Water is shooting from its mouth to the pool below."

[mask]
The faux mask is part of the gargoyle fountain. 
The faux mask can be silver-colored or gold-colored. The faux mask is gold-colored. 
The faux mask can be long-chinned or short-chinned. The faux mask is long-chinned.
The faux mask can be plastered, moistened or loosened. The faux mask is plastered.
The printed name of the faux mask is "[if silver-colored]silvery [otherwise]golden [end if][if long-chinned]long-chinned [end if]mask[if silver-colored and short-chinned] replica";

Understand "silvery/golden/gold/silver/long-chinned/longchinned mask/replica" and "replica" as the faux mask.

The description of the faux mask is "[if the faux mask is part of the gargoyle fountain]A golden long-chinned mask is on the face of the gargoyle fountain. It[otherwise]The mask[end if] carries a strong resemblance to the mask Geigner showed you[if gold-colored or long-chinned], except that [end if][if long-chinned]the chin is much longer[end if][if gold-colored and long-chinned] and [otherwise][end if][if gold-colored]the colour is different[end if]."   

Mask-moistening it with is an action applying to two visible things.

Understand "moisten [thing] with [thing]" as mask-moistening it with.
Understand "pour [thing] on [thing]" as mask-moistening it with (with nouns reversed).
Understand "moisten [thing]" as mask-moistening it with.
Understand "moisture [thing] with [thing]" as mask-moistening it with.
Understand "moisture [thing]" as mask-moistening it with.

Instead of putting water on the faux mask, try mask-moistening the mask with water.
Instead of throwing water at the faux mask, try mask-moistening the mask with water.


Rule for supplying a missing second noun when mask-moistening:
	if the water is in the location, change the second noun to the water;

Check mask-moistening with:
	if the noun is not the faux mask and the noun is not the plaster and the noun is not the gargoyle fountain, say "That's not something that needs moistening." instead;
	if the second noun is not the water, say "[The second noun] is not a very efficient solvent." instead;

Carry out mask-moistening with:
	if the faux mask is moistened
		begin;
		say "You drop some more water on the plaster, but it doesn't seem to soften anymore. You need a tool to pry the mask off.";
		end if;
	if the faux mask is plastered
		begin;
		say "You scoop a handful of water from the fountain and moisture the plaster around [the faux mask]. It softens a bit, but not enough to pry the mask loose with bare hands.";
		now the faux mask is moistened;
		end if;
	if the faux mask is loosened
		begin;
		say "The plaster has probably had enough water for now.";
		end if;
	if the faux mask is not part of the gargoyle fountain
		begin;
		say "[if the faux mask is gold-colored]The color isn't water-soluble.[otherwise]It's not dirty.";
		end if;


Instead of taking the faux mask when the faux mask is a part of the gargoyle fountain:
	if the faux mask is plastered, say "You try to pull the mask out of the fountain, but it seems to be plastered tight to the statue.";
	if the faux mask is moistened, say "The plaster is a bit softer, but not enough to pull the mask loose with bare hands. You need a tool of some sort to pry it out.";
	if the faux mask is loosened
			begin;
			say "The plaster crumbles and [the faux mask] comes off the statue easily.";
			now the player carries the faux mask;
			end if;

Instead of stabbing the faux mask with the kitchen knife when the faux mask is part of the gargoyle fountain:
	if the faux mask is moistened
			begin;
			say "You climb to the knee of the statue and start scraping the plaster that attaches the mask to the statue. After some considerable effort you have loosened the mask enough so that it yanks off.";
			now the player carries the faux mask;
			end if;
	if the faux mask is loosened
			begin;
			say "The plaster is almost dissolved, so you can yank the mask off without even touching it with the knife.";
			now the player carries the faux mask;
			end if;
	if the faux mask is plastered,
			say "You climb to the knee of the statue and start scraping the plaster that attaches the mask to the statue. The plaster is hard as a rock and even after a good amount of work all you accomplish is assorted scrapes. As long as the plaster is that hard, you'll never get the mask off.";


Gold-removing is an action applying to two things.

Understand "scratch [faux mask] with [something]" as gold-removing.
Understand "scrape [faux mask] with [something]" as gold-removing.
Understand "abrade [faux mask] with [something]" as gold-removing.
Understand "chafe [faux mask] with [something]" as gold-removing.
Understand "scratch [faux mask]" as gold-removing.
Understand "scrape [faux mask]" as gold-removing.
Understand "abrade [faux mask]" as gold-removing.
Understand "chafe [faux mask]" as gold-removing.

Rule for supplying a missing second noun while gold-removing:
	if the player has the kitchen knife begin;
		change the second noun to the kitchen knife;
	otherwise;
		say "Your fingernails have some effect on removing the gold color, but it'd take ages to scrape it all off without a tool.";
		stop the action;
	end if.

Check gold-removing:
	if the faux mask is silver-colored, try rubbing the faux mask instead;
	if the second noun is not the kitchen knife, say "[The noun] isn't sharp or hard enough to scrape the color off." instead;

Carry out gold-removing:
	say "You scrape the gold color carefully off with the kitchen knife. A silvery layer is revealed underneath. It's not real silver, but looks pretty close.";
	now the faux mask is silver-colored.

Instead of rubbing the gold-colored faux mask, say "The color doesn't come off with just rubbing it. You need something harder."
Instead of rubbing the silver-colored faux mask, say "The color has already worn off."


[chin of the mask]

The chin is part of the faux mask. Understand "long/short chin" as the chin. 
The description is "[if the faux mask is long-chinned]The chin is almost as long as the mask itself.[otherwise]The mask's chin is broken crudely."

Instead of taking the chin, say "It's not detachable."

Instead of breaking the faux mask with something, try breaking the chin with the second noun.

Instead of breaking the chin with:
	if the faux mask is short-chinned, say "You've already broken the chin." instead;
	if someone who is not the player is in the location, say "That might be a good idea, but it'd be best if you did it somewhere where there are no other people around." instead;
	say "[if the faux mask is part of the gargoyle fountain]You climb up the statue and take a good hold of the chin[otherwise]You place the mask on your knee and push hard face part of the mask with your other hand and the chin with the other[end if]. With a violent snap you are left with a mask with a ragged edge where the chin used to be.";
	now the faux mask is short-chinned.
	


[plaster]
The plaster is part of the gargoyle fountain. The indefinite article is "some". 
The description is "The plaster [if the faux mask is part of the gargoyle fountain]holds[otherwise]held[end if] the mask in place.[if the faux mask is moistened and the faux mask is part of the gargoyle fountain] It's a bit soft.[end if][if the faux mask is loosened and the faux mask is part of the gargoyle fountain] It's crumbling and barely able to hold the mask's weight.[end if]".

Instead of stabbing the plaster with the kitchen knife when the faux mask is part of the gargoyle fountain, try stabbing the faux mask with the kitchen knife instead.


[water]
The water is scenery in the Garden path. The indefinite article is "some". 

Understand "from fountain" as the water. [This allows the game to understand "drink from fountain"]

Instead of taking the water, say "You scoop a handful of water from the fountain and let it run back through your fingers."

Instead of drinking the gargoyle fountain, try drinking the water.
Instead of drinking the water, say "The water doesn't look drinkable. There's algae and leaves and other assorted wonders of nature floating in it."



Chapter 3 - Front hall of the mansion

Section I - Room

The Mansion front hall is north of the Garden path. "The mansion's front hall is stylishly decorated with African items - statues, shields and assorted weaponry. A spiral staircase leads upwards. Doors are to both eastern and western sides of the hall."


Section II - Things

[history magazine]
The history magazine is scenery in the Mansion front hall. The description is "It's a history-related magazine." The printing of the history magazine is "'History Weekly'". 

Instead of taking the history magazine, say "'Excuse me, but I'm reading that!' the auction assistant says."

[statues, shields and weaponry]

The front hall decoration is scenery in the Mansion front hall. The description is "The decoration is all to the theme - shields, weapons and statues from Africa. They are most likely genuine."
Understand "weapon/weapons/weaponry" and "shield/shields" and "statue/statues" as the front hall decoration.

Instead of taking the front hall decoration, say "They wouldn't look as good in your apartment."


Section III - Characters


The auction assistant is a man in the Mansion front hall. "A table has been set diagonally on the eastern side of the hall. [An auction assistant] sits behind the table, reading a magazine." The description is "The auction assistant is sitting behind a table on the eastern side of the room, reading a history magazine.".


Table of auction assistant conversation topics
Topic		Answer		Delete
"[Geigner]"	"'Oh, are you a representative of Mr. Geigner?' [the auction assistant] says. 'Did he get my message that Mr. Greenfeld is unable to meet with him today? Hopefully so. I'm quite sure I did send the message with that lady.'"	0
"Violet/lady/wife" or "Geigner's wife"	"'The lady came here yesterday to have a meeting with Mr. Greenfeld. It was a very brief meeting,' he says. 'A very beautiful lady, indeed. But Mr. Greenfeld wasn't very interested in seeing this Geigner fellow.'"	0
"Greenfeld/Greenfield/boss"	"'Mr. Greenfeld is in the auction hall bidding,' the assistant tells you."	0
"auction/bidding"	"'I'm glad you asked, sir!' he says. 'Bidding is done by raising your hand when the auction for an item you want is open. If no-one tops your bid, you win the auction. I will be taking your billing information after the auction if you have bought something.'"	0
"coin"	"'No, I don't believe we have any coins to auction today.'"	0
"mask" or "egyptian/silver/silvery mask"	"'Yes, I believe we have such an item to be auctioned today,' the assistant tells you. 'If you're interested, it's on display in the auction hall.'"	0
"magazine" or "history weekly"	"'It's very interesting, actually', he says. 'I've been a subscriber for years.'"	0
"himself/receptionist/clerk/mark"	"'I'm personal assitant to Mr. Greenfeld. Today I'm here to assist you on anything you need for the auction,' he says cheerfully."	0

Instead of greeting the receptionist, say "'Good evening to you, sir. How may I help you?'".


After asking the auction assistant about a topic listed in the Table of auction assistant conversation topics:
	say "[answer entry][paragraph break]";
	if delete entry is 1, blank out the whole row.

After asking the auction assistant about something:
	if a random chance of 1 in 3 succeeds then say "'I'm sorry, sir, did you say something?' [the auction assistant] says behind his magazine. " instead;
	if a random chance of 1 in 2 succeeds then say "'That is not part of my job description', he says." instead;
	say "He shakes his head. 'I'm afraid I can't help you with that', he says." instead.






Instead of going to the Garden path from the Mansion front hall when the player carries the silver mask and the silver mask is bought and the auction assistant does not have the business card:
	say "[The auction assistant] stops you. 'Excuse me, sir, I need your billing information before you can leave,' he says.";

Instead of giving or showing the business card to the auction assistant:
	if the silver mask is bought
	begin;
	say "[first person header]'My name is Geigner. Julian Geigner. May I borrow your pen?' I took Geigner's business card and pretended to write on the back side. 'Here you go, my good man. This is to the Hotel Falcon where I'll be staying for a few days. Room 405. And this,' I turned the card over, 'is where you'll reach me after that.'

I walked out the front door with the mask, smiling like a 5-year-old with a brand new bike. This had turned out better than I'd expected. I would trade the coin for the mask which Geigner has, in fact, now bought. All he would lose is the coin, which he had originally acquired by theft. If you ask me, that's a text book example of a win-win situation.
	
[bold type]My name is Jack Mills. I'm a con artist.[first person footer]";
	end the game in victory;
	otherwise;
		say "'Thank you, sir, but I would appreciate it if you would hold it until the auction is over. I will collect your billing information only if you've bought something.'";
	end if;
[	
Instead of threatening the auction assistant with the Colt when the silver mask is bought:
	say "[first person header]'I would need your name and address before you leave,' the assistant said.

'Maybe I should give you the name of my friend instead.' I pulled out the revolver. 'His name is Python. Colt Python.'

The man turned whiter than the papers he was holding. 'Uh... uh... please, I don't have any cash with me...'

'Don't worry. I have all I need here,' I laughed and held up the mask. 'Tell your boss Geigner sends his regards.' 

I walked out. In short time they'd alert the police and find Geigner - and the mask with him. I'd be done with the trade and gone by then and the Professor would get his coin. It was risky business and not what I'd wanted it to become to, but at least my mission had succeeded. What comes next I can worry about tomorrow.

[bold type]My name is Jack Mills. I'm an art thief.[roman type][first person footer]";
	end the game in victory;
]

Chapter 4 - The Auction Hall

Section I - Room

The Auction hall is an auction arena. The Auction hall is west of the Mansion front hall. "A large hall, probably a dining hall, has been converted to an auction hall with a stand for the auctioneer and rows of chairs for the potential buyers. Looks like the auction is well on its way, with people bidding on items and an auctioneer taking offers.";

Section II - Things

[hall, chairs, stand, people, items, pedestal, mask]

[the mask]
The silver Egyptian mask is on the pedestal. The description is "It's a silver Egyptian mask, just like the one Geigner showed you on his book."

The silver Egyptian mask can be bought or for sale. The silver Egyptian mask is for sale.

Check going in the Auction hall when the player has the silver Egyptian mask and the silver Egyptian mask is for sale:
	if the faux mask is not on the pedestal, say "You can't leave with the mask. The auctioneer saw you take it, you'd get caught." instead;
	if the faux mask is long-chinned and the faux mask is gold-colored, say "The mask you took from the statue looks quite the same as the Egyptian mask, but with its long chin and gold color it couldn't fool the auctioneer. You can't leave now or you'll get caught." instead;
	if the faux mask is long-chinned or the faux mask is gold-colored, say "The mask you left at the stand resembles the Egyptian mask quite a bit, but the [if the faux mask is long-chinned]long chin[otherwise]golden color[end if] stands out too much. You'd get caught if you leave now." instead;
	say "You sneak into the foyer and looks like you go unnoticed. The false mask does its duty.";


Instead of going to the Garden path when the location is the Mansion front hall and the player has the silver Egyptian mask and the silver Egyptian mask is for sale:
	say "[first person header]'Didn't find anything to your liking, sir?'

It was [the auction assistant]. 'Nope. Nothing this time,' I said, holding the mask I had just stolen under my coat.

'Well, better luck next time,' he said and went back to his magazine.

I opened the front doors and walked out. My heart was pounding against the mask I was still clutchin under the coat. Only a couple of more steps to the car, then a phone call to Geigner who certainly would be eager enough to make the trade for the coin before the people at the auction would even find out the real mask was missing. Then I could call it a day and close the case.

[bold type]My name is Jack Mills. I'm an art thief.[roman type][first person footer]";
	end the game in victory.

[pedestal]

The pedestal is in the Auction hall. The pedestal is fixed in place. The carrying capacity of the pedestal is 1.
Understand "plaque/stand/support/stay" as the pedestal.

Instead of examining or reading the pedestal: say "The mask's pedestal has a plaque in front of it saying 'Item 42. Egyptian ceremonial mask, 3rd century BC. G. Greenfeld.'"

Check putting something on the pedestal:
	if the noun is not the faux mask and the noun is not the silver Egyptian mask, say "The stand is for the mask only." instead.

Instead of inserting something into the pedestal, try putting the noun on the pedestal.

Instead of dropping something while the location is the Auction hall:
	try putting the noun on the pedestal.

[thanks to folks at IFmud for helping with the following]
Before listing nondescript items when in the Auction hall:
    if something is on the pedestal
	begin;
        say "[if the silver Egyptian mask is on the pedestal]There are several auctioned items on display on a table on the other side of the room. Among them you recognize the silver mask from Geigner's book, standing on a small pedestal. It's rather plain but the Egyptian style is clearly recognizable[end if][if the faux mask is on the pedestal]The decoy mask is on the pedestal[end if][if the number of things on the pedestal is 0]There's nothing on the mask's pedestal[end if]."; 
		change the pedestal to not marked for listing;
    end if. 




Section III - Characters

[auctioneer]

The auctioneer is a woman in the Auction hall. The auctioneer is scenery. The description is "The auctioneer is busy taking bids. She is a strict looking middle-age lady. Reminds you very much of your English teacher back in the day."

Instead of asking the auctioneer about something, say "It'd be truly a [italic type]faux-pas[roman type] to make any other contact than placing bids."


Section IV - Scenes

[here are some definitions for the Auctioneer extension]
Table of pre-defined auction items (continued)
Number	Noun	Starting price	Step	Biddable
1	"item number 42. Ceremonial mask, Egyptian, from 3rd century BC"	500	50	1
1	"a well-used brass lamp from 1970s"	200	50	0
1	"an amber fish on a string"	100	20	0
1	"a Caribbean idol of many hands from the 17th century "	500	50	0
1	"a spaceous pearwood luggage"	300	50	0
1	"an American bullwhip from the 1930s"	80	10	0


Carry out winning the bid:
	say "Nobody tops your offer and the auctioneer is about to close the bid. The mask is now yours! The only problem left is paying for it...";
	now the silver mask is bought.



Book 3 - Debugging

[
Include Property Checking by Emily Short.
]

[
seed the random-number generator with 1234;
]







