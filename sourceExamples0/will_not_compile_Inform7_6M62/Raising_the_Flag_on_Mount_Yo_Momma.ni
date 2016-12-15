"Raising the Flag on Mount Yo Momma" by Juhana Leinonen


[Copyright (C) 2010 Juhana Leinonen  <juhana dot if -at- nitku dot net>

Permission is hereby granted, free of charge, to any person obtaining a 
copy of this software and associated documentation files (the 'Software'), 
to deal in the Software without restriction, including without limitation 
the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the 
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in 
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY 
KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE 
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR 
PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS 
OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR 
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR 
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


About the source code
---------------------

This is the source code to Raising the Flag on Mount Yo Momma, release 2. 
The game was written in Inform 7, an Interactive Fiction design system based 
on natural language. You can download the Inform 7 compiler and IDE 
from http://inform7.com/.

The code was made with Inform 7 build 5Z71. It uses several extensions 
available at http://inform7.com/write/extensions/.


Version history
---------------

Release 3 (2010-02-28)
 - The first public release. Essentially the same as 2/beta3.

Release 2/beta3 (2010-02-17)
 - Added the in-game hint system.
 - Added MIX x AND y and PUT a drink IN something as synonyms to mixing 
 - Removed the mention of red tape from the guard's description (in the very early versions there was a red tape in front of the VIP area, but it was soon removed.)
 - Fixed a bug where giving the lens back to Norbert wouldn't remove the it from the inventory.
 - Fixed a bug where searching the table with a bubblegum stuck into it more than once didn't mention the gum again.
 - Fixed a similar bug with the jukebox that didn't notify about the volume knob after being searched after the first time.
 - There's a slight disambiguation problem with mixed drinks. It was solved with some dubious methods: by trying to prevent any situations where the player would not be carrying the mix in the bar (which is the situation in which the problem manifested itself.)
 - Fixed an oversight where even though you could go to the location of an NPC by typing just their name, you couldn't GO TO them, even though you could go to a room by that method.
 - Applied some cluestick to the VIP pass puzzle: the Sleaze mentions that he'd like to go to the VIP area. 
 - More changes in grammar and wordings.

Release 2/beta2 (2010-01-24)
 - Changed the order of how the tag puzzle is hinted: now the first problem is that the text is too small, and when the player uses the lens, the game says it's too dark to read.
 - Changed the sequence how changing music works: the old button pops up before the music changes.
 - Fixed the menu that would show that they serve "cola, spiked tonic..." when the player was carrying spiked drinks.
 - Fixed a bug that allowed the Sleaze buy any number of drinks at once (the cap is now at 2).
 - Fixed the room name in the status bar (it would remove the background color in some interpreters when printing the location within the club).
 - Fixed the bug where pouring drinks into anything other than the plant or other drinks would not print anything.
 - Added a response to saying "Ralph" and "posse" when Vincent asks who insulted his momma.
 - Added an extra description to the cards when the bubblegum is stuck to them to reflect this.
 - Made dropping the sweater in the artist hangout to put the sweater back on the chair, not on the table.
 - ASK X FOR Y now prints the "use talk to" -hint correctly
 - Added the clubbers as a backdrop item.
 - Added a description to the lens.
 - Added a response to TAKE PLANT.
 - Added a sensible response to GIVE COINS TO BARKEEP.
 - Added more responses to giving drinks to people.
 - Added more responses to insulting people.
 - Made it more clear why Ralph reacts only to classical music.
 - Made it more clear that there's a brigh light in the dark corner.
 - Made it more clear where the exits from the dark corner are (before the MAP help has been displayed).
 - Made it more clear that you discard the empty glass after pouring the drinks into the plant.
 - Made it more clear that the taser works only on people.
 - Changed the message that said it's "better not let Gus know you nicked his sweater" when Gus had already spotted you trying to leave with it.
 - Changed the bouncer dialogue to give him a bit more flavor.
 - Going UP translates to going to the stage.
 - Removed the extra line space that would occasionally occur when answering an unknown name to Vincent.
 - Fixed a bug where the response to drinking non-alcoholic drinks would still be "you need to keep your senses sharp."
 - Fixed a bug where the game would print "Norbert searches nothing carefully but finds nothing" in some locations.
 - Several new synonyms, typo corrections and rephrasings.
 - Other minor tweaks and additions.

Release 2 (2010-01-11)
 - Fixed a bug where the game would go into an infinite loop after a random number of turns after the player had given Norbert his lens back.
 - Fixed a bug where trying to drink drinks would give the "You can't drink that" response.
 - Added more responses to insulting people.
 - Added some missing descriptions (barkeep, bar counter, stage).
 - Added a reasonable response to SET JUKEBOX TO something.
 - Made it more obvious that Ralph closes the satchel if we have opened it.
 - Minor tweaks to Norbert's description and behavior when he's been beaten up, for example he doesn't start wandering before we have noticed that he's missing his lens.
 - Fixed a bug where pouring stuff into something requred both objects to be held, which made pouring drinks into the plant not work.
 - Fixed the coin description that said the coins had been found from inside a sofa.
 - Fixed a bug that prevented special descriptions when the jukebox rap button is jammed and Ralph pushes it.
 - Changed the prompt when insulting Vincent from ? to "You reply:" to make it more clear that the game expects an answer.
 - Other minor bug fixes and typo corrections.

Release 1 (2010-01-01)
 - Initial release. Played in ClubFloyd (http://www.allthingsjacq.com/interactive_fiction.html#clubfloyd) January 9th 2010.

]



Volume I - Mechanics

Book Extensions

Include Basic Screen Effects by Emily Short.
Include Default Messages by David Fisher.
Include Epistemology by Eric Eve.
Include Far Away by Jon Ingold.
Include Object Response Tests by Juhana Leinonen.
Include Plurality by Emily Short.
Include Written Inventory by Jon Ingold.


Book Options

Use full-length room descriptions.
Use American dialect.
Use serial comma.

Release along with cover art, a website, solution, and source text.

[when "debugging" variable is enabled the game skips the Joe Mahma introductory scene.]
Debugging is a truth state that varies. Debugging is false.


Book Bibliographical information

The story headline is "Interactive insult battle".
The story genre is "Comedy".
The release number is 3.
The story creation year is 2010.
The story description is "Gus is a smug numbskull who doesn't deserve to have the insult battle championship. You are here to take the title from him with the best yo momma insults there are. You just have to find them first."


Book Score

The maximum score is 35.

Table of Full Scores
explanation	score
text	number
with 30 blank rows.

To award ( n - a number ) point/points for ( feat - text ):
	if there is an explanation of feat in the Table of Full Scores:
		do nothing;
	otherwise:
		choose a blank row in the Table of Full Scores;
		change explanation entry to feat;
		change score entry to n;
		award n points. 

Requesting the full score is an action out of world.

Understand the command "score" as something new.
Understand "full score" and "full" and "score" as requesting the full score.

Check requesting the full score when the Table of Full Scores is empty:
	try requesting the score instead.

Carry out requesting the full score (this is the print full score rule):
	try requesting the score;
	if the table of Full Scores is not empty:
		say "Your score consists of:";
		repeat through table of Full Scores:
			say "[line break]  [score entry] point[if score entry is not 1]s[end if] for [explanation entry]";
		say ".".


Book Custom Library Messages

Table of custom library messages (continued)
Message Id    	 Message Text
LibMsg <cannot reach within other places>	"You are too far away.[/n]"
LibMsg <you have died>	"GAME OVER"
LibMsg <block listening>	"You hear only the [if the volume of jukebox is not low]deafening [end if]beat of music.[/n]"
LibMsg <person ignores command>	"[italic type](You can't give direct commands to other people in this game.)[roman type][/n]"
LibMsg <block buying>	"[Cap it-they of the noun] [is-are of the noun] not for sale.[/n]"
LibMsg <block drinking>	"You can't drink [it-them of the noun].[/n]"
LibMsg <cannot eat unless edible>	"Better not stick your tongue on [that-those of the noun].[/n]"
LibMsg <block climbing>	"Not much is to be achieved by that.[/n]"
LibMsg <no objects available>	"There's nothing immediately obvious to take here.[/n]"
LibMsg <block attacking>	"There's no reason to attack [the noun].[/n]"
LibMsg <block showing>	"At the last moment you decide not to do that.[/n]"


Book Definitions

Definition: a person is NPC if it is not the player.

To clarify ( clarification - some indexed text ):
	say "([clarification])[command clarification break]".

Rule for deciding whether all includes fixed in place things:
	it does not.
Rule for deciding whether all includes people:
	it does not.

To say press space:
	say "[paragraph break][italic type][bracket]press space to continue[close bracket][paragraph  break][roman type]".

A thing can be lens-searchable. A thing is usually not lens-searchable.


Book Easter eggs

Understand "plugh" as a mistake ( "A hollow voice says, 'Yo momma's so fat she don't fit in Z-machine.'" ). 
Understand "sing" as a mistake ( "This is not a karaoke bar." ).
Understand "xyzzy" as a mistake ( "'Yo momma's so [one of]fat[or]stupid[or]ugly[or]old[at random], xyzzy...' No, that's not gonna work." ).


Book Ending the game

Table of Final Question Options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see your full SCORE"	true	"score/full"	print full score rule	--
"read some painful FACTS of life"	true	"facts"	reveal full yo momma insult list rule	--

This is the reveal full yo momma insult list rule:
	say "Did you know that...";
	repeat through the Table of Yo Momma insults:
		say " ...[run paragraph on][insult entry]?[line break]";
	say "[line break]And that...[line break]...Yo momma's so fat she don't fit in Z-machine?";		


Book Flavor texts

Flavor text rules is a rulebook. The flavor text rules have default success.

Every turn (this is the process flavor texts rule):
	follow the flavor text rules.

The process flavor texts rule is listed last in the every turn rules.


Book Kinds of things

Chapter Cards

A card is a kind of thing.


Chapter Chairs

A chair is a kind of supporter. A chair is always enterable. A chair is usually scenery. A chair is usually lens-searchable.
Understand "seat" as a chair.

Does the player mean entering a chair: it is very likely.
	
Instead of going up when the player is on a chair (called the seat):
	try getting off the seat.
	
Before going when the player is on a chair (called the seat) and the noun is not up:
	clarify "first getting off [the seat]";
	silently try getting off the seat.


Chapter People

Understand "man" and "boy" and "dude" and "guy" as a man.
Understand "woman" and "girl" as a woman.
Understand "person" as a person.

A person can be relevant or irrelevant. A person is usually relevant.
The player is irrelevant.

Does the player mean doing something to an irrelevant person: it is unlikely.

A person can be unbeaten, beaten or totally beaten. A person is usually unbeaten. A person can be recently beaten. A person is usually not recently beaten.

Check searching people (this is the block searching people rule):
	say "You're not very good at picking pockets." instead. 


[

Section Scope

After deciding the scope of the player (this is the add people to scope rule):
	repeat with X running through known people:
		if X is in a room:
			place X in scope.

Instead of examining a person when the noun is not in the location:
	say "[The noun] is too far away to see properly."


Does the player mean doing something to a noun when the noun is not in the location:
	it is unlikely.	
]

Book Insults

Chapter Yo Momma insults

Table of Yo Momma Insults
insult
"Yo momma's so fat NASA has a satellite in orbit around her"
"Yo momma's so stupid she needs a dictionary to read the alphabet"
"Yo momma's so ugly they filmed 'Gorillas in the Mist' in her shower"
"Yo momma's so stupid she got lost in the desert and drowned"
"Yo momma's so ugly a grue refused to eat her"
"Yo momma's so fat she drove three all-you-can-eat buffets into bankruptcy - in one night"
"Yo momma's so ugly she makes onions cry"
"Yo momma's so stupid she lost count while counting to one"
"Yo momma's so fat her chins have different area codes"
"Yo momma's so fat she bought two tents and a coil of rope to make herself a bikini top"
"Yo momma's so old she had a pet dodo"
"Yo momma's so fat she's likely to be half-eaten by a grue"
"Yo momma's so fat when she went to the beach Greenpeace tried to throw her back into the ocean"
"Yo momma's so fat when she walks on the road she's legally classified as a semi-truck"
"Yo momma's so fat when she switches her watch to the other hand she has to set it to a new time zone"
"Yo momma's so stupid she got locked inside a grocery store and starved"
"Yo momma's so stupid she got stabbed in a shootout"
"Yo momma's so ugly she's the control at the ugly stick factory"
"Yo momma's so stupid she got run over by a parked car"
"Yo momma's so stupid she saw a 'wet floor' sign and did it"
"Yo momma's so fat when they take aerial photos they have to ask her to move out of the way"
"Yo momma's so fat when she gets up on the wrong side of the bed it's because she has to use the spare pulley"
"Yo momma's so fat her shadow weighs a pound"

To say yo momma insult:
	choose a random row in the Table of Yo Momma Insults;
	say "[insult entry]".


Chapter Lame insults

Table of Lame Insults
insult
"Yo momma's so stupid she doesn't know anything"
"Yo momma's so fat and stupid"
"Yo momma's so fat she has a lot of weight"
"Yo momma's so fat because she eats a lot"
"Yo momma's so ugly that people say she doesn't look good"
"Yo momma's so ugly because her face is so ugly"
"Yo momma's so stupid that she's dumb"
"Yo momma's so stupid she has a low IQ"
"Yo momma's so fat she has a large belly"
"Yo momma's so ugly she has unattractive physical qualities"
"Yo momma's so fat everyone says she's really fat"
"Yo momma's so poor she doesn't have any money"
"Yo momma's so fat she weighs a lot"
"Yo momma's so fat the doctor said she should lose weight"

To say lame insult:
	choose a random row in the Table of Lame Insults;
	say "[insult entry]".
	
To say lame insult in lower case:
	choose a random row in the Table of Lame Insults;
	say "[insult entry in lower case]".
	

Book Actions

Part Old actions

Chapter Synonyms

Understand the command "strip" as "shed".
Understand "look behind [something]" as looking under.
Understand the command "order" as "buy".
Understand the command "move" as something new.
Understand "move [something]" as pulling.
Understand "turn [something] to [text]" as setting it to.
Understand "switch [something] to [text]" as setting it to.
Understand the command "place" as "put".
Understand "climb on/up/to [something]" as climbing.
Understand the command "taste" as something new.
Understand the commands "taste" and "lick" as "eat".
Understand the command "change" as "switch".
Understand "ask [something] for [text]" as asking it about.
Understand the command "chew" as "eat".
Understand "chew on [something]" as eating.

Instead of climbing a supporter:
	try entering the noun.

Instead of pushing a person:
	try attacking the noun.

Instead of looking under:
	clarify "searching [the noun]";
	try searching the noun.

Instead of giving something to something:
	try showing the noun to the second noun.


Chapter Disabling standard discussion commands

Asking something about is standard discussing.
Telling something about is standard discussing.
Asking something for is standard discussing.
[Answering something that is standard discussing. <-- doesn't work. Why?]

Before answering something that:
	say "(To interact with people you can TALK TO them, INSULT them or SHOW things to them.)" instead.
		
Before standard discussing:
	say "(To interact with people you can TALK TO them, INSULT them or SHOW things to them.)" instead.


Chapter Disabled actions

Understand the command "wave" as something new.
Understand the command "swing" as something new.
Understand the command "chop" and "cut" and "prune" and "slice" as something new.
Understand the command "clean" and "dust" and "polish" and "rub" and "scrub" and "shine" and "sweep" and "wipe" as something new.
Understand the command "awake" and "awaken" and "wake" as something new.
Understand the command "sleep" and "nap" as something new.
Understand the command "squash" and "squeeze" as something new.
Understand the command "burn" and "light" as something new.
Understand the command "attach" and "fasten" and "fix" and "tie" as something new.
Understand the command "kill" and "murder" and "thump" and "torture" as something new.
Understand the command "screw" and "unscrew" as something new.
Understand the command "clear" as something new.
Understand the command "consult" as something new.
Understand the command "cover" as something new.
Understand the command "cross" as something new.
Understand the command "feed" as something new.
Understand the command "skip" as something new.


Part New actions

Chapter Challenging

Challenging is an action applying to one visible thing.

Understand "challenge [something]" as challenging.

Check challenging (this is the block challenging rule):
	say "You're here to challenge one man and one man only: Gus, the current champion." instead.


Table of analyzing actions (continued)
topic	testing rule
"challenging"	test challenging rule

This is the test challenging rule:
	say test announcement for "challenging [the noun]";
	try the test-actor trying challenging the noun.


Chapter Climbing down from

Climbing down from is an action applying to one thing.

Understand "climb down" as climbing down from.
Understand "climb down/off [something]" as climbing down from.
Understand "climb down/off from/of [something]" as climbing down from.

Rule for supplying a missing noun while climbing down from:
	if the player is on a supporter (called the seat):
		clarify "from [the seat]";
		change the noun to the seat;
	if the player is in the Stage:
		change the noun to the stage-prop.

Instead of climbing down from a supporter:
	try getting off the noun.

Check climbing down from:
	say "You're not on [the noun]."


Table of analyzing actions (continued)
topic	testing rule
"climbing down"	test climbing down rule

This is the test climbing down rule:
	say test announcement for "climbing down [the noun]";
	try the test-actor trying climbing down from the noun.


Chapter Dancing with

Dancing with is an action applying to one thing.

Understand "dance with [someone]" as dancing with.
Understand "dance" as dancing with.
Understand "jam with [someone]" as dancing with.
Understand "jam" as dancing with.
Understand "bust moves/move" as dancing with.
Understand "bust a/some/few move/moves" as dancing with.
Understand "bust moves/move with [someone]" as dancing with.
Understand "bust a/some/few move/moves with [someone]" as dancing with.

Rule for supplying a missing noun while dancing with:
	change the noun to the player.
	
Check dancing with (this is the block dancing with rule):
	say "You don't feel like dancing with [the noun]." instead.

Check dancing with yourself:
	ignore the block dancing with rule.
	
Report dancing with yourself:
	say "You bust a few moves."

Does the player mean dancing with a relevant person: it is very likely.

Table of analyzing actions (continued)
topic	testing rule
"dancing with"	test dancing with rule

This is the test dancing with rule:
	say test announcement for "dancing with [the noun]";
	try the test-actor trying dancing with the noun.


Chapter Insulting

Insulting is an action applying to one thing.

Understand "insult [somebody]" as insulting.
Understand the commands "taunt", "slander", "offend", "abuse", "mock", "ridicule" as "insult".

Check insulting yourself:
	say "'[lame insult]!'[paragraph break]Man. You can't even insult yourself." instead.

Check insulting (this is the block insulting rule):
	say "You don't feel like you would gain much from insulting [the noun]." instead.


Table of analyzing actions (continued)
topic	testing rule
"insulting"	test insulting rule

This is the test insulting rule:
	say test announcement for "insulting [the noun]";
	try the test-actor trying insulting the noun.
	

Chapter Jamming with

Jamming it with is an action applying to one thing and one carried thing.

Understand "jam [something] with [something]" as jamming it with.

Check jamming with (this is the block jamming with rule):
	say "[The noun] [is-are] not something you could jam with [a second noun]." instead.

Table of analyzing actions (continued)
topic	testing rule
"jamming with"	test jamming with rule

This is the test jamming with rule:
	let jam-target be a random visible thing that is not the noun in the location of the test-actor;
	say test announcement for "jamming [the jam-target] with [the noun]";
	try the test-actor trying jamming the jam-target with the noun;
	say test announcement for "jamming [the noun] with [the jam-target]";
	try the test-actor trying jamming the noun with the jam-target.
 

Chapter Looking through

Looking at it through is an action applying to one visible thing and one carried thing.

Understand "look at [something] thru/with/using [something]" as looking at it through.
Understand "examine [something] thru/with/using [something]" as looking at it through.
Understand "read [something] thru/with/using [something]" as looking at it through.

Looking through is an action applying to one thing.

After reading a command:
	if the player's command includes "through":
		replace the matched text with "thru".
[otherwise I would have to do understand "look" as something new and then redefine all the related commadns... no thanks.]

Understand "look thru [something]" as looking through.

Check looking through (this is the block looking through rule):
	say "You can't see through [the noun]." instead.

Instead of looking at something through something:
	try looking through the second noun.


Table of analyzing actions (continued)
topic	testing rule
"looking through"	test looking through rule
"looking at through"	test looking at through rule

This is the test looking through rule:
	say test announcement for "looking through [the noun]";
	try the test-actor trying looking through the noun.

This is the test looking at through rule:
	let through-target be a random visible thing that is not the noun in the location of the test-actor;
	say test announcement for "looking at [the through-target] through [the noun]";
	try the test-actor trying looking at the through-target through the noun;
	say test announcement for "looking at [the noun] through [the through-target]";
	try the test-actor trying looking at the noun through the through-target;

 
Chapter Mapping

Mapping is an action out of world.

Understand "map" as mapping.

Carry out mapping:
	say "[fixed letter spacing][line break] [if the location is the VIP lounge]VIP[otherwise]Vip[end if]     [if the location is the Stage]STAGE[otherwise]Stage[end if]      [if the location is the artist hangout]HANGOUT[otherwise]Hangout[end if][paragraph break] [if the location is the Bar]BAR[otherwise]Bar[end if]     [if the location is the Dance floor]FLOOR[otherwise]Floor[end if]    [if the location is the Hall of Fame]HALL OF FAME[otherwise]Hall of Fame[end if][paragraph break][if the location is the Arcade corner]ARCADE[otherwise]Arcade[end if]  [if the location is the Entrance]ENTRANCE[otherwise]Entrance[end if]  [if the location is the Dark corner]DARK CORNER[otherwise]Dark corner[end if][variable letter spacing][line break]".


Chapter Mixing into

Mixing it into is an action applying to one carried thing and one thing.

Understand "mix [something] into/with/in/to/on/onto [something]" as mixing it into.
Understand the command "pour" as "mix".

["mix X and Y" should be accepted. Unfortunately the parser intercepts "and" at an early stage so it can't be used in an understand phrase, so we have to replace the word with something else.]
After reading a command:
	if the player's command includes "mix" and the player's command includes "and":
		replace the matched text with "with".

Check mixing when the noun is not a drink:
	say "You can't mix those!" instead.


Table of analyzing actions (continued)
topic	testing rule
"mixing into"	test looking through rule

This is the test mixing into rule:
	let mix-target be a random visible thing that is not the noun in the location of the test-actor;
	say test announcement for "mixing [the mix-target] into [the noun]";
	try the test-actor trying mixing the mix-target into the noun;
	say test announcement for "mixing [the noun] into [the mix-target]";
	try the test-actor trying mixing the noun into the mix-target;


Chapter Moving to 

Moving to is an action applying to one visible thing.

Understand "go to [any room]" as moving to.
Understand "go to [any goable person]" as moving to.
Understand "go [any room]" as moving to.
Understand "go [any goable person]" as moving to.
Understand "move to [any room]" as moving to.
Understand "move to [any goable person]" as moving to.
Understand "[any goable person]" as moving to.
Understand "[any room]" as moving to.

[
Understand "[any move-to-object thing]" as moving to.
Definition: a thing is a move-to-object if it is a room or (it is a known person and it is in a room).]

Definition: a person is goable if it is known and the location of it is a room.

[going to the dance floor is a bit problematic because the command DANCE interferes]
Understand "dance [any dancy room]" as moving to.

Definition: a room is dancy if it is the dance floor.

Understand "[text]" as a mistake ("[unknown command]").

To say unknown command:
	say "That verb is not used in this game.[run paragraph on][line break]";
	if the location is the location of Norbert and a random chance of 1 in 15 succeeds:
		say "[line break]Norbert asks, 'YLAC?'[run paragraph on][line break]".

Check moving to when the location is the noun:
	say "You are already there." instead.

Check moving to when the location is the location of the noun:
	say "[The noun] is right here." instead.

Check moving to when the noun is not a room and the location of the noun is not a room:
	say "You can't go to [the noun] right now." instead.

Carry out moving to:
	if the noun is a room:
		move the player to the noun;
	otherwise:
		move the player to the location of the noun.

Moving to is traveling.
Going is traveling.


Chapter Playing

Playing is an action applying to one thing.

Understand "play [something]" as playing.
Understand "play with [something]" as playing.

Check playing (this is the block playing rule):
	say "You can't play [the noun]." instead.
	

Table of analyzing actions (continued)
topic	testing rule
"playing"	test playing rule

This is the test playing rule:
	say test announcement for "playing [the noun]";
	try the test-actor trying playing the noun.	


Chapter Pointing at

Pointing at is an action applying to one visible thing.

Understand "point at/to [something]" as pointing at.
Understand "point [something]" as pointing at.
Understand "point" and "point at/to" as pointing at.

Report pointing at (this is the pointless pointing rule):
	say "You point at [the noun]. Nothing happens."


Table of analyzing actions (continued)
topic	testing rule
"pointing at"	test pointing at rule

This is the test pointing at rule:
	say test announcement for "pointing at [the noun]";
	try the test-actor trying pointing at the noun.	


Chapter Putting under

Putting it under is an action applying to one carried thing and one visible thing.

Understand "put [something] under [something]" as putting it under.

Check putting it under (this is the block putting under rule):
	say "There wouldn't be much point in that."

Table of analyzing actions (continued)
topic	testing rule
"putting under"	test putting under rule

This is the test putting under rule:
	if the player has the noun:
		let put-target be a random visible thing that is not the noun in the location of the test-actor;
		say test announcement for "putting [the noun] under [the put-target]";
		try the test-actor trying putting the noun under the put-target;
	otherwise if the player is carrying something:
		let put-target be a random thing carried by the player;
		say test announcement for "putting [the put-target] under [the noun]";
		try the test-actor trying putting the put-target under the noun;
	otherwise:
		say "[italic type](no carried things; can't test putting under)[roman type]".


Chapter Scraping with

Scraping it with is an action applying to one thing and one carried thing.

Understand "scrape [something] with [something]" as scraping it with.
Understand "take [something] with [something]" as scraping it with.
Understand "get [something] with [something]" as scraping it with.
Understand "scrape [something] off with [something]" as scraping it with.
Understand "take [something] off with [something]" as scraping it with.
Understand "get [something] off with [something]" as scraping it with.

Check scraping it with (this is the block scraping with rule):
	say "That command was too complex in this case. You might want to try to just take [the noun]."


Chapter Scraping off

[Not in alphabetical order here but the scrape with should be the default when the player types SCRAPE X.]

Scraping it off is an action applying to one things and one visible thing.

Understand "scrape [something] off [something]" as scraping it off.

Check scraping it off:
	say "[The noun] is fixed firmly in place." instead.

Check scraping it off when the noun is not a part of the second noun:
	say "[The noun] is not something that could be scratched off [the second noun]."


Chapter Talking to

Talking to is an action applying to one thing.

Understand "talk to/with [something]" as talking to.
Understand "talk [something]" as talking to.
Understand the command "t" and "chat" as "talk".
Understand "talk" and "talk to" as talking to.

Rule for supplying a missing noun while talking to and the number of NPC persons in the location is 1:
	change the noun to a random NPC person in the location;
	clarify "to [the noun]".

Instead of talking to the player:
	say "You mumble something to yourself." instead.
	
Check talking to an irrelevant person (this is the block talking to rule):
	say "You have nothing to say to [the noun]." instead.

Check talking to when the noun is not a person (this is the block talking to inanimate things rule):
	say "You can only talk to people." instead.

Carry out talking to:
	repeat through the conversation table of the noun:
		say "[quip entry][line break]";
		if the number of filled rows in the conversation table of the noun is greater than 1:
			blank out the whole row;
		break.

A person has a table-name called the conversation table.


Table of analyzing actions (continued)
topic	testing rule
"talking to"	test talking to rule

This is the test talking to rule:
	say test announcement for "talking to [the noun]";
	try the test-actor trying talking to the noun.	


Chapter Zapping with

Zapping it with is an action applying to one thing and one carried thing.

Understand "zap [something] with [something]" as zapping it with.
Understand "attack [something] with [something]" as zapping it with.
Understand the commands "tase" and "taze" and "stun" as "zap".

Check zapping it with (this is the block zapping with rule):
	say "You can't use [the second noun] for that." instead.

Does the player mean zapping something with a taser: it is likely.
Does the player mean zapping a person with something: it is likely.
Does the player mean zapping a person with a taser: it is very likely.

Table of analyzing actions (continued)
topic	testing rule
"zapping with"	test zapping with rule

This is the test zapping with rule:
	if the player is not carrying the taser:
		say "[italic type]Not carrying the taser; can't test zapping with[roman type]";
	otherwise:
		say test announcement for "zapping [the noun] with the taser";
		try the test-actor trying zapping the noun with the taser.	


Volume II - World

Book When play begins

When play begins (this is the intro rule):
	say "'[yo momma insult]!'[paragraph break]";
	say "Your heart is pounding and you find it hard to breathe. You didn't supect that the quips would hit this hard in a real situation. Focus. Focus![paragraph break]";
	say "'[lame insult]...'[paragraph break]";
	say "Oh man. You didn't just say that. You did. Oh man.[paragraph break]";
	say "The crowd starts booing and whistling. It's over. You blew it. Gus grins like a retard who has just plucked the last leg off a spider. You're not sure that you can find it in you to challenge him again.[line break][paragraph break]".


Book The Player

Part Player character

The player is female. The description of the player is "This is it. You're here to win the insult battle championship, and you're ready for it. Maybe.

Your hair is in a tight ponytail and you're wearing the most credible street clothes you own.".

Instead of searching the player:
	try taking inventory.

Instead of smelling the player:
	say "The deodorant hasn't failed. Yet."

Instead of zapping yourself with the taser:
	say "The situation is not that dire yet."

Eating yourself is acting silly.
Drinking yourself is acting silly.
Kissing yourself is acting silly.
Buying yourself is acting silly.
Playing yourself is acting silly.

Instead of acting silly:
	say "That's just crazy talk."


Part Clothes

The street clothes are worn by the player. The street clothes are plural-named. The indefinite article of the street clothes is "your". 

Understand "clothing" as the street clothes.

The description of street clothes is "You express your individuality by wearing baggy hip-hop clothes, just like everyone else."

Check taking off street clothes:
	say "This is not a strip club." instead.
	
The hint list of the street clothes is the table of street clothing hint.

Table of street clothing hint
hint
"The main purpose of your clothes is to make you look good and not be naked."
"Other than that the clothes have no particular use."


The track jacket is worn by the player. The description is "The track jacket is the latest craze. Everybody who's somebody has to have one. It's way oversized, just like it should be."

Understand "clothing" as the track jacket.

The hint list of the track jacket is the table of track jacket hints.

Instead of dropping the track jacket:
	say "Better not leave the jacket out of sight."

Table of track jacket hints
hint
"The track jacket shields you from the wind. Or it would, if you were outside."
"The jacket is also big enough to conceal something under it if necessary."


Part Items

Chapter Coins

The coins are a thing. They are plural-named. The indefinite article is "a handful of". The description is "You have a handful of coins."

Understand "handful" and "money" and "coin" as the coins.

Instead of dropping the coins:
	say "Better not leave your coins unguarded. They'll be gone before you know it."

Instead of putting the coins on something:
	try dropping the coins.

The hint list of the coins is the table of coin hints.

Table of coin hints
hint
"Coins are traditionally used to buy goods and services."
"There aren't enough coins to buy drinks."
"There's something else you can buy."
"You can operate the jukebox by inserting coins into it."


Book Rooms

Part Map layout

The VIP lounge, the Stage, the Artist hangout, the Bar, the Dance floor, the Hall of Fame, the Arcade corner, the Entrance, and the Dark corner are rooms.  

The VIP lounge is north of the Bar. The VIP lounge is northwest of the Dance floor. 

The Stage is north of the Dance floor. The Stage is east of the VIP lounge. The Stage is west of the Artist hangout. The Stage is northwest of the Hall of Fame. The Stage is northeast of the Bar.

The Artist hangout is north of the Hall of Fame. The Artist hangout is northeast of the Dance floor.

The Bar is north of the Arcade corner. The Bar is west of the Dance floor. The Bar is northwest of the Entrance.

The Dance floor is west of the Hall of Fame. The Dance floor is northwest of the Dark corner. The Dance floor is north of the Entrance. The Dance floor is northeast of the Arcade corner.

The Hall of Fame is north of the Dark corner. The Hall of Fame is northeast of the Entrance.

The Arcade corner is west of the entrance.

The Entrance is west of the Dark corner.


Part Room description headings

A room has some text called the position description. 
The position description of the Dance floor is "center of the club".
The position description of the VIP lounge is "NW corner".
The position description of the Artist hangout is "NE corner".
The position description of the Bar is "western side".
The position description of the Hall of Fame is "eastern side".
The position description of the Arcade corner is "SW corner".
The position description of the Entrance is "southern side".
The position description of the Dark corner is "SE corner".

[The following would've worked fine but it messed up the status bar.

Rule for printing the name of a room which is not the Stage while not asking which do you mean:
	say "[printed name] [roman type]([position description])"; ]
	

Carry out looking (this is the new room description heading rule):
	say bold type;
	if the visibility level count is 0:
		begin the printing the name of a dark room activity;
		if handling the printing the name of a dark room activity,
			issue miscellaneous library message number 71;
		end the printing the name of a dark room activity;
	otherwise if the visibility ceiling is the location:
		say "[visibility ceiling]";
	otherwise:
		say "[The visibility ceiling]";
	say roman type;
	[this rule is an exact copy of the standard rules version, except the following two lines:]
	if the location is not the Stage:
		say " ([position description of the location])";	
	let intermediate level be the visibility-holder of the actor;
	repeat with intermediate level count running from 2 to the visibility level count:
		issue library message looking action number 8 for the intermediate level;
		let the intermediate level be the visibility-holder of the intermediate level;
	say line break;
	say run paragraph on with special look spacing.
	
The new room description heading rule is listed instead of the room description heading rule in the carry out looking rules.


Part Backdrops

Chapter Clubbers

The clubbers are backdrop. They are everywhere. They are plural-named and improper-named. The description is "Gus has drawn quite a crowd here tonight. Everyone likes to see a good humiliation, unfortunately."

Understand "people" and "crowd" as the clubbers.

Instead of talking to the clubbers:
	say "There's no use going around talking to random people."
	
Instead of searching the clubbers:
	say "You can't go around frisking random people!"
	
Instead of dancing with the clubbers:
	try dancing with yourself.

The hint list of the clubbers is the table of no importance.
	

Chapter Compass rose

The compass rose is a backdrop. It is everywhere. It is distant.
Understand "ceiling" as the compass rose. The description is "The compass rose painted on the ceiling makes it easy to know your bearings. You are now at the [position description of the location]."

The hint list of the compass rose is the table of no importance.


Chapter Stage

The stage-prop is backdrop. It is everywhere. The printed name of stage-prop is "stage". Understand "stage" as the stage-prop. The description is "This is the stage where you shall battle Gus."

Instead of getting off the stage-prop when the location is the Stage:
	try going south.
	
Instead of climbing down from the stage-prop:
	try getting off the stage-prop.

Instead of climbing the stage-prop:
	try moving to the Stage.

Instead of entering the stage-prop:
	try moving to the Stage.

The hint list of the stage-prop is the table of stage hints.

Table of stage hints
hint
"You can challenge Gus by climbing on the stage."
"Other than serving as the central point of yo momma battles, the stage has no importance."


Chapter Tables

A table is a kind of supporter. The description of a table is usually "There's no food served here so the tables are just for holding drinks.". A table is usually scenery. A table is usually lens-searchable.

Understand "tables" as a table.

In the VIP lounge is a table.
In the Artist hangout is a table.
In the Dance floor is a table.
In the Hall of Fame is a table.
In the Arcade corner is a table.
In the Entrance is a table.

Instead of dropping when a table (called the desk) is in the location:
	try putting the noun on the desk.
	
Instead of searching a table for the first time:
	say "You find a fresh wad of bubblegum under the nearest table.";
	now the bubblegum is a part of the noun.

Instead of searching a table when the bubblegum is a part of the noun:
	say "There's a fresh wad of bubblegum under the table."

The hint list of a table is usually the table of table hints.

Table of table hints
hint
"The tables are useful for holding items on their surface."
"Sometimes there are things under tables as well."
"Some tables are slightly different than others. For example, some are better lit than others."


Chapter Bubblegum

The bubblegum is a familiar thing. "There's a wad of bubblegum stuck under a table." The description is "The gum is moist and sticky." The indefinite article is "a wad of".

Understand "bubble" and "gum" and "chewing" and "wad" as the bubblegum.

Instead of eating the bubblegum:
	say "Ew. No. Ew."

Instead of taking the bubblegum when the bubblegum is a part of a table:
	say "You need to scrape it off the table, and you need gloves or a tool to do it. It's too icky to touch with bare hands."

Check scraping the bubblegum with a card when the bubblegum is a part of the second noun:
	say "The gum is already on [the second noun]." instead.

Carry out scraping the bubblegum with a card:
	now the bubblegum is a part of the second noun;
	now the hint list of the bubblegum is the table of found bubblegum hints;
	award 1 point for "getting the bubblegum".

Report scraping the bubblegum with a card:
	if the bubblegum was a part of a card:
		say "You transfer the gum on [the second noun].";
	otherwise:
		say "You scrape the gum off. It's now on [the second noun]."

Check scraping the bubblegum with a card:
	ignore the block scraping with rule.

Check scraping the bubblegum with something which is not a card:
	say "You can't scrape the gum with [the second noun]." instead.

Instead of scraping the bubblegum with something when the second noun is the jacket or the second noun is the street clothes:
	say "Your almost new clothes would get ruined!".

Instead of scraping the bubblegum off a table:
	try taking the bubblegum.

Instead of scraping the bubblegum with the sweater:
	say "While you hold no love for Gus's possessions, the gum would just get smudged into the fabric and it'd never come off."

Instead of putting a card on the bubblegum:
	say "The gum sticks on the card but not hard enough to make it come loose. You might have to resort to scraping."

Rule for inventory listing the contents of a card (called the gum-holder):
	if the bubblegum is a part of the gum-holder:
		say ". [A bubblegum] is stuck on [the gum-holder]".

Procedural rule while the noun is the bubblegum or the second noun is the bubblegum:
	ignore the carrying requirements rule;
	ignore the can't insert what's not held rule.

Instead of taking the bubblegum when the bubblegum is a part of a card (called the gum-holder):
	if the player is carrying the gum-holder:
		say "You already have that.";
	otherwise:
		clarify "taking [the gum-holder]";
		try taking the gum-holder.
		
After examining a card when the bubblegum is a part of the noun:
	say "On [the noun] is a sticky wad of bubblegum."


The hint list of the bubblegum is the table of unfound bubblegum hints.

Table of unfound bubblegum hints
hint
"You need some bubblegum."
"Where would you expect to find some?"
"Some people have a disgusting habit of sticking their used bubblegum under tables."

Table of found bubblegum hints
hint
"Now that you have the bubblegum, what should you do with it?"
"The gum is sticky."
"You could vandalize some property with it."
"The jukebox has quite a lot of moving parts."
"You can jam the buttons on the jukebox with the gum."
"Put some gum under the button that plays classical music."


Part Arcade corner

The description of the Arcade corner is "In this corner of the club there's a collection of arcade machines. This is where all the tough kids like to hang out."


Chapter Things

The arcade machines are scenery in the Arcade corner. They are plural-named and lens-searchable.
The description is "You recognize some of the names: Bubble Bobble, Pong, Zork, Tetris. Really old stuff[if Vincent is in the location]. Vincent is fervently bashing the keys of something called [']Escapade!['][end if]."

Understand "bubble", "bobble", "pong", "zork" and "tetris" as the arcade machines.
Understand "game", "games", "machine" and "video" as the arcade machines.

Instead of playing the arcade machines:
	say "You're not here to play games."
	
Instead of switching off the arcade machines:
	say "They'd kick you out if you went around sabotaging the games."
 
Instead of switching on the arcade machines:
	say "They are already running."

Instead of inserting the coins into the arcade machines:
	try playing the arcade machines.

Instead of searching the arcade machines when the coins are unseen:
	say "You scoop up a good handful of coins from the coin return slots. Good thing Vincent is not brainy enough to collect his rejected coins.";
	now the player is carrying coins;
	remove the hints from the arcade machines;
	remove the hints from the Escapade game;
	award 1 point for "finding coins".

Instead of searching the arcade machines:
	say "There's nothing to find from the machines."


The Escapade game is scenery in the Arcade corner. The description is "The title [']Escapade!' and the headline 'Experience it in exciting 3D!['] is written on top of the machine in cartoony red and yellow letters."

Instead of playing the Escapade game:
	say "You're not that interested in the game[if Vincent is in the location]. Besides, Vincent is occupying it[end if]."

Does the player mean playing the Escapade game:
	if Vincent is not in the arcade corner:
		it is very likely;
	otherwise:
		it is unlikely.
	
Flavor text rule when the location is the Arcade corner and Norbert is in the Arcade corner and Vincent is in the Arcade corner and a random chance of 1 in 20 succeeds:
	say "[one of]Norbert looks at [one of]Zork[or]Pong[or]Tetris[or]Bubble Bobble[at random] as if he would like to play, but then shakes the thought off and returns to searching the lens.[or]'You need to knock on the door to get the...' Norbert says. 'Shuddup, dweeb!' Vincent screams. 'No spoilers!'[at random]".

The hint list of the arcade machines is the table of arcade hints.
The hint list of the Escapade game is the table of arcade hints.

Table of arcade hints
hint
"The games are coin operated."
"Sometimes the machines don't accept coins and return them."
"Try searching the machines."


Chapter Vincent

Vincent is a man in the Arcade corner. "Speaking of tough kids, Vincent is hacking away on one of the machines." The description of Vincent is "Vincent is a bully. There's nothing that makes him happier than beating people up, and that's the only thing he's good at."

Instead of talking to Vincent:
	say "There's really nothing to discuss with Vincent. It's a small miracle he can form even basic sentences."

Instead of attacking Vincent:
	say "Not a good idea."

Instead of kissing Vincent:
	say "He's not really your type. You prefer more than a spoonful of brain."	

Instead of zapping Vincent with the taser:
	say "The taser might not be powerful enough for that mountain of meat. And if it isn't, he'll just snap your neck like a pencil."


The hint list of Vincent is the table of Vincent hints.

Table of Vincent hints
hint
"Vincent has very few skills. Beating up people is one of them."
"You need to find a way to get him agitated."
"Insulting him is a good way to get him steaming."
"There are two people you need to get beaten up."
"The two people that should get a good beating, deserve they it or not, are Norbert and the Sleaze."


Section insulting

Character question is a truth state that varies. Character question is false.

Instead of insulting Vincent:
	say "'Hey Vincent,' you say. 'Word on the street is that [lame insult in lower case].'
	
Vincent stops in his tracks. You can hear gears turning in his head. He turns around, grabs you by the collar and lifts you in the air. 'Who's been sayin['] that? Talk ya little punk!'[one of][line break]Good ol['] Vincent. No matter how lame the insult, you can count on him getting agitated.[or][stopping]";
	change character question to true;
	change the command prompt to "[one of]You reply:[or]:[stopping] ";

After deciding the scope of the player while character question is true:
	repeat with X running through people:
		place X in scope.
	
After reading a command when character question is true:
	if the player's command matches "guy/man/dude/boy":
		say "Whom do you mean?";
		reject the player's command;
	otherwise if the player's command matches "[yourself]":
		say "'I'd kick your ass if you weren't a girl,' Vincent growls and drops you on the floor.";
	otherwise if the player's command matches "[guard]" or the player's command matches "[bouncer]" or the player's command matches "[barkeep]":
		say "Vincent looks like he's thinking hard, even though that's unlikely. 'I can't go beatin['] the staff. They would kick me out and I couldn't finish my game,' he concludes and lets you go.";
	otherwise if the player's command matches "[Britney]":
		say "'Dude, she's a stuck up bitch, but I don't think I could beat up a girl, not even if she wasn't Gus's girl,' Vincent ponders and lets you go.";
	otherwise if the player's command matches "[Gus]":
		say "'I don['] believe ya, punk. Gus and I are friends, he wouln['] say that [']bout my momma.'";
	otherwise if the player's command matches "[Ralph]":
		say "'Man, that Ralph. He's Gus's posse so I don't think I should beat him up,' he says.";
	otherwise if the player's command matches "[posse]":
		say "Vincent ponders for a while. 'I could take on three or four, but they are just too many,' he finally says,";
	otherwise if the player's command matches "[Joe Mahma]" or the player's command matches "[mysterious stranger]":
		say "'Who? I don['] know [']im. Yer just yankin['] my leg,' he says and drops you down.";
	otherwise if the player's command matches "[the Sleaze]":
		if the VIP-sleaze is in the VIP lounge:
			say "'That guy in the lounge? Let me at him,' Vincent says and rushes to the lounge. He returns a couple of minutes later. 'Damn, I almost bruised my knuckles,' he complains. You see [the Sleaze] staggering back into the bar.";
			now the VIP-sleaze is beaten;
			remove the VIP-sleaze from play;
			now the VIP pass is in the VIP lounge;
			now the Sleaze is in the Bar;
			if the Sleaze is unbeaten:
				now the Sleaze is beaten;
			choose row 1 in the table of Hostile Britney Conversation;
			change the quip entry to "'Hey, I got Vincent to beat up the dirtbag.'[paragraph break]'Really? I don't know... I can't really know it was you, can I?'[paragraph break]Sigh.";
		otherwise:
			say "'[one of]The greasehair over there[or]That smug bastard again[stopping]? He's goin['] to be picking his teeth from the floor in about five seconds,' Vincent barks and storms into the bar. You witness a gruesome act that includes screaming, punching, and unhealthy amount of excruciating pain. You almost feel sorry for the Sleaze. Almost.[paragraph break]Vincent storms back, shaking his head. 'What a weasel,' he mutters and returns to his game.";
			if the Sleaze is unbeaten:
				now the Sleaze is beaten;
			now the Sleaze is recently beaten;
	otherwise if the player's command matches "[Norbert]":
		if the Fight on the Dance Floor has not happened:
			say "'That pencilneck? He'll eat through a straw for a month,' Vincent says and storms to the dance floor.[paragraph break]He goes straight to Norbert, exchanges a few words and starts to slap him around. The bouncer sees this and leaves his post to cool things down.";
			remove Vincent from play;
			remove the bouncer from play;
			remove Norbert from play;
			now the commotion is in the Dance floor;
		otherwise:
			say "'I know! I already taught the poindexter a lesson,' Vincent says.";
	otherwise if the player's command matches "[vincent]" or the player's command matches "you":
		say "There's a long pause. 'Hey! I wouldn't say that! Ye'r just pullin['] my leg,' he finally says.";
	otherwise if the player's command matches "your/yo/ye/yer mom/momma/mamma/mother":
		say "'Yeah, real funny. Now scram before I kick your ass,' he says and pushes you away.";
	otherwise if the number of words in the player's command is greater than 1:
		say "Better not use that many words. Anything above one word is probably too much for Vincent's pea-brain to understand.";
		reject the player's command;
	otherwise:
		say "'[one of]Are you tryin['] to pull my leg?[run paragraph on][or]I don't understand what you're rambling about,[run paragraph on][or]You're just joking, right?[run paragraph on][at random]' he says and shoves you off before turning to the arcade machine again.[line break][line break]";
	change the command prompt to ">";
	change the character question to false;
	reject the player's command.

			
Chapter Plant

The plant is in the Arcade corner. "There's a tall plant standing in the corner." The description is "It's possibly some sort of small palm tree, creating atmosphere." It is fixed in place. It is lens-searchable.

Understand "palm" and "pot" and "dirt" and "tree" and "tall" as the plant.

Instead of mixing a drink into the plant:
	say "You empty [the noun] into the plant and discard the glass[one of].[or].[or]. Poor plant, hopefully it likes [noun].[or].[stopping]";
	reset the noun.

Instead of inserting a drink into the plant:
	try mixing the noun into the plant.

Instead of inserting something into the plant:
	say "There's no reason to do that to the poor plant."
	
Instead of pushing or pulling the plant:
	say "The plant is way too heavy to move."
	
Instead of pushing the plant to:
	try pushing the plant.

The hint list of the plant is the table of plant hints.

Table of plant hints
hint
"The plant's purpose is to look pretty."
"There is one thing that the plant is useful for."
"If you have a drink that you want to get rid of, you could pour it into the plant pot."


Part Artist hangout

The description of Artist hangout is "The people who are performing in the club usually hang around here by the stage."

Understand "artists" as the Artist hangout. 
Understand "corner" as the Artist hangout.


Chapter Chair

The hangout-chair is a chair in the Artist hangout. The description is "[if the sweater is on the hangout-chair]Gus's sweater hangs on the back of the chair.[otherwise]It's a chair like all the other chairs in the club.[end if]".

The printed name of the hangout-chair is "chair". 
Understand "chair" as the hangout-chair.

Instead of pushing the hangout-chair to when the sweater is on the hangout-chair:
	say "Pushing the chair would make taking the sweater even more obvious."


Chapter Gus

Gus is a man in the Artist hangout. "Gus stands here chatting with his posse."
The description of Gus is "Gus, the insult battle champion. He's not that tough. You could beat him, if you were a little bit more well prepared..."

After examining Gus when Gus wears the sweater:
	say "Gus is wearing a blue sweater."

Instead of talking to Gus:
	say "[one of]'Beat it, kid. We don't have anything to talk about.'[or]'I said beat it! Is there something you didn't understand?'[or]'I ain't got time for wannabes. Get lost.'[stopping]"

Instead of insulting Gus:
	try challenging Gus.

Check challenging Gus:
	say "'Kid, you just don't know the ropes, do you?' Gus sneers. 'You challenge the champion -- me -- by getting on that stage. We do this the right way or not at all.'" instead.
	
Instead of attacking Gus:
	say "Broken legs won't help here; if Gus is out of the game, he keeps the title. You won't win by default if he can't climb on the stage."

Instead of zapping Gus with the taser:
	try attacking gus.

Instead of showing the business card to Gus:
	if the Sleaze is totally beaten:
		say "'Hey, this guy...'[paragraph break]'Yeah, we already beat the crap out of him. What's the matter with you?' Gus gushes.";
	otherwise if Britney is drunk:
		say "'Hey Gus, I saw this creep getting Britney drunk over there at the lounge.'[paragraph break]'What?' Gus leans over the stage and sees Britney bouncing on the sofas. 'Who was it? Let's go, gang.'

Gus takes his posse and heads to the bar. You can't quite see what's happening and it might be better so considering how easily you get nightmares from seeing excess violence. They return minutes later. 'That should teach him,' Gus says and cracks his knuckles.";
		now the Sleaze is totally beaten;
		now the Sleaze is scenery;
	otherwise if VIP-Sleaze has been in the VIP lounge:
		say "'Hey Gus, there[if the VIP-sleaze is in the VIP lounge] was[otherwise]'s[end if] some douche hitting on your girl.'[paragraph break]Gus waves you off. 'Brit can take care of herself, as long as she doesn't get drunk.'";
	otherwise:
		say "'Hey Gus, this one dude there...'[paragraph break]'Get lost. Why should I care?' Gus says."

The hint list of Gus is the table of Gus hints.

Table of Gus hints
hint
"Gus is the guy you need to beat in a yo momma insult battle."
"You can start a battle by climbing on the stage."
"There's one thing you need from Gus."
"He's wearing it."
"You need to read the tag on Gus's sweater."
"You can't read the tag while Gus is wearing the sweater."
"Find a way to get Gus remove his sweater."


Chapter Posse

The posse is a person in the Artist hangout. It is scenery, plural-named and proper-named. The printed name is "Gus's posse". The description is "When you're famous, you get all kinds of mindless drones following you around doing nothing but sucking up to you. It's so lame and childish. And so unfair that [italic type]you[roman type] don't have a posse. Yet."

Understand "group" and "gus's" and "drones" and "gang" as the posse.

Instead of talking to the posse:
	say "They ignore you. Gus is the only person worth talking to in their little world."

The hint list of the posse is the table of no importance.


Chapter Sweater

Gus is wearing a sweater. The description of the sweater is "[if gus is wearing the sweater]Gus wears a[otherwise]It's Gus's[end if] hooded blue sweater with white decorations. A tag is [if gus is wearing the sweater]protruding from the neck[otherwise]sewn to it[end if].[if the tag is unread][one of][paragraph break]For some reason a thought that the tag is somehow important crosses your mind.[or][stopping][end if]".

Understand "shirt" as the sweater.

Check wearing the sweater when the player is wearing the track jacket:
	say "The track jacket is way too big to fit the sweater over it." instead.

Definition: the sweater is concealed if the player is wearing it and the player is wearing the track jacket.

Before dropping the sweater when the location is the Artist hangout:
	let chair-target be a random chair in the location;
	try putting the sweater on the chair-target instead.

Before traveling when the player has the sweater and the sweater is not concealed and the location is the Artist hangout:
	say "One of Gus's goons sees you leave and points at you. Gus turns around and sees you [if the player is wearing the sweater]wearing[otherwise]with[end if] his sweater. 'Hey, whatcha think you're doing? That's my shirt, come back with it!' he shouts.[if the player is wearing the sweater][line break]'And take it off you! Can't you afford own clothes?'" instead.

After wearing the jacket when the player is wearing the sweater:
	say "You put the jacket on and close the zipper so that you can't see the sweater under it."

Before taking off the sweater when the player is wearing the jacket:
	clarify "first taking off the jacket";
	silently try taking off the jacket.

Instead of moving to the stage when the player has the sweater:
	say "Better not take Gus's sweater with you on the stage. He'd just score easy points for accusing you for theft."

Every turn when the player is wearing the sweater and the location is not the Artist hangout:
	award 1 point for "stealing Gus's sweater";
	change the hint list of the sweater to the table of stolen sweater hints;
	change the hint list of the tag to the table of stolen sweater hints.

After putting the sweater on the corner table:
	say "You put the sweater on the corner table. The spotlight lights it brightly."

Instead of putting the sweater under the spotlights:
	clarify "putting [the sweater] on [the corner table]";
	try putting the sweater on the corner table.

Check showing the sweater to Gus:
	say "The sweater could come in handy yet. Better not let Gus have it unless he wrestles it from your hands." instead.

Instead of showing the sweater to Gus when "tag" has inspired us:
	silently try taking off the sweater;
	say "'I'll just leave this here,' you say.[paragraph break]'Good. Stop messing with my things!'";
	try dropping the sweater.

Instead of showing the sweater to Joe Mahma:
	say "'Can you read what it says in the tag?' you ask Joe Mahma. 'This is a problem you have to solve by yourself,' he zens."

Instead of showing the sweater to Norbert:
	say "'Can you read the tag on this sweater?' you ask Norbert. 'Oh, I believe it's quite impossible, considering the state of my eyewear,' he says."

Check showing the sweater to Ralph:
	say "Better not let him know you nicked Gus's sweater." instead.

Check showing the sweater to Vincent:
	say "He'd just blow his nose on it surely." instead.

Check showing the sweater to Britney:
	say "You're not sure how she would react, so you decide not to draw her attention to the sweater." instead.

Instead of showing the sweater to the guard:
	say "'Could you read the tag for me, please?'[paragraph break]'Ma'am, I can barely see you through these sunglasses,' he says."


The hint list of the sweater is the table of sweater hints.
The hint list of the tag is the table of sweater hints.

Table of sweater hints
hint
"The sweater is important. You should find a way to steal... uh, borrow it."
"First you should get Gus to remove it."
"Since it's unlikey you can talk Gus into taking off the sweater, you need to give him some other reason to do it."
"Altering the environment a bit should make Gus remove the sweater."
"Making the club hotter would make Gus take the extre piece of clothing off."
"There's a thermostat by the entrance."
"Find a way to switch the thermostat to warm, and Gus will take the sweater off."

Table of removed sweater hints
hint
"The sweater is now available, but if you try to leave with it, Gus will stop you."
"You need to make sure Gus or his posse won't see you leave with the sweater."
"There's no practical way of making everyone look elsewhere, so you have to think of something else."
"Making sure the posse won't see the sweater when you leave should be enough."
"You need to conceal the sweater somehow."
"You have an item that should be big enough to conceal the sweater."
"The track jacket is big enough to cover the sweater."
"Wear the sweater, then wear the jacket on top of it."

Table of stolen sweater hints
hint
"You need to read what it says on the sweater's tag."
"The problem is that you don't see what it says on the tag."
"You need to make the text bigger."
"Norbert has lost a lens from his glasses. Find it and read the tag through it."


Chapter Tag

A tag is part of the sweater. The tag can be read or unread. The description of the tag is "[if Gus is wearing the sweater]You can't quite read the tag while Gus is wearing the sweater.[otherwise if the sweater is not on the corner table]The text on the tag is too small to make out. It looks important, or at least as important as a clothes tag ever can. Damn lousy eyesight! Why did you have to forget to put on the contacts today?[otherwise]The light is more than sufficient but you can't quite make out what the tag says.[end if]" 

Instead of looking at the tag through the lens when the sweater is on the corner table and the tag is unread:
	say "With sufficient light and magnification you can easily read the tag. Washing instructions... wash separately... may release color... made for Cheap-O-Mart...
	
Wait, Cheap-O-Mart? Where they sell crap and imported knick-knacks to poor people?

Inspiration strikes you like a lightning. Gus, you're going down.";
	award 3 points for "finding out Gus wears crappy clothing";
	now the tag is read;
	get inspired by "tag";
	remove the hints from the sweater;
	remove the hints from the tag;
	remove the hints from the lens.

Instead of looking at the tag through the lens when the sweater is on the corner table and the tag is read:
	say "[']Cheap-O-Mart[']. The perfect insult."
	
Instead of looking at the tag through the lens:
	say "Through the lens the text on the tag would be large enough to read, but it's too dark here to make out the letters. You need better light."

Check taking the tag:
	say "It's sewn tightly to the sweater." instead.
	
Check taking the tag when Gus is wearing the sweater:
	say "'Keep your hands off me!' Gus snaps and slaps your hand away." instead.

Instead of putting the tag under the spotlights:
	clarify "putting [the sweater] on [the corner table]";
	try putting the sweater on the corner table.

Before showing the tag to:
	clarify "show sweater to [the second noun]";
	try showing the sweater to the second noun instead.


Chapter Speaker

The speaker is in the artist hangout. The speaker is fixed in place. "A massive loudspeaker is booming tunes next to the stage." The description is "The loudspeaker booms the tunes in deafening volume. Every bass beat makes the ground tremble slightly."

Understand "loud" and "loudspeaker" and "subwoofer" and "sub" as the speaker. 

Instead of listening to the speaker:
	try listening.
	
Instead of searching the speaker:
	say "There's nothing under the speaker."

Instead of searching the speaker when the lens is hidden or the lens is unreachable:
	say "Under the speaker near the wall you spot a bulging glass object. It can't be anything else than the lens from Norbert's glasses!";
	move the lens to the Artist hangout;
	now the lens is unreachable.

To decide whether bass booms:
	if techno is the current selection of the jukebox and the volume of the jukebox is high, decide yes;
	decide no.

Every turn when the location is the artist hangout and the lens is unreachable and bass booms:
	say "The loud bass tones make the lens under the speaker bounce up and down. At the same time it moves gradually more and more away from the wall until it's within your reach.";
	now the lens is reachable.

The hint list of the speaker is the table of no importance.


Chapter Lens

The lens is a familiar thing. The lens can be operational, hidden, unreachable, reachable or salvaged. The lens is operational. "A thick lens lies under the loudspeaker[if the lens is unreachable], just out of reach[end if]." The description is "The lens is thick and round. It looks like it came from the Hubble."

Understand "lense" as the lens.

Check looking through the lens:
	say "The world looks distorted through the lens. And huge." instead.

Instead of examining the unreachable lens:
	say "The lens bounces slightly whenever the speaker plays a bass beat, but not enough to make it move significantly.";

Instead of examining the unreachable lens when techno is the current selection of the jukebox:
	say "The bass-heavy techno makes the lens bounce whenever the speaker plays a bass beat, but the music isn't loud enough to make it move any closer to your reach.";

Instead of taking the unreachable lens:
	say "You can't quite reach far enough under the speaker to get the lens."

After taking the reachable lens:
	now the lens is salvaged;
	say "You reach under the speaker and grab the lens.";
	award 1 point for "salvaging the lens";
	remove the hints from Norbert;
	change the hint list of the lens to the table of found lens hints;
	change the hint list of the tag to the table of found lens hints;
	change the hint list of the sweater to the table of found lens hints.

Instead of showing the lens to Norbert when "tag" has inspired us:
	say "'I found your missing lens, Norbert.'[paragraph break]His eyes light up. 'Oh! Oh, thank you! I've been looking everywhere!' He takes the lens, snaps it into the frames and attaches it with a piece of white tape. 'Thanks, Jen,' he says and prances off.";
	remove Norbert from play;
	remove the lens from play;
	award 1 point for "returning the lens".

Instead of showing the lens to Norbert:
	say "That's a nice thing to do, but the lens could be useful yet."

Instead of putting the lens on something:
	clarify "looking at [the second noun] through [the lens]";
	try looking at the second noun through the lens.

Instead of putting the lens under the speaker:
	say "You just took it from there!"


The hint list of the lens is the table of lens hints.

Table of Lens hints
hint
"A lens from Norbert's glasses is missing. You should find it."
"Search everything to find it."
"The lens rolled under the speaker in the artist hangout."
"Unfortunately it's too far away to reach."
"You don't have anything long enough to reach at the lens."
"You could make the lens move by other means."
"The lens is under a loudspeaker, right?"
"How about making the music work for you."
"The right kind of music could shake the ground and nudge the lens towards you."
"What kind of music has a lot of bass?"
"Try playing techno on the jukebox."
"If that doesn't work, you need more power."
"Have you found a way to turn up the volume yet?"
"Search the jukebox to find the volume knob."
"Turn the volume up and switch the music to techno, and the lens should bounce at your reach."

Table of found lens hints
hint
"You have the lens now. Lenses can be used to make small things bigger."
"Look at the sweater tag through the lens."
"Now that you can read the tag through the lens, you need to find more light."
"Clubs create atmosphere by having dim lights. There's only one place where the light is sufficient enough."
"You wouldn't suspect the place where you find the sufficient light would be  the right one if you only looked at its name."
"You need to go to the dark corner."
"Put the sweater on the brightly lit table and try reading the tag with the lens again."


Part Bar

The description of the Bar is "A club wouldn't be a club if it didn't have a bar. The selection of drinks is written on a chalkboard behind the counter next to an educational poster."


Chapter Poster

The educational poster is scenery in the Bar. It is distant. The description is "'Watch out! Don't leave your drink unguarded!' It has a picture of a boogey man dropping a skull-marked pill into a cocktail glass."
Understand "picture" as the poster.

The hint list of the poster is the table of poster hints.

Table of poster hints
hint
"Did you see what the poster warns about?"
"You should definitely check out if that works."
"Find a drink and test if what the poster says is a real threat."
"Leave a drink on the counter, leave, and come back again."



Chapter Counter 

A counter is in the Bar. It is supporter and scenery and lens-searchable. Understand "table" and "bar" as the counter. The description is "The counter serves its function as a holder of glasses."

The hint list of the counter is the table of no importance.


Chapter Menu

The drinks menu is scenery in the Bar. It is distant. The description is "The menu shows they have [list of non-mix drinks] in their selection."
Understand "chalkboard" and "chalk" and "board" and "selection" as the drinks menu.

Definition: a drink is non-mix if it is not the mix.

The hint list of the menu is the table of unbought drink hints.


Chapter Drinks

Drink-color is a kind of value. Drink-colors are clear, brown, black, and red.

A drink is a kind of thing. A drink can be alcoholic or non-alcoholic. A drink is usually alcoholic. The indefinite article of a drink is "a glass of". A drink has a drink-color called color. The color of a drink is usually clear.
A drink can be safe, primed for drugging, or spiced. A drink is usually safe.

Understand "drink" and "glass" and "glass of" as the drink.

The cola is a non-alcoholic drink in the Bar. The description is "Ah, cola. A classic." The color is black. Understand "coke" as the cola.
The tonic is a non-alcoholic drink in the Bar. The description is "It's like water, but with bubbles." Understand "mineral" and "water" as the tonic.
The gin is a drink in the Bar. The description is "Gin, the grampa's choice."
The wine is a drink in the Bar. The description is "When beer just isn't fine enough." The color is red.
The beer is a drink in the Bar. The description is "Beer. The cause of, and solution to, all of life's problems." The color is brown.
The vodka is a drink in the Bar. The description is "Vodka is almost pure alcohol. The best way to get drunk quickly."

Before printing the name of a spiced drink while taking inventory:
	say "spiked ".

Understand "spiked" and "spiced" and "drugged" as a drink when the item described is spiced.
Understand "alcohol/alcoholic" and "booze" as a drink when the item described is alcoholic.
Understand "non-alcoholic" as a drink when the item described is non-alcoholic.

Instead of inserting a drink into something:
	try mixing the noun into the second noun.

Instead of drinking a drink:
	if the noun is alcoholic:
		say "Better keep your senses sharp.";
	otherwise:
		say "You're not especially thirsty."

Instead of drinking a spiced drink:
	say "No way! You'd probably be knocked out cold!" 

Instead of tasting a drink:
	try drinking the noun.

Instead of attacking a bought drink:
	say "That would just spill the contents everywhere."

Definition: a drink is masked alcohol if it is the mix and it is alcoholic and the color of it is black.

To reset (glass - a drink):
	now the glass is safe;
	if glass is the mix:
		remove mix from play;
	otherwise:
		now the glass is in the Bar.


The hint list of a drink is usually the table of unbought drink hints.

Table of unbought drink hints
hint
"You don't have any money to buy drinks."
"Even if you have money, you surely don't have enough."
"You need to find someone to buy you drinks."
"Talk to [the Sleaze] until he tells you how to get him buy you drinks."

Table of bought drink hints
hint
"Drinks are for drinking, but you shouldn't drink them yourself."
"There are two characters who you can offer drinks to."
"Did you notice the poster?"
"Did you know that if you have two drinks, you can pour one into another and create a mix?"



Section Buying drinks

Instead of pointing at a for sale drink when the Sleaze is in the Bar:
	if the drinks are too many:
		say "'Well, uh, I don't want to sound cheap, which I'm not, and it's not that I wouldn't have money, which I have plenty, but, uh, maybe you should finish those what I already bought you,' [the Sleaze] squirms.";
	otherwise:
		say "You point at [noun] in the menu. 'Bartender! One [noun]!' [the Sleaze] declares and takes a stack of bills from his pocket. He counts the sum with grand gestures and pays for the drink. The bartender places [the noun] on the counter.";
		now the noun is on the counter;
		repeat with X running through drinks:
			change the hint list of X to the table of bought drink hints.

To decide whether the drinks are too many:
	if the number of bought drinks enclosed by the Bar is greater than 1:
		decide yes;
	decide no.

Instead of drinking a for sale drink:
	clarify "buy [a noun]";
	try buying the noun.

Instead of taking a for sale drink:
	try buying the noun.

Instead of buying a drink:
	if the player is not carrying the coins:
		say "You don't have any money.[run paragraph on]";
	otherwise:
		say "You don't have enough coins to really buy anything.[run paragraph on]";
	if the noun is alcoholic:
		say " Besides it's very hard to get a drink without papers here.[run paragraph on]";
	say paragraph break.

Definition: A drink is for sale rather than bought if it is in the Bar and it is not carried by the player and it is not on the counter.

Instead of pointing at a bought drink:
	say "You already have [a noun]."

Before listing nondescript items when the location is the Bar:
	repeat with X running through for sale drinks:
		change X  to not marked for listing.

Rule for deciding whether all includes a for sale drink: it does not.


Section Mixing drinks

The mix is a drink. The description is "It's a [color] mix of [compound1] and [compound2]." The printed name is "[if spiced]spiked [end if][compound1] [compound2]".
The mix has a drink that varies called compound1. The mix has a drink that varies called compound2.

[couldn't find a better way to do this.]
Understand "cola" as the mix when cola is mixed.
Understand "tonic" and "mineral" and "water" as the mix when tonic is mixed.
Understand "gin" as the mix when gin is mixed.
Understand "wine" as the mix when wine is mixed.
Understand "beer" as the mix when beer is mixed.
Understand "vodka" as the mix when vodka is mixed.

Definition: a drink is mixed if it is compound1 of the mix or it is compound2 of the mix.

Check mixing a drink into something when the second noun is not a drink and the second noun is not the plant:
	say "That would just make a mess." instead.

Check mixing a drink into a drink when the noun is the mix or the second noun is the mix:
	say "There's no more room in the glass to mix more drinks in." instead.

Check mixing a drink into a drink when the mix is enclosed by the location:
	say "You should do something to [the mix] before you start mixing more." instead.
	
Check mixing a drink into a drink when the noun is the second noun:
	say "You can't mix [the noun] into itself!" instead.

Carry out mixing a drink into a drink:
	if the noun is non-alcoholic:
		now the compound1 of the mix is the second noun;
		now the compound2 of the mix is the noun;
	otherwise:
		now the compound1 of the mix is the noun;
		now the compound2 of the mix is the second noun;
	reset the noun;
	reset the second noun;
	now the color of the mix is the additive color of the color of the noun and the color of the second noun;
	if the noun is alcoholic or the second noun is alcoholic:
		now the mix is alcoholic;
	otherwise:
		now the mix is non-alcoholic;
	if the noun is spiced or the second noun is spiced:
		now the mix is spiced;
	now the player is carrying the mix;
	say "You pour [the noun] into [the second noun] and create [color of the mix] [mix]."
	
To decide which drink-color is the additive color of (color1 - a drink-color) and (color2 - a drink-color):
	if color1 is clear:
		decide on color2;
	if color2 is clear:
		decide on color1;
	if color1 is color2:
		decide on color1;
	otherwise:
		decide on brown.

[There's a major disambiguation problem with the mixed drinks. Instead of digging into the root of the problem, I'll just take the easy way out.]
Instead of putting the mix on the counter:
	try giving the mix to the barkeep.

Instead of dropping the mix when the location is the Bar:
	try giving the mix to the barkeep.


Section Leaving drinks

A room can be drink-taken. A room is usually not drink-taken.

Every turn when the player is in a drink-taken room:
	let drink-supporter be a random table in the location;
	if a drink is not on the drink-supporter:
		say "Someone has already snatched the drink you left here.";
		now the location is not drink-taken.
		
Every turn:
	repeat with left-behind glass running through drinks:
		if the location of the left-behind glass is not the Bar and the location of the left-behind glass is not the location of the player:
			now the location of the left-behind glass is drink-taken;
			now the left-behind glass is in the bar;
			if the left-behind glass is the mix:
				remove the mix from play.


Section Drugging drinks

Every turn when a safe drink (called the duck) is on the counter and the location is not the Bar and the location of the Sleaze is the bar:
	now the duck is primed for drugging.

Every turn when a primed for drugging drink (called the duck) is on the counter and the location is the Bar and the location of the Sleaze is the bar:
	say "Entering the bar you see [the Sleaze] looking around him, taking something from his jacket pocket and dropping it into [the duck] when he thinks no one is looking. The drink sizzles for a short while and turns back to normal again.";
	now the duck is spiced.

Instead of putting a spiced drink on something:
	say "It's better not to leave the drugged drink anywhere. Someone might accidentally take it and you don't want to be responsible for that."


Chapter Barkeep

The barkeep is an irrelevant man in the Bar. "The barkeep is busy serving drinks to thirsty clubbers." The description is "He's working like crazy to get the drinks to everyone. It's a busy night."

Understand "keep" and "bartender" and "barkeeper" as the barkeep.

Instead of talking to the barkeep:
	say "'Sorry, too busy to chat,' the barkeep says and moves on to the next customer."

Instead of showing a drink to the barkeep:
	say "The barkeep takes the drink and throws it away.";
	reset the noun.
	
Instead of showing the coins to the barkeep:
	say "All the items cost more than what you have."

The hint list of the barkeep is the table of unbought drink hints.


Chapter Sleaze

The Sleaze is a man in the Bar. The Sleaze is improper-named. The printed name is "dubious-looking guy". The initial appearance is "[sleaze-appearance][run paragraph on]". The description is "[The Sleaze] is an obnoxious mix of overconfidence and desperation in its mid-30s. He wears a cheap white suit with large collars and matching shoes. His shirt is unbuttoned halfway down showcasing an uneven patch of chest hair. A thick layer of grease keeps his hair combed back.[if the Sleaze is beaten and the dripping substance of the Sleaze is not nothing][line break]Vincent has left him quite ruffled and [dripping substance] is dripping down his face.[otherwise if beaten][paragraph break]He looks quite ruffled after the Vincent incident.[otherwise if the dripping substance of the Sleaze is not nothing] Drips of [dripping substance] are falling from his face on his suit.[end if]".

To say sleaze-appearance:
	say "[if recently beaten][The sleaze] is lying face down on the floor[otherwise if introduced]The Sleaze is leaning on the counter, eyeing you and giving an occasional wink[otherwise][A sleaze] is leaning on the counter[end if].[run paragraph on]".

The Sleaze has an object called the dripping substance. The dripping substance of the Sleaze is nothing.

The Sleaze can be introduced. The Sleaze is not introduced.

Understand "dubious" and "dubious-looking" and "dubious looking" as the Sleaze.

Understand "mcdouchebag" and "douchebag" and "douche" and "sleazeball" and "sleazebag" as the Sleaze when the Sleaze is introduced.

After examining the Sleaze when the Sleaze is not introduced:
	say "The guy notices you looking at him and flashes a bleached smile.";
	try talking to the Sleaze.

Instead of talking to the Sleaze when the Sleaze is not introduced:
	say "'Well hello there sparkly-eyes!' the guy says. 'My name is Sleazeball McDouchebag, but you can call me Sleaze.'
	
(That's not what he actually says, but that's what your brain hears.)";
	now the printed name of the Sleaze is "Sleaze";
	now the Sleaze is introduced.

Table of Sleaze Conversation
quip
"'How old are you, angelface?'[paragraph break]'Sevent--'[paragraph break]'Twenty-one, eh? Perfect.' He pulls mouthspray from his pocket and squirts it five or six times in his mouth."
"'Did you know I make sixty... seventy... a HUNDRED grand a year? Yeah, I'm the number one salesman at the leading automobile sales establishment in the country. In fact, I'm here RIGHT NOW to give you the ride of your life, baby!'[paragraph break]You hold back a gag reflex."
"'Kinda slow night, babe-wise,' he muses. 'I wonder if the VIPs would be ready to party. Well, without a pass a man can only dream.'"
"'Hey sweet-lips, can I buy you a drink? Just point at what you want from the menu and' -- he pauses to make a tongue-clicking and akimbo finger guns -- 'it's yours.'"

Instead of talking to the Sleaze when the Sleaze is introduced:
	repeat through Table of Sleaze Conversation:
		say "[quip entry][line break]";
		if the number of filled rows in the Table of Sleaze Conversation is greater than 1:
			blank out the whole row;
		break.

After examining the clothes when the Sleaze is in the location:
	say "'You know, baby, I don['] like that fad with the baggy clothes and all. Chicks got shapes an['] they're just goin['] to waste if you don['] show [']em,' [the sleaze] remarks."
	
Check kissing the Sleaze:
	say "You. Would. Rather. Die." instead.
	
Check dancing with the Sleaze:
	say "Dancing with him comes in your to-do list right after gouging your own eyes out with a rusty spoon." instead.
	
Check touching the Sleaze:
	say "'Yeah, baby, you touch me and then I'll touch you,' [the Sleaze] says and shoves his hands in the groping position.
	
You decide not to touch him."

Check attacking the Sleaze:
	ignore the block attacking rule.
	
Report attacking the Sleaze:
	say "[one of]*slap*[paragraph break]'Ooh, feisty! Show me your claws, tiger girl!'[or]*smack*[paragraph break]'Yeah, that's really hot and all, but it also kinda hurt.'[or]You whip the back of you hand at him. His head jolts to the side.[paragraph break]'Ah, that's... painful,' he says rubbing his cheek.[or]You smack him right in the face with your fist. He falls down and jumps back up, dusting his jacket.[paragraph break]'Well, I guess I had that coming. Not givin['] up that easily though!' he says.[stopping]".

Instead of insulting the Sleaze:
	say "[one of]'Ooh, I love it when women talk dirty! Let me have it, girl!'[or]Better not encourage him any more.[stopping]".

Table of Sleaze Flavor Text
flavor
"[The Sleaze] is engaged in a staring contest with your boobs."
"[The Sleaze] licks a toothpick from his martini slowly from end to end, all the while looking you straight in the eyes."
"[The Sleaze] presents a short but vomit-inducing gesture show." 
"'Why don't you know who an['] you know who go you know where with you know what an['] do you know what using you know what?' [the Sleaze] suggests. You do your best to ignore him." 
"[The Sleaze] produces a pocket mirror and seems to like what he sees. He puts it briefly away, changes his mind and then looks at himself some more."
"A glare hits you in the eye. It seems to have come from [the Sleaze]'s bleached row of unnaturally white teeth."
"[The Sleaze] dry-humps a bar stool."
"[The Sleaze] decides he needs a refill and applies the mouthspray a couple more times."

Flavor text rule when the player is in the location of the Sleaze and the Sleaze is introduced and the Sleaze is in the bar and not talking to the Sleaze and a random chance of 1 in 8 succeeds:
	choose a random row in the Table of Sleaze Flavor Text;
	say "[flavor entry][line break]".
	
Check smelling the Sleaze:
	ignore the block smelling rule.
	
Report smelling the Sleaze (this is the smell description of the Sleaze rule):
	say "The smell of [the Sleaze]'s cheap aftershave is overpowering. What it lacks in quality it makes up in quantity."
	

Every turn when the Sleaze is recently beaten and the player is in the Bar:
	say "The Sleaze picks himself up from the floor and sways back to the counter. '[one of]Man, if it wasn't for the prime tail in this joint, I wouldn't come here anymore[or]Sheez, I wonder what that guy's problem was[or]I guess some people just can't handle my good looks[or]That dude needs to get laid[at random],' he mutters.";
	now the Sleaze is not recently beaten;
	if the business card is not known:
		now the business card is in the bar;
		now the business card is familiar.
	
Instead of throwing a drink at the Sleaze:
	say "You splash [the noun] on [the Sleaze].[paragraph break]'[one of]That always happens. Why is that?' [the Sleaze] ponders[or]Hey, it's a 150 bucks suit! Wait, I mean a 1500 bucks suit,' [the Sleaze] says[or]Playing hard to get I see,' [the Sleaze] winks[at random] with [the noun] dripping down his face.";
	change the dripping substance of the Sleaze to the noun.

Instead of taking the Sleaze:
	say "[one of]'Yeah, baby. Take me right here!'[paragraph break]Maybe it's better not to do that again.[or]Or maybe not.[stopping]".

Every turn when the Sleaze is totally beaten and the location is the location of the Sleaze:
	say "[The Sleaze] lies on the floor in an unnatural position. His clothes are torn and he's missing a couple of teeth. 'Oh man, am I gonna be sore tomorrow,' he wheezes. 

He pulls himself up from the floor. 'This is getting way too much pain and too little reward,' he mutters. 'I guess I'll just go home to the wife.'

[The Sleaze] staggers out the entrance and trips on the sill. 'Oopsie, looks like someone is too drunk to get home by their own,' the bouncer says. 'Better call the cops so you can spend the rest of the night safely in the jail sobering up.'";
	remove the Sleaze from play;
	award 1 point for "making the Sleaze leave".

Instead of zapping the Sleaze with the taser:
	say "[one of]You take the taser and thrust it in [the Sleaze]'s ribs. 'YeeOW! That's way too kinky for my tastes!'[or]You pull out the taser and casually take a swing at [the Sleaze]. 'T-t-t-t-that's unfair!' he cries.[or][The Sleaze] hears the taser prime and his muscles get tense.[paragraph break]'This is quite' *kZap* 'PAINFUL you know!'[stopping]".
	
Instead of showing a drink to the Sleaze:
	if the noun is spiced:
		say "'Uh... Thanks, but why don't [italic type]you[roman type] drink it? I bought it just for you,' [the Sleaze] says.";
	otherwise:
		say "'Hey now, you have it the wrong way around. It's me who's supposed to get you drunk... I mean, no thanks,' he says."



The hint list of the Sleaze is the table of Sleaze hints.

Table of Sleaze hints
hint
"The guy's really annoying, isn't he?"
"He will turn out useful in many ways, nevertheless."
"He's willing to spend money in his quest for booty."
"Talk to him until he tells you how he's willing to spend his money."
"If he really starts to get on your nerves, you can get him beaten up."
"Insult Vincent and have him beat [the Sleaze]."
"Did you notice the poster in the bar?"
"If the poster tells you not to do something, you should definitely try it."
"Have [the Sleaze] buy you something. Don't take the drink but leave and come back later."
"The spiked drink will come in handy."
"[The Sleaze] might be interested in the VIP lounge."
"Find him a VIP pass and he'll go to the lounge to look for fresh meat."
"Other than that, [the Sleaze] is just annoying."






Chapter Business card

The business card is a card. The initial appearance is "There's a business card lying on the floor." The description is "It reads 'Sleazeball McDouchebag, Junior Sales Assistant, Johnson's Used Cars and Auto Parts.'"

Before examining the business card when the business card is not handled and the business card is not carried:
	clarify "first picking it up";
	try taking the business card;
	continue the action.

Report taking the business card for the first time (this is the mention the business card's origin rule):
	say "Taken. The card must have fallen from the Sleaze's pocket when he fell to the ground." instead.

[The mention the business card's origin rule is listed last in the report taking rules.]

Check smelling the business card:
	ignore the block smelling rule.

Report smelling the business card:
	say "The obnoxious scent of [the Sleaze]'s aftershave lingers in the card."

Instead of showing the business card to the Sleaze:
	say "Nah. He probably has a stack of them." 

Test card with "d/w/s/insult vincent/sleaze/n".


Part Dance floor

The description of the Dance floor is "This is the center of the Compass Club. Most people don't orient themselves in relation to compass directions, but here it's more than natural. A huge compass rose is painted to the ceiling and the abbreviations of cardinal directions are painted on the walls.

To north there's the stage. You can challenge Gus by just climbing on it. The club continues in every other direction."

Understand "centre/center" and "middle" and "c" as the Dance floor.


Chapter Norbert 

Norbert is a man. "[if the location of Norbert is the Dance floor and Norbert is beaten]Norbert is here, looking beaten and missing a lens from his glasses.[otherwise if the location of Norbert is the Dance floor]Norbert is standing here near the dance floor.[otherwise]Norbert is here, busy searching his missing lens.[end if]". The description is "Norbert is, to be blunt, a nerd. He's swaying there in his striped collared shirt, just too short pants and glasses with lenses thicker than his legs[if we have not talked to Norbert]. What he's doing here is anybody's guess[end if]."

Understand "nerd" and "geek" as Norbert.

Table of Norbert Conversation
quip
"'What are you doing here, Norbert?'[paragraph break]He corrects the position of his glasses. 'Well... uh... hello there! Say, I am in fact in the process of researching for my essay about this contemporary art of verbal derogatory assertions of one's contender's maternal parent. My theory is that it is, in fact, a thespian artform by...'[paragraph break]'Ok, that's all I wanted to know, thanks.'"
"'You're the brainiac, Norbert. Come up with a good quip for me.'[paragraph break]'All right then, let me see... [']Your mother is so obese that if she were a binomial, she would have three terms.['] Hee hee! *snort*'[paragraph break]'Uh... Ok. Thanks, Norbert.'"
"You don't have anything to say to Norbert right now."

The missing-lens-knowledge is a truth state that varies. The missing-lens-knowledge is false.

Table of Missing Lens Conversation
quip
"'What happened to your glasses?'[paragraph break]'Ah well... it was Vincent, I'm afraid. We had a little quarrel just now and looks like the other ocular of my eyewear was loosened and rolled away,' Norbert says.[make lens known]"
"'Where do you think the lens went?'[paragraph break]'Oh, it could be anywhere! Most likely it rolled under something.'"

To say make lens known:
	change the missing-lens-knowledge to true.

The conversation table of Norbert is the table of Norbert Conversation.

After dancing with yourself when Norbert is in the location:
	try dancing with Norbert.
	
Check dancing with Norbert:
	ignore the block dancing with rule.
	
Report dancing with Norbert:
	say "Norbert starts twitching and spasming with you like he's having some kind of seizure. You start to get worried but then he stops and smiles jovially. 'Dancing is fun, semicolon dash close parenthesis!'".
	
Check insulting Norbert:
	ignore the block insulting rule.
	
Report insulting Norbert:
	say "'[lame insult]!'
	
'El oh el! I see what you did there!'

If you can't taunt even Norbert, you're really in big trouble."

Instead of attacking Norbert:
	say "Nah. He's getting pushed around enough already."
	
Instead of pushing Norbert:
	try attacking Norbert.

Norbert is wearing the glasses. The glasses are plural-named. The glasses can be intact, broken or mended. The glasses are intact. The description is "[if intact]Norbert's glasses make his eyes look huge and bulgy.[otherwise if broken]Poor Norbert's missing the left lens from his glasses.[make lens known][otherwise]Norbert did a good job mending the glasses.[end if]". 

Understand "norbert's" and "eyeglasses" as the glasses.

After examining Norbert when the glasses are broken:
	try examining the glasses;
	continue the action.

Table of Searching for the Lens Flavor Text
quip
"'I wish someone would toad that Vincent,' Norbert mutters."
"Norbert says: 'Norbert hollers, has anyone seen a missing eyepiece?'"
"'My vision feels a tad lopsided,' Norbert says and rubs his eyes."
"'This would be much easier if I could see better,' Norbert says. 'Quite a paradox, isn't it?'"
"'What would Spock do?' Norbert ponders."
"Norbert crawls on the floor trying to spot his missing lens. Some of the clubbers give him the evil eye when they bump into him."
"Norbert puts his hand above his eyes as to shield his eyes from the sun, which is somewhat unnecessary during the night in a dim club without windows."

Table of Norbert Searching Stuff Flavor Text
quip
"Norbert searches [the random lens-searchable thing in the location of Norbert] carefully but finds nothing."
"Norbert tries to look under [the random lens-searchable thing in the location of Norbert]. 'Ow, my back,' he complains."

A flavor text rule when the glasses are broken and the location is the location of Norbert and a random chance of 1 in 10 succeeds:
	choose a random row in the Table of Norbert Searching Stuff Flavor Text;
	say "[quip entry][line break]".

A flavor text rule when the glasses are broken and the location is the location of Norbert and a random chance of 1 in 7 succeeds:
	choose a random row in the Table of Searching for the Lens Flavor Text;
	say "[quip entry][line break]".

A flavor text rule when the glasses are broken and missing-lens-knowledge is true and the location of Norbert is a room and a random chance of 1 in 30 succeeds:
	let X be up;
	while the room X from the location of Norbert is not a room or the room X from the location of Norbert is the Stage or the room X from the location of Norbert is the Artist hangout:
		let X be a random direction;
	try Norbert trying going X.

When play begins:
	if debugging is true:
		now Norbert is in the Dance floor.


The hint list of Norbert is the table of Norbert hints.

Table of Norbert hints
hint
"Norbert has a tendency to get into troubles."
"He is a nerd, and nerds are often beaten by bullies."
"Have Vincent beat him up."
"When the fight is over, Norbert loses a lens from his glasses."
"The lens will be useful. You should find it."


Part Dark Corner

The description of the Dark corner is "The sharp spotlights in this southeastern corner of the club create dark and gloomy shadows around the tables."


Chapter Items

The corner table is a table in the Dark corner. It is a supporter and scenery. The description is "The table bathes in bright light coming from one of the spotlights." 

The corner chair is a chair in the Dark corner. The printed name of the corner chair is "chair".

The spotlights are scenery in the Dark corner. They are plural-named and distant. The description is "The spotlights cover the tables in sharp light and at the same time leaving unlit areas in shadows."

The dark shadows are scenery in the Dark corner. They are plural-named. The description is "[if the mysterious stranger is in the Dark corner]A mysterious stranger is hiding in the shadows.[otherwise]Joe Mahma is lurking there, half covered in shadows.[end if]".


Chapter Dark Figure

The mysterious stranger is a man in the Dark corner. The initial appearance is "A mysterious stranger sits behind a table, gesturing you to sit on the chair opposite to him." The description is "Shadows cover the mysterious stranger completely, showing only a dark silhouette."

Understand "dark" and "figure" and "silhouette" and "shadow/shadows" as the mysterious stranger.

Instead of insulting the mysterious stranger:
	say "You're too intimidated by him to do that."
	
Instead of attacking the mysterious stranger:
	try insulting the mysterious stranger.
	

Chapter Joe Mahma 

Joe Mahma is a man. "Behind the table lit by a spotlight sits Joe Mahma, smoking a cigar." The description is "Joe Mahma, the legendary Yo Momma insult battle grandmaster, had skills that were far beyond any others. Stories tell of reckless newcomers who were foolish enough to challenge him and then spent years in therapy after a single quip from Joe had broken them down.

It's been said that his almost supernatural skills were also his downfall. He perfected his craft relentlessly. He went too far, where no mortal man should venture. After one final battle that left death and destruction in its wake he disappeared from the public eye and turned in an instant from a celebrated superstar into an outcast.

Now he sits there, with short gray hair and wrinkled face, from time to time puffing smoke from his cigar. An ugly scar runs across his face and right eye. An eyepatch covers the damaged eye but the good one still has a sharp, intelligent glint."

Instead of attacking Joe Mahma:
	say "You couldn't do that to Joe Mahma!"

Instead of zapping Joe Mahma with the taser:
	try attacking Joe Mahma.
	
Instead of insulting Joe Mahma:
	say "'Uh... [lame insult]...'[paragraph break]'[one of]I see we have a lot of work ahead of us[or]If I insulted you back, you couldn't sleep for months without horrible nightmares[or]Nice try, kid, but no cigar[at random],' he remarks dryly."
	
Table of Joe Mahma Conversation
quip
"'So you want me to snoop around for inspiration?'[paragraph break]'Yes! Find your opponent's soft spots. Once you've found what would really push him off his feet, challenge him again with renewed confidence.'"
"'What kind of things should I be looking for?'[paragraph break]'Nothing hurts more than the truth. Find out some facts about Gus's life and craft your insults based on them.'"
"'Will you teach me the crane kick now?'[paragraph break]'Don't be daft, girl.'"
"'Remind me again what I should do.'[paragraph break]Joe sighs. 'Snoop around and get some intel on things you could use to draw inspiration from. Then challenge Gus in battle again.'"

The conversation table of Joe Mahma is the Table of Joe Mahma Conversation.

Instead of giving a drink to Joe Mahma:
	say "'I'm good, thanks,' he says.".
	
The hint list of Joe Mahma is the table of Joe Mahma hints.

Table of Joe Mahma hints
hint
"Joe Mahma is old and wise. You should listen and learn."
"Joe knows more about Yo Momma jokes than anyone else."
"Unfortunately he wants you to learn the trade the hard way."
"In other words, Joe is of no particular use when it comes to solving the puzzles."


Chapter Eyepatch

The eyepatch is a thing. The description is "[one of]'I can see you looking at the battle wounds,' Joe says. 'Let them be a warning to you of the dangers of the trade.'

He stays silent for a long time, looking into the distance as if lost in memories. Then suddenly he continues.

'It was my final and most challenging battle. The opponent was good, really good. The best one I've ever met and that's saying a lot. I had battled them all and won them all. I had my reputation at stake and I couldn't afford to lose.'

'So I took out the big gun. The perfect insult, the momma of all Yo Momma insults. The power of it was beautiful and terrifying at the same time. I had crafted it and studied it, but I wasn't strong enough to control it.'

'I'm lucky to have only this to remind me of that day,' he says pointing at his scar, 'many others were not as lucky.'

You were just a toddler when it happened, but you remember the news footage of the carnage. Buildings from two blocks in ruins, injured people being rushed to hospitals. The UN classified the insult as a weapon of mass destruction and some countries even reinstated capital punishment to keep it off wrong hands in the future.[or]Joe's face is disfigured. It's painful to watch, so you don't.[stopping]"

Joe Mahma wears the eyepatch. 
Understand "scar" and "patch" and "eye" and "injury" and "wound/wounds" as the eyepatch.

The hint list of the eyepatch is the table of no importance.

			
Chapter Cigar

The cigar is carried by Joe Mahma. The description of the cigar is "Joe is smoking a small cigar."

Understand "smoke" and "cig" and "cigarette" as the cigar.

Instead of taking the cigar:
	say "'I don't think you're old enough to smoke,' Joe says."

The hint list of the cigar is the table of no importance.


Part Entrance

The description of the Entrance is "This is where you enter and leave the club."

Instead of exiting when the player is in the Entrance:
	say "Are you sure you want to leave the club? [run paragraph on]";
	if the player consents:
		say "[line break]You walk away and never look back. You probably wouldn't have won anyway. It's better not to even try, you tell yourself.";
		end the game in death.

Instead of going south when the player is in the Entrance:
	try exiting.


Chapter Bouncer

The bouncer is a man in the Entrance. "A bouncer is standing next to the door with his arms crossed." The description is "The bouncer doesn't look like he's in the perfect job for him, being quite scrawny actually."

Instead of talking to the bouncer:
	say "There's nothing you really want to say to him."

Instead of insulting the bouncer:
	say "You don't want to get thrown out!"

Instead of attacking the bouncer:
	say "Probably not a good idea. He's scrawny for a bouncer, but you're no muscleman either."
	
Instead of zapping the bouncer with the taser:
	try attacking the bouncer.

Instead of showing the jacket to the bouncer:
	say "You're too cheap to afford the coat check."

Instead of showing the taser to the bouncer:
	say "He'd just throw you out for carrying a weapon in the club."



The hint list of the bouncer is the table of bouncer hints.

Table of bouncer hints
hint
"The bouncer's job, among other things, is to keep trouble out."
"He won't leave his post unless there's a reason to do so."
"A fight would be a good reason."
"Start a fight, or have someone start a fight, and the bouncer will leave his post."
"Insult Vincent and let him loose."
"Insult Vincent and tell him Norbert was the one who said awful things about his momma."


Chapter Thermostat

The thermostat is in the Entrance. It is fixed in place. "You spot a thermostat mounted on the wall next to the doors." The description is "The thermostat has only two settings: warm and cool. It's currently in the '[setting of the thermostat]' position."

A temperature is a kind of value. Temperatures are warm and cool.

The thermostat has a temperature called the setting. The setting of the thermostat is cool.

Instead of setting the thermostat to "cool/cold":
	if the setting of the thermostat is cool:
		say "The thermostat is already on the 'cool' position.";
	otherwise:
		say "You turn the thermostat to 'cool'.";
		now the setting of the thermostat is cool.
		
Instead of setting the thermostat to "warm/heat":
	if the setting of the thermostat is warm:
		say "The thermostat is already on the 'warm' position.";
	otherwise:
		say "You turn the thermostat to 'warm'.";
		now the setting of the thermostat is warm.
		
Instead of setting the thermostat to:
	say "The thermostat doesn't have that setting."
	
Instead of setting the thermostat to when the bouncer is in the Entrance:
	say "'Hey! Keep your hands off that, please,' the bouncer shouts. 'Please don't meddle with the thermostat, little miss. There are so many customers tonight that it would get quite hot in here without the cooling.'"

Instead of turning the thermostat:
	say "You can set the thermostat to cool or warm."
	
Instead of switching on the thermostat:
	try turning the thermostat.

Instead of switching off the thermostat:
	try turning the thermostat.


The hint list of the thermostat is the table of thermostat hints.

Table of thermostat hints
hint
"The thermostat regulates the room temperature."
"You should find a way to switch the thermostat to warm."
"The bouncer won't let you touch the thing."
"Find a way to get rid of the bouncer."


Part Hall of Fame

The description of Hall of Fame is "Just being here makes your heart beat faster. The walls are adorned by portraits of past champions, each a part of great history."


Chapter Ralph

Ralph is a man in the Hall of Fame. "[if alert]Ralph, one of Gus's goons, is sitting here with a satchel.[otherwise]Ralph is here, pounding the jukebox.[end if]". The description is "Ralph is one of those dung beetles who cling onto Gus out of hope that his fame would somehow rub off and transfer onto them. He must have some task, otherwise he wouldn't be so far away from his hero."

Understand "goon" and "thug" and "dungbeetle" as Ralph.

Ralph is either distracted or alert. Ralph is alert.
The conversation table of Ralph is the table of Ralph Conversation.

Table of Ralph Conversation
quip
"'What's going on, Ralph?'[paragraph break]'Get lost, squirt. There's nothing here for you,' he says."

Instead of insulting Ralph:
	say "'[Lame insult].'[paragraph break]'Get outta here,' Ralph just says and waves his hand."

The hint list of Ralph is the table of Ralph hints.

Table of Ralph hints
hint
"Ralph is guarding the satchel like a hawk. You need to get him out of the way."
"There is something you can do that will distract him."
"There's a particular style of music he doesn't like."
"You need to find a way to make the jukebox work."
"When you have coins to operate the jukebox, push the 'ass' button."
"Ralph goes to change the music, but he's back before you can do anything with the satchel."
"You need to find a way for Ralph to spend more time with the machine."
"If he couldn't change the music he wouldn't come back so soon."
"You need to jam the jukebox somehow."
"Find something that would make the jukebox stuck."
"Bubblegum would do the trick."
"When you have found the bubblegum, use it to make the machine stuck."
"Put the gum in the classical button so that it won't be able to pop up."


Chapter Satchel

The satchel is a closed openable container in the Hall of Fame. It is scenery. The description is "You recognize Gus's satchel. Or man-purse, as you like to call it."

Understand "bag" and "manpurse/man-purse" and "purse" and "gus's" as the satchel.

Instead of taking the satchel:
	say "Ralph would notice you walking away with the bag."

Instead of opening the satchel when Ralph is alert:
	say "'Hey, you little twerp! Get away from Gus's bag!' Ralph shouts."

The hint list of the satchel is the table of satchel hints.

Table of satchel hints
hint
"The satchel might contain something important."
"Ralph is guarding the satchel so you can't do anything with it when he's there."
"Find a way to distract Ralph."


Section Books

The books are in the satchel. They are plural-named. The description is "Let's see, a Jack Mills pocket book... something about gardening... man, he reads crappy books too."

Understand "pocket" and "jack" and "mills" and "gardening" as the books.

Instead of taking the books:
	say "The books don't feel that important."

Instead of opening the books:
	try examining the books.

Instead of taking the books:
	say "The books aren't that important."

The hint list of the books is the table of no importance.


Section Wallet

The wallet is in the satchel. The description is "Huh, it's Gus's wallet. Might be interesting."

Instead of taking the wallet for the first time:
	say "You go through the wallet quckily and discover a photograph. Looks like... well, it's an ugly old hag... wait, could it be Gus's momma?

Yes! It must be! She has this horrible wart in the middle of her face... Now that just gets your creative juices moving, not to mention your dinner. You quickly replace the picture and the wallet.";
	get inspired by "wart";
	now the current selection of the jukebox is rap;
	award 3 points for "learning Gus's momma has a wart the size of Belgium".

Instead of taking the wallet:
	say "You're not a thief!"

Instead of searching or opening the wallet:
	try taking the wallet.


Chapter Pictures

A champion-portrait is a kind of thing. A girl-portrait is a kind of champion-portrait. A guy-portrait is a kind of champion-portrait. A champion-portrait is always scenery. Understand "picture" and "portrait" and "text" and "inscription" as a champion-portrait. Understand "girl/woman/lady" as a girl-portrait. Understand "guy/dude/man/boy" as a guy-portrait.
A champion-portrait is always distant.

The portrait-collective is scenery in the Hall of Fame. It is plural-named, privately-named, lens-searchable and distant. Understand "portraits/pictures" as the portrait-collective. The description is "Among others you recognize Missy Maestro, Doc Stockholm, Hetty R, Slick Joe Mittens, and of course Gus, the current champion.[paragraph break]The first portrait seems to be missing." The printed name is "portraits".

The Missy Maestro portrait is a girl-portrait in the Hall of Fame. The description is "The portrait is of a serious-looking girl with a collared shirt and blonde hair combed back. Below it is written: 'Missy Maestro could command words like an orchestra, but nobody could command yo momma away from that third bucket of chicken.'"

The Gus portrait is a guy-portrait in the hall of fame. The description is "Gus, that smug twit. The inscription reads: 'They say to beat Gus in his game is an impossible task, but not as hard as raising a flag on Mount Yo Momma.'"

The Doc Stockholm portrait is a guy-portrait in the Hall of Fame. The description is "The guy in the portrait wears a white jacket and rubber gloves. The text reads: 'Doc could tie your intestines into a knot with a single quip. Too bad for yo momma that he isn't a cosmetic surgeon.'".

The Hetty R portrait is a girl-portrait in the Hall of Fame. The description is "In the picture there's a thin older woman with a scarf around her head. 'Hetty had time for the art even with three kids to feed. Just like yo momma who has three chins to feed.'".

The Slick Joe Mittens portrait is a guy-portrait in the Hall of Fame. The description is "The picture depicts a young bald guy with tattoos and hip hop clothes. The text says: 'Slick Joe had his rhymes and his wits of which he let everyone have their share. Yo momma has her tub-o-lard and that she never shares.'"

The missing portrait is a champion-portrait in the Hall of Fame. Understand "first" and "empty" and "frame" as the missing portrait. The description is "The first portrait is missing. It used to be the picture of Joe Mahma. The empty frame is a memorial of his defamation."

The hint list of a champion-portrait is usually the table of portrait hints.
The hint list of the portrait-collective is the table of portrait hints.

Table of portrait hints
hint
"Have you read all the portrait inscriptions?"
"Have you thought about what they could mean?"
"They mean nothing. They're just scenery."


Chapter Jukebox

The jukebox is in the Hall of Fame. "An old jukebox sits under the pictures." It is fixed in place. The description is "The jukebox looks like a retro vinyl player but under the hood it plays MP3s like everything else. The machine controls all the music playing in the club, so when somebody chooses a new song, the whole club has to listen to that."

Understand "retro" and "vinyl" and "player" and "machine" and "juke" and "box" as the jukebox.

A sound-volume is a kind of value. Sound-volumes are low, medium and high.
The jukebox has a sound-volume called volume. The volume of jukebox is medium.

The jukebox can be paid or unpaid. The jukebox is unpaid.

After examining the jukebox:
	try examining the jukebox-controls;
	try examining the coinslot.

Instead of jamming the jukebox with the bubblegum:
	say "That's a good idea, but you need to be a bit more specific."

Instead of inserting the bubblegum into the jukebox:
	try jamming the jukebox with the bubblegum.

Instead of inserting the coins into the jukebox:
	try inserting the coins into the coinslot.

Instead of setting the jukebox to:
	try playing the jukebox.	

Instead of playing the jukebox:
	say "The jukebox is operated by inserting coins and pushing the buttons."

Check thinking about something that is a part of the jukebox:
	try thinking about the jukebox instead.

Check thinking about something that is a part of something that is a part of the jukebox: [we could just say "check thinking about a jukebox-button, but this is much more fun way to phrase it.]
	try thinking about the jukebox instead.


The hint list of Jukebox is the table of jukebox hints.

Table of jukebox hints
hint
"The jukebox is used to change the music that's being played in the club."
"The jukebox is coin operated. You need to find coins before you can use it."
"The best place to look for coins is where coins are most used."
"The arcade machines are also coin operated."
"Search the arcade machines."



Chapter Coin slot

The coinslot is a part of the jukebox. The description is "The jukebox is operated by inserting coins into the slot."

Understand "coin slot" and "slot" as the coinslot.

Check inserting coins into the coinslot:
	ignore the can't insert into what's not a container rule;
	ignore the standard inserting rule.

Carry out inserting coins into the coinslot:
	now the jukebox is paid.

Report inserting coins into the coinslot:
	say "The coin tumbles inside the machine." instead.

Instead of inserting coins into the coinslot when the coinslot is jammed:
	say "The bubblegum is blocking the coin slot."

Instead of inserting coins into the coinslot when the jukebox is paid:
	say "You've already paid for the next song."

Check playing the jukebox when the player is not carrying the coins:
	say "The jukebox is coin-operated and you don't have any coins." instead.

Check playing the jukebox when the jukebox is paid:
	say "You have to select the song by pushing the buttons."

Check playing the jukebox when the jukebox is unpaid:
	say "The jukebox is coin-operated."


Chapter Jukebox controls

The jukebox-controls are part of the jukebox. They are plural-named and privately-named. The description is "The buttons are labeled 'rap', 'r&b', 'jazz', 'rock', 'techno', and something that has most of the letters scraped off, leaving only 'ass'. The button labeled '[current selection of the jukebox]' is currently selected.". The printed name is "jukebox controls".


Understand "buttons" and "controls" and "keys" and "jukebox controls/buttons/keys" as the jukebox-controls.

Instead of pushing jukebox-controls:
	say "You have to specify which button to press.";
	try examining the jukebox-controls.


Jukebox-button is a kind of thing. Understand "button" and "key" as a jukebox-button. A jukebox-button is always proper-named.
A jukebox-button has some text called the starting description.
The description of a jukebox-button is usually "The button is labeled '[printed name of the item described]'."

Instead of pushing a jukebox-button when the noun is the current selection of the jukebox:
	say "The button '[noun]' is already selected."

Instead of pushing a jukebox-button when the jukebox is unpaid:
	if the player is carrying the coins:
		clarify "first inserting a coin into the jukebox";
		silently try inserting coins into the coinslot;
		if the jukebox is paid:
			start the noun music;
	otherwise:
		say "The button refuses to budge. The machine must require a coin to be inserted first."
		
Instead of playing a jukebox-button:
	try pushing the noun.

Instead of pushing a jukebox-button when the jukebox is paid:
	start the noun music.

To start the/-- (selection - jukebox-button) music:
	if the current selection of the jukebox is jammed:
		say "You try to push the '[selection]' button but it refuses to budge. The gum is blocking the '[current selection of the jukebox]' button and prevents the machine from operating.";
	otherwise:
		say "You push the '[selection]' button and the '[current selection of the jukebox]' button pops back up. [starting description of the selection].";
		now the current selection of the jukebox is the selection;
		now the jukebox is unpaid;
		if the selection is the ass:
			now the printed name of ass is "classical".

The rap is a jukebox-button. It is part of the jukebox-controls. The starting description of rap is "Gangsta rap starts booming".

The techno is a jukebox-button. It is part of the jukebox-controls. The starting description is "A steady stream of low thump-thump-thump beats fill the air".

The r&b is a jukebox-button. It is part of the jukebox-controls. The starting description is "Latest R&B starts flowing from the speakers".
Understand "rnb" and "r'n'b" as r&b.

The jazz is a jukebox-button. It is part of the jukebox-controls. The starting description is "Smooth jazz sounds start to vibrate in the room".

The rock is a jukebox-button. It is part of the jukebox-controls. The starting description is "It's time to rock'n'roll".
Understand "rock'n'roll" as the rock.

The ass is a jukebox-button. It is part of the jukebox-controls. The starting description is "A soothing classical symphony starts playing".
Understand "classical" as the ass.

The jukebox has a jukebox-button that varies called current selection. The current selection of the jukebox is rap.


Section Jamming jukebox buttons

Definition: a thing is jukebox-jammable if it is a jukebox-button or it is the coinslot.

Check jamming a jukebox-jammable thing with the bubblegum:
	ignore the block jamming with rule.

Carry out jamming a jukebox-jammable thing with the bubblegum:
	now the bubblegum is part of the noun.

Report jamming a jukebox-button with the bubblegum:
	say "You stick the bubblegum in and around the [noun] button."

Report jamming the coinslot with the bubblegum:
	say "You stick the bubblegum inside the coin slot."

Definition: a jukebox-button is jammed if the bubblegum is part of it and it is the current selection of the jukebox.

Definition: the coinslot is jammed if the bubblegum is part of it.

Definition: the jukebox is jammed if a jukebox-button is jammed or the coinslot is jammed.

Instead of inserting bubblegum into a jukebox-jammable thing:
	try jamming the second noun with the bubblegum.

Instead of putting something on a jukebox-button:
	try jamming the second noun with the noun.

Instead of putting something under a jukebox-button:
	try jamming the second noun with the noun.

Instead of taking the bubblegum when the bubblegum is part of a jukebox-jammable thing:
	if the player is carrying a card (called the scraper):
		clarify "with [the scraper]";
		try scraping the bubblegum with the scraper;
	otherwise:
		say "You don't have anything to scrape the gum off with, and you wouldn't touch it with bare hands."


Chapter Volume knob

The volume knob is a thing. The description is "The knob is apparently for adjusting the volume of the music being played. It can be set to low, medium or high. At the moment it's set on [volume of jukebox]."

Understand "volume" as the volume knob.

Instead of searching the jukebox:
	say "On the back side of the jukebox you find a knob.";
	now the volume knob is part of the jukebox;
	now the volume knob is familiar.

Instead of setting the volume knob to "low/silent/quiet":
	if the volume of the jukebox is low:
		say "The music is already playing silently.";
	otherwise:
		say "You turn the music down.";
		now the volume of jukebox is low.
	
Instead of setting the volume knob to "high/loud":
	if the volume of the jukebox is high:
		say "The music is already booming.";
	otherwise:
		say "You turn the music up.";
		now the volume of jukebox is high.
	
Instead of setting the volume knob to:
	say "The knob doesn't have that setting."

Instead of setting the jukebox to when the volume knob is known:
	clarify "setting [the volume knob] to [the topic understood]";
	try setting the volume knob to the topic understood.

Instead of setting the music to when the volume knob is known and the location is the Hall of Fame:
	clarify "setting [the volume knob] to [the topic understood]";
	try setting the volume knob to the topic understood.

Instead of turning the knob:
	say "The knob can be turned to low, medium or high."


Section Music

The music is a backdrop. It is everywhere. It is distant.

A distant objects rule for the music:
	say "It's music. You can't do that to it.";
	rule fails.

Instead of examining the music:
	try listening to the music.

Before listening to the music:
	say "Some [current selection of the jukebox] is playing[if the volume of the jukebox is high] at ear-piercing volume[end if]." instead.

Before listening to the music when the volume of the jukebox is low:
	say "The music is playing on so low volume it's barely audible." instead.

Instead of listening to the location:
	try listening to the music.

Does the player mean doing something with the music:
	it is very unlikely.

Does the player mean listening to the music:
	it is very likely.


Part Stage

The player is in the Stage.

East of the Stage is nowhere. West of the Stage is nowhere. Southwest of the Stage is nowhere. Southeast of the Stage is nowhere.

The description of the Stage is "You're standing dumbfounded and humiliated on the stage of the Compass Club. There's nothing left to do than to swallow your defeat and climb down the stage."

The printed name of the Stage is "[one of][or]The Stage[stopping]". [this removes the name when the play begins]

Instead of going down while the location is the Stage:
	try going south.
	
Instead of going up when the player is in a room:
	say stage-entering tip.

Instead of going to the stage:
	say stage-entering tip.
		
To say stage-entering tip:
	say "When you feel you're ready to challenge Gus again you can CLIMB ON STAGE."
	
Instead of moving to while the location is the Stage and the noun is not the Dance floor and the noun is not the Stage:
	clarify "first stepping down the stage";
	try going south.

Instead of exiting while the location is the Stage:
	try going south.


Understand "swallow defeat" or "swallow your/my defeat" as a mistake ("Gulp.").
	

Chapter Insult Combat

Instead of moving to the Stage when the location is not the Stage:
	say "You climb on the stage. The music pauses and an announcement booms from the speakers: [italic type]'We haaave a challenger!'[roman type][press space]";
	wait for any key;
	say "A crowd starts gathering on the dance floor. The anticipation of a battle is thick in the air.
	
[italic type]'Our challenger tonight is Jen, a local girl who is taking on the current champion, Gus!'[roman type]

Gus trots on the stage, clapping his hands, working the crowd. The masses cheer and yell his name.

[italic type]'[announcer assesment of number of wins]!'[roman type]

Gus stomps on his side of the stage and turns to face you. The crowd goes silent.

'[yo momma insult]!'[paragraph break]";
	if there's unused winning intel available:
		repeat through table of winning intel:
			if revealed entry is true and used entry is false:
				win a battle with the intel entry;
				change used entry to true;
				if the win count is 3:
					win the game;
				otherwise if the win count is 1:
					say "[line break][italic type]'The challenger wins! She is now one third on her way to becoming the champion! Give a big hand for Jen everybody!'[roman type][paragraph break]'Beginner's luck,' Gus mutters when you step down from the stage.";
				otherwise:
					say "[line break][italic type]'The challenger wins again! Uuun-be-lievable! That's two wins for her and she is only one victory away from becoming the new champion!'[roman type][paragraph break]Gus is looking considerably nervous. He avoids eye contact when you walk past him and into the cheering crowd.";
				break;
	otherwise:
		say "That was a tough one. Sweat is starting to flow down your face.[paragraph break]'[hesitation] [lame insult].'
		
Oh dear. The crowd boos and whistles you off the stage. You were clearly not prepared well enough for this. Gus gives you a condescending look as you are forced to walk down the stage in defeat.";
	if win count is not 3:
		say press space;
		wait for any key;
		move the player to the dance floor.
	 
To say hesitation:
	say "[one of]Oh yeah?[run paragraph on][or]Well...[run paragraph on][or]Is that so?[run paragraph on][or]You know...[run paragraph on][at random]"; [have to do this to get the run paragraph on to work]

Table of winning intel
intel	revealed	used
"tag"	false	false
"wart"	false	false
"whale"	false	false

To decide whether (knowledge - some text) has inspired us:
	choose row with intel of knowledge in the table of winning intel;
	decide on revealed entry.

To decide whether there's unused winning intel available:
	repeat through table of winning intel:
		if the revealed entry is true and the used entry is false:
			decide yes;
	decide no.

To decide which number is the win count:
	let counter be 0;
	repeat through table of winning intel:
		if the used entry is true:
			increase counter by 1;
	decide on counter.

To get inspired by (inspiration - some text):
	choose row with intel of inspiration in the table of winning intel;
	change the revealed entry to true.

To say announcer assesment of number of wins:
	if the win count is:
		-- 0:
			say "It takes three wins to beat the prevailing champion. With no victories so far she still has a long road ahead of her";
		-- 1:
			say "She has succeeded in one battle, but was it just a stroke of luck? We'll soon find out -- our challenger needs two more victories to win the championship";
		-- 2:
			say "With two victories under her belt, she is only one, yes, one win away from the championship title".  

To win a battle with (intel - some text):
	if intel is:
		-- "tag":
			say "Without blinking you look him straight in the eye and say: 'Yo momma's so poor she shops for yo rags at the Cheap-O-Mart.'[paragraph break]The crowd gasps. Gus's face turns white. 'I... Your... [lame insult]!' he stammers. The crowd hesitates, as if not knowing what happened. Then they start booing.";
			award 5 points for "revealing Gus's momma shops at Cheap-O-Mart";
		-- "wart":
			say "You have the insult and you know how to use it. 'Yo momma's so ugly her warts went to see the doctor to have her removed.'[paragraph break]The crowd goes wild. They can barely hear Gus stuttering: '..no way... [lame insult]! I mean [lame insult]!'";
			award 5 points for "telling the whole world about Gus's momma's hideous wart";
		-- "whale":
			say "Here the quip comes, all ready to whip Gus's ass. 'Yo momma's so fat she fell into the whale pool and the staff rescued the whale by mistake.'[paragraph break]You can practically hear Gus's jaw fall on the floor. 'Yo... Yo... [lame insult]...'[paragraph break]The crowd is cheering, and they're cheering for you.";
			award 5 points for "comparing Gus's momma to a large sea mammal".
	

To win the game:
	say press space;
	wait for any key;
	say "[paragraph break]Suddenly lights of all colors start flashing and music turns into heroic fanfares. The announcer goes ballistic. [italic type]'U-U-U-UNBELIEVABLE! Ladies and Gentlemen! We have a NEW CHAMPION!'[roman type]
	
The sound of the crowd is incredible. They cheer for their new hero -- you! You are carried out above the crowds chanting your name. A life of celebrity, fame and fortune has just opened before you.
 
Just as the celebrating masses carry you out the door you see Joe Mahma in the corner table, giving a brief nod of approval before retreating back into the shadows. He is smiling and you're almost sure you saw a glint of a tear in his eye.";
	end the game in victory.


Part VIP lounge

The description of the VIP lounge is "This area is reserved to those with VIP passes. There are cushy red sofas to sit on and you don't have to worry about drunken idiots crashing your table."

Understand "corner" as the VIP lounge.

Definition: The VIP lounge is accessible if the guard is asleep.

A distant objects rule for something (called the far-away target) enclosed by the VIP lounge when the VIP lounge is not accessible:
	say "'Ma'am, this area is off limits for anyone without a VIP pass,' the guard says when you try to approach [the far-away target].";
	rule fails.


Chapter Sofas

The sofas are scenery in the VIP lounge. They are plural-named. The description is "The sofas are red and they have plushy cushions that make you just sink into them."
Understand "sofa/couch/couches" and "red" and "cushy/plushy" and "cushion/cushions" as the sofas.
The sofas are distant.

Instead of entering the sofas:
	say "There's no time to rest now!"

Instead of searching the sofas when the VIP pass is not handled:
	say "Among other assorted crap fallen from people's pockets like candy wrappers and used paper tissues you find a VIP pass.";
	now the player carries the VIP pass;
	remove the hints from the sofas;
	award 1 point for "finding the VIP pass".

Instead of searching the sofas:
	say "There's nothing useful hidden in the sofas anymore."

The hint list of the sofas is the table of no access hints.

Table of no access hints
hint
"You need to get past the guard before you can do anything else."

Table of sofa hints
hint
"Sofas are made for sitting on."
"Sometimes when people sit on sofas, stuff fall out of their pockets."
"Try searching the sofas."


Chapter Guard

The guard is a man in the VIP lounge. "[if vigilant]A guard is making sure no one without a pass gets in[otherwise]The guard is lying passed out on one of the sofas[end if][if the guard is vigilant and the setting of the thermostat is warm]. He looks quite uncomfortable[end if].". The description is "[if vigilant]The guard is standing just outside the VIP area with his hands crossed. He wears a black suit and a pair of sunglasses.
 
A ventilation duct blows [setting of the thermostat] air right to where the guard is standing[end if][if the guard is vigilant and the setting of the thermostat is warm]. Sweat has made his hair stick to his head[end if][if vigilant].[otherwise]He's resting on the couch, looking peaceful."

The guard can be vigilant or asleep. The guard is vigilant.

Instead of talking to the guard when the guard is vigilant:
	say "'On duty. Can't talk,' the guard says bluntly."

Check talking to the guard when the guard is asleep:
	say "He's fast asleep. Not much of a talker, but a good listener." instead.

Instead of attacking the guard when the guard is vigilant:
	say "'Ma'am, I have training in Jujitsu, Karate, Chow Mein, and Kung Fu. You do not want to mess with me,' he says in a monotonous tone."

Check smelling the guard when the setting of the thermostat is warm:
	ignore the block smelling rule.

Carry out smelling the guard when the setting of the thermostat is warm:
	say "He smells sweaty."

Instead of pulling the guard when the guard is vigilant:
	say "You are not likely to get the guard off his post with physical force, him being almost twice your size."

Instead of showing a drink to the guard when the guard is vigilant:
	if the setting of the thermostat is cool:
		say "'Thank you ma'am, but this thing is keeping me quite refreshed,' the guard says and points at the ventilation duct.";
	otherwise if the noun is masked alcohol:
		say "'Thank you, ma'am!' the guard says and grabs the glass. He takes a sip and gives it promptly back. 'Sorry, ma'am, I can't drink alcohol on the job,' he says.";
	otherwise if the noun is alcoholic:
		say "He gives the drink a longing look, smacking his dry lips. 'Thank you, ma'am, but I have to stay vigilant,' he says.";
	otherwise if the noun is spiced:
		say "'Thank you, ma'am! I appreciate this,' the guard says and takes the glass. He empties it in a single draw.[paragraph break]'This is... strange...' he says, and falls straight on a couch. You're worried for a moment that he might be more than just asleep, but you can see him breathing peacefully in his slumber.";
		now the guard is asleep;
		award 1 point for "drugging the guard";
		change the hint list of the sofas to the table of sofa hints;
		change the hint list of Britney to the table of Britney hints;
		reset the noun;
		repeat with X running through distant things in the VIP lounge:
			now X is near;
	otherwise:
		say "The guard empties [the noun] in a single gulp. 'Thank you ma'am! That did the trick.'";
		reset the noun.

Instead of searching the guard when the guard is vigilant:
	say "'Ma'am, if anyone here is doing any frisking, it is going to be me,' the guard says."

Instead of searching the guard when the taser is not handled:
	say "In the guard's pocket you find a taser.";
	now the player carries the taser.

Instead of searching the guard:
	say "You don't find anything else."

Instead of insulting the guard:
	if the guard is vigilant:
		say "'[Lame insult]!'[paragraph break]'That won't get you in, ma'am,' he says.";
	otherwise:
		say "'[Lame insult]!'[paragraph break]Ha! He doesn't respond. Got him speechless!"
		
Instead of entering the guard when the guard is asleep and the player's command includes "sit":
	say "Even if he's lying on the sofa, that doesn't make him a cushion."


The hint list of the guard is the table of guard hints.

Table of guard hints
hint
"The guard takes his work seriously."
"You can't get in the VIP area without a pass as long as the guard is there."
"You need to get the guard out or somehow disable him."
"Some knock-out drops would do the trick."
"Find a drugged drink and give it to the guard."
"The guard needs to be thirsty before he accepts drinks."
"He won't have anything alcoholic, either."
"Did you notice what's directly above him?"
"You need to get the heating duct to blow hot air."
"There's a thermostat by the entrance. Set it to warm."
"When the heating duct is blowing hot air and you have a non-alcoholic drink that has been drugged with knock-out pills, give it to the guard."
"Remember to search him when he's out cold."
"When the guard is out of the way, he's of no further help."


Chapter Ventilation duct

The ventilation duct is scenery in the VIP lounge. It is distant. The description is "The ventilation duct on the ceiling blows [setting of the thermostat] air down[if the guard is vigilant] straight on the guard[end if][if the guard is vigilant and the setting of the thermostat is warm]. He looks quite uncomfortable[otherwise if the setting of the thermostat is cool]. The VIPs get all the nice things[end if]."

Before entering the ventilation duct:
	say "You don't have any motor oil." instead. [if you're wondering what this means, it's just an obscure reference to one of my earlier works]

Understand "heating/cooling" and "air" and "vent" and "hot/warm" and "cold/cool" as the ventilation duct.


Chapter Taser

The taser is a thing. The description is "The hand-held stunning device looks impressive." Understand "stunning" and "device" and "tazer" and "hand held" and "hand-held" as the taser.

Instead of switching on the taser:
	say "The taser will work automatically if you zap someone with it."

Check zapping something with the taser:
	if the noun is a person:
		say "[The noun] do[es]n't deserve zapping." instead;
	otherwise:
		say "Zapping [the noun] wouldn't do much good. It's only effective against people." instead.

The hint list of the taser is the table of taser hints.

Table of taser hints
hint
"The taser is handy for tasering people."
"Who would you most like to zap?"
"[The Sleaze] is the optimal target."
"Zapping [the Sleaze] isn't effective when he's just sitting there in the bar. You have to wait until the taser really comes in handy."


Chapter VIP pass

The VIP pass is a card. The description is "The pass allows for the person holding it to enter the VIP lounge. Not that it's that useful now when the lounge guard is out of the picture."

Understand "card" as the VIP pass.

Instead of showing the VIP pass to the Sleaze:
	say "[one of]'Care for a pass for the VIP lounge?' you ask and wave the pass in front of [the Sleaze]. 'Would I!' he says delighted. 'The rich and the idle are just waiting for a knight in white armor to come save them from boredom,' he says, grabs the pass and heads to the lounge.[or]'Well,' [the sleaze] says when you offer the pass to him. 'Things really didn't go that well the last time, but I guess it won't hurt to keep trying.' He takes the pass and goes back to the VIP lounge.[stopping]";
	now the VIP-Sleaze is in the VIP lounge;
	remove the Sleaze from play;
	remove the VIP pass from play.

Instead of showing the VIP pass to the Sleaze when the bubblegum is part of the VIP pass:
	say "'I appreciate the offer,' [the Sleaze] says, 'but... uhm... there's some goo on it.'"


The hint list of the VIP pass is the table of VIP pass hints.

Table of VIP pass hints
hint
"In theory the VIP pass is useless since the guard is out of the way."
"Not everybody knows that the guard isn't there, so giving the pass to them might have them go there."
"Give the VIP pass to [the Sleaze]."


Chapter Britney

Britney is a woman in the VIP lounge. "Britney, the bimbo girlfriend of Gus, sits on a couch [if drunk]swaying from side to side[otherwise]looking bored[end if]." The description is "Britney and Gus are a perfect match. He's full of hot air and her head is full of air. She sits there in her tiny tiny skirt and top looking like a circus clown in her face plastered with makeup.[if Britney is drunk][paragraph break]She looks like she's a bit tipsy."
Britney can be hostile or amicable. Britney is hostile. Britney is distant.
Britney can be sober or drunk. Britney is sober.

Understand "bimbo" and "girlfriend" and "gf" and "brit" as Britney.

Table of Hostile Britney Conversation
quip
"'Hello, Britney.'[paragraph break]'Hel-lo, Jen,' she says without bothering to look at you."
"'How did you get into the VIP lounge?'[paragraph break]'That's like the most stupidest question e-ver,' she says with her annoying nasal voice. 'I'm like the main star's gee ef, and you very well know it.'"
"'Wanna talk about Gus?'[paragraph break]'Like, why should I want to?' she gushes. 'Gus gets like really pissed off if I accidentally go telling something I shouldn't. I usually don't, not unless I'm like totally wasted, but still.'"
"'C'mon, Britney. Let's talk about Gus, only for a little while. I'm... uh, really curious about him.'[paragraph break]'No way! I only talk about my boyfriend with my [italic type]friends[roman type]. And we're not friends, Jen.'"


Table of Amicable Britney Conversation
quip
"'So, now that we're friends, how about we talk about, say, Gus?'[paragraph break]'I don't know, Jen. Can't we talk about something more important, like makeup or something?'"
"'No, really, let's talk about Gus. What's his mother like?'[paragraph break]'Yeah, uh... Well, I shouldn't really like talk about that. Gus has said that it might hurt him, somehow. I dunno.'"
"'C'mon, Britney. Are'nt we friends?'[paragraph break]'Yeah, I guess so, but Gus says I like really shouldn't. There was this like totally embarassing thing when I got like drunk and kinda told people all these embarassing things. Gus got like really angry.'"

The conversation table of Britney is the table of Hostile Britney Conversation.

Instead of insulting hostile Britney:
	say "'[Lame insult].'[paragraph break]'What a totally awful thing to say! You're really not my friend!' she gasps."

Instead of insulting amicable Britney:
	if Britney is drunk:
		say "'[Lame insult].'[paragraph break]'That's.. uh.. what did you say about my momma?' she stammers.";
	otherwise:
		say "'[Lame insult].'[paragraph break]'That's not a nice thing to say, Jen,' she says. 'But I'll let it like go because we're friends.'".

Check showing a drink to Britney when Britney is hostile:
	say "'I only take drinks from my [italic type]friends[roman type],' Britney sneers. 'Gus says it's dangerous to accept drinks from strangers.'" instead.

Check showing a spiced drink to Britney:
	say "Better not. She's no use passed out." instead.

Instead of showing a drink to Britney when Britney is sober and Britney is amicable and the noun is spiced:
	say "Better not. She's no use passed out."

Instead of showing a drink to Britney when Britney is sober and Britney is amicable:
	if the noun is masked alcohol:
		say "'Thanks Jen! It's, like, cola? Right?'[paragraph break]'Uh, yeah. It's like cola,' you say.[paragraph break]'Ok, great!' She takes a gulp of the drink. 'You know, Jen, we're like, we're like, we're like the BESTESTEST frriends EVER!' she stammers. Worst. Alcohol tolerance. Ever.";
		now Britney is drunk;
		reset the mix;
	otherwise if the noun is the tonic or the noun is the mix and the color of the mix is clear and tonic is mixed:
		say "'Is it, like, water? That's [italic type]so[roman type] lame,' Britney sneers.";
	otherwise if the noun is cola:
		say "'Oh thanks, Jen! You're, like, a real good friend,' she says and takes the drink.";
		reset the cola;
	otherwise if the noun is alcoholic:
		say "'I can't like drink any booze, Jen! Gus says I tend to blurt out stuff I shouldn't say when I'm drunk,' Britney says.";
	otherwise if the noun is the mix and cola is mixed and tonic is mixed:
		say "'What is that? Did they like run out of cola and filled the rest of the glass with water?' Britney sneers.";
	otherwise:
		say "'No thanks, Jen,' Britney says.". [this should never fire but better make sure it says something]

Instead of talking to Britney when Britney is drunk:
	say "She seems to be busy talking, not really paying attention to who is listening. It's unlikely she'll blurt out any more gems."

Instead of talking to Britney when Britney is drunk for the first time:
	say "'Oh, hi Jen! We're just the bestest bee ef efs, aren't we?' She speaks in fast and short segments, like a machine gun firing bursts of stupid. 'I should like totally do your hair sometime, do you know this totally awesome conditioner...'

'...and then I was totally like, [']Like, are you like totally...[']'

'...then we went for a burger and I said like, [']You know like how many calories those things have like?[']...'

'...and we went to the aquarium, and Gus's mom just had to drag along...'

What? You snap out of the torpor your brain had induced to prevent any permanent damage. 'What's that about Gus's momma?'

'Yeah, it was kinda drag but kinda funny too when she accidentally slipped into the dolphin pool. But scary too. Anyway, I had this totally cool sweater on I bought the other day and...'

That's it! That would like totally work! Er... gah, must get out of here before your wits are completely corrupted.";
	award 3 points for "learning about Gus's momma's mishap at the aquarium";
	get inspired by "whale".
	
The hint list of Britney is the table of no access hints.

Table of Britney hints
hint
"Britney is Gus's girlfriend. She might have good information on Gus."
"Unfortunately she refuses to talk to you because you're not her friend."
"You should gain her trust somehow."
"Maybe if you saved her from the amorous attempts of someone she doesn't care for."
"You should get [the Sleaze] to the VIP lounge."
"[The Sleaze] doesn't know the guard is out, so you have to find a VIP pass for him."
"When [the Sleaze] is hitting on britney, find a way to get rid of him."
"Having Vincent beat him up isn't good enough because Britney won't believe you asked Vincent to do that."
"You need to find a taser to get rid of [the Sleaze]."
"When you've gained Britney's friendship, you need to get her to talk."
"She takes drinks from you now, but she won't take anything alcoholic."
"Maybe give her something that looks like it's not alcoholic but actually is."
"Mix cola with something alcoholic and give it to Britney, then talk to her."


Volume III - Scenes

Part The Whispering Stranger

The Whispering Stranger is a scene. The Whispering Stranger begins when the player is in the Dance floor and debugging is false.

When the Whispering Stranger begins:
	say "It looks as if somebody in a dark corner table to the southeast is making a 'come here' gesture.";
	now the mysterious stranger is familiar;
	the mysterious stranger repeats his call in 4 turns from now.

Instead of going when the Whispering Stranger is happening and the noun is not southeast:
	say "You feel intrigued by the mysterious stranger in the southeast corner. Maybe you should check him out before exploring the rest of the club."

Instead of moving to when the Whispering Stranger is happening and the noun is not the Dark corner and the noun is not the Stage:
	try going south. [any direction will do, just so that it triggers the rule above.]
	
Before going north when the Whispering Stranger is happening:
	say "You don't feel ready to challenge Gus again." instead.
		
Before moving to the Stage when the Whispering Stranger is happening:
	try going north instead.

At the time when the mysterious stranger repeats his call:
	if the Whispering Stranger is happening:
		say "You see the mysterious stranger in the southeast corner table waving again for you to come closer.";
		the mysterious stranger repeats his call in 4 turns from now.

The Whispering Stranger ends when the player is in the Dark Corner.


Part The Shadowy Stranger

The Shadowy Stranger is a scene. The Shadowy Stranger begins when the player is in the Dark Corner and debugging is false.

Instead of talking to the mysterious stranger when The Shadowy Stranger is happening:
	clarify "first sitting on the chair";
	silently try entering the corner chair.

Instead of going when The Shadowy Stranger is happening:
	say "The stranger is at the same time frightening and intriguing. You feel like running away but curiosity overcomes the feeling. You can't leave before hearing what he has to say."
	
Before moving to when The Shadowy Stranger is happening:
	try going north instead. [triggers the rule above]
	
After entering the corner chair when The Shadowy Stranger is happening:
	say "'You blew it up there, kid,' the stranger says. 'Blew it big time.'
	
You feel your cheeks getting red. 'Oh yeah? Who are you to judge?'

You're about to get up but he raises his hand. 'I speak from experience. But don't worry, kid, I see you have potential. The game is not over yet. I can help you win the championship. If you're up for it.'

'Who... Who are you?'

He leans forward into the spotlight and reveals his face. An eyepatch covers the old man's right eye and a wide scar runs below it, from the right temple to the left side of his neck. You jolt backwards, not because of the grotesque sight, but because you recognize him.

It's Joe Mahma.";
	remove the mysterious stranger from play;
	now Joe Mahma is in the Dark Corner;
	now Joe Mahma is familiar;
	have the parser notice Joe Mahma. [changes "him" to refer to Joe instead of the mysterious stranger]
	
The Shadowy Stranger ends when Joe Mahma is in the Dark corner.


Part Joe Mahma introduces himself

Joe Mahma Introduces Himself is a scene. Joe Mahma Introduces Himself begins when The Shadowy Stranger ends.

When Joe Mahma Introduces himself begins:
	Joe Mahma continues in 1 minute from now.

At the time when Joe Mahma continues:
	let consented be true;
	say "'Joe Mahma! No way!' you gasp.

'I see you know me, kid. Good to know somebody still does.'

Of course you know who Joe Mahma is. Everybody knows Joe Mahma. He's a living legend, the infamous grandmaster of Yo Momma insult battles.
	
'Look, kid, you want my help or not?'[paragraph break]>";
	if not the player consents:
		say "'Are you sure, kid? You think you can make it by yourself?'[paragraph break]>";
		if the player consents:
			say "'Alright, then. I like your spirit. That's how I did it in my days, with hard work, with nobody holding my hand. Good luck.'[paragraph break]With those words he stands up and walks away.[paragraph break]Over the next few weeks it becomes clear that you don't have what it takes to deal with the competition. Soon you forget Yo Momma battles and move on with your life.";
			let consented be false;
			end the game in death;
	if consented is true:
		say "'Ok then. Listen carefully. I know and you know you're not ready to take Gus head on. But here's the thing. A sharp tongue is all good and fine but when you really want to knock your opponent off their feet you have to strike hard. And nothing hurts more than truth. You follow me?'
	
'Not really,' you confess.

'Pay attention now! Do some reconnaissance. Dig out some facts and use them against him. When you have enough information, just think of what you have learned and the right insult will come to you. Got it?'

'Snoop around for embarassing facts, draw inspiration from them. Got it.'

'That's the spirit! Go for it, kid!'".

Before going or moving to or exiting or getting off when Joe Mahma Introduces Himself is happening:
	say "[one of]You can't just leave now when you have the chance to talk with the Master himself. It's Joe Mahma for crying out loud![or][run paragraph on][stopping]" instead. [for some reason this showed up twice sometimes. one of..stopping prevents that.]
	
Before examining the eyepatch when Joe Mahma Introduces Himself is happening:
	say "Right now is not a good time to focus on that." instead.

Talking to Joe Mahma is introductory ignoring.
Listening to Joe Mahma is introductory ignoring.
Listening to the dark corner is introductory ignoring.
Waiting is introductory ignoring.

Before introductory ignoring while Joe Mahma Introduces Himself is happening:
	do nothing instead.

Joe Mahma Introduces Himself ends when the time since Joe Mahma Introduces Himself began is 2 minutes.

When Joe Mahma Introduces Himself ends:
	now Norbert is in the Dance floor.


Part Fight on the Dance Floor

Fight on the Dance Floor is a scene. Fight on the Dance Floor begins when Vincent is not in the Arcade corner.
Fight on the Dance Floor ends when the setting of the thermostat has been warm for 3 turns.

When Fight on the Dance Floor begins:
	remove the hints from the bouncer.

When Fight on the Dance Floor ends:
	if the location is the dance floor:
		say "The bouncer manages to finally separate Vincent and Norbert from each other. Vincent goes back to his game and the bouncer goes to watch the door. Norbert stays there, looking miserable and bruised";
	otherwise:
		say "Looks like the commotion on the dance floor is dying down";
	if the location is the Arcade corner:
		say ". Vincent comes back, looking angry as a bee-stung bear, and returns to his arcade game";
	if the location is the Entrance:
		say ". The bouncer comes back to watch the door";
	say ".";
	now the bouncer is in the Entrance;
	now Norbert is in the Dance floor;
	now Norbert is beaten;
	now Norbert is recently beaten;
	now Vincent is in the Arcade corner;
	now the lens is hidden;
	now the glasses are broken;
	now the conversation table of Norbert is the table of Missing Lens Conversation;
	remove the commotion from play.

The commotion is a plural-named, familiar person. Understand "people" and "vincent" and "norbert" and "bouncer" and "fight/quarrel" as the commotion. The initial appearance is "Vincent is roughing up poor Norbert and the bouncer is trying to separate the two with little success." The description is "'You take back what you said about my momma!' Vincent roars.[paragraph break]'I do believe I have not mentioned such atrocities that you speak of about your maternal parent,' Norbert declares.[paragraph break]'Stop talking that gibberish, dude! Yer makin['] me dizzy!' Vincent screams."

Instead of talking to the commotion:
	say "Talking is futile -- none of them is listening to a word."

Instead of insulting the commotion:
	say "'All of yo's mommas are fat. And stupid.'[paragraph break]Your insult goes to waste. They are too busy to listen anything you say."

Every turn when the commotion is in the location and a random chance of 1 in 6 succeeds:
	say "[one of]The bouncer tries to pull Vincent away from Norbert but fails miserably.[or]Vincent wraps his left arm around Norbert's head and rubs his scalp with his right fist.[or]Vincent holds Norbert's hand and makes him slap himself. 'Why are you hitting yourself? Why are you hitting yourself?'[or]'Come on now boys, you're both getting yourselves banned from here if you don't stop right now,' the bouncer tries to say.[at random]".


Part Too Hot for Wearing a Shirt

Too Hot for Wearing a Shirt is a scene. Too Hot for Wearing a Shirt begins when the Fight on the Dance Floor has ended and the time since the Fight on the Dance Floor ended is 2 minutes.

Too Hot for Wearing a Shirt ends when Gus is not wearing the sweater.

Every turn when the Too Hot for Wearing a Shirt is happening and the location is the Artist hangout:
	say "'Man, it's really hot in here, dontcha think?' Gus says. His posse nods in unison, competing who can agree the most. Assflies. He takes his sweater off and hangs it on the back of a nearby chair.";
	award 1 point for "turning the heat up";
	now the sweater is on the hangout-chair;
	remove the hints from Gus;
	change the hint list of the sweater to the table of removed sweater hints;
	change the hint list of the tag to the table of removed sweater hints.

Every turn when the setting of the thermostat is warm and Too Hot for Wearing a Shirt has ended and the guard is asleep:
	if the location is the Entrance:
		say "'Phew. It's really hot in here,' the bouncer says and glances on the thermostat. 'Hey, who's been meddling with this?' 

He turns the heat down and returns to his post.";
	now the setting of the thermostat is cool.


Part Inappropriate Music

Inappropriate Music is a recurring scene. Inappropriate Music begins when the current selection of the jukebox is ass. Inappropriate Music ends when the current selection of the jukebox is not ass.

When Inappropriate Music begins:
	say "'What the... Who changed the music[one of]? I thought the new label made it perfectly clear you [italic type]don't[roman type] play that crap here!' Ralph[or]?' Ralph[stopping] shouts as he gets up from the chair. 'Get away from the jukebox, you twerp!'";
	now Ralph is distracted;
	if the jukebox is not jammed:
		ralph changing the music happens in one turn from now;
	otherwise:
		remove hints from bubblegum;
		award 1 point for "distracting Ralph".

At the time when Ralph changing the music happens:
	if the bubblegum is part of rap:
		if the location is the location of Ralph:
			say "Ralph inserts a coin and tries to push the rap button, but the button is stuck. He pushes the r&b button instead and the music changes.";
		now the current selection of the jukebox is r&b;
	otherwise:
		if the location is the location of Ralph:
			say "Ralph puts a coin into the jukebox and pushes the rap button.";
		now the current selection of the jukebox is rap.

Flavor text rule when Inappropriate Music is happening and the jukebox is jammed and the location is the location of Ralph:
	if the location is the location of Ralph:
		say "[one of][run paragraph on][or]'Hey! What's wrong with this stupid machine?' Ralph swears and pounds on the jukebox buttons.[or][one of]'Stupid piece of junk,' Ralph says.[or]'Work, damn it!' Ralph screams and kicks the jukebox.[or]'Why...can't...this...junk...work!' Ralph says frustrated.[or]Ralph has a fit and pounds himself instead of the jukebox.[or][run paragraph on][or][run paragraph on][at random][stopping]".

When Inappropriate Music ends:
	if the jukebox is jammed:
		say "Ralph finally gets the bubblegum scraped off and gets the music changed. He comes back to his seat, steaming from the ears.[line break]";
		now the current selection of the jukebox is rap;
		remove bubblegum from play;
	otherwise if the location is the location of Ralph:
		say "Ralph returns from the jukebox.";
		now the current selection of the jukebox is rap;
	otherwise:
		say "The music changes into [current selection of the jukebox].";
	if the satchel is open:
		if the location is the location of Ralph:
			say "[line break]'Hey, are you messing with Gus's bag? Get out of here, twerp!' Ralph says and pushes you away. He closes the bag and sits on the chair.";
		now the satchel is closed;
	now Ralph is alert.

Instead of doing something to the jukebox when Inappropriate Music is happening:
	say "'Stay away, twerp,' Ralph says and shoves you away."

Instead of doing something to a thing which is enclosed by the jukebox when Inappropriate Music is happening:
	say "'Stay away, twerp,' Ralph says and shoves you away."

Test satchel with "test gum/hall/put gum in ass/purloin coins/put coin in jukebox/push ass".


Part The Sleaze Finds a New Target

The Sleaze Finds a New Target is a recurring scene. The Sleaze Finds a New Target begins when the VIP-Sleaze is in the VIP lounge.

The Sleaze Finds a New Target ends when the VIP-Sleaze is not in the VIP lounge.

When the Sleaze Finds a New Target begins:
	now Britney is scenery.

When the Sleaze Finds a New Target ends:
	now Britney is not scenery.

A flavor text rule when the location is the VIP lounge and The Sleaze Finds a New Target is happening and the turn count is even:
	choose a random row in the table of Sleaze hitting on Britney flavor texts;
	say "[quip entry][line break]".

Table of Sleaze hitting on Britney flavor texts
quip
"'Hey there, sister. You look like you would need a man in your life,' [the Sleaze] suggests to Britney. 'Get lost creep,' Britney says."
"[The Sleaze] tries to wrap his arm around Britney but she slaps his hand away."
"'Hey, how about you come back to my place for some late night snack? I got something that just needs to be between your lips,' [the sleaze] says. 'Why don't you just get lost,' Britney screams."
"'My boyfriend is just about to come back,' Britney tries to convince [the Sleaze]. 'I bet he is,' [the Sleaze] says."
"[The Sleaze] inches closer to Britney, who moves the same amount away." 
"'Wanna dance?' [the Sleaze] asks Britney. 'I would rather die,' Britney slings back."
"Britney throws a look at you that screams 'help me'."
"'Hey baby, wanna do the mambo? An['] I don't mean dancin['],' [the Sleaze] suggests to Britney. 'Why don't you, like, shoot yourself,' Britney hisses."
"[The Sleaze] says, 'Would you like to come to my place and see my bedroom ceiling?'[paragraph break]Britney makes a gagging noise."
"'Excuse me,' [the Sleaze] says to Britney. 'Is this the library? I'd like to check you out.'"
"'Why don't you make like a tree and get out of here,' Britney snaps at [the Sleaze]."
"[The Sleaze] says, 'I'd like to get into something more comfortable. You.' Britney slaps him."
"'Do you believe in love at first sight, or should I come back again?' [the Sleaze] asks. 'You can start by leaving,' Britney replies."
"'Nice outfit,' [the Sleaze] says to Britney. 'It'll look good on my bedroom floor.' She tries to tug her skirt hem lower with little success."
"'Wanna go camping?' [the Sleaze] asks Britney. 'You don't need to bring your own sleeping bag. Mine is big enough for two.' Britney buries her head in her hands."
"[']Get rid of him,['] Britney mouthes to you."

Instead of talking to Britney when the Sleaze Finds a New Target is happening:
	say "You try to talk to Britney, but [the Sleaze] distracts her too much."

The VIP-Sleaze is a man. "[The Sleaze] sits on the couch with Britney who is doing her best to ignore him."
The description is "[The description of the Sleaze][paragraph break]He's currently working hard to have Britney notice him."
The printed name is "the Sleaze". The VIP-Sleaze is privately-named and proper-named.
Understand "sleaze" and "mcdouchebag" and "douchebag" and "douche" and "sleazeball" and "sleazebag" and "man" as the VIP-Sleaze.

Instead of talking to the VIP-Sleaze:
	say "He's far too busy hitting on Britney to pay any attention to you."

Instead of attacking the VIP-Sleaze:
	say "Jumping on the couch and wrestling with [the Sleaze] is a rather disturbing thought. You need some heavier tools for this situation."

Instead of zapping the VIP-Sleaze with the taser:
	say "You pull the taser from your pocket. 'Well hello, beautiful,' [the Sleaze] says and turns to you. 'I was just talking with your friend here. I was thinking all three of us could go to my place and' *kZap* 'OH my dear GOD WHAT the' *kZap* 'that really HURTS' *kZap* 'no NOT THERE PLEASE' *kZap* *kZap*

[The Sleaze] staggers away, smoke rising from his head. His limbs twitch as he stumbles back to the bar.

'Oh wow, Jen. That's really sweet of you!' Britney stands up and gives you an awkward hug. 'I think we could be like really good friends, Jen!'";
	remove VIP-Sleaze from play;
	now Britney is amicable;
	now the Sleaze is in the Bar;
	remove the hints from the taser;
	remove the hints from the VIP pass;
	now the conversation table of Britney is the table of Amicable Britney Conversation;
	award 1 point for "making friends with Britney".


Volume IV - Help

Book License

After printing the banner text, say "This game is free software. Type LICENSE for details or ABOUT for game info.[paragraph break]";

Help-license is an action out of world.
Understand "license" and "licence" and "lisense" and "lisence" and "copyright" and "terms" and "eula" as help-license.

Carry out help-license:
	say "[license]";
	
To say license:
	say "[line break]Copyright (C) 2010 Juhana Leinonen  <[Juhana's email]>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.";

To say Juhana's email:
	say "juhana";
	say ".if";
	say "@";
	say "nitku";
	say ".net".


Book About

Abouting is an action out of world.

Understand "about" and "info" and "help" as abouting.

Carry out abouting:
	say "Hello. You are playing [italic type][story title][roman type]. It was initially made for the Newer New Year's Speed IF event, although the amount of work spent on this piece is substantially more than the traditional two hour speed-if limit.

A couple of words about playing. In addition to moving around using the standard compass directions you can move to locations just by typing their name, or by typing the name of a character in that location. You can get to the center of the club by commanding CENTER or just C. Type MAP to see all available locations.

To talk with other characters you can TALK TO and INSULT them. You can also SHOW things to them (GIVE is synonymous). SEARCH, LOOK UNDER and LOOK BEHIND are all mutually synonymous.

If you are new to interactive fiction and unsure of how to play, please see http://www.brasslantern.org/beginners/ for excellent guides and articles on the subject.

This is release number [release number]. Please check http://www.nitku.net/if/yomomma for updates before you start playing. Save games are unfortunately not compatible between different releases.

If you get stuck, you can find hints from the abovementioned web address. For feedback and other comments you can contact the author at [Juhana's email]. See CREDITS for a list of other contributors."


Crediting is an action out of world. 
Understand "credits" as crediting.

Carry out crediting:
	say "[italic type][story title][roman type] was designed and programmed by Juhana Leinonen. 

Beta testers who uncovered a formidable amount of bugs and typos and provided invaluable feedback: Conrad, Jimmy Maher, Sarah Morayati, Poster, Matthew Spain, and Taleslinger.
 
Thanks to Taleslinger for organizing the speed-if event (and thus giving motivation to make the game) and to people at ifMUD for bad pickup lines. Special thanks go to the players at the ClubFloyd session -- where the game premiered -- for finding the first batch of bugs. For those interested the transcript can be read at http://www.allthingsjacq.com/intfic_clubfloyd_20100102.html."


Book Hints

Thinking about is an action out of world with past participle thought, applying to one visible thing.

Understand the command "think" as something new.

Understand "think about [any known thing]" as thinking about.
Understand "think [any known thing]" as thinking about.
Understand "think" as thinking about.

Understand the command "hint" as "think".

Table of generic hints
hint
"Remember to TALK TO everyone you meet. Some people might have more than one thing to say."
"It's useful to SEARCH everything for hidden things."
"The people in the club are the key to most puzzles. Consider what they could want or how they might act in response to your actions."

Carry out of thinking about nothing:
	if we have thought about:
		if the table of generic hints is not empty:
			choose a random row in the table of generic hints;
			say "[hint entry][line break]";
			blank out the whole row;
		otherwise:
			say "You can THINK ABOUT things and people you have seen in order to get hints.";
	otherwise:
		say "For puzzle hints, you can THINK ABOUT different things and people you have seen. Each time you do this you will be given another hint towards the solution to a puzzle.

You can also THINK to get general tips and suggestions."


To print a hint from (hint-table - a table-name):
	if hint-table is empty:
		say "Nothing particular comes to mind.";
	otherwise:
		repeat with X running from 1 to the number of rows in the hint-table:
			choose row X in the hint-table;
			if there is a hint entry:
				say "[hint entry] ([X]/[number of rows in hint-table])[line break]";
				if X is not the number of rows in hint-table:
					blank out the whole row;
				break.


A thing has a table-name called hint list.

Carry out thinking about a known thing:
	print a hint from the hint list of the noun.

Understand "think [text]" as a mistake ("You don't remember seeing any such thing.").

Table of no hints
hint
text

Table of no importance
hint
"[The noun] [is-are] of no importance."

To remove the/-- hints from (solved - a thing):
	change the hint list of the solved to the table of no hints.


Book Interface tips

After going when Joe Mahma Introduces Himself has ended and we have not moved to for the second time:
	say "[italic type](In addition to using the compass directions you can move around the club by simply typing the name of the location where you want to go, or a name of a person in the location. You can also see the list of all locations by commanding MAP.)[line break][roman type]";
	continue the action.
	

Book Comments - Not for release

Commenting is an action out of world applying to one topic.

Understand "* [text]" and "note [text]" as commenting.

The last comment turn is a number that varies. The last comment turn is 0.

Carry out commenting:
	change the last comment turn to the turn count.
		
Report commenting:
	if the player's command includes "ha" or the player's command includes "heh":
		say "[one of]Yeah, that's funny.[or]Heh, yeah.[or]Comedy gold.[or]That's [a random number between 10 and 90] % more funny in this version.[at random]";
	otherwise:
		say "[one of]I see.[or]You have a point there.[or]That's true.[or]Yeah, well, ok.[or]Mind you, I was drunk when I wrote that bit.[or]Uh, maybe it's an interpreter issue?[or]Should be an easy fix.[or]It's on purpose! No wait, it's not.[or]Ah.[or]Oh well.[or]Can't argue with that.[or]Really?[at random]".
	
Check commenting when the last comment turn is the turn count and the last comment turn is not 1000:
	say "Yo comment's so fat it needs two rows.";
	change the last comment turn to 1000;
	stop the action.

Volume V - Development - Not for release

Book Winning

Winning is an action out of world.
Understand "win" as winning.

Carry out winning:
	win the game.


Book Object Response Tests

Procedural rule:
	ignore the test looking under rule;
	ignore the test cutting rule;
	ignore the test swinging rule;
	ignore the test rubbing rule;
	ignore the test waking rule;
	ignore the test squeezing rule;
	ignore the test burning rule;
	ignore the test tasting rule;
	ignore the test tying to rule;
	ignore the test waving rule.
