"Ether" by Brian Rushton

[ Source code released June 14, 2016 10:10 AM: http://ifdb.tads.org/newslog?newsid=325
  Minor syntax error fixed with command endings to compile on Inform 7 build 6M62. ]


Include Basic Screen Effects by Emily Short.  Include Menus by Emily Short. Include Complex Listing by Emily Short.

The story genre is "Science fiction". The story headline is "A jet through the atmosphere". The story description is "You spin lazily through a small rain shower before dipping into a low-flying cloud. As you burst out, you can't help but notice the chunk of ice floating towards you from the north...

Ether is an airborne game set in a world without ground. You control the properties of your world, and you are ready to move on.

This game is Merciful." The story creation year is 2015.

[Release along with cover art ("A nautilus.").]

Use the serial comma, and American dialect

Chapter 1- Mechanics and framework

Section 1-Credits, help, scoring, etc

Understand "walkthrough" as asking for walkthrough.
Asking for walkthrough is an action out of world.
Carry out asking for walkthrough:
	say "Move north towards the ice. Objects move up and down a bit at first, so don't go down yet.
	
	Take the ice. Go south as far as you can without dying until it melts.
	
	Go to the scroll. Take it, go west, and read it.
	
	Grab one of the two objects. They are both moving nonstop, so go above or below them and wait. If they go off the edge of the world, they will reappear beneath their old position.
	
	Once you have one object, chase the creatures that appears using diagonal directions (i.e. NEU, SU, etc.).
	
	Now you have a choice. I recommend grabbing the vacuum flask, travelling down until it explodes, then waiting for all the others to come to you. Take the chest and go east until it breaks. Then wait till the others come, grab them one at a time, and crush them one at a time.
	
	Now, simply rocket west twice.
	
	Wait until the heart appears. Crush the heart.
	
	Try to grab a bubble or two. It's okay if you don't.
	
	Wait until the sphere appears. Take it.[paragraph break]
	"

Understand "about" or "help" or "hint" or "hints" as asking for help.
Asking for help is an action out of world.
Carry out asking for help:
	say "[bold type]Commands[roman type]: If you are new to interactive fiction, you can type COMMANDS to get a list of all the commands necessary to complete this game, and instructions on how to use them. Commands that you can type in are written in caps throughout this documentation.
	
	[bold type]Movement[roman type]: 'Ether' is mostly set in one very large area (with many small sub-areas) where your location determines the properties of the environment. Going UP and DOWN increases or decreases the pressure, going EAST and WEST increases and decreases wind speed, and going NORTH and SOUTH makes you colder or hotter. Each variable has levels 0 to 8. Going beyond the highest and lowest levels always results in death.

	You can use alternative directions. For instance, COLDER or C will go north; HOTTER or H is south; FIERCER or F is east; MILDER or M is west; THINNER or T is up; and DENSER or D is down.
	
	You can also combine directions: NU, UN, or NORTHUP will take you north and up. SWD, WDS, WSD, SDW, DWS, or DSW will take you south, west, and down (the parser can't handle words as big as SOUTHWESTDOWN).

	Finally, you can alway just use GO TO [bracket]something[close bracket] to have your character move in the direction of the item.

	[bold type]Precision[roman type]: If you want the exact ('quantitative') number of moves necessary to reach an item, type 'QUANT ON'. To stop, type 'QUANT OFF'.
	
	[bold type]Walkthrough[roman type]: For a walkthrough, type 'WALKTHROUGH'.
	
	[bold type]Credits[roman type]: For credits, type 'CREDITS'.[paragraph break]
		"

Understand "commands" or "command" or "list commands" as commanding. Commanding is an action out of world.

Understand "who" or "what" or "when" or "where" or "why" or "how" or "who's" or "what's" or "when's" or "where's" or "why's" or "how's" as "[query]". 

Understand "[query] [text]" or "[query]" as a mistake ("[story title] understands commands, such as 'GO NORTH', but not questions. For more instructions, type COMMANDS."). 

Carry out commanding:
	say "This game uses a parser, which means that you type in what you want the game to do whenever you see the symbol '>'. The game has a limited vocabulary, usually limited to 2-4 words at a time.
	
	The most important commands in this game are the directional commands. For instance, to go north, you can type GO NORTH. To save time, you can just type NORTH, or, even better, just N. Interactive fiction traditionally allows movement in 10 directions: N, E, S, W, NE, SE, SW, NW, U (for UP) and D (for DOWN).  In the opening scene of 'Ether', you can try typing 'N' until the game says you are next to the ice.
	
	(Advanced) 'Ether' also allows any combination of these directions, such as NEU, SED, ND, as long as you don't put in conflicting directions (such as UD).
	
	The other most important commands are:
	
	LOOK (abbreviated L), which reprints the description of the region you are in, and tells you what important things are in it;
	
	LOOK AT [bracket]SOMETHING[close bracket] (or EXAMINE, abbreviated X), which lets you look more closely at a specific object. For example, in the first scene of 'Ether', you can type X ICE to get a better look at the ice.
	
	TAKE [bracket]SOMETHING[close bracket] , which lets you pick something up. In 'Ether', you can only pick up items that you are close to (if you are close enough to take something, the game will tell you that it is right next to you). In 'Ether', you can try TAKE ICE once you are close enough to it.
	
	INVENTORY (abbreviated I) tells you what you are carrying. The term comes from older games such as Dungeons and Dragons.
	
	DROP [bracket]SOMETHING[close bracket] lets you stop carrying something. You can try dropping the ice if you still have it by typing DROP ICE, and then pick it up again by typing TAKE ICE.
	
	UNDO lets you take back your last action. Trying typing 'N' until you freeze to death, then type UNDO to go back to before you died.
	
	SAVE lets you save your game if you have to stop. RESTORE lets you resume your game. If you are playing the game on Parchment or the IFComp website, the command SAVE changes the web address of the game, so that you can bookmark it. If you return to that address and type RESTORE, you can retrieve your game.
	
	QUANT ON is a command unique to this game that allows you to find out exactly how far away you are from different objects and from the edges of the world. QUANT OFF removes this data.
	
	WALKTHROUGH provides a complete walkthrough.
	
	CREDITS gives the credits of the game, including beta testers and the inspiration for different concepts, as well as the credits of the cover art.
	
	Good luck! If this message was too long for your screen try scrolling upwards to see the rest of it."

Understand "quant on" as quanting on. Understand "quant off" as quanting off. Quanting on is an action out of world. Quanting off is an action out of world.

QuantOnOff is a number that varies. QuantOnOff is 0.

Carry out quanting on:
	say "A grid of thin red lines overlays your vision. Numbers appear giving your wind speed, temperature, and pressure. All objects appear with numbers attached to them as well.[paragraph break]";
	Now QuantOnOff is 1;
	Silently try looking;

Carry out quanting off:
	if QuantOnOff is 1:
		say "The grid and the numbers disappear.[paragraph break]";
		Now QuantOnOff is 0;
		Silently try looking;
	otherwise:
		say "Precise numbers are already off.";

The grid is part of the player. The description of the grid is "[if QuantOnOff is 1]A grid of thin red lines that allows you to precisely pinpoint the location of all objects in this world.[otherwise]Your grid is not currently enabled.[end if]";

NumChecking is an action applying to nothing. Understand "x numbers" or "examine numbers" or "look at numbers" as NumChecking.

Carry out NumChecking:
	say "[if QuantOnOff is 1]Floating numbers in the red grid indicate the distance of various objects, as well as the temperature, windspeed, and air pressure.[otherwise]You currently don't have your grid enabled.[end if]";

[Hard puzzles here; lightdark kills you]
Understand "hard puzzles" as difficulting on. Understand "hard puzzles off" as difficulting off. Difficulting on is an action out of world. Difficulting off is an action out of world.

HardOnOff is a number that varies. HardOnOff is 0.

Carry out difficulting on:
	say "Hard puzzles are on";
	Now HardOnOff is 1.

Carry out difficulting off:
	say "Hard puzzles are off";
	Now HardOnOff is 0.

Understand "credits" or "info" as asking for credits.
Asking for credits is an action out of world.
Carry out asking for credits:
say "'Ether' is written by Brian Rushton under the name Mathbrush. 

Inform 7 is the work of Graham Nelson.

Nick Turner, Bora Bosna, Adri, Arthur O'Dwyer, DJ Hastings, Andrew Schultz, Dirk Straube, Hugo Labrande and Sean M. Shore provided extremely helpful feedback as testers, leading to large changes in the text and in puzzle design. Any remaining errors or other issues with the game are the sole responsibility of the author.

Daniel Stelzer and David White offered feedback on my earlier attempts at games, which greatly affected this game.

The cover art is Nautilus Palau by Manuae - Own work. Licensed under CC BY-SA 3.0 via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Nautilus_Palau.JPG#/media/File:Nautilus_Palau.JPG .

The quotation is from 'The Chambered Nautilus', a poem by Oliver Wendell Holmes. I discovered it after the entire game was written. (This quotation does not appear when using Parchment). I have reproduced it here:

Year after year beheld the silent toil[line break] 
That spread his lustrous coil;[line break]	 
Still, as the spiral grew,[line break] 
He left the past year's dwelling for the new,[line break]
Stole with soft step its shining archway through,[line break]
Built up its idle door,[line break]
Stretched in his last-found home, and knew the old no more.[line break]
[line break]
--From 'The Chambered Nautilus', by Oliver Wendell Homes

I first saw a cubical navigation system in Emily Short's 'Aspel'. The physics mechanics of the game were inspired by Andrew Plotkin's 'Dual Transform' and Emily Short's 'Metamorphoses'. Sean M. Shore suggested that the objects interact with each other. The four powers, which can be obtained in any order, was an idea from Mega Man. The eye boss was inspired by the wall boss in Secret of Mana 2. Andrew Schultz helped with the diagonal directions.

The idea of a Nautilus protagonist came from a visit to a paleontology museum, where they had several Ammonoid fossils; followed by watching the eleventh episode of the documentary 'Planet Earth'. My wife offered a great deal of support for me making this game, my first ever.

The author is not the Brian Rushton with the blog 'Plasmic Ramblings of Brian Rushton', although he is very nice and writes fiction."

Use scoring.

The maximum score is 12.

Section 2-Character

The carrying capacity of the player is 1.

Check taking inventory: 
	if the first thing held by the player is nothing, 
		say "[We] [are] carrying nothing except a relentless sense of determination." instead.

Instead of examining the player:
	if the player is in Battlezone:
		say "You are battered and slightly dazed. Your shell is [if CrackedShell is 1]cracked[otherwise]dinged[end if][if SingedTentacles is 1] and one of your tentacles[apostrophe] tips is seared off[end if].";
	otherwise if the player is in Center:
		say "You are battered and slightly dazed. Your shell is [if CrackedShell is 1]cracked[otherwise]dinged[end if][if SingedTentacles is 1] and one of your tentacles[apostrophe] tips is seared off[end if].";
	otherwise if Bubbletime is 1:
		say "You are battered and slightly dazed. Your shell is [if CrackedShell is 1]cracked[otherwise]dinged[end if][if SingedTentacles is 1] and one of your tentacles[apostrophe] tips is seared off[end if].";
	otherwise if the player is in Ocean:
		say "You have healed over the millenia. You don't move as fast as you used to[if CrackedShell is 1], your shell bears an old patched-up crack[end if][if SingedTentacles is 1], and your leftmost tentacle is still too short[end if], but otherwise you are well.";
	otherwise:
		say "Your tentacles wiggle with excitement. Your shell gleams in the bright glow from the south."

The shell is part of the player. The veins are part of the player. The tentacles are part of the player. The gills are part of the player. The relentless sense of determination is part of the player.

Understand "stripe" or "stripes" as shell. Understand "red and white" as shell.

Understand "tentacle" as tentacles.

Instead of cutting the tentacles:
	say "You look at each tentacle one by one. How could you choose which one to cut? Lefty, your trustworthy companion? Stumpy, the unlucky? Hugo the noble? You cannot bring yourself to do it.";

Lefty is part of the player. Understand "trustworthy" or "companion" as Lefty. The description of Lefty is "Your leftmost tentacle, your trustworthy companion." Stumpy is part of the player. Understand "unlucky" as Stumpy. The description of Stumpy is "Stumpy the tentacle, the unlucky." Hugo is part of the player. Understand "noble" as Hugo. The description of Hugo is "Hugo the tentacle, noblest of all tentacles."

Instead of touching Lefty:
	say "You touch Lefty with Stumpy."

Instead of touching Stumpy:
	say "You touch Stumpy with Lefty."

Instead of touching Hugo:
	say "The other tentacles are too much in awe of Hugo."

Wiggling is an action applying to nothing. Understand "wiggle" as wiggling. Understand "dance" as wiggling.

Carry out wiggling:
	say "You perform the ancient wiggle dance of your forebears, solemnly wiggling each tentacle in turn before the grand finale, where all wiggle at once.";

God is a backdrop. God is everywhere.

Instead of examining God:
	say "You contemplate God, and he communes with you. You feel a renewed sense of purpose."

Instead of taking God:
	say "You take hope and inspiration from God.";

Instead of examining the shell:
	say "[first time]You've grown since you've last thought to look. [only][if CrackedShell is 1]Your shell is dinged and cracked. [otherwise if DamageCounter is at least 1]Your shell is blackened and smudged.[otherwise]Your red and white stripes smoothly cover your well-coiled shell.[end if]"

Instead of examining the veins:
	say "[if the player is in the Ocean]The magic lies still and quiet within you.[otherwise]Magic still flows through your veins, but not enought to get you out of here.[end if]"

Instead of examining the tentacles:
	say "[if SingedTentacles is 0]Your tentacles are strong and healthy.[otherwise]Your tentacles are singed, and some of them are missing their tips.[end if][if eastness is minus four] A few of them droop down.[end if]"

Instead of kissing the tentacles:
	say "You kiss each one lingeringly.";

Instead of touching the tentacles:
	say "As expected, your tentacles are quite squishy.";

Instead of examining the gills:
	say "Exchanging gasses with the surrounding air."

Instead of examining the determination:
	say "Your inner drive, and the reason you have survived so long."

Remembering is an action applying to one topic. Understand "remember [text]" as remembering. Understand "think about [text]" as remembering.

Selfthinking is an action applying to nothing. Understand "remember" as selfthinking. 

Carry out remembering:
	say "You think deeply and solemnly about it, and then rouse yourself to action."

Carry out selfthinking:
	say "What do you want to think about?".

rule for printing a parser error when the latest parser error is the i beg your pardon error:
	say "You contemplate nothingness.";

Praying is an action applying to nothing. Understand "pray" as praying.

Carry out praying:
	say "You send up your thoughts to the God of your ancestors.";

Instead of thinking:
	say "What do you want to think about?".

Instead of remembering a topic listed in the Table of Remembering Topics:
	say "[reply entry][paragraph break]".

Check smelling:
	say "You smell the fierce odor of the wild [if the player is in the Ocean]ocean[otherwise]sky[end if][first time] with your rhinophores[only]." instead;

Instead of smelling something:
	if the noun is the sky:
		say "You smell the fierce odor of the wild [if the player is in the Ocean]ocean[otherwise]sky[end if].";
	otherwise if the noun is Aloft:
		say "You smell the fierce odor of the wild [if the player is in the Ocean]ocean[otherwise]sky[end if].";
	otherwise if the noun is a physical:
		if the noun is carried by the player:
			say "You cautiously smell the [noun].";
		otherwise:
			say "That's too far away!";
	otherwise if the noun is the player:
		say "You lift each tentacle and carefully sniff underneath. Not bad!";
	otherwise:
		say "It's hard to smell something from this distance.";

Understand "wild" as ocean. Understand "wild" or "realm" as sky.

Odor is a backdrop. Odor is everywhere.

Instead of examining odor:
	say "Odors are difficult to see.";

Instead of pushing something:
	if the noun is the player:
		say "I'm not sure that's the best way to get around. Have you tried GO [bracket]DIRECTION[close bracket] to move around?";
	otherwise if the noun is part of the player:
		say "You end up spinning wildly for a moment.";
	otherwise:
		say "Your tentacles are quite weak; your best bet is to carry something with you and take it where it needs to go.";

Instead of attacking something:
	if the noun is the shell:
		say "You drum your shell with your tentacles.";
	otherwise:
		say "Your tentacles are quite weak; your best bet is to carry something with you and take it where it needs to go.[if CrushingOn is 1] If you want to crush something, though, just say so.[end if]";

Instead of kissing the shell:
	say "You're not really that flexible.";
		
Instead of squeezing something:
	say "Your tentacles are quite weak; your best bet is to carry something with you and take it where it needs to go.[if CrushingOn is 1] If you want to crush something, though, just say so.[end if]";

Check taking something:
	if the noun is carried by the player:
		say "You already have that!" instead;
	otherwise if the number of things carried by the player is at least the carrying capacity of the player:
		say "Your tentacles have difficulty carrying that many objects at once." instead;

Understand "go to [something]" as traveling. Traveling is an action applying to one thing.

Carry out traveling:
	if the noun is the nautilus or the noun is a physical:
		if the noun is in PhysicalWorld:
			if the player is in PhysicalWorld:
				if xcord of the noun is greater than northness:
					if ycord of the noun is greater than eastness:
						if zcord of the noun is greater than upness:
							try going northeastup;
						otherwise if zcord of the noun is less than upness:
							try going northeastdown;
						otherwise:
							try going northeast;
					otherwise if ycord of the noun is less than eastness:
						if zcord of the noun is greater than upness:
							try going northwestup;
						otherwise if zcord of the noun is less than upness:
							try going northwestdown;
						otherwise:
							try going northwest;
					otherwise:
						if zcord of the noun is greater than upness:
							try going northup;
						otherwise if zcord of the noun is less than upness:
							try going northdown;
						otherwise:
							try going north;
				otherwise if xcord of the noun is less than northness:
					if ycord of the noun is greater than eastness:
						if zcord of the noun is greater than upness:
							try going southeastup;
						otherwise if zcord of the noun is less than upness:
							try going southeastdown;
						otherwise:
							try going southeast;
					otherwise if ycord of the noun is less than eastness:
						if zcord of the noun is greater than upness:
							try going southwestup;
						otherwise if zcord of the noun is less than upness:
							try going southwestdown;
						otherwise:
							try going southwest;
					otherwise:
						if zcord of the noun is greater than upness:
							try going southup;
						otherwise if zcord of the noun is less than upness:
							try going southdown;
						otherwise:
							try going south;
				otherwise:
					if ycord of the noun is greater than eastness:
						if zcord of the noun is greater than upness:
							try going eastup;
						otherwise if zcord of the noun is less than upness:
							try going eastdown;
						otherwise:
							try going east;
					otherwise if ycord of the noun is less than eastness:
						if zcord of the noun is greater than upness:
							try going westup;
						otherwise if zcord of the noun is less than upness:
							try going westdown;
						otherwise:
							try going west;
					otherwise:
						if zcord of the noun is greater than upness:
							try going up;
						otherwise if zcord of the noun is less than upness:
							try going down;
						otherwise:
							if the noun is carried by the player:
								say "You already have that!";
							otherwise:
								say "That's already next to you.";
			otherwise: 
				say "You can't see any such thing right now.";
		otherwise:
			say "That's not here right now.";
	otherwise if the noun is the eye:
		if the player is in Battlezone:
			try going west;
		otherwise:
			say "You don't see that here.";
	otherwise if the noun is the stormbeast:
		if the player is in Battlezone:
			try going west;
		otherwise:
			say "You don't see that here.";
	otherwise if the noun is the bathysphere:
		if the player is in the Ocean:
			try taking the bathysphere;	
		otherwise:
			say "You don't see that here.";
	otherwise if the noun is the snowflake:
		if the player is in the center:
			say "You attempt to pull it closer to you.";
			try vacuuming;
	otherwise if the noun is the heart:
		if the player is in the center:
			if the heart is in the center:
				say "You are already there.";
			otherwise:
				say "The heart rapidly approaches.";
		otherwise:
			say "You don't see that here.";
	otherwise:
		say "[bracket]GO TO only works on objects in the field of play[close bracket][paragraph break]";
		
Table of Remembering Topics
topic	reply
"me"	"You have been on your own for almost as long as you can remember, traveling from world to world."
"cold"	"The primordial aloneness."
"dark"	"The primordial aloneness."
"barren"	"The primordial aloneness."
"pressure"	"You can sustain a large amount of pressure, due to your shell."
"heat"	"Hot and cold don't bother you very much."
"wind"	"The thrill of a gale."
"shell"	"Beautiful, red and white."
"tentacles"	"Slim and delicate. You brush them twice a day."
"gills"	"You don't think about them very often. You suddenly become very aware of your breathing."
"ice"	"Pure power contained in a physical form."
"red ice"	"Pure power contained in a physical form."
"scroll"	"Odd that the way out would be a scroll. You've had doors, machines, portals, but never a recipe."
"elements"	"The states of matter: solid, liquid, gas, and vacuum."
"elements of form"	"The states of matter: solid, liquid, gas, and vacuum."
"bottle"	"The element of vacuum. The crystal bottle is the same as the one your mother made for you. You kept different things in yours, of course..."
"vacuum"	"The element of vacuum. The crystal flask is the same as the one your mother made for you. You kept different things in yours, of course..."
"flask"	"the element of gas. The wood seems familiar, like a distant memory. You may have seen something like it before, worlds ago..."
"argon"	"the element of gas. The wood seems familiar, like a distant memory. You may have seen something like it before, worlds ago..."
"gas"	"the element of gas. The wood seems familiar, like a distant memory. You may have seen something like it before, worlds ago..."
"solid"	"The solid element. You buried a chest just like this two worlds ago, in dark caves, right before you left."
"chest"	"The solid element. You buried a chest just like this two worlds ago, in dark caves, right before you left."
"gold"	"The solid element. You buried a chest just like this two worlds ago, in dark caves, right before you left."
"kettle"	"The liquid element. You remember seeing a kettle like this three worlds ago, when you taught mathematics in a treetop school."
"sealed"	"The liquid element. You remember seeing a kettle like this three worlds ago, when you taught mathematics in a treetop school."
"toluene"	"The liquid element. You remember seeing a kettle like this three worlds ago, when you taught mathematics in a treetop school."
"key"	"A red stone of frozen magic."
"light"	"Pure light."
"darkness"	"Pure darkness."
"jellyfish"	"Pure light."
"coral"	"Pure darkness".

Section 3-Basic Directions

Understand "fly" as going. Understand "jet" as going. Understand "fly [direction]" as going.

Eastness is a number that varies. Eastness is 0.

Northness is a number that varies. Northness is 0.

Upness is a number that varies. Upness is 0.

Aloft is a room. 

EastWestGone is a number that varies. EastWestGone is 0.
UpDownGone is a number that varies. UpDownGone is 0.
NorthSouthGone is a number that varies. NorthSouthGone is 0.

Battlezone is a room.

The PhysicalWorld is a region. Aloft and the Battlezone are in the PhysicalWorld.

The sky is a backdrop. The sky is in Aloft. The sky is in Battlezone. Understand "air" as sky. 

The icebergs are a backdrop. The icebergs are in PhysicalWorld. Understand "iceberg" or "berg" or "bergs" or "icebergs" or "confrontations" or "blizzard" or "blizzards" or "snowbergs" as icebergs. The description of icebergs is "[if NorthSouthGone is 1]The blizzard and icebergs of before are gone, now. The northern sky is gentle and open.[otherwise if the player is in Battlezone]Icebergs clash and explode in the blizzard raging to the north, as massive snowflakes hurtle about. A few snowflakes stream out to where you are, and past you.[otherwise]A blizzard rages to the north, with icebergs floating as islands of stability in the middle. A few snowflakes stream by you."

Instead of taking icebergs:
	say "That's too far away for you to safely reach."

The snowflakes are a backdrop. The snowflakes are in PhysicalWorld. The description of snowflakes is "[if NorthSouthGone is 1]A few stray snowflakes are all that is left of the blizzard to the north.[otherwise]Snowflakes spill past you from the storm to the north, soon melting in the heat from the south.[end if]"

Instead of taking snowflakes:
	say "You gather a few snowflakes, then idly slide them into your beak. The cold is refreshing.";

The clouds are a backdrop. The clouds are everywhere. Understand "maelstrom" or "vortex" or "spiral" or "colossal" or "vast" or "patch" or "black" or "soft" or "jets" or "belly" or "mist" or "finger" or "storm" or "howling" or "cloud" or "stormclouds" or "stormcloud" or "whirlwinds" or "violent" or "eddies" or "underbellies" as clouds. The description of clouds is "[if the player is not in PhysicalWorld]There are no clouds here.[otherwise if the player is in Battlezone]The eastern sky is blotted out by massive black stormclouds. They roil and erupt in thick fingers of black smoke as lightning crashes from one end of the world to another. To the west is gargantuan beast formed of clouds, in shape like you, but far, far larger.[otherwise if EastWestGone is 1]There are only a few clouds left, here and there.[otherwise if WorldAnger is 0]The eastern sky is filled by a great black stormcloud, while soft cloud formations float to the west.[otherwise]The storm to the east is stronger, with black fingers of cloud erupting near you sporadically. The west is still peaceful and mild.[end if]";

Instead of taking clouds:
	say "That's are too far away for you to safely reach."

Understand "windstorm" as east.

The gentle is a backdrop. Understand "mild"or "spirals" or "torpid" or "pillowy" or "formations" as gentle. The gentle is in Aloft and in Ocean. The description of gentle is "[if the player is in Aloft]The western sky is gentle, mild, and open. The pillowy formations of clouds gently sail with an almost imperceptible drift.[otherwise]The gentle currents softly wash your scarred tentacles.[end if]";

Understand "eye of storm" or "eye of a storm" as west.

The steam is a backdrop. Understand "patches" or "nebulous" or "masses" or "bright" or "glow" or "vortices" or "fire" or "flame" or "burst" or "strands" or "waves" or "jets" or "strand" or "bursts" as steam. Steam is in PhysicalWorld. The description of steam is "[if NorthSouthGone is 1]You see no steam or flames here anymore.[otherwise if the player is in Battlezone]The southern sky is on fire. Clouds of boiling steam writhe in a frenzy, and bursts of flame flare up sporadically.[otherwise]The southern horizon glows with a strong red heat. Whorls and patches of steam are tumbled about in vortices.[end if]";

Instead of taking steam:
	say "That's too far away for you to safely reach."

Understand "heat" or "hot air" as south.

The blanket is a backdrop. The blanket is in PhysicalWorld. The printed name of blanket is "blanket of thick air". Understand "thick" or "thicker air" or "globules" or "globule" or "liquid" or "geyser" or "soupy" or "bubbling" or "geysers" or "geyser" or "murk" as blanket. The description of blanket is "[if UpDownGone is 1]The blanket of thick air is gone.[otherwise if WorldAnger is at most 1]An almost liquid layer of thick air.[otherwise]An angrily bubbling layer of thick air. Globules of thick air float up and explode dangerously.[end if]";

Instead of taking blanket:
	say "That's too far away for you to safely reach."

The emptiness is a backdrop. The emptiness is in PhysicalWorld. Understand "nakedness" or "thin" or "top" or "top of the world" or "empty" as emptiness. The description of emptiness is "[if UpDownGone is 1]The emptiness at the top of the world has been filled in wtih the air from below.[otherwise]The top of the world is void and empty.[end if]";

Instead of taking emptiness:
	say "That's too far away for you to safely reach."

The lightning is a backdrop. The lightning is in PhysicalWorld. Understand "bolt" or "bolts" or "lightnings" or "thunder" or "grumbling" as lightning. The description of lightning is "[if WorldAnger is 0]Occasional bolts of lightning strike out, lighting the sky and filling the world with thunder.[otherwise if EastWestGone is 1]The lightning is gone.[otherwise]Thick bolts of lightning strike out continually, lightening the belly of clouds and getting dangerously close to you.[end if]"

Instead of taking lightning:
	say "Unfortunately, you don't have a kite or a bottle."

The flashes are a backdrop. The flashes are in Battlezone. Understand "red" or "stars" or "star" or "distant" or "glint" as flashes. The description of the flashes is "Unfamiliar glints of red flash in the distance, like distant stars."

Instead of taking flashes:
	say "That's too far away for you to safely reach."

The puffs are a backdrop. The puffs are in PhysicalWorld. The description of the puffs is "[if northness is at least 3]Puffs of mist come from your beak and hang silently in the air before dispersing.[otherwise]You see no puffs here.[end if]"

The frost are a backdrop. The frost is in PhysicalWorld. The description of the frost is "[if northness is at least 4]The frost rimes your shell in fractal patterns.[otherwise]You see no frost here.[end if]"

Instead of taking frost:
	say "[if northness is at least 4]You scrape off some frost, but more quickly collects.[otherwise]There is no frost here.[end if]";

Tornadoes are a backdrop. The tornadoes are in Battlzone. Understand "tornado" as tornadoes. The description of tornadoes is "Tornado after tornado splits off from the storm cloud to the east to rampage across the sky before disappearing."

Instead of taking tornadoes:
	say "You wouldn't dare try."

The steaming wave is a backdrop. The steaming wave is in Aloft.

Instead of examining steaming wave:
	say "[if WorldAnger is at least 2]The wave has already gone.[otherwise]You see no wave here.[end if]";

Instead of examining sky:
	silently try looking;

[These two definitions had to be moved here for the looking section to work]
A physical is a kind of thing. A physical has a number called the density. The density is usually 0. A physical has numbers called xcord, ycord, and zcord. [Used for meltable items] A physical has a number called the melting score. The melting score is usually 7.

A bubble is a kind of physical. 

BubbleTime is a number that varies. BubbleTime is 0.

Beenhere is a number that varies. Beenhere is 0.

Instead of looking when the player is in the PhysicalWorld:
	if BlindOn is greater than 0:
		say "You are still having trouble seeing after that lightning.";
	otherwise:
		if the player is in Aloft:
			say "The wild sky stretches off forever in all directions. To the [if eastness is less than 4]far [end if]east, [if EastWestGone is 0]storm clouds boil[otherwise]the sky is gentle and open[end if]. To the [if eastness is greater than minus four]far [end if]west, the sky is gentle and open. To the [if northness is less than four]far [end if]north, [if NorthSouthGone is 0]icebergs float amid the clouds[otherwise]the sky is gentle and open[end if]. To the [if northness is greater than minus four]far [end if]south, [if NorthSouthGone is 0]patches of steam whirl in vortices[otherwise]the sky is gentle and open[end if]. [if upness is less than four]Far above you[otherwise]Above you[end if], the [if UpDownGone is 0]air becomes thinner near the top of the world[otherwise]sky is gentle and open[end if]. [if upness is greater than minus four]Far below you[otherwise]Below you[end if] lies [if UpDownGone is 0]a blanket of thicker air[otherwise] the gentle and open sky[end if][if WorldAnger is 1]. The storm to the east is getting worse, with black jets of mist flaring out at uncertain times[end if][if WorldAnger is 2]. The world is agitated, with globules of thicker air floating from below and exploding, as violent eddies swirl from the east[end if][if WorldAnger is 3]. Lightning bolts shoot from one end of the world to the other, and stormclouds boil from the east as the thicker air from below threatens to rise up and engulf you[end if].[paragraph break]";
		otherwise if the player is in Battlezone:
			say "[first time]As you reach towards the rift, the world around you bursts into activity. Streams of thick black clouds, tendrils of flame, and giant chunks of ice swirl to the west to surround the tear in space. The sky darkens considerably, and red glints of light flash far in the distance, all around you.
	
			The churning mass to the left grows and grows, forming into an enormous shell of clouds and fire so large that you cannot see where it ends in any direction. Slowly, painfully, the cloud rotates, lightning exploding all around it, until a single red baleful eye stares at you, miles long in each direction.[paragraph break][only]A dark and black sky surrounds you. Unfamiliar flashes of red glint balefully in the distance. To the [if eastness is less than 4]far [end if]east, the maelstrom of black clouds spirals into a churning vortex. To the [if northness is less than four]far [end if]north, icebergs clash and explode in violent, freezing confrontations. To the [if northness is greater than minus four]far [end if]south, the sky has caught on fire. [if upness is less than four]Far above you[otherwise]Above you[end if], the nakedness of an empty sky seeks your embrace. [if upness is greater than minus four]Far below you[otherwise]Below you[end if] the thicker air churns and roils, sending out geysers unpredictably. To the [if eastness is greater than minus four]far [end if]west lies the massive, gibbering stormbeast. Its enormous red eye glares balefully at you.[paragraph break]";
		if NorthSouthGone is 0:
			choose the row with a level of northness in Table of Weather;
			say "[if the player is in PhysicalWorld][temperature entry] [end if][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise if EastWestGone is 1][line break][end if]";
		if EastWestGone is 0:
			choose the row with a level of eastness in Table of Weather;
			say "[if the player is in PhysicalWorld][wind entry] [end if][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise if UpDownGone is 1][line break][end if]";
		if UpDownGone is 0:
			choose the row with a level of upness in Table of Weather;
			say "[if the player is in PhysicalWorld][pressure entry] [end if][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
		if Beenhere is 0:
			Say "A chunk of glowing red ice shoots out of the frozen clouds to the north, far below you, and starts to slowly rise. The ice glows strangely. [paragraph break][bracket]If you are playing Ether for the first time, you are strongly encouraged to type in ABOUT[close bracket].[paragraph break]";
			now Beenhere is 1;

TempChecking is an action applying to nothing. Understand "x temperature" or "examine temperature" or "look at temperature" or "x temp" or "examine temp" or "look at temp" as TempChecking.

Carry out TempChecking:
	if the player is in PhysicalWorld:
		if NorthSouthGone is 0:
			choose the row with a level of northness in Table of Weather;
			say "[if the player is in PhysicalWorld][temperature entry] [end if][if QuantOnOff is 1] The temperature is [four minus northness].[otherwise][paragraph break][end if]";
	otherwise:
		say "The temperature is lukewarm.";
		
WindChecking is an action applying to nothing. Understand "x windspeed" or "examine windspeed" or "look at windspeed" or "x wind" or "examine wind" or "look at wind" or "x breeze" or "examine breeze" or "look at breeze" or "feel breeze" or "touch breeze" or "x gale" or "examine gale" or "look at gale" as WindChecking. Understand "examine stiff" or "x stiff" or "look at stiff" or "examine extreme" or "x extreme" or "look at extreme" as WindChecking.

Understand "take wind" or "get wind" as windstealing. Windstealing is an action applying to nothing.

Carry out windstealing:
	say "You can't take the wind!"
	
Carry out WindChecking:
	if the player is in PhysicalWorld:
		if EastWestGone is 0:
			choose the row with a level of eastness in Table of Weather;
			say "[if the player is in PhysicalWorld][wind entry] [end if][if QuantOnOff is 1] The windspeed is [eastness plus four].[otherwise][paragraph break][end if]";
	otherwise:
		say "You feel no wind here.";

PressureChecking is an action applying to nothing. Understand "x pressure" or "examine pressure" or "look at pressure" as PressureChecking.

Carry out PressureChecking:
	if the player is in PhysicalWorld:
		if UpDownGone is 0:
			choose the row with a level of upness in Table of Weather;
			say "[if the player is in PhysicalWorld][pressure entry] [end if][if QuantOnOff is 1] The pressure is [four minus upness].[otherwise][paragraph break][end if]";
	otherwise:
		say "The pressure is neutral.";
		
Understand "hotter" or "h" as south. Understand "colder" or "c" as north. Understand "fiercer" or "f" as east. Understand "milder" or "m" as west. Understand "denser" as down. Understand "thinner" or "t" as up.

Instead of examining east:
	if the player is in Aloft:
		say "To the east, storm clouds boil.";
	otherwise if the player is in Battlezone:
		say "To the east, the maelstrom of black clouds spirals into a churning vortex."
	
Instead of examining north:
	if the player is in Aloft:
		say "To the north, icebergs float amid the clouds.";
	otherwise if the player is in Battlezone:
		say "To the north, icebergs clash and explode in violent, freezing confrontations."

Instead of examining south:
	if the player is in Aloft:
		say "To the south, patches of steam whirl in vortices";
	otherwise if the player is in Battlezone:
		say "To the south, the sky has caught on fire."
		
Instead of examining west:
	if the player is in Aloft:
		say "To the west, the sky is gentle and open.";
	otherwise if the player is in Battlezone:
		say "To the west lies a gaping, gibbering horror: the stormbeast."
	
Instead of examining up:
	if the player is in Aloft:
		say "The air becomes thinner near the top of the world.";
	otherwise if the player is in Battlezone:
		say "Above you, the nakedness of an empty sky seeks your embrace."
	
Instead of examining down:
	if the player is in Aloft:
		say "Far below you lies a blanket of thick air.";
	otherwise if the player is in Battlezone:
		say "Below you, the thicker air churns and roils, sending out geysers unpredictably."
		
Instead of examining northeast:
	try examining north;
	try examining east;

Instead of examining northwest:
	try examining north;
	try examining west;

Instead of examining southeast:
	try examining south;
	try examining east;

Instead of examining southwest:
	try examining south;
	try examining east;

Before going a direction (called way):
	if the player is in Aloft:
		say "You [one of]lazily swim [way] through the air[or]burst [way] through a small patch of cloud[or]jet swiftly [way][or]spin slightly as you glide [way][or]recklessly coast about as you fly [way][as decreasingly likely outcomes].[paragraph break]" ;
	otherwise if the player is in the Battlezone:
		say "[one of]You blast [way][or]You quickly dodge [way][or]You narrowly avoid a burst of flame from the south as you fly [way][or]You strain to avoid an iceberg as you fly [way][as decreasingly likely outcomes].[paragraph break]"

northeastup is a direction. Understand "neu" or "nue" or "une" or "uen" or "eun" or "enu" as northeastup.

Instead of going northeastup:
	if the player is in PhysicalWorld:
		Now northness is northness plus one;
		Now eastness is eastness plus one;
		Now upness is upness plus one;
		if northness is greater than four:
			if NorthSouthGone is 0:
				end the story saying "The cold presses in on you until your thoughts fade away.";
		otherwise if eastness is greater than four:
			if EastWestGone is 0:
				end the story saying "The gale strips your shell away from you and blows you away.";
		otherwise if upness is greater than four:
			if UpDownGone is 0:
				end the story saying "You slowly lose consciousness in the thin air.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

northeastdown is a direction. Understand "ned" or "nde" or "dne" or "den" or "edn" or "end" as northeastdown.

Instead of going northeastdown:
	if the player is in PhysicalWorld:
		Now northness is northness plus one;
		Now eastness is eastness plus one;
		Now upness is upness minus one;
		if northness is greater than four:
			if NorthSouthGone is 0:
				end the story saying "The cold presses in on you until your thoughts fade away.";
		otherwise if eastness is greater than four:
			if EastWestGone is 0:
				end the story saying "The gale strips your shell away from you and blows you away.";
		otherwise if upness is less than minus four:
			if UpDownGone is 0:
				end the story saying "The deep pressure crushes you.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."


southeastup is a direction. Understand "seu" or "sue" or "use" or "ues" or "eus" or "esu" as southeastup.

Instead of going southeastup:
	if the player is in PhysicalWorld:
		Now northness is northness minus one;
		Now eastness is eastness plus one;
		Now upness is upness plus one;
		if northness is less than minus four:
			if NorthSouthGone is 0:
				end the story saying "The heat overwhelms you.";
		otherwise if eastness is greater than four:
			if EastWestGone is 0:
				end the story saying "The gale strips your shell away from you and blows you away.";
		otherwise if upness is greater than four:
			if UpDownGone is 0:
				end the story saying "You slowly lose consciousness in the thin air.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

southeastdown is a direction. Understand "sed" or "sde" or "dse" or "des" or "eds" or "esd" as southeastdown.

Instead of going southeastdown:
	if the player is in PhysicalWorld:
		Now northness is northness minus one;
		Now eastness is eastness plus one;
		Now upness is upness minus one;
		if northness is less than minus four:
			if NorthSouthGone is 0:
				end the story saying "The heat overwhelms you.";
		otherwise if eastness is greater than four:
			if EastWestGone is 0:
				end the story saying "The gale strips your shell away from you and blows you away.";
		otherwise if upness is less than minus four:
			if UpDownGone is 0:
				end the story saying "The deep pressure crushes you.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."


northwestup is a direction. Understand "nwu" or "nuw" or "unw" or "uwn" or "wun" or "wnu" as northwestup.

Instead of going northwestup:
	if the player is in PhysicalWorld:
		Now northness is northness plus one;
		Now eastness is eastness minus one;
		Now upness is upness plus one;
		if northness is greater than four:
			if NorthSouthGone is 0:
				end the story saying "The cold presses in on you until your thoughts fade away.";
		otherwise if eastness is less than minus four:
			if EastWestGone is 0:
				end the story saying "The peaceful environment lulls you to sleep.";
		otherwise if upness is greater than four:
			if UpDownGone is 0:
				end the story saying "You slowly lose consciousness in the thin air.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

northwestdown is a direction. Understand "nwd" or "ndw" or "dnw" or "dwn" or "wdn" or "wnd" as northwestdown.

Instead of going northwestdown:
	if the player is in PhysicalWorld:
		Now northness is northness plus one;
		Now eastness is eastness minus one;
		Now upness is upness minus one;
		if northness is greater than four:
			if NorthSouthGone is 0:
				end the story saying "The cold presses in on you until your thoughts fade away.";
		otherwise if eastness is less than minus four:
			if EastWestGone is 0:
				end the story saying "The peaceful environment lulls you to sleep.";
		otherwise if upness is less than minus four:
			if UpDownGone is 0:
				end the story saying "The deep pressure crushes you.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."


southwestup is a direction. Understand "swu" or "suw" or "usw" or "uws" or "wus" or "wsu" as southwestup.

Instead of going southwestup:
	if the player is in PhysicalWorld:
		Now northness is northness minus one;
		Now eastness is eastness minus one;
		Now upness is upness plus one;
		if northness is less than minus four:
			if NorthSouthGone is 0:
				end the story saying "The heat overwhelms you.";
		otherwise if eastness is less than minus four:
			if EastWestGone is 0:
				end the story saying "The peaceful environment lulls you to sleep.";
		otherwise if upness is greater than four:
			if UpDownGone is 0:
				end the story saying "You slowly lose consciousness in the thin air.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

southwestdown is a direction. Understand "swd" or "sdw" or "dsw" or "dws" or "wds" or "wsd" as southwestdown.

Instead of going southwestdown:
	if the player is in PhysicalWorld:
		Now northness is northness minus one;
		Now eastness is eastness minus one;
		Now upness is upness minus one;
		if northness is less than minus four:
			if NorthSouthGone is 0:
				end the story saying "The heat overwhelms you.";
		otherwise if eastness is less than minus four:
			if EastWestGone is 0:
				end the story saying "The peaceful environment lulls you to sleep.";
		otherwise if upness is less than minus four:
			if UpDownGone is 0:
				end the story saying "The deep pressure crushes you.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

northup is a direction. Understand "nu" or "un" as northup.

Instead of going northup:
	if the player is in PhysicalWorld:
		Now northness is northness plus one;
		Now upness is upness plus one;
		if northness is greater than four:
			if NorthSouthGone is 0:
				end the story saying "The cold presses in on you until your thoughts fade away.";
		otherwise if upness is greater than four:
			if UpDownGone is 0:
				end the story saying "You slowly lose consciousness in the thin air.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

northdown is a direction. Understand "nd" or "dn" as northdown.

Instead of going northdown:
	if the player is in PhysicalWorld:
		Now northness is northness plus one;
		Now upness is upness minus one;
		if northness is greater than four:
			if NorthSouthGone is 0:
				end the story saying "The cold presses in on you until your thoughts fade away.";
		otherwise if upness is less than minus four:
			if UpDownGone is 0:
				end the story saying "The deep pressure crushes you.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

southup is a direction. Understand "us" or "su" as southup.

Instead of going southup:
	if the player is in PhysicalWorld:
		Now northness is northness minus one;
		Now upness is upness plus one;
		if northness is less than minus four:
			if NorthSouthGone is 0:
				end the story saying "The heat overwhelms you.";
		otherwise if upness is greater than four:
			if UpDownGone is 0:
				end the story saying "You slowly lose consciousness in the thin air.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

southdown is a direction. Understand "ds" or "sd" as southdown.

Instead of going southdown:
	if the player is in PhysicalWorld:
		Now northness is northness minus one;
		Now upness is upness minus one;
		if northness is less than minus four:
			if NorthSouthGone is 0:
				if upness is less than minus four:
					if UpDownGone is 0:
						say "The heat burns you to a chunk of carbon. Over years, the heat and pressure turn you into a beautiful diamond. Your consciousness remains active inside the diamond.
						
						Over centuries, you reach out your mind further and further, until you reach a new world. You try to communicate with the inhabitants, but you can only touch one or two at a time.
						
						Your speech is garbled by the years of isolation and the lack of an actual mouth. You try to speak, but all that comes out is nonsense like'fhtagn' or 'Cthulhu'. A cult is formed by those who have contacted you. Together, they determine that you wish to come and destroy their world. Somehow, they are okay with this.";
						end the story saying "You have become a Great Old One.";
				otherwise:
					end the story saying "The heat overwhelms you.";
		otherwise if upness is less than minus four:
			if UpDownGone is 0:
				end the story saying "The deep pressure crushes you.";
		otherwise:
			if NorthSouthGone is 0:
				choose the row with a level of northness in the Table of Weather;
				Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

westup is a direction. Understand "wu" or "uw" as westup.

Instead of going westup:
	if the player is in PhysicalWorld:
		Now eastness is eastness minus one;
		Now upness is upness plus one;
		if eastness is less than minus four:
			if EastWestGone is 0:
				end the story saying "The peaceful environment lulls you to sleep.";
		otherwise if upness is greater than four:
			if UpDownGone is 0:
				end the story saying "You slowly lose consciousness in the thin air.";
		otherwise:
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

westdown is a direction. Understand "wd" or "dw" as westdown.

Instead of going westdown:
	if the player is in PhysicalWorld:
		Now eastness is eastness minus one;
		Now upness is upness minus one;
		if eastness is less than minus four:
			if EastWestGone is 0:
				end the story saying "The peaceful environment lulls you to sleep.";
		otherwise if upness is less than minus four:
			if UpDownGone is 0:
				end the story saying "The deep pressure crushes you.";
		otherwise:
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."
		
eastup is a direction. Understand "eu" or "ue" as eastup.

Instead of going eastup:
	if the player is in PhysicalWorld:
		Now eastness is eastness plus one;
		Now upness is upness plus one;
		if eastness is greater than four:
			if EastWestGone is 0:
				end the story saying "The gale strips your shell away from you and blows you away.";
		otherwise if upness is greater than four:
			if UpDownGone is 0:
				end the story saying "You slowly lose consciousness in the thin air.";
		otherwise:
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

eastdown is a direction. Understand "ed" or "de" as eastdown.

Instead of going eastdown:
	if the player is in PhysicalWorld:
		Now eastness is eastness plus one;
		Now upness is upness minus one;
		if eastness is greater than four:
			if EastWestGone is 0:
				end the story saying "The gale strips your shell away from you and blows you away.";
		otherwise if upness is less than minus four:
			if UpDownGone is 0:
				end the story saying "The deep pressure crushes you.";
		otherwise:
			if EastWestGone is 0:
				choose the row with a level of eastness in Table of Weather;
				say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
			if UpDownGone is 0:
				choose the row with a level of upness in Table of Weather;
				say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	otherwise:
		say "Such directions are not useful here."

Instead of going north in PhysicalWorld:
	Now northness is northness plus one;
	if northness is greater than four:
		if NorthSouthGone is 0:
			end the story saying "The cold presses in on you until your thoughts fade away.";
	otherwise:
		if NorthSouthGone is 0:
			choose the row with a level of northness in the Table of Weather;
			Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";

Instead of going south in PhysicalWorld:
	Now northness is northness minus one;
	if northness is less than minus four:
		if NorthSouthGone is 0:
			end the story saying "The heat overwhelms you. ";
	otherwise:
		if NorthSouthGone is 0:
			choose the row with a level of northness in the Table of Weather;
			Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
				
Instead of going east in PhysicalWorld:
	Now eastness is eastness plus one;
	if eastness is greater than four:
		if EastWestGone is 0:
			end the story saying "The gale strips your shell away from you and blows you away.";
	otherwise:
		if EastWestGone is 0:
			choose the row with a level of eastness in Table of Weather;
			say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";

[west is different]	
Instead of going west in PhysicalWorld:
	Now eastness is eastness minus one;
	if eastness is less than minus four:
		if the player is in Aloft:
			if EastWestGone is 0:
				end the story saying "The peaceful environment lulls you to sleep.";
		otherwise if the player is in Battlezone:
			now eastness is minus four;
			say "You bump into the eye and discover that it is a solid sheet of red ice. The impact is hard, and the ice shakes, but does not break. The eye flares red for a second, and you have to turn away from the glare.";
	otherwise:
		if EastWestGone is 0:
			choose the row with a level of eastness in Table of Weather;
			say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
	
Instead of going up in PhysicalWorld:
	Now upness is upness plus one;
	if upness is greater than four:
		if UpDownGone is 0:
			end the story saying "You slowly lose consciousness in the thin air.";
	otherwise:
		if UpDownGone is 0:
			choose the row with a level of upness in Table of Weather;
			say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";
	
Instead of going down in PhysicalWorld:
	Now upness is upness minus one;
	if upness is less than minus four:
		if UpDownGone is 0:
			end the story saying "The deep pressure crushes you.";
	otherwise:
		if UpDownGone is 0:
			choose the row with a level of upness in Table of Weather;
			say "[pressure entry][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][paragraph break][end if]";

Understand "en" as northeast. Understand "wn" as northwest. Understand "ws" as southwest. Understand "es" as southeast.

Instead of going northeast in PhysicalWorld:
	Now northness is northness plus one;
	Now eastness is eastness plus one;
	if northness is greater than four:
		if NorthSouthGone is 0:
			end the story saying "The cold presses in on you until your thoughts fade away.";
	otherwise if eastness is greater than four:
		if EastWestGone is 0:
			end the story saying "The gale strips your shell away from you and blows you away.";
	otherwise:
		if NorthSouthGone is 0:
			choose the row with a level of northness in the Table of Weather;
			Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
		if EastWestGone is 0:
			choose the row with a level of eastness in Table of Weather;
			say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
	
Instead of going southwest in PhysicalWorld:
	Now northness is northness minus one;
	Now eastness is eastness minus one;
	if northness is less than minus four:
		if NorthSouthGone is 0:
			end the story saying "The heat overwhelms you. ";
	otherwise if eastness is less than minus four:
		if the player is in Aloft:
			if EastWestGone is 0:
				end the story saying "The peaceful environment lulls you to sleep.";
		otherwise if the player is in Battlezone:
			now eastness is minus four;
			say "You bump into the eye and discover that it is a solid sheet of red ice. The impact is hard, and the ice shakes, but does not break. The eye flares red for a second, and you have to turn away from the glare.";
	otherwise:
		if NorthSouthGone is 0:
			choose the row with a level of northness in the Table of Weather;
			Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
		if EastWestGone is 0:	
			choose the row with a level of eastness in Table of Weather;
			say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
	
Instead of going southeast in PhysicalWorld:
	Now northness is northness minus one;
	Now eastness is eastness plus one;
	if northness is less than minus four:
		if NorthSouthGone is 0:
			end the story saying "The heat overwhelms you. ";
	otherwise if eastness is greater than four:
		if EastWestGone is 0:
			end the story saying "The gale strips your shell from you.";
	otherwise:
		if NorthSouthGone is 0:
			choose the row with a level of northness in the Table of Weather;
			Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
		if EastWestGone is 0:
			choose the row with a level of eastness in Table of Weather;
			say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";
	
Instead of going northwest in PhysicalWorld:
	Now northness is northness plus one;
	Now eastness is eastness minus one;
	if northness is greater than four:
		if NorthSouthGone is 0:
			end the story saying "The cold presses in on you until your thoughts fade away.";
	otherwise if eastness is less than minus four:
		if the player is in Aloft:
			if EastWestGone is 0:
				end the story saying "The peaceful environment lulls you to sleep.";
		otherwise if the player is in Battlezone:
			now eastness is minus four;
			say "You bump into the eye and discover that it is a solid sheet of red ice. The impact is hard, and the ice shakes, but does not break. The eye flares red for a second, and you have to turn away from the glare.";
	otherwise:
		if NorthSouthGone is 0:
			choose the row with a level of northness in the Table of Weather;
			Say "[temperature entry][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise][paragraph break][end if]";
		if EastWestGone is 0:
			choose the row with a level of eastness in Table of Weather;
			say "[wind entry][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise][paragraph break][end if]";

Table of Weather
level	temperature	wind	pressure
-4	"Thin strands of steam are leaking from your tentacles[if the player is in Battlezone] and flames lick your shell[end if]. You may not be able to withstand further heat."	"[if the player is in Aloft]The air is still and peaceful. You find yourself tired, your tentacles drooping. Any further west and you might fall asleep.[otherwise]You stand right on the edge of the great horror to the west. You are close enough to touch the eye.[end if]"	"The thick air squeezes your shell from all sides. You find yourself somewhat uncomfortable, and wonder if your shell could take any more pressure."
-3	"Waves of heat roll at you from every direction[if the player is in Battlezone] and jets of flame scorch your shell from time to time."	"[If the player is in Aloft]The air flows slowly here, with torpid spirals that you idly spin in[otherwise]The air is thick and dull here, like the eye of a storm. To the west lies the enormous eye.[end if]."	"The air is soupy and uncomfortably thick down here."
-2	"The air is hot and humid[first time] here, in stark contrast to the north. The southern horizon is filled with nebulous masses that glow red and churn slowly, occasionally flaring out bursts of steam. A dry heat bakes your tentacles, only to be suddenly replaced by a shell-drenching humidity that is quickly swept away. The air gets quite a bit hotter to the south, although it is still manageable[only]."	"[if the player is in Aloft]The wind here is slower and mild[otherwise]You are still some distance from the great eye to the west, but its red glare chills your soul[end if][first time]. Unlike the other directions, you notice that the west is peaceful, clear, and free, with gentle air and thick, pillowy cloud formations that drift slowly by. You realize when you see it how deeply tired you are. You shake yourself, determined to press on[only]."	"You notice that the air is thicker than usual down here[first time]. The air far below you is so compressed and thick that it has become liquid, its surface constantly bubbling and popping. Even here, much higher, you can feel a slight, uncomfortable pressure on your shell.[only]."
-1	"The air is warm and moist."	"There is a faint breeze[if the player is in Battlezone], nudging you towards the eye to the west[end if]."	"The air weighs on your shell a bit more than usual."
0	"The temperature is [if the player is in Aloft]pleasant and [end if]mild."	"You feel a mild breeze."	"The air pressure matches your natural buoyancy."
1	"The air is cool and fresh[first time]. You pause in awe at the wintry spectacle to the north. Massive pillowy clouds blot out the horizon, shedding enormous snowflakes that hurl about in blizzards to the northeast and clump together in snowbergs and icebergs to the northwest. Even here, close to you, a few small snowflakes spill out and dance around you. The air becomes noticeably chiller to the north[only]."	"The brisk wind ruffles your tentacles."	"The air is a bit thin up here."
2	"You feel a chill in the air."	"The stiff wind blows you off course for a moment. You struggle to remain in place[first time]. A particularly nasty blast of wind comes from the east, whose vast space is filled by colossal black stormclouds constantly shredded by small tornadoes and gales. Occasional lightning bolts flash, followed by deep grumbling thunder. Even this far away, the wind is still uncomfortably strong[only]."	"The atmosphere is weak and thin here[first time]. You look up, and far above you, the clouds and snowflakes and all other details that enrich this world slowly phase out into empty nothingness. Here, where you are, the air is thin, but you can still manage to go up a bit further[only]."
3	"Thin snowflakes litter the air here. Puffs of mist come from your gills."	"A gale blows here, making it difficult to fly. You feel your shell trembling."	"You find yourself slightly drowsy in the thin air."
4	"Thick frost clusters on your shell and sticks your tentacles together. You may not be able to go any further to the north."	"Terrifying winds buffet you about. You revel in the excitement, but know that you may not be able to withstand stronger winds."	"You struggle mightily to keep alert and aloft in the thin atmosphere. You may not be able to go any higher."


Section 4-Physical Objects 

A physical is a kind of thing. A physical has a number called the density. The density is usually 0. A physical has numbers called xcord, ycord, and zcord. [Used for meltable items] A physical has a number called the melting score. The melting score is usually 7.

Check taking a physical:
	if xcord of the noun is not northness:
		say "That's too far away!" instead;
	otherwise if ycord of the noun is not eastness:
		say "That's too far away!" instead;
	otherwise if zcord of the noun is not upness:
		say "That's too far away!" instead;

Check touching a physical:
	if xcord of the noun is not northness:
		say "That's too far away!" instead;
	otherwise if ycord of the noun is not eastness:
		say "That's too far away!" instead;
	otherwise if zcord of the noun is not upness:
		say "That's too far away!" instead;

Before listing nondescript items:
	repeat with current running through physicals in Aloft:
		now current is not marked for listing;

BlindOn is a number that varies. BlindOn is 0.

SaidSomethingOnce is a number that varies. SaidSomethingOnce is 0.
SaidSomethingTwice is a number that varies. SaidSomethingTwice is 0.
FirstItemSaid is a number that varies. FirstItemSaid is 0.

[Do list important facts about items]
Every turn when the player is in PhysicalWorld: 
	now FirstItemSaid is 0;
	if BlindOn is greater than 0:
		say "Your eyes are still recovering from the lightning bolt; it is too hard to see anything far away.";
		now BlindOn is BlindOn minus one;
		if BlindOn is 0:
			say "Slowly your vision begins to return.";
	if BlindOn is 0:
		repeat with current running through physicals in PhysicalWorld:
			now SaidSomethingOnce is 0;
			now SaidSomethingTwice is 0;
			now current is not marked for listing;
			[Deal with movement due to player carrying. This is important to do each turn for later physical properties]
			if current is carried by the player:
				now the zcord of current is the upness;
				now the xcord of current is the northness;
				now the ycord of current is the eastness;
			[Deal with movement due to density]
			if current is not carried by the player:
				if SuctionOn is 1:
					if the xcord of current is less than northness:
						now SaidSomethingOnce is 1;
						now the xcord of current is xcord of current plus one;
						if the ycord of current is less than eastness:
							now the ycord of current is ycord of current plus one;
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] moves northeast, towards you";
						otherwise if the ycord of current is greater than eastness:
							now the ycord of current is ycord of current minus one;
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] moves northwest, towards you";
						otherwise:			
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] moves north, towards you";
					otherwise if the xcord of current is greater than northness:
						now SaidSomethingOnce is 1;
						now the xcord of current is xcord of current minus one;
						if the ycord of current is less than eastness:
							now the ycord of current is ycord of current plus one;
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] moves southeast, towards you";
						otherwise if the ycord of current is greater than eastness:
							now the ycord of current is ycord of current minus one;
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] moves southwest, towards you";
						otherwise:			
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] moves south, towards you";
					otherwise if the ycord of current is greater than eastness:
						now SaidSomethingOnce is 1;
						now the ycord of current is ycord of current minus one;
						say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] moves west, towards you";
					otherwise if the ycord of current is less than eastness:
						now SaidSomethingOnce is 1;
						now the ycord of current is ycord of current plus one;
						say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] moves east, towards you";
				if SuctionOn is 0:
					if the density of current is greater than the zcord of current:
						now SaidSomethingTwice is 1;
						now the zcord of current is zcord of current plus one;
						if SaidSomethingOnce is 0:
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] bobs upward";
						otherwise:
							say ". It bobs upward";
					otherwise if the density of current is less than the zcord of current:
						now SaidSomethingTwice is 1;
						now the zcord of current is zcord of current minus one;
						if SaidSomethingOnce is 0:
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] sinks lower in the air";
						otherwise:
							say ". It sinks lower in the air";
				otherwise:
					if upness is greater than the zcord of current:
						now SaidSomethingTwice is 1;
						now the zcord of current is zcord of current plus one;
						if SaidSomethingOnce is 0:
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] bobs upward";
						otherwise:
							say ". It bobs upward";
					otherwise if upness is less than the zcord of current:
						now SaidSomethingTwice is 1;
						now the zcord of current is zcord of current minus one;
						if SaidSomethingOnce is 0:
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] sinks lower in the air";
						otherwise:
							say ". It sinks lower in the air";
				[Reporting the current location of each object]		
				if xcord of current is northness and ycord of current is eastness and zcord of current is upness:
					if SaidSomethingOnce is 0 and SaidSomethingTwice is 0:
						say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] is right next to you.[paragraph break]";
					otherwise:
						say ". It is right next to you.[paragraph break]";
				otherwise:
					if QuantOnOff is 0:
						let descriptionlist be a list of text;
						if SaidSomethingOnce is 0 and SaidSomethingTwice is 0:
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] lies ";
						otherwise:
							say ". It now lies ";
						if xcord of current is greater than northness:
							add "[if xcord of current minus northness is at least 3]far [otherwise if xcord of current minus northness is at most 1]slightly [end if]to the north" to descriptionlist;
						otherwise if xcord of current is less than northness:
							add "[if northness minus xcord of current is at least 3]far [otherwise if northness minus xcord of current is at most 1]slightly [end if]to the south" to descriptionlist;
						if ycord of current is greater than eastness:
							add "[if ycord of current minus eastness is at least 3]far [otherwise if ycord of current minus eastness is at most 1]slightly [end if]to the east" to descriptionlist;
						otherwise if ycord of current is less than eastness:
							add "[if eastness minus ycord of current is at least 3]far [otherwise if eastness minus ycord of current is at most 1]slightly [end if]to the west" to descriptionlist;
						if zcord of current is greater than upness:
							add "[if zcord of current minus upness is at least 3]far [otherwise if zcord of current minus upness is at most 1]slightly [end if]above you" to descriptionlist;
						otherwise if zcord of current is less than upness:
							add "[if upness minus zcord of current is at least 3]far [otherwise if upness minus zcord of current is at most 1]slightly [end if]below you" to descriptionlist;
						say "[descriptionlist].[paragraph break]";
					otherwise:
						let descriptionlist be a list of text;
						if SaidSomethingOnce is 0 and SaidSomethingTwice is 0:
							say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] lies ";
						otherwise:
							say ". It lies ";
						if xcord of current is greater than northness:
							add "[xcord of current minus northness] to the north" to descriptionlist;
						otherwise if xcord of current is less than northness:
							add "[northness minus xcord of current] to the south" to descriptionlist;
						if ycord of current is greater than eastness:
							add "[ycord of current minus eastness] to the east" to descriptionlist;
						otherwise if ycord of current is less than eastness:
							add "[eastness minus ycord of current] to the west" to descriptionlist;
						if zcord of current is greater than upness:
							add "[zcord of current minus upness] above you" to descriptionlist;
						otherwise if zcord of current is less than upness:
							add "[upness minus zcord of current] below you" to descriptionlist;
						say "[descriptionlist].[paragraph break]";
			now FirstItemSaid is 1;
	now SuctionOn is 0;
			
Section 5-Meltable objects

A physical can be meltable or not meltable. 

[Deal with objects melting. Objects melt faster the further south they are. 20 is frozen solid, 0 is melted]
Every turn:
	repeat with current running through meltable physicals that are not nowhere:
		now melting score of current is melting score of current plus xcord of current;
		if melting score of current is greater than 7:
			now melting score of current is 7;
		otherwise if melting score of current is less than 1:
			say "The [current] has now melted completely.[paragraph break]";
			now current is nowhere;
			increase the score by one;
		otherwise if xcord of current is greater than 0:
			say "The [current] is becoming more frozen.[paragraph break]";
		otherwise if xcord of current is less than 0:
			say "The [current] is melting[if xcord of current is minus one] slowly.[otherwise if xcord of current is less than minus one] rapidly.[paragraph break][end if]";

After examining a meltable object:
	if melting score of the noun is less than 7:
		say "The [noun] is partially melted.";
	otherwise:
		say "The [noun] is frozen solid."
		
Chapter 2-Scenes


Section 1-Quotation

When play begins:
	say "[fixed letter spacing]'Year after year beheld the silent toil[line break]
		That spread his lustrous coil;[line break]
		Still, as the spiral grew,[line break]
		He left the past year's dwelling for the new,[line break] 
		Stole with soft step its shining archway through,[line break]
		Built up its idle door,[line break]
		Stretched in his last-found home, and knew the old no more.'[line break]
		
		--From 'The Chambered Nautilus', by Oliver Wendell Homes[variable letter spacing][paragraph break]";
	say "For the first time in centuries, something is different. Your tentacles tingle as you float to the east past icebergs and whirlwinds. You skirt a pocket of hot air, bounce through a field of ice, and finally come upon a massive stormcloud filling the sky to the east. 
	
	There it is. Glinting red below you and heading this way.[paragraph break]";

Section 2-Magic ice

The chunk of red ice is a meltable physical. Understand "crystal" or "power" or "magical" or "pulsing" as chunk of red ice. Understand "frozen" as chunk of red ice. The description of the ice is "A small chunk of cold red ice pulsing with magical power.[first time] You remember...[paragraph break]You were new to this world, and its strong winds and extreme environment frightened you at first. You felt out of control and lost. You thought of leaving, of giving up, of admitting you had made a mistake. You even began preparing the great door to your next home. [paragraph break]But you changed your mind at the last minute. You would make a home here, and you would not leave until you mastered this realm. So you took the power, the world-power, the summoning-power, the mind-power, and bound it in this crystal until it was time.[paragraph break]But the time is now.[only]". The xcord of ice is 4. The ycord of ice is 0. The zcord of ice is -4. The ice is in aloft.

Understand "chunk" as red ice. Understand "magic" or "crystal" as red ice. 

Instead of touching the red ice:
	say "A cold, hard chunk of ice.[if melting score of ice is less than 7] It is melting.[end if]"
	
After taking the red ice for the first time:
	say "Taken.[paragraph break]You have it! You still remember the day you gave it up, streams of red magic flowing out of you, coalescing into this form. You threw it deep into the icy maelstrom of the world, knowing you would fear to come here until you had mastered this airy realm.[paragraph break]You just need to melt the ice to release the energy. The hot air to the south should do the trick."

The Prelude is a scene. The Prelude begins when play begins. The prelude ends when the ice is nowhere.
	
When Prelude ends:
	say "The now-free magic flows in blood-red streams into you. You feel the power coursing through your veins, more than you can remember feeling in a long, long time. Enough to summon what you need. It is time to move on. You exert your will, and the world answers.[paragraph break]Nervously, you wait. You never know what the portal to the next world will be like. Once, it was just a door. The next time, it was a seed that grew into a hollow tree. Once, it was a mechanical crocodile; you spent weeks in its belly as it voyaged between worlds.[paragraph break]Slowly, out of the top of the storm cloud to the east, a shape coalesces. The world has chosen to represent the way out as a scroll.[paragraph break]The scroll, a small piece of paper, is thrown violently into your view by the storm. It lies close to the top of the storm cloud. You find it odd that the scroll formed so far from you.";

Section 3-Scroll

The scroll is a physical. Understand "small" or "piece" or "paper" as scroll. The description of the scroll is "A light scroll, fluttering in the wind.[first time] The scroll seems to be a list of sorts. Interesting...[paragraph break]You never could figure out exactly how world-travel worked. You left your parents and family just days after your birth, when you had already learned to fly and to talk. You were hungry, and a whirlwind had appeared to take you away. You're glad that the way out is a little less dangerous this time.[only]". The xcord of scroll is 0. The ycord of scroll is 4. The zcord of scroll is 4.

After taking the scroll:
	if the eastness is 4:
		Say "Taken.[paragraph break]The strong wind whips the scroll about violently. You need to find a quieter location if you want to read it. The scroll looks odd.";
	otherwise:
		Say "Taken."

Instead of examining the scroll:
	now DidIExamine is 1;
	if the scroll is carried by the player:
		if eastness is greater than minus 3:
			say "The scroll is too delicate to read in this wind.";
		if eastness is less than minus 2:
			now the scroll is nowhere;
			increase the score by one;
		if northness is minus 3:
			say "The scroll is starting to burn.";
	otherwise:
		say "It is a light scroll, fluttering in the wind. Your eyesight is a bit dim; you can't read it unless you are holding it[first time]. The scroll seems to be a list of sorts. Interesting...[paragraph break]You never could figure out how world-travel worked. You left your parents and family just days after your birth, when you had already learned to fly and to talk. You were hungry, and a whirlwind had appeared to take you away. You're glad that the way out is a little less dangerous this time[only].";

Instead of touching the scroll:
	if the scroll is carried by the player:
		say "It feels old and papery. You never understood how this works...";
	otherwise:
		say "That's too far away!"
	

DidIExamine is a number that varies. DidIExamine is 0.

Every turn while the scroll is carried by the player:
	if DidIExamine is 0:
		if eastness is 4:
			say "The howling storm threatens to rip the scroll from your tentacles.";
		if eastness is 3:
			say "The gale twists the paper about, rendering it impossible to read.";
		if eastness is 2:
			say "The stiff wind flips the paper here and there.";
		if eastness is 1:
			say "The breeze rustles the scroll about.";
		if eastness is 0:
			say "Your tentacles have difficulty keeping the paper still in the light breeze.";
		if eastness is minus 1:
			say "The scroll is calmer now, but still flits fitfully.";
		if eastness is minus 2:
			say "Frustratingly, the scroll is so fragile that it ripples slightly in the wind. You can almost make out a word or two.";
		if northness is minus 3:
			say "Smoke rises from the scroll's edges.";
		if eastness is less than minus 2:
			say "The scroll lies still, and can now be read.";
	now DidIExamine is 0;

Every turn while the scroll is carried by the player:
	if northness is minus 4:
		say "The scroll catches flame! You try to put it out, but it quickly burns to ash. You sigh, and expend some of the power you absorbed from the ice. [if HardOnOff is 0]The scroll reforms where it first appeared.[end if]";
		now the xcord of scroll is 0;
		now the ycord of scroll is 4;
		now the zcord of scroll is 4;
		now the scroll is in Aloft;
		if HardOnOff is 1:
			end the story saying "Now you will never be able to complete the spell.";

The Scrollfall is a scene. The Scrollfall begins when the Prelude ends. The Scrollfall ends when the scroll is nowhere.

When Scrollfall begins:
	Now the scroll is in Aloft.
	
When Scrollfall ends:
	Say "Finally, the scroll stops fluttering long enough for you to read it. It has taken the appearance of an old roll of vellum, ripped at the edges and slightly musty.[paragraph break]It contains a list of items and requirements to travel to your next world. As you continue to read, you realize with surprise that you will not just be travelling to the next world.[paragraph break]You will be creating it.[paragraph break]You read to the end. Nervously, you begin the first step. With a snap of your tentacles, the scroll disappears. To begin your world, you have to have something, and you have to have nothing; the light and the dark. Again you call on the red magic, and the world responds grudgingly.[paragraph break]Slowly, a ball of pure light forms far below you. Simultaneously, a smear of pure darkness forms far above you. In a short time, the ball of light resolves into a glowing jellyfish, in form like those you used to hunt worlds ago. The darkness resolves into an ebony chunk of coral.";

Section 4-LightDark

The jellyfish of light is a physical. Understand "glowing" or "ball" or "pure" as jellyfish. The description of jellyfish is "A glowing jellyfish of pure white. It undulates gently as it floats upward.[first time][paragraph break]This is the light, the matter field, the yang of your new world. Without the light, your world would be senseless, meaningless, empty.[only]". The xcord of jellyfish is minus 2. The ycord of jellyfish is 3. The zcord of jellyfish is minus 4. The density of jellyfish is 5. 

The coral of darkness is a physical. Understand "smear" or "ebony" or "chunk" or "lump" or "pulsing" or "heart" or "pure" as coral. The description of coral is "A piece of coral fashioned from pure darkness. It seems almost to breathe as you look at it.[first time][paragraph break]This is the darkness, the void, the yin the background frame, the underlying manifold of your world. Without the darkness, your world would be a harsh light, a uniform, unchanging, uncontrasting light, which is just darkness in disguise.[only]". The xcord of coral is 0. The ycord of coral is 0. The zcord of coral is four. The density of coral is minus 5.

LightOrDarkNautilus is a number that varies. LightOrDarkNautilus is 0.

There is an animal called nautilus. The nautilus is nowhere. The description of nautilus is "A[if LightOrDarkNautilus is 0] brilliantly white [otherwise]n ebony black [end if]nautilus. Its tentacles wave frantically and its beak chatters as it jets away from you." The nautilus has numbers called xcord, ycord, and zcord. xcord of nautilus is 1. ycord of nautilus is 1. zcord of nautilus is 1. The nautilus can be caught or uncaught. The nautilus is uncaught.

The otherbeak is part of the nautilus. Understand "beak" as otherbeak. The printed name of otherbeak is "beak". The description of otherbeak is "The beak of the nautilus chatters as it spins around."

The othertentacles are part of the nautilus. Understand "tentacles" or "tentacle" as othertentacles. The printed name of othertentacles is "tentacles". The description of othertentacles is "The tentacles of the nautilus wave as it spins around."

The eyes are a part of the nautilus. Understand "empty" or "beast" or "red" or "flame" or "glints" or "glint" or "ice" as eyes. The description of eyes is "The empty red eyes of the nautilus bore into you. They lie flat and impenetrable to your gaze."

The flash is a part of the nautilus. Understand "bright" or "dark" or "negative" as flash. The description of flash is "You can't see the flash anymore".

Instead of taking flash:
	say "The flash is gone."
	
Tonguelooking is an action applying to nothing. Understand "examine tongue" or "look at tongue" or "x tongue" as tonguelooking. 

Carry out tonguelooking:
	say "The tongue is gone, now";
	
Every turn during LightDark:
	let DifferenceTime be the absolute value of zcord of nautilus minus upness;
	if nautilus is in Aloft:
		if xcord of nautilus is northness and ycord of nautilus is eastness and DifferenceTime is less than 2:
			say "The nautilus is too close to the [if the player is carrying the jellyfish]jellyfish[otherwise if the player is carrying the coral]black coral[end if] to escape. The [if the player is carrying the jellyfish]jellyfish[otherwise if the player is carrying the coral]black coral[end if] is ripped from your tentacles.";
			now nautilus is caught;
			now nautilus is nowhere;
			now coral is nowhere;
			now jellyfish is nowhere;
			increase score by 2;
	if nautilus is in Aloft:
		if zcord of nautilus is upness:
			if zcord of nautilus is less than 4:
				now zcord of nautilus is zcord of nautilus plus one;
				say "The nautilus flees upward";
			otherwise:
				now zcord of nautilus is zcord of nautilus minus one;
				say "The nautilus dodges downward";
		otherwise:
			if a random chance of 1 in 2 succeeds:
				if xcord of nautilus is at least northness:
					if xcord of nautilus is less than 4:
						now xcord of nautilus is xcord of nautilus plus one;
						say "The nautilus flees to the north";
					otherwise if ycord of nautilus is at least eastness:
						if ycord of nautilus is less than 4:
							now ycord of nautilus is ycord of nautilus plus one;
							say "The nautilus squirms away to the east";
						otherwise:
							say "The nautilus spins wildly in the windstorm, unable to move";
					otherwise if ycord of nautilus is greater than minus 4:
						now ycord of nautilus is ycord of nautilus minus one;
						say "The nautilus panics and jets west";
					otherwise:
						say "The nautilus is lulled by the calm air";
				otherwise:
					if xcord of nautilus is greater than minus 4:
						now xcord of nautilus is xcord of nautilus minus one;
						say "The nautilus flees to the south";
					otherwise if ycord of nautilus is at least eastness:
						if ycord of nautilus is less than 4:
							now ycord of nautilus is ycord of nautilus plus one;
							say "The nautilus squirms away to the east";
						otherwise:
							say "The nautilus spins wildly in the windstorm, unable to move";
					otherwise if ycord of nautilus is greater than minus 4:
						now ycord of nautilus is ycord of nautilus minus one;
						say "The nautilus panics and jets west";
					otherwise:
						say "The nautilus is lulled by the calm air";
			otherwise:[this option alternates moving north with moving east]
				if ycord of nautilus is at least eastness:
					if ycord of nautilus is less than 4:
						now ycord of nautilus is ycord of nautilus plus one;
						say "The nautilus flees to the east";
					otherwise if xcord of nautilus is at least northness:
						if xcord of nautilus is less than 4:
							now xcord of nautilus is xcord of nautilus plus one;
							say "The nautilus squirms away to the north";
						otherwise:
							say "The nautilus is too cold to flee quickly";
					otherwise if xcord of nautilus is greater than minus 4:
						now xcord of nautilus is xcord of nautilus minus one;
						say "The nautilus panics and jets south";
					otherwise:
						say "The intense heat dazes the nautilus";
				otherwise:
					if ycord of nautilus is greater than minus 4:
						now ycord of nautilus is ycord of nautilus minus one;
						say "The nautilus flees to the west";
					otherwise if xcord of nautilus is at least northness:
						if xcord of nautilus is less than 4:
							now xcord of nautilus is xcord of nautilus plus one;
							say "The nautilus squirms away to the north";
						otherwise:
							say "The nautilus is too cold to flee quickly";
					otherwise if xcord of nautilus is greater than minus 4:
						now xcord of nautilus is xcord of nautilus minus one;
						say "The nautilus panics and jets south";
					otherwise:
						say "The intense heat dazes the nautilus";
		if xcord of nautilus is northness and ycord of nautilus is eastness and zcord of nautilus is upness:
			say "! Now it is right next to you.[paragraph break]";
		otherwise:
			if QuantOnOff is 0:
				let descriptionlist be a list of text;
				say "! Now it lies ";
				if xcord of nautilus is greater than northness:
					add "to the north" to descriptionlist;
				otherwise if xcord of nautilus is less than northness:
					add "to the south" to descriptionlist;
				if ycord of nautilus is greater than eastness:
					add "to the east" to descriptionlist;
				otherwise if ycord of nautilus is less than eastness:
					add "to the west" to descriptionlist;
				if zcord of nautilus is greater than upness:
					add "above you" to descriptionlist;
				otherwise if zcord of nautilus is less than upness:
					add "below you" to descriptionlist;
				say "[descriptionlist].[paragraph break]";
			otherwise:
				let descriptionlist be a list of text;
				say "! Now it lies ";
				if xcord of nautilus is greater than northness:
					add "[xcord of nautilus minus northness] to the north" to descriptionlist;
				otherwise if xcord of nautilus is less than northness:
					add "[northness minus xcord of nautilus] to the south" to descriptionlist;
				if ycord of nautilus is greater than eastness:
					add "[ycord of nautilus minus eastness] to the east" to descriptionlist;
				otherwise if ycord of nautilus is less than eastness:
					add "[eastness minus ycord of nautilus] to the west" to descriptionlist;
				if zcord of nautilus is greater than upness:
					add "[zcord of nautilus minus upness] above you" to descriptionlist;
				otherwise if zcord of nautilus is less than upness:
					add "[upness minus zcord of nautilus] below you" to descriptionlist;
				say "[descriptionlist].[paragraph break]";

Talking is an action applying to one thing. Understand "talk to [something]" as talking.

Asking someone about something is speech. 
Telling someone about something is speech. 
Answering someone that something is speech. 
Asking someone for something is speech. 

Carry out talking:
	if the nautilus is in Aloft:
		say "The nautilus turns its empty red eyes towards you. It chatters with its beak and rolls about mindlessly.";
	otherwise if the player is in Battlezone:
		say "The beast roars in response.";
	otherwise if the player is in Ocean:
		say "The sphere blocks your voice from reaching the being.";
	otherwise:
		say "You burble gently.";
		
Instead of speech:
	if the nautilus is in Aloft:
		say "The nautilus turns its empty red eyes towards you. It chatters with its beak and rolls about mindlessly.";
	otherwise if the player is in Battlezone:
		say "The beast roars in response.";
	otherwise if the player is in Ocean:
		say "The sphere blocks your voice from reaching the being.";
	otherwise:
		say "You burble gently.";
	
AtWaving is an action applying to one thing. Understand "wave at [something]" as AtWaving.

Carry out AtWaving nautilus:
	say "The nautilus looks at you, pauses, then turns away.";

Carry out AtWaving stormbeast:
	say "The beast roars.";

Carry out AtWaving bathysphere:
	say "The being seems amused.";

Carry out AtWaving being:
	say "The being seems amused.";

Instead of kissing being:
	say "You blow a  kiss, but the being doesn't notice.";

Eating nautilus is manipulation. Taking nautilus is manipulation. Touching nautilus is manipulation. Smelling nautilus is manipulation. Kissing nautilus is manipulation.

Instead of manipulation:
	if the nautilus is in Aloft:
		say "The nautilus is too far away!";
	otherwise:
		say "You don't see that here";

The LightDark is a scene. LightDark begins when Scrollfall ends. LightDark ends when the nautilus is caught.

When LightDark begins:
	Now jellyfish is in Aloft;
	Now coral is in Aloft;
	
Every turn during the LightDark:
	if zcord of jellyfish is greater than four:
		say "The jellyfish sails out of your reach above you. You summon another, but you feel resistance from this world, and your power grows weaker. Slowly, grudgingly, another jellyfish forms, far below you, and begins to rise. [paragraph break]";
		now the zcord of jellyfish is minus four;
	if zcord of coral is less than minus four:
		say "The coral sinks into the darkness below. You summon another, but you feel resistance from this world, and your power grows weaker. Slowly, grudgingly, another coral forms, far above you, and begins to sink down.[paragraph break]";
		now the zcord of coral is four;

Every turn during LightDark:
	if the player is carrying jellyfish:
		now the xcord of the jellyfish is northness;
		now the ycord of the jellyfish is eastness;
		now the zcord of the jellyfish is upness;
	if the player is carrying coral:
		now the xcord of the coral is northness;
		now the ycord of the coral is eastness;
		now the zcord of the coral is upness;
[	if xcord of coral is xcord of jellyfish and ycord of coral is ycord of jellyfish and zcord of coral is zcord of jellyfish:
		if the player is carrying jellyfish or the player is carrying coral:
			if HardOnOff is 0:
				say "You feel an overwhelming tug from [if the player is carrying the coral]the coral[otherwise]the jellyfish[end if]. You let it go and spin away.";
			otherwise if HardOnOff is 1:
				say "The jellyfish and coral explode violently. You are too close to escape the explosion.";
				end the story saying "You have exploded violently.";
		now the jellyfish is nowhere;
		now the coral is nowhere;
	otherwise if xcord of jellyfish is xcord of coral and ycord of jellyfish is ycord of coral:
		if zcord of jellyfish minus zcord of coral is 1 or zcord of jellyfish minus zcord of coral is minus 1:
			if HardOnOff is 0:
				say "The jellyfish is too close to the coral to escape, and is violently pulled towards it.[if the player is carrying the jellyfish]It is ripped from your tentacles.[otherwise if the player is carrying the coral]The coral rips from your hands towards the jellyfish.[end if]";
				now the coral is nowhere;
				now the jellyfish is nowhere;
			otherwise if HardOnOff is 1:
				say "The jellyfish and coral explode violently. You are too close to escape the explosion.";
				end the story saying "You have exploded violently."]

Instead of taking the nautilus:
	say "It is too far away for you to grab it.";

After taking the jellyfish:
		say "As you grab the jellyfish, it pulses a bright flash of light, and the coral pulses a deep black echo. When it sees the dark flash, the jellyfish begins to wiggle and squirm, almost escaping. You can feel in it an overwhelming urge to rush towards the coral, to combine violently with it.
		
		Unexpectedly, a tongue of black, smoky cloud from the east bursts towards the coral, engulfing it. When it withdraws, you see that the coral has become a nautilus, like you, but dark and nebulous, with glints of red ice for eyes.";
		now coral is nowhere;
		now nautilus is in aloft;
		now LightOrDarkNautilus is 1;
		now xcord of nautilus is xcord of coral;
		now ycord of nautilus is ycord of coral;
		now zcord of nautilus is zcord of coral;

Every turn while the jellyfish is carried by the player:
		say "The jellyfish squirms and wiggles in your tentacles. It pulls towards the black nautilus so hard that you have to use all your strength to restrain it."	

After taking the coral:
		say "As you grab the coral, it emits a flash of darkness, a pulse of negative light, that illuminates nothing but the coral. When it dies, the jellyfish flares into bright white light for a moment as an echo. Now the jellyfish seems agitated, its own tentacles pulsing. 
		
		Unexpectedly, a burst of flame from the south streams towards the jellyfish, engulfing it. When it withdraws, you see that the jellyfish has become a nautilus, like you, but white and fiery, with flames for eyes.";
		now jellyfish is nowhere;
		now nautilus is in aloft;
		now LightOrDarkNautilus is 0;
		now xcord of nautilus is xcord of jellyfish;
		now ycord of nautilus is ycord of jellyfish;
		now zcord of nautilus is zcord of jellyfish;

After dropping the jellyfish:
	if nautilus is in Aloft:
		say "The black nautilus reverts back into a lump of coral.";
		now nautilus is nowhere;
		now coral is in Aloft;
		now xcord of coral is xcord of nautilus;
		now ycord of coral is ycord of nautilus;
		now zcord of coral is zcord of nautilus;

After dropping the coral:
	if nautilus is in Aloft:
		say "The white nautilus reverts back into a gleaming jellyfish.";
		now nautilus is nowhere;
		now jellyfish is in Aloft;
		now xcord of jellyfish is xcord of nautilus;
		now ycord of jellyfish is ycord of nautilus;
		now zcord of jellyfish is zcord of nautilus;

Every turn while the coral is carried by the player:
		say "The coral seems to grow and shrink almost unnoticeably, like a pulsing heart. It seems to be pulling your thoughts, directing you towards the nautilus."	

When LightDark ends:
	say "The [if LightOrDarkNautilus is 0]coral[otherwise]jellyfish[end if] drifts uncontrollably closer to the nautilus, accelerating rapidly. You cringe and turn away, and an explosion hurls you about as a loud *CRACK* echoes through the sky as the two violently combine, releasing their energy.

	You blink wearily and shake your tentacles. You blink again, closing your eyes, and they open somewhere else. At first there is nothing, and then you start to sense pulses and waves. Clouds of potential swarm around you, spiking in brilliant flashes here and there. Clouds rip into millions and billions and trillions of tiny pieces, rearrange, combine, flip in and out of reality. Your new world in its infant form lies before you.[paragraph break]";
		
Section 5-Elements of Form

The bottle of vacuum, the chest of solid gold, the insulated flask of argon gas, and the sealed kettle of liquid toluene are physicals.

Understand "archetypes" or "building blocks" or "blocks" or "food" as bottle of vacuum.
Understand "archetypes" or "building blocks" or "blocks" or "food" as chest of solid gold.
Understand "archetypes" or "building blocks" or "blocks" or "food" as insulated flask of argon gas.
Understand "archetypes" or "building blocks" or "blocks" or "food" as sealed kettle of liquid toluene.

The description of vacuum is "A crystalline bottle with nothing inside of it. The glass creaks occasionally from the press of the surrounding air.[first time] The crystal bottle is the same as the one your mother made for you. You kept different things in yours, of course...[only]". Understand "crystalline" or "bottle" as vacuum. The xcord of vacuum is minus 2. The ycord of vacuum is 4. The zcord of vacuum is minus 3. The density of vacuum is 3.

 Understand "thick" or "treasure" or "hinge" or "hinges" as chest. The description of chest is "A hinged treasure chest that you recall is filled with solid gold. The lock is rusted shut. The hinges seem a bit loose, but not loose enough to pull off on your own.[first time] You buried a chest just like this two worlds ago, in dark caves, right before you left.[only]". The xcord of chest is minus 3. The ycord of chest is minus 4. The zcord of chest is 3. The density of chest is minus 4.

Understand "wood" or "organic" or "insulating" as flask. The description of flask is "A flask of argon gas consisting of an organic insulating material. [first time]The wood seems familiar, like a distant memory. You may have seen something like it before, worlds ago...[only]". The xcord of flask is 0. The ycord of flask is 0. The zcord of flask is minus 2. 

Understand "tea" or "sealed" or "lead" as kettle. The description of kettle is "A metal kettle filled with liquid toluene. The openings are sealed with lead. [first time]You remember seeing a kettle like this three worlds ago, when you taught mathematics in a treetop school. The students seemed to enjoy it.[only]". The xcord of kettle is 1. The ycord of kettle is minus 1. The zcord of kettle is 2.

ElementsOver is a number that varies. ElementsOver is 0.

Elements of Form is a scene. Elements of Form begins when LightDark ends. Elements of Form ends when ElementsOver is 2.

Every turn during Elements of Form:
	if WorldAnger is 4:
		now ElementsOver is ElementsOver plus one;

[Dealing with vacuum powers]
SuctionOn is a number that varies. SuctionOn is 0.

WorldAnger is a number that varies. WorldAnger is 0.

AngerSensing is an action applying to nothing. Understand "sense anger" as AngerSensing.

Carry out AngerSensing:
	say "You sense [if WorldAnger is 0]no [otherwise if WorldAnger is at least 2]great [end if]anger in the world about you.";

Crushing is an action applying to one thing. Crushingall is an action applying to nothing. Understand "crush [something]" as crushing. Understand "crush all" as crushingall.

Carry out crushingall:
	repeat with current running through all things carried by the player:
		try crushing current;

CrushingOn is a number that varies. CrushingOn is 0.

SuctionPossible is a number that varies. SuctionPossible is 0.

Vacuuming is an action applying to nothing. Understand "vacuum" as vacuuming.

ListNonEmpty is a number that varies. ListNonEmpty is 0.

Carry out vacuuming:
	if SuctionPossible is 0:
		say "You can't do that... yet.";
	otherwise:
		now SuctionOn is 1;
		if BubbleTime is 0:
			if the player is in Aloft:
				let ItemList be a list of things;
				repeat with current running through physicals in Aloft:
					if xcord of current is not northness:
						add current to ItemList;
						now ListNonEmpty is 1;
					otherwise if ycord of current is not eastness:
						add current to ItemList;
						now ListNonEmpty is 1;
					otherwise if zcord of current is not upness:
						add current to ItemList;
						now ListNonEmpty is 1;
				if ListNonEmpty is 1:
					say "The [ItemList] [are] pulled a bit closer to you.";
				otherwise:
					say "Everything of importance is already near you.";	
				now ListNonEmpty is 0;
			otherwise if the snowflake is in Center:
				say "You pull the snowflake towards you and grasp it with your tentacles.";
				now the snowflake is carried by the player;
			otherwise:
				say "You feel the air flow towards you.";				
		otherwise if the player is in Ocean:
			say "You feel the water flow towards you sluggishly. You're not used to doing this anymore.";
		otherwise:
			say "You feel the air flow towards you.";

Check crushing:
	if CrushingOn is 0:
		say "You do not yet have the strength to crush anything." instead;	
	otherwise if noun is not a physical:
		say "You can't crush that!" instead;
	otherwise if noun is not carried by the player:
		say "You need to be holding that before you can crush it!" instead;

Carry out crushing:
	Say "You raise your hardened tentacles high in the air, and send the plummeting down onto the [noun]. It smashes into dozens of pieces.";
	now the noun is nowhere;
	increase the score by one;
	if the noun is the flask:
		say "The flask ruptures. The gas fluoresces fitfully as sparks of lightning consume it and the flask.
		
		Again, you sense the new world. A strong atmosphere springs into place, like the world you are in now. You see powerful storms sending down torrents of rain. You see enormous clouds floating in the sky. You see light spreading and filling the world, turning the sky blue or red.
		
		You return to the old world. The gas flows and surrounds you, then is sucked into your shell. [bold type]You now have the ability to rocket about; type 'ROCKET [bracket]DIRECTION[close bracket]' to go as far as you can in that direction.[roman type][paragraph break]";
		now RocketOn is 1;
	otherwise if the noun is the vacuum:
		say "The crystal bottle is crushed. With a loud 'pop', the vacuum collapses, and the crystal shards are compressed to a small point, vanishing.

		As the bottle shatters, the vision of the new world springs into your view again. Like an explosion, the bounds of the world shatter, and a vacuum-filled space expands exponentially faster and faster away from your world, sprouting stars, nebulae, and suns. This new world will be bigger than any you have created before.
		
		You absorb the power of the vacuum inside of you. [bold type]You can now automatically draw all objects towards you. Type 'VACUUM' to attract objects towards you.[roman type] The air around you starts slowly drifting towards you, absorbing into your shell, increasing in speed until a steady stream of air is pulling all visible objects to you.[paragraph break]";
		now SuctionPossible is 1;
	otherwise if the noun is the kettle:
		say "The kettle is smashed and explodes in a cloud of mist.
		
			As the mist envelopes you, you feel the presence of the new world stronger than before. Rivers and oceans spill across it, lakes and streams. The Ocean... you have never seen a world with so much water. The ocean teems with life, but the deepest recesses of it are dark and empty. You watch it all with excitement. In this new world, the Ocean will be your home.
		
			The liquid spreads all over your tentacles and shell, and is absorbed into your body. Your tentacles lengthen and become stickier. [bold type]You can now carry multiple objects at once.[roman type][paragraph break]";
		increase the carrying capacity of the player by 4;
	if the noun is not the scroll and noun is not the red ice:
		now WorldAnger is WorldAnger plus one;
		choose the row with a level of WorldAnger in Table of Anger;
		say "[anger entry][paragraph break]";

Sparks are a backdrop. Sparks are in Aloft. Understand "spark" as sparks. 

Instead of examining sparks:
	say "[if the carrying capacity of the player is at least 2]The sparks are gone, now.[otherwise]You see no such thing.[end if]"

Nuggets are a backdrop. Nuggets are in Aloft. Understand "nugget" or "coins" or "coin" as nuggets.

Instead of examining nuggets:
	say "[if CrushingOn is 1]The nuggets and coins are gone, now.[otherwise]You see no such thing.[end if]"

Shards are a backdrop. Shards are in Aloft. Understand "shard" as shards.

Instead of examining shards:
	say "[if SuctionPossible is 1]The shards are gone, now.[otherwise]You see no such thing.[end if]"

Rocketing is an action applying to one visible thing. Understand "rocket [direction]" as rocketing.

RocketOn is a number that varies. RocketOn is 0.

Check rocketing:
	if RocketOn is 0:
		say "You can't rocket anywhere yet." instead;
	if the noun is not a direction:
		say "You can't rocket there!".

Carry out rocketing:
	let rocketlist be a list of text;
	say "You rocket [noun] as far as you safely can";
	if noun is up:
		if upness is 4:
			say ", which isn't very far";
		otherwise:
			now upness is 4;
	if noun is down:
		if upness is minus 4:
			say ", which isn't very far";
		otherwise:
			now upness is minus 4;
	if noun is north:
		if northness is 4:
			say ", which isn't very far";
		otherwise:
			now northness is 4;
	if noun is south:
		if northness is minus 4:
			say ", which isn't very far";
		otherwise:
			now northness is minus 4;
	if noun is east:
		if eastness is 4:
			say ", which isn't very far";
		otherwise:
			now eastness is 4;
	if noun is west:
		if eastness is minus 4:
			say ", which isn't very far";
		otherwise:
			now eastness is minus 4;
	if noun is northup:
		if northness is 4:
			say ", which isn't very far";
		otherwise if upness is 4:
			say ", which isn't very far";
		otherwise:
			now northness is 4;
			now upness is 4;
	if noun is southup:
		if northness is minus 4:
			say ", which isn't very far";
		otherwise if upness is 4:
			say ", which isn't very far";
		otherwise:
			now northness is minus 4;
			now upness is 4;
	if noun is eastup:
		if eastness is 4:
			say ", which isn't very far";
		otherwise if upness is 4:
			say ", which isn't very far";
		otherwise:
			now eastness is 4;
			now upness is 4;
	if noun is westup:
		if eastness is minus 4:
			say ", which isn't very far";
		otherwise if upness is 4:
			say ", which isn't very far";
		otherwise:
			now eastness is minus 4;
			now upness is 4;
	if noun is northdown:
		if northness is 4:
			say ", which isn't very far";
		otherwise if upness is minus 4:
			say ", which isn't very far";
		otherwise:
			now northness is 4;
			now upness is minus 4;
	if noun is southup:
		if northness is minus 4:
			say ", which isn't very far";
		otherwise if upness is minus 4:
			say ", which isn't very far";
		otherwise:
			now northness is minus 4;
			now upness is minus 4;
	if noun is eastup:
		if eastness is 4:
			say ", which isn't very far";
		otherwise if upness is minus 4:
			say ", which isn't very far";
		otherwise:
			now eastness is 4;
			now upness is minus 4;
	if noun is westup:
		if eastness is minus 4:
			say ", which isn't very far";
		otherwise if upness is minus 4:
			say ", which isn't very far";
		otherwise:
			now eastness is minus 4;
			now upness is minus 4;
	if noun is northeast:
		if northness is 4:
			say ", which isn't very far";
		otherwise if eastness is 4:
			say ", which isn't very far";
		otherwise:
			now northness is 4;
			now eastness is 4;
	if noun is northwest:
		if northness is 4:
			say ", which isn't very far";
		otherwise if eastness is minus 4:
			say ", which isn't very far";
		otherwise:
			now northness is 4;
			now eastness is minus 4;
	if noun is southeast:
		if northness is minus 4:
			say ", which isn't very far";
		otherwise if eastness is 4:
			say ", which isn't very far";
		otherwise:
			now northness is minus 4;
			now eastness is 4;
	if noun is southwest:
		if northness is minus 4:
			say ", which isn't very far";
		otherwise if eastness is minus 4:
			say ", which isn't very far";
		otherwise:
			now northness is minus 4;
			now eastness is minus 4;
	if noun is northeastup:
		if northness is 4:
			say ", which isn't very far";
		otherwise if eastness is 4:
			say ", which isn't very far";
		otherwise if upness is 4:
			say ", which isn't very far";
		otherwise:
			now northness is 4;
			now eastness is 4;
			now upness is 4;
	if noun is northwestup:
		if northness is 4:
			say ", which isn't very far";
		otherwise if eastness is minus 4:
			say ", which isn't very far";
		otherwise if upness is 4:
			say ", which isn't very far";
		otherwise:
			now northness is 4;
			now eastness is minus 4;
			now upness is 4;
	if noun is southeastup:
		if northness is minus 4:
			say ", which isn't very far";
		otherwise if eastness is 4:
			say ", which isn't very far";
		otherwise if upness is 4:
			say ", which isn't very far";
		otherwise:
			now northness is minus 4;
			now eastness is 4;
			now upness is 4;
	if noun is southwestdown:
		if northness is minus 4:
			say ", which isn't very far";
		otherwise if eastness is minus 4:
			say ", which isn't very far";
		otherwise if upness is minus 4:
			say ", which isn't very far";
		otherwise:
			now northness is minus 4;
			now eastness is minus 4;
			now upness is minus 4;
	if noun is northeastdown:
		if northness is 4:
			say ", which isn't very far";
		otherwise if eastness is 4:
			say ", which isn't very far";
		otherwise if upness is minus 4:
			say ", which isn't very far";
		otherwise:
			now northness is 4;
			now eastness is 4;
			now upness is minus 4;
	if noun is northwestdown:
		if northness is 4:
			say ", which isn't very far";
		otherwise if eastness is minus 4:
			say ", which isn't very far";
		otherwise if upness is minus 4:
			say ", which isn't very far";
		otherwise:
			now northness is 4;
			now eastness is minus 4;
			now upness is minus 4;
	if noun is southeastdown:
		if northness is minus 4:
			say ", which isn't very far";
		otherwise if eastness is 4:
			say ", which isn't very far";
		otherwise if upness is minus 4:
			say ", which isn't very far";
		otherwise:
			now northness is minus 4;
			now eastness is 4;
			now upness is minus 4;
	if noun is southwestdown:
		if northness is minus 4:
			say ", which isn't very far";
		otherwise if eastness is minus 4:
			say ", which isn't very far";
		otherwise if upness is minus 4:
			say ", which isn't very far";
		otherwise:
			now northness is minus 4;
			now eastness is minus 4;
			now upness is minus 4;
	say ".[paragraph break]";
	if NorthSouthGone is 0:
		choose the row with a level of northness in Table of Weather;
		say "[if the player is in PhysicalWorld][temperature entry] [end if][if QuantOnOff is 1] The temperature is [four minus northness].[paragraph break][otherwise if EastWestGone is 1][line break][end if]";
	if EastWestGone is 0:
		choose the row with a level of eastness in Table of Weather;
		say "[if the player is in PhysicalWorld][wind entry] [end if][if QuantOnOff is 1] The windspeed is [eastness plus four].[paragraph break][otherwise if UpDownGone is 1][line break][end if]";
	if UpDownGone is 0:
		choose the row with a level of upness in Table of Weather;
		say "[if the player is in PhysicalWorld][pressure entry] [end if][if QuantOnOff is 1] The pressure is [four minus upness].[paragraph break][otherwise][line break][end if]";

When Elements of Form begins:
	Now the chest is in Aloft;
	Now the flask is in Aloft;
	Now the kettle is in Aloft;
	Now the vacuum is in Aloft;
	say	"You open your eyes, and they slowly adjust, returning to the world your body resides in. Slowly, a number of objects fade into view, archetypes summoned by this old world as building blocks and food for your new world. Vacuum, liquid, solid and gas lay before you.
	
	But there is something odd; each is encased in a thick shell of a different kind. The vacuum is encased in a crystalline bottle; the solid metals are contained in a thick treasure chest, like the one you used on the desert world; the argon gas is contained in an organic flask, made from some sort of dense wood; and the liquid toluene is in a tea kettle, like the one you used on your birth world.
	
	Your tentacles squirm uncomfortably. It is supposed to be much easier than this. Something about this world seems off today. You look at the maelstrom to the east, to the burning heat of the south and the freezing cold of the north. Then you understand...
	
	This world doesn't want you to leave.[paragraph break]";
	now FirstItemSaid is 0;
	repeat with current running through physicals in PhysicalWorld:
		now SaidSomethingOnce is 0;
		now SaidSomethingTwice is 0;
		now current is not marked for listing;
		[Deal with movement due to player carrying. This is important to do each turn for later physical properties]
		if current is carried by the player:
			now the zcord of current is the upness;
			now the xcord of current is the northness;
			now the ycord of current is the eastness;
		[Deal with movement due to density]
		if current is not carried by the player:
			if xcord of current is northness and ycord of current is eastness and zcord of current is upness:
				if SaidSomethingOnce is 0 and SaidSomethingTwice is 0:
					say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] is right next to you.[paragraph break]";
				otherwise:
					say ". Now it is right next to you.[paragraph break]";
			otherwise:
				if QuantOnOff is 0:
					let descriptionlist be a list of text;
					if SaidSomethingOnce is 0 and SaidSomethingTwice is 0:
						say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] lies ";
					otherwise:
						say ". It now lies ";
					if xcord of current is greater than northness:
						add "[if xcord of current minus northness is at least 3]far [otherwise if xcord of current minus northness is at most 1]slightly [end if]to the north" to descriptionlist;
					otherwise if xcord of current is less than northness:
						add "[if northness minus xcord of current is at least 3]far [otherwise if northness minus xcord of current is at most 1]slightly [end if]to the south" to descriptionlist;
					if ycord of current is greater than eastness:
						add "[if ycord of current minus eastness is at least 3]far [otherwise if ycord of current minus eastness is at most 1]slightly [end if]to the east" to descriptionlist;
					otherwise if ycord of current is less than eastness:
						add "[if eastness minus ycord of current is at least 3]far [otherwise if eastness minus ycord of current is at most 1]slightly [end if]to the west" to descriptionlist;
					if zcord of current is greater than upness:
						add "[if zcord of current minus upness is at least 3]far [otherwise if zcord of current minus upness is at most 1]slightly [end if]above you" to descriptionlist;
					otherwise if zcord of current is less than upness:
						add "[if upness minus zcord of current is at least 3]far [otherwise if upness minus zcord of current is at most 1]slightly [end if]below you" to descriptionlist;
					say "[descriptionlist].[paragraph break]";
				otherwise:
					let descriptionlist be a list of text;
					if SaidSomethingOnce is 0 and SaidSomethingTwice is 0:
						say "[if BubbleTime is 0]The [otherwise if FirstItemSaid is 0]A [otherwise]Another [end if][current] lies ";
					otherwise:
						say ". It now lies ";
					if xcord of current is greater than northness:
						add "[xcord of current minus northness] to the north" to descriptionlist;
					otherwise if xcord of current is less than northness:
						add "[northness minus xcord of current] to the south" to descriptionlist;
					if ycord of current is greater than eastness:
						add "[ycord of current minus eastness] to the east" to descriptionlist;
					otherwise if ycord of current is less than eastness:
						add "[eastness minus ycord of current] to the west" to descriptionlist;
					if zcord of current is greater than upness:
						add "[zcord of current minus upness] above you" to descriptionlist;
					otherwise if zcord of current is less than upness:
						add "[upness minus zcord of current] below you" to descriptionlist;
					say "[descriptionlist].[paragraph break]";
		now FirstItemSaid is 1;


Every turn during Elements of Form:
	if the chest is carried by the player:
		if northness is 4:
			say "The snowflakes stick more and more to the large chest, until it grows too heavy to hold. It falls out of your grasp and disappears into the murk below.
			
			Calling on the magic of the red ice again, you call forth another chest. Your power grows weaker.";
			Now the chest is in Aloft;
			Now the xcord of chest is minus 3;
			Now the ycord of chest is minus 4;
			Now the zcord of chest is 3;
		otherwise:
			if eastness is 2:
				say "The stiff wind makes the hinges of the chest creak.";
			if eastness is 3:
				say "The wind begins to rattle the loose hinges of the chest.";
			if eastness is 4:
				now the chest is nowhere;
				increase score by one;
				Now CrushingOn is 1;
				say "The extreme wind rips the hinges off the chest. Gold nuggets and coins spill out and spiral through the air before disappearing in a flash along with the chest.
				
				The old world fades for a moment as the new world enters your view. You feel enormous weight as a thick core of iron builds up in the center of your world, hot and mobile. More and more molten rock piles on, the outsides cooling, popping and cracking into seams of quartz, basalt, silver, and gold. Your new world will have a solid foundation. The visions of the new world fade away.
				
				As they disappear, you feel a power coursing through your tentacles. They strengthen and harden. [bold type]You now have the ability to crush objects instead of moving them around. To crush an object, type 'CRUSH [bracket]OBJECT[close bracket]'. You must be carrying an object before you can crush it.[roman type][paragraph break]";
				now WorldAnger is WorldAnger plus one;
				choose the row with a level of WorldAnger in Table of Anger;
				say "[anger entry][paragraph break]";
	otherwise if chest is in Aloft:
		if xcord of chest is 4:
			say "The snowflakes stick more and more to the large chest, until it grows too heavy to hold. It falls out of your grasp and disappears into the murk below.
			
			Calling on the magic of the red ice again, you call forth another chest. Your power grows weaker.";
			Now the xcord of chest is minus 3;
			Now the ycord of chest is minus 4;
			Now the zcord of chest is 3;
			Now the chest is in Aloft;
		otherwise:
			if ycord of chest is 2:
				say "The stiff wind makes the hinges of chest creak.";
			if ycord of chest is 3:
				say "The wind begins to rattle the loose hinges of the chest.";
			if ycord of chest is 4:
				now the chest is nowhere;
				increase the score by one;
				now CrushingOn is 1;
				say "The extreme wind rips the hinges off the chest. Gold nuggets and coins spill out and spiral through the air before disappearing in a flash along with the chest.

				The old world fades for a moment as the new world enters your view. You feel enormous weight as a thick core of iron builds up in the center of your world, hot and mobile. More and more molten rock piles on, the outsides cooling, popping and cracking into seams of quartz, basalt, silver, and gold. Your new world will have a solid foundation. The visions of the new world fade away.

				As they disappear, you feel a power coursing through your tentacles. They strengthen and harden. [bold type]You now have the ability to crush objects instead of moving them around. To crush an object, type 'CRUSH [bracket]OBJECT[close bracket]'. You must be carrying an object before you can crush it.[roman type][paragraph break]";
				now WorldAnger is WorldAnger plus one;
				choose the row with a level of WorldAnger in Table of Anger;
				say "[anger entry][paragraph break]";
	
Every turn during Elements of Form:
	if the flask is carried by the player:
		if upness is 2:
			say "The flask creaks a little.";
		if upness is 3:
			say "The flask cracks and pops a bit as the pressure inside builds up.";
		if upness is 4:
			now the flask is nowhere;
			increase the score by one;
			now RocketOn is 1;
			say "The pressure of the gas ruptures the flask. The gas fluoresces fitfully as sparks of lightning consume it and the flask.
			
			Again, you sense the new world. A strong atmosphere springs into place, like the world you are in now. You see powerful storms sending down torrents of rain. You see enormous clouds floating in the sky. You see light spreading and filling the world, turning the sky blue or red.
			
			You return to the old world. The gas flows and surrounds you, then is sucked into your shell. [bold type]You now have the ability to rocket about; type 'ROCKET [bracket]DIRECTION[close bracket]' to go as far as you can in that direction.[roman type][paragraph break]";
			now WorldAnger is WorldAnger plus one;
			choose the row with a level of WorldAnger in Table of Anger;
			say "[anger entry][paragraph break]";
	otherwise if flask is in Aloft:
		if zcord of flask is 2:
			say "The flask creaks a little.";
		if zcord of flask is 3:
			say "The flask cracks and pops a bit as the pressure inside builds up.";
		if zcord of flask is 4:
			now the flask is nowhere;
			increase the score by one;
			now RocketOn is 1;
			say "The pressure of the gas ruptures the flask. The gas fluoresces fitfully as sparks of lightning consume it and the flask.
			
			Again, you sense the new world. A strong atmosphere springs into place, like the world you are in now. You see powerful storms sending down torrents of rain. You see enormous clouds floating in the sky. You see light spreading and filling the world, turning the sky blue or red.
			
			You return to the old world. The gas flows and surrounds you, then is sucked into your shell. [bold type]You now have the ability to rocket about; type 'ROCKET [bracket]DIRECTION[close bracket]' to go as far as you can in that direction.[roman type][paragraph break]";
			now WorldAnger is WorldAnger plus one;
			choose the row with a level of WorldAnger in Table of Anger;
			say "[anger entry][paragraph break]";

Every turn while the vacuum is carried by the player:
	if upness is minus 2:
		say "The bottle trembles slightly.";
	if upness is minus 3:
		say "The walls of the crystal bottle notably bend inwards.";
	if upness is minus 4:
		now the vacuum is nowhere;
		increase the score by one;
		now SuctionPossible is 1;
		say "The intense pressure crushes the crystal bottle. With a loud 'pop', the vacuum collapses, and the crystal shards are compressed to a small point, vanishing.
		
		As the bottle shatters, the vision of the new world springs into your view again. Like an explosion, the bounds of the world shatter, and a vacuum-filled space expands exponentially faster and faster away from your world, sprouting stars, nebulae, and suns. This new world will be bigger than any you have created before.		
		
		You absorb the power of the vacuum inside of you. [bold type]You can now draw all objects towards you. Type 'VACUUM' to attract objects.[roman type] The air around you starts slowly drifting towards you, absorbing into your shell, increasing in speed until a steady stream of air is pulling all visible objects to you.[paragraph break]";	
		now WorldAnger is WorldAnger plus one;
		choose the row with a level of WorldAnger in Table of Anger;
		say "[anger entry][paragraph break]";

Check touching the kettle:
	if the xcord of the kettle is minus 2:
		say "The kettle is warm.[paragraph break]" instead;
	if the xcord of the kettle is minus 3:
		say "The kettle is hot." instead;
	if the xcord of the kettle is minus 4:
		say "The kettle is burning hot" instead;

The new world is a backdrop. The new world is in PhysicalWorld and in Center. Understand "rift" or "entrance" or "tear" or "fabric" or "space" or "stars" or "inner" or "blue" as new world. 

Instead of examining the new world:
	if the player is in Center:
		say "The rift to your world is being devoured by the swirling red heart. Through the rift, you see a field of stars with your blue world in the center[if AsteroidCame is 1]. The scar of the asteroid still marks your world, and the dead lie buried beneath the earth[end if][if GlacierCame is 1]. The glacier has retreated, but left your world pitted and scarred[end if][if ForestsGone is 1]. The forests are gone on a massive swath of land, leaving only endless deserts[end if].";
	otherwise:
		say "[if WorldAnger is at least one]The new world is close to you, but you are still separated from it.[otherwise]You see only this airy world.[end if][if BubbleTime is 1]You can feel the energy pouring into you, and into the world. You can no longer see the rift, but you can feel it nearby, slowly gaining power.[end if]";

Instead of taking new world:
	if the player is in Center:
		say "(first taking heart)[paragraph break]";
		silently try taking heart;
	otherwise:
		say "You have no way of touching it."

Instead of touching new world:
	if the player is in Center:
		say "It is completely surrounded by the heart.";
	otherwise:
		say "You have no way of touching it."

Every turn during Elements of Form:
	if the kettle is carried by the player:
		if northness is minus 2:
			say "The kettle is warm to the touch.";
		if northness is minus 3:
			say "The kettle is hot now.";
		if northness is minus 4:
			if upness is less than 3:
				say "The liquid boils in the kettle, causing intense pressure. However, the walls still hold. It may need a little something more to release the liquid.[paragraph break]";
			otherwise:
				now the kettle is nowhere;
				increase the score by one;
				say "The kettle ruptures violently as the steam boils out. The pieces of the kettle slowly melt and evaporate until they disappear.
				
				As the mist envelopes you, you feel the presence of the new world stronger than before. Rivers and oceans spill across it, lakes and streams. The Ocean... you have never seen a world with so much water. The ocean teems with life, but the deepest recesses of it are dark and empty. You watch it all with excitement. In this new world, the Ocean will be your home.
								
				The liquid spreads all over your tentacles and shell, and is absorbed into your body. Your tentacles lengthen and become stickier. [bold type]You can now carry multiple objects at once.[roman type][paragraph break]";
				increase the carrying capacity of the player by 4;
				now WorldAnger is WorldAnger plus one;
				choose the row with a level of WorldAnger in Table of Anger;
				say "[anger entry][paragraph break]";
	otherwise if kettle is in Aloft:
		if xcord of kettle is minus 4:
			if zcord of kettle is less than 3:
				say "The liquid boils in the kettle, causing intense pressure. However, the walls still hold. It may need a little something more to release the liquid.[paragraph break]";
			otherwise:
				now the kettle is nowhere;
				increase the score by one;
				say "The kettle ruptures violently as the steam boils out. The pieces of the kettle slowly melt and evaporate until they disappear.

				As the mist envelopes you, you feel the presence of the new world stronger than before. Rivers and oceans spill across it, lakes and streams. The Ocean... you have never seen a world with so much water. The ocean teems with life, but the deepest recesses of it are dark and empty. You watch it all with excitement. In this new world, the Ocean will be your home.
				
				The liquid spreads all over your tentacles and shell, and is absorbed into your body. Your tentacles lengthen and become stickier. [bold type]You can now carry multiple objects at once.[roman type][paragraph break]";
				now WorldAnger is WorldAnger plus one;
				choose the row with a level of WorldAnger in Table of Anger;
				say "[anger entry][paragraph break]";
				increase the carrying capacity of the player by 4.

Table of Anger
level	anger
1	"This world rumbles and shakes, grudging you your success. The maelstrom to the east boils up in massive black clouds. Lightning strikes out in several directions, some smashing icebergs, others lighting up the underbellies of clouds."
2	"You sense intense anger as you take yet another step towards leaving. The blanket of thick air below you begins to bubble and boil. A thick globule of air rises slowly before popping uncomfortably close to you."	
3	"The world explodes in fury. An enormous bolt of lightning rockets from east to west, sending a thunderclap echoing throughout the world. A wave of steaming air rolls from the south to the north. You are tossed about for a second. The lightning bolt has temporarily blinded you, but it quickly wears off. "	
4	"There is a great pause in the air. Your world now is complete; you can sense it, waiting for you. But something is holding it back; a membrane between the worlds, or a dam. "

Every turn during elements of form:
	if BlindOn is greater than 0:
		now BlindOn is BlindOn minus one;
	if WorldAnger is greater than 0:
		if a random chance of 1 in 7 succeeds:
			say "A thick finger of black cloud stretches out from the east and flicks at you";
			if a random chance of 1 in 3 succeeds:
				say ". The cloud connects, and knocks you about. [bold type]You tumble for a time before settling down far away[roman type].[paragraph break]";
				let xrand be a random number between minus four and four;
				let yrand be a random number between minus four and four;
				let zrand be a random number between minus four and four;
				now northness is xrand;
				now eastness is yrand;
				now upness is zrand;
			otherwise:
				say ". The cloud narrowly misses you, cracking the air to your side.[paragraph break]";
	if WorldAnger is greater than 1:
		if a random chance of 1 in 7 succeeds:
			say "Another globule of air boils out from below and rushes at you";
			if a random chance of 1 in 3 succeeds:
				say ". Before you can move, it pops[if the player is carrying something], [bold type]sending everything you are carrying flying[roman type].[otherwise], dazing you for a second.[paragraph break]";
				repeat with current running through things carried by yourself:
					now current is in aloft;
					let xrand be a random number between minus four and four;
					let yrand be a random number between minus four and four;
					let zrand be a random number between minus four and four;
					now xcord of current is xrand;
					now ycord of current is yrand;
					now zcord of current is zrand;
			otherwise:
				say ". It bursts in a loud explosion close to you. The explosion rocks you, but you avoid the brunt of it.[paragraph break]";
	if WorldAnger is greater than 2:
		if a random chance of 1 in 7 succeeds:
			say "Another bolt of lightning streaks from the east";
			if a random chance of 1 in 3 succeeds:
				say ". [bold type]The bright flash blinds you temporarily.[roman type][paragraph break]";
				now BlindOn is 2;
			otherwise:
				say ". You were turn away before the bolt strikes, and it doesn't affect you.[paragraph break]"

Check examining a physical:
	If BlindOn is greater than 0:
		if the noun is not carried by yourself:
			say "Your eyes have trouble making it out from here." instead;

When Elements of Form ends:
	say "Suddenly, you feel it. You concentrate with all your might. Slowly, slowly, the membrane between the worlds stretches and thins out. With the tiniest sound in the world, a minuscule tear in the fabric of time appears, to the west. Through it, you can see a black field of stars.";
	pause the game;

Section 6-Battlezone

EyeCracked is a number that varies. EyeCracked is 0.

The stormbeast is a backdrop. The stormbeast is in Battlezone. Understand "horror" or "fire" or "huge" or "massive" or "shelled" or "gaping" or "gibbering" as stormbeast. Understand "beast" as stormbeast. The description of Stormbeast is "A massive shelled creature of cloud and fire that stretches as far as the eye can see in every direction. Its huge red eye is glaring at you from the west."

The rain is a backdrop. The rain is in battlezone. Understand "pale" or "green" or "raindrops" or "raindrop" as rain. The description of rain is "Pale green raindrops that fill the air.";

The eye is a backdrop. The eye is in Battlezone and in Center. Understand "deep" or "crack" or "ice" or "sheet" or "thin" or "cracks" or "web" or "red" or "reddish" or "tinge" as eye. The description of eye is "[if the player is in Battlezone]A flat plane of red ice, constantly swept by grey clouds.[otherwise]Straining your eyes, in the far, far distance you see a reddish tinge to the blackness, revealing the inside of the eye.[end if][if EyeCracked is greater than 0] A deep web of cracks spreads through the eye.[otherwise] A thin web of cracks spreads across the eye[end if]";

The grey sheet is a backdrop. The grey sheet is in Battlezone. Understand "eyelid" or "blink" as sheet. The description of sheet is "A grey sheet of clouds frequently sweeps across the eye, faster than you can react."

Instead of entering the stormbeast:
	silently try entering the eye.

Instead of entering the eye:
	say "The eye is not cracked through all the way yet.";

Instead of touching stormbeast:
	say "You are not close enough.";

Instead of touching eye:
	say "You are not close enough.";

Instead of attacking stormbeast:
	say "You're going to have to tell me how to do that.";

Instead of attacking eye:
	say "You're going to have to tell me how to do that.";

LatchedOn is a number that varies. LatchedOn is 0.

Check taking Stormbeast:
	if eastness is greater than minus four:
		say "That's too far away!" instead;
	otherwise:
		say "Your tentacles latch onto the great eye. The beast shudders with annoyance." instead;
		now LatchedOn is 1.

Instead of taking eye:
	try taking stormbeast;

Instead of crushing eye:
	try crushing stormbeast;

Instead of crushing Stormbeast:
	if eastness is minus four:
		if EyeCracked is 1:
			say "You raise your tentacles high, and they thicken and solidify. You bring them down with a mighty crash, and the eye cracks through, leaving a gaping hole. The wind, fire, and ice rocket into the hole, pulling you into it.";
			now EyeCracked is 2;
		if EyeCracked is 0:
			say "You raise your tentacles high, and they thicken and solidify. You bring them down with a mighty crash, and the eye splinters, forming a deep crack in the middle.";
			now EyeCracked is 1;
	otherwise:
		say "You need to get closer."

Instead of rocketing west in Battlezone:
	now eastness is minus four;
	if EyeCracked is 1:
		say "You rocket to the west with all your might, towards the eye. You impact the center with a mighty crash, and you smash through the eye into the center of the beast!";
		now EyeCracked is 2;
	if EyeCracked is 0:
		say "You rocket to the west with all your might, towards the eye. You impact the center with a mighty crash, and the eye splinters, forming a deep crack in the middle.";
		now EyeCracked is 1;
	
Instead of taking rain:
	say "It falls through your tentacles and drips back into the air. Some falls in your beak; it tastes salty.";

GoNow is a number that varies. GoNow is 0.

BattleTime is a scene. BattleTime begins when Elements of Form ends. BattleTime ends when EyeCracked is 2.

When BattleTime begins:
	now the player is in Battlezone;

When BattleTime ends:
	increase the score by 2;

DamageCounter is a number that varies. DamageCounter is 0.

SingedTentacles is a number that varies. SingedTentacles is 0.

CrackedShell is a number that varies. CrackedShell is 0.

Every turn during BattleTime:
	if EyeCracked is less than 2:
		if a random chance of 2 in 3 succeeds:
			if a random chance of 1 in 3 succeeds:
				say "The great stormbeast roars and a torrent of pale green phosphorescent rain fills the air.[paragraph break]";
			otherwise if a random chance of 1 in 2 succeeds:
				say "A lightning bolt bursts high up in the air and an ear-splitting crack fills the air.";
			otherwise:
				say "The eye blinks, a massive sheet of grey clouds sweeping across it.";
		otherwise if a random chance of 1 in 4 succeeds:
			say "A blast of fire from the south rolls into you, singing your tentacles and blackening your shell.[paragraph break]";
			now SingedTentacles is 1;
			now DamageCounter is DamageCounter plus one;
		otherwise if a random chance of 1 in 3 succeeds:
			say "An enormous iceberg from the north is flicked by a tentacle of the cloud towards you. The bulk of it misses you, but a corner gives a glancing blow, and you hear a sickening 'crack' from your shell.[paragraph break]";
			now CrackedShell is 1;
			now DamageCounter is DamageCounter plus one;
		otherwise if a random chance of 1 in 2 succeeds:
			say "A geyser of thick, deep air from below erupts. Your shell is stretched and pulled in different directions, and you are almost ripped from your shell. It subsides and you must pause for a moment until the pain becomes bearable.[paragraph break]";
			now DamageCounter is DamageCounter plus one;
		otherwise:
			say "A thick black tornado stretches toward you from the east. You are caught up in it and cast to a different location.[paragraph break]";
			let xrand be a random number between minus four and four;
			let yrand be a random number between minus four and four;
			let zrand be a random number between minus four and four;
			now northness is xrand;
			now eastness is yrand;
			now upness is zrand;

Every turn during BattleTime:
	if DamageCounter is 3:
		if EyeCracked is 0:
			say "[first time]You begin to despair of your life. You turn to the west and notice a thin web of cracks in the eye. If you could rocket into it, perhaps you could break it open.[only]";
		otherwise:
			say "[first time]You begin to despair of your life. You turn to the west and see the thin web of cracks in the eye again. If you could rocket into it or crush it again, perhaps you could break it open completely.[only]";
	if DamageCounter is 5:
		if EyeCracked is 0:
			say "[first time]The red eye flairs, highlighting the cracks again.[only]";
		otherwise:
			say "[first time]You begin to despair of your life. You turn to the west and see the thin web of cracks in the eye again. If you could rocket into it or crush it again, perhaps you could break it open completely.[only]";
	if DamageCounter is greater than 7:
		say "You didn't think you could hold on this long, but even you have your limits.";
		end the story finally saying "You fade into unconsciousness.";

Section 7-HeartTime

Center is a room. The description of Center is "You are in a vast, empty blackness. [if the heart is in Center]A forest of red tenrdrils spreads away from you in every direction, some thick, some thin, some curling a bit as they go[otherwise]Isolated red tendrils pulse throughout the darkness."

The heart is a thing. The heart is nowhere. The description of heart is "A glowing, pulsing heart made of transparent red streams of energy. Thin tendrils of red energy stretch out in the darkness all around you." Understand "red ball" or "streams" or "engorged" or "spider" or "energy" or "glowing" or "pulsing" or "dot" or "transparent" or "ball" or "red" or "massive" or "pulsing" or "swirls" as heart.

The dot is a thing. The dot is nowhere. The description of the dot is "A distant red dot with a web of thin red lines running towards it." Understand "distant" as dot. Understand "red" as dot.

Instead of taking dot:
	say "It's too far away for now, but it is quickly approaching.";

Red tendrils are scenery. Tendrils are in Center. Understand "tendril" or "thick" or "web" or "knot" or "forest" or "energy" or "thin" or "energy" or "conduits" as tendrils. The description of tendrils is "Conduits of red energy flowing outwards from the center. They form a thick knot near the heart, then branch out in a forest of lines that slowly fade away into isolated rays, feeding the beast."

Instead of taking tendrils:
	say "They are too insubstantial to take. The heart is the only solid thing in your view."

Instead of touching tendrils:
	say "They are too insubstantial to touch. The heart is the only solid thing in your view."

Instead of crushing tendrils:
	say "You raise your hardened tentacles and smash them down. They pass through the tendrils with little resistance. The tip of your tentacle grazes the heart on the way down, and the whole beast trembles."

LatchedOn is a number that varies. LatchedOn is 0.

Instead of taking heart:
	say "The heart is too big to carry, but your tentacles latch onto the heart, ready to crush it.";
	now LatchedOn is 1.
	
Instead of touching heart:
	say "You touch the heart. It resists the pressure of your tentacles, like two opposing magnets.";
	
Instead of dropping heart:
	if LatchedOn is 1:
		say "You let go of the heart.";
	now LatchedOn is 0.

HeartCrushed is a number that varies. HeartCrushed is 0.

Instead of crushing heart:
	if heart is not in Center:
		say "That isn't here.[paragraph break]";
	otherwise:
		now HeartCrushed is 1.
	
 HeartTime is a scene. HeartTime begins when BattleTime ends. HeartTime ends when HeartCrushed is 1.
 	
 When HeartTime begins:
	now the player is in Center;
	now the time of day is 8:00 AM.
	
 Instead of going [direction] during HeartTime:
	say "You try to move, but you can't. Or maybe you do move; it is hard to tell.[paragraph break]"
 
 Instead of rocketing [direction] during HeartTime:
	if LatchedOn is 0:
		say "You try to move, but you can't. Or maybe you do move; it is hard to tell.[paragraph break]";
	otherwise:
		say "The heart rockets with you, stretching out the tendrils until they rip off one by one.[paragraph break]";
		now HeartCrushed is 1.
 
 Every turn during HeartTime: 
	repeat through Table of Heart Events: 
		say "[event entry][paragraph break]"; 
		blank out the whole row; 
		rule succeeds;

Every turn when the player is in Center:
	if the heart is in center:
		say "The tendrils pulse regularly. [one of]The red heart sits before you like an engorged spider in its vast web of tendrils. The rift to your world is visible through the swirling red energy.[or]The rift to your world pulses wildly inside of the heart, but the red tendrils restrain it.[or]The rift inside of the heart shrinks noticeably. The heart is slowly squeezing it to death.[as decreasingly likely outcomes]";
[8:00 sheet

8:01 snowflake
]

The snowflake is a thing. The snowflake is nowhere. Understand "single" or "beautiful" or "perfectly" or "perfect" or "symmetric" as snowflake. The description of snowflake is "A beautiful, perfectly symmetric snowflake that lies silently on the tip of your tentacle.";

Before taking the snowflake:
	say "You reach out to the snowflake and grab it at the last moment.[paragraph break]";

At 8:01 AM:
	if the player is in center:
		now the snowflake is in the center.
		
At 8:02 AM:
	if the player is in center:
		now the dot is in center;
		if the snowflake is in the center:
			now the snowflake is nowhere.

At 8:03 AM:
	if the player is in center:
		if the player is carrying the snowflake:
			say "The snowflake melts in your tentacles.";
		if the snowflake is in center:
			say "The snowflake drifts far from your reach.";
		now the snowflake is nowhere;
		now the dot is nowhere;
		now the heart is in center;

AsteroidCame is a number that varies. AsteroidCame is 0.

At 8:06 AM:
	if the player is in center:
		say "The red forces constrict your new world. Helpless, you watch through the rift as an enormous asteroid hurtles through the void and smashes into your planet, killing billions of creatures.";
		now AsteroidCame is 1;

The asteroid is a backdrop. The asteroid is in Center. Understand "creatures" or "dead" as asteroid. The description of asteroid is "[if AsteroidCame is 1]The crater from the asteroid is still faintly visible, and the creatures lie dead and buried across your world.[otherwise] You see no asteroid.[end if]" 

GlacierCame is a number that varies. GlacierCame is 0.

At 8:08 AM:
	if the player is in center:
		say "Again the shell constricts, and you watch as glaciers sweeps across the planet, freezing most of the world and destroying millions.";
		now GlacierCame is 1;

The glacier is a backdrop. The glacier is in Center. Understand "millions" as glacier. The description of glacier is "[if GlacierCame is 1]The glacier has now retreated, but your world is scarred and pitted.[otherwise]You see no glacier here.[end if]";

ForestsGone is a number that varies. ForestsGone is 0.

At 8:10 AM:
	if the player is in center:
		say "Once more the red energy swirls around the rift, and you watch as huge swaths of forest disintegrate in heat and blow away to endless deserts. Your soul aches for your new world. You have to release it!";
		now ForestsGone is 1;

The deserts are a backdrop. The deserts are in Center. Understand "forests" or "swaths" or "endless" as deserts. The description of deserts is "[if ForestsGone is 1]An extensive desert now crosses two continents, where forests once flourished.[otherwise]You see forests across the earth.[end if]"

At 8:14 AM:
	if the player is in center:
		say "The heart constricts for a final time around the rift. Unable to sustain more damage, the world explodes. Unfortunately, you are caught in the blast as well. The last thing you hear is the beast cry out in mourning.";
		end the story saying "You failed to release your world."

North of Center is Center. East of Center is Center. Above Center is Center. Below Center is Center. West of Center is Center. South of Center is Center. Southeast of Center is Center. Northeast of Center is Center. Southwest of Center is Center. Northwest of Center is Center.

The blackness is scenery. The blackness is in Center. Understand "emptiness" or "dark" or "empty" or "scene" or "darkness" as blackness. The description of blackness is "A vast, empty blackness. [if the heart is in Center]A forest of red tenrdrils spreads throughout the blackness in every direction, some thick, some thin, some curling a bit as they go[otherwise]Isolated red tendrils pulse throughout the darkness."

Table of Heart Events 
event 
"You fly into the eye and into a dark and empty scene. Behind you is a sheet of red ice with a crack in the center, dwindling as you fall further into the beast. There is nothing around you except empty blackness. Occasionally, you see thin tendrils of red energy."
"You drift slowly through the darkness. A single snowflake passes by you."
"Slowly, you sense something being pulled to you. A tiny red dot surrounded by tendrils appears in the distance."
"The red dot increases in size as it is pulled towards you. More and more tendrils come into your view, leading towards the red dot. As you approach, you see that it is a massive, pulsing red ball, hundreds of times larger than yourself. As it pulses, energy swirls around it and out through the conduits. It is the heart of the stormbeast. In the center of it, encased in the thick swirls of energy, you see the entrance to your new world, a tear in the fabric of space with a field of stars behind it. The heart around it constricts, and the inner world trembles."

When HeartTime ends:
	increase the score by two;

Section 8-Equalization

Equalization is a scene. Equalization begins when HeartTime ends.

HoldingRoom is a room.

Phosphorescent rain is in HoldingRoom. The description of phosphorescent is "A green rain of tears fills the sky, washing your shell and tentacles." Understand "green" or "tears" as phosphorescent.

Instead of taking phosphorescent:
	say "You run your tentacles run through the tears, and yours mingle with them.".

[The description of "The wild and free sky lies all around you. The world around is slowly collapsing. "]

There are three bubbles in HoldingRoom. Understand "shimmering" as bubble. Understand "walls" as bubble. The description of the bubbles is "A small bubble with shimmering walls. A kiss goodbye."

Popping is an action applying to one object. Understand "pop [something]" as popping.

Worldsensing is an action applying to nothing. Understand "sense world" or "sense rift" as worldsensing.

Carry out worldsensing:
	if BubbleTime is 0:
		say "You sense nothing.";
	otherwise:
		say "The energy of this dying world is pouring into you, and through you, into the rift. The rift has become part of you, and soon it will be time to go.";

Carry out popping:
	if the noun is a bubble:
		silently try taking noun;
	otherwise:
		say "That's not very poppable."
		
The explosion is a backdrop. The explosion is in Aloft. Understand "violent" or "red" or "flash" as explosion. The description of explosion is "[if BubbleTime is 1]The flash blinded you temporarily, but now it has faded.[otherwise]You see no such thing.[end if]";

The crimson stream is a backdrop. The crimson stream is in Aloft. Understand "energy" or "flow" or "flowing" as crimson stream. The description of crimson stream is "[if BubbleTime is 1]The stream has mostly faded, but the lifeblood of the world still trickles into you.[otherwise]You see no such thing.[end if]";

Instead of touching crimson stream:
	say "[if BubbleTime is 1]The stream is insubstantial.[otherwise]You see no such thing.[end if]"

When Equalization begins:
	say "You destroy the heart, and the red energy explodes around you in a violent red flash. As the light dims, you see the darkness around you crumbling and fading, until you are surrounded again by your familiar clouds. The red energy begins flowing into your new world at a quick pace. A crimson stream touches you, and images flash into your mind...
	
	An image of your first entrance into this world, opening a mighty machine and flying out.
	
	An image of you drowsily floating through the air, tickled by a zephyr of this world.
	
	An image of you careening through a black storm cloud, exhilarated by the joy and excitement of the dangerous gale.
	
	An image of you hesitating, turning away from both zephyr and whirlwind, drawn to inner contemplation.
	
	You begin to realize that this world has always been alive, and that in its own way, the world has loved you. You see a last series of images, of the world bringing the red ice to you, bringing the scroll and the ingredients it needed.
	
	Finally, you turn and see the blood of the world flowing into the next, strengthening it and making it real. Now you understand. This old world knew that the next could not live on its own. A sacrifice must be made; the old must die that the new may live. And only you could destroy the old world. Suddenly, a tremor runs through the area.[paragraph break]";
	pause the game;
	now the player is in Aloft;
	say "The darkness clears, and you see the world around you again, slowly collapsing. Small bubbles float in the air around you. One bursts against you, misting your tentacles. The world, you realize, is kissing you goodbye.";	
	now phosphorescent is in Aloft;
	now BubbleTime is 1;
	now the time of day is 2:00 PM;
	repeat with current running through bubbles in HoldingRoom:
		now current is in Aloft;
		let xrand be a random number between minus four and four;
		let yrand be a random number between minus four and four;
		let zrand be a random number between minus four and four;
		now xcord of current is xrand;
		now ycord of current is yrand;
		now zcord of current is zrand;

After looking during Equalization:
	say "All around you, the world is crumbling."

Every turn during Equalization:
		say "A pale green phosphorescent rain of tears fills the air[first time]. You cannot see the rift to your world, but you [italic type]sense[roman type] it near you[only]. [one of]The world around you slowly decays, and you feel its energy flowing into you.[or]A shower of red glinting lights pours in around you, and you feel your strength increase.[or]You weep as the world around you slowly grows silent.[or]The energy is building in you to almost unbearable levels. It is almost time.[as decreasingly likely outcomes]"

The shower of glinting lights is a backdrop. The shower of glinting lights is in Aloft. Understand "faint" as shower of glinting lights. The description of shower of glinting lights is "[if BubbleTime is 1]A faint shower of red glints that slowly is absorbed into your body.[otherwise]You see no such thing.";

After taking a bubble:
	now the noun is nowhere;
	repeat through Table of Bubble Events: 
		say "[event entry][paragraph break]"; 
		blank out the whole row; 
		rule succeeds;
		
Table of Bubble Events 
event 
"The bubble pops, misting your shell and tentacles as the world kisses you goodbye. You remember when you first came into this world, and you entrusted the summoning-power to its care..."
"The bubble pops, misting your shell and tentacles as the world kisses you goodbye. You remember the first thunderstorm after your arrival. The sky was torn with bright flashes and thunder for hours, but you were left unharmed..."
"The bubble pops, misting your shell and tentacles as the world kisses you goodbye. You remember a moment, years ago, when the world was perfectly still, and a faint breeze had come almost like a whisper. You should have known then..."

At 2:02 PM:
	say "The storm to the east builds up to an immense speed, and then rockets across to the west. Ice, steam, and strange sandlike debris whirl around you. When the wind settles, the storm is gone." ;
	now EastWestGone is 1.

The sandlike debris is a backdrop. Sandlike debris is in Aloft. Understand "strange" as sandlike debris. The description of sandlike debris is "If there was something like that before, there's none now.";

At 2:05 PM:
	say "Now the blanket of thick air below you bubbles and boils before erupting in plumes of dense air that you sense rather than see. They bubble higher and higher as they diffuse, until they are gone. Now, all about you, the air pressure is equalized. ";
	now UpDownGone is 1;

The plumes are a backdrop. The plumes are in Aloft. The description of plumes is "If there was something like that before, there's none now.";

At 2:08 PM:
	say "The icebergs from the north and the steam vortices from the north move together. You brace yourself for the impact. When they touch, the world explodes into steam.";
	now NorthSouthGone is 1;

EndingEqualization is a number that varies. EndingEqualization is 0.

At 2:10 PM:
	say "Finally, you are ready. The magic bursts from you, then returns as you spin faster and faster. Shards of metal from the kettle, strands of emptiness from the vacuum, tentacles of light and polyps of dark, gold coins and strange-smelling gas unite around you. 

You begin shrinking into a point of incredibly bright light, and then rocket into the tear in the fabric of this world. Everything fades.";
	now EndingEqualization is 1;
	
Equalization ends when EndingEqualization is 1. 

Section 9-Postlude

The Ocean is a room. The printed name of Ocean is "Ocean (much, much later)". The description of the Ocean is "You are swimming near the bottom of a slope in a large reef, your home for untold years. Brightly-colored fish swim about, and polyps wave from the reef. The surface glimmers dimly, far above you, and the ocean stretches away to all sides." North of Ocean is Ocean. South of Ocean is Ocean. East of Ocean is Ocean. West of Ocean is Ocean. Ocean is above ocean. Ocean is below ocean. Southeast of Ocean is Ocean. Northeast of Ocean is Ocean. Southwest of Ocean is Ocean. Northwest of Ocean is Ocean.

GameOverTime is a number that varies. GameOverTime is 0.

Postlude is a scene. Postlude begins when Equalization ends. Postlude ends when GameOverTime is 1.

When Postlude begins:
	pause the game; 
	now the player is in the Ocean.

There is a backdrop called reef. Reef is in the ocean. Understand "huge" or "underwater" or "world" as reef. The description of reef is "A colorful coral reef. The years of growth have created a huge underwater world, where fish and other animals play." Understand "polyps" or "coral" as reef.

There is a backdrop called surface. The surface is in Ocean. The description of surface is "A coruscating sheet of light and motion."

There is a backdrop called water. The water is in the ocean. The description of water is "Sweet and salty water."

There is a backdrop called slope. The slope is in Ocean. The description of slope is "A gentle slope runs under the reef.";

Instead of opening something:
	if the noun is the bathysphere:
		say "You consider trying to open the sphere, but you soon lose interest and swim slowly backwards, occasionally bumping a chunk of coral.";
		now GameOverTime is 1;
	if the noun is the shell:
		say "You consider opening your shell, but you have never been one to have suicidal tendencies.";
	otherwise:
		say "Your tentacles are quite weak; your best bet is to carry something with you and take it where it needs to go.";
Instead of taking reef:
	say "You can't take that!"

Instead of taking surface:
	say "You can't take that!"

There is a backdrop called brightly colored fish. Fish is in the ocean. The description of fish is "A school of brightly colored fish. They swim and dart about vigorously. You remember each fish, their fathers and mothers, back for millions of years."

Instead of taking brightly colored fish:
	say "They squirm away before you can grab them."

The bathysphere is a thing. The bathysphere is nowhere. Understand "sphere" as bathysphere. The description of the bathysphere is "A sphere of metal with glass windows and a cable running above it. Inside the window is an oddly shaped being with knobbly tentacles at the end of its appendages peering at you through a small hole."

The oddly shaped being is an animal. The oddly shaped being is in the bathysphere. Understand "appendages" as being. The description of the oddly shaped being is "An elongated being with eyes in the front of its head. Five fingers spring from each of two hands, and they are all pressed up against the window."

Instead of taking being:
	say "It's hard to reach it in the sphere.";

The glass windows are part of the bathysphere. The description of the glass windows is "Clear, circular windows, behind which stand an oddly shaped being.";

The cable is part of the bathysphere. Understand "metal" or "long" as cable. The description of the cable is "A long metal cable that rises to the surface."

Instead of taking cable:
	silently try taking bathysphere;

Instead of taking windows:
	silently try taking bathysphere;

Instead of touching cable:
	silently try touching bathysphere;

Instead of touching windows:
	silently try touching bathysphere;

Instead of crushing cable:
	silently try crushing bathysphere;

Instead of taking windows:
	silently try crushing bathysphere;

Understand "knobbly" as oddly shaped being. Understand "tentacles" as oddly shaped being. Understand "hole" as bathysphere.

OceanCounter is a number that varies. OceanCounter is 0.

Every turn when the player is in the Ocean:
	now OceanCounter is OceanCounter plus one;
	if OceanCounter is 2: 
		Say "Something splashes from far above. Through the murk, you dimly see a metal sphere slowly sinking to the ocean floor, attached to a cable stretching up high.";
		now the bathysphere is in the Ocean.

Instead of taking the bathysphere:
	say "You consider the sphere for some time, but you soon lose interest and swim slowly backwards, occasionally bumping a chunk of coral.";
	now GameOverTime is 1;

Instead of touching the bathysphere:
	say "You swim towards the sphere, but you soon lose interest and swim slowly backwards, occasionally bumping a chunk of coral.";
	now GameOverTime is 1;
	
Instead of crushing the bathysphere:
	say "You consider crushing the sphere, but you soon lose interest and swim slowly backwards, occasionally bumping a chunk of coral.";
	now GameOverTime is 1;
	
Instead of rocketing [direction] when the player is in the Ocean:
	say "It is harder to rocket, here.";

When postlude ends:	
	say "You swim slowly back down the slope, to where the reefs end, to where all life ends, except for you. This world has been good to you now for a long, long time. But maybe now it's time to go. It's time to start looking for a way out.
	
'This is the ship of pearl, which, poets feign,[line break]
  Sails the unshadowed main,—[line break]
  The venturous bark that flings[line break]
On the sweet summer wind its purpled wings[line break]
In gulfs enchanted, where the Siren sings,[line break]
  And coral reefs lie bare,[line break]
Where the cold sea-maids rise to sun their streaming hair...[line break]
[line break]
Build thee more stately mansions, O my soul,[line break]
  As the swift seasons roll![line break]
  Leave thy low-vaulted past![line break]
Let each new temple, nobler than the last,[line break]
Shut thee from heaven with a dome more vast,[line break]
  Till thou at length art free,[line break]
Leaving thine outgrown shell by life’s unresting sea!'[line break]
-Oliver Wendell Holmes";
	End the story finally saying "You have won".

Section 10-Nonstandard responses

Instead of taking yourself:
	say "You wrap your tentacles around yourself in a big hug."
	
Instead of dropping yourself:
	try going down.

Instead of kissing yourself:
	say "You lightly peck at each of your tentacles.";
	
Instead of kissing something:
	say "You kiss the [noun], to no response.";

Instead of burning something:
	say "I'm not sure what you want to burn the [noun] with.";

Instead of buying something:
	say "Money is useless to you."

Instead of looking under yourself:
	say "You find the bottom of your shell.";
	
Instead of searching yourself:
	say "You look within yourself, and discover a burning hope for the future.";

Instead of searching shell:
	say "You look within yourself, and discover a burning hope for the future.";

Instead of turning yourself:
	say "You spin wildly.";

Instead of waking yourself:
	try waking up;
	
Instead of touching yourself:
	say "You wrap your tentacles in [one of]a trefoil[or][as decreasingly likely outcomes] knot, then undo it.";

Selfburning is an action applying to nothing.

Understand "burn me" as Selfburning.

Carry out Selfburning:
	if the player is in the PhysicalWorld:
		end the story saying "You plunge yourself into the fires of the south, dying in a violent conflagration.";
	otherwise:
		say "There is nothing to burn yourself with here."
	
Instead of jumping:
	try going up;

Instead of drinking:
	say "You inhale the vapor of the clouds.";
	
Instead of waking up:
	say "You slap yourself repeatedly with your tentacles until you feel a bit more alert.";
	
Instead of sleeping:
	say "[if the player is in Aloft]You allow your weary body a few moments of rest.[otherwise] There's too much excitement for you to sleep right now.[end if]";
	
Instead of listening:
	if the noun is the location:
		say "[if the player is in the Ocean]You hear nothing but the gentle ocean currents.[otherwise]You hear the roar of a storm, the crackle of ice, and occasional thunder.[end if]";
	otherwise if the noun is the stormbeast:
		say "You hear the stormbeast roar.";
	otherwise if the noun is the nautilus:
		say "You hear the nautilus chattering.";
	otherwise if the noun is yourself:
		say "You hear the squelching of your tentacles.";
	otherwise if the noun is the lightning:
		say "You hear distant thunder.";
	otherwise:
		say "You strain to hear, but it is difficult to pick anything out."
Singing is an action applying to nothing. Understand "sing" as singing.

Carry out singing:
	say "Its webs of living gauze no more unfurl;[line break]
  Wrecked is the ship of pearl![line break]
  And every chambered cell,[line break]
Where its dim dreaming life was wont to dwell,[line break]
As the frail tenant shaped his growing shell,[line break]
  Before thee lies revealed,—[line break]
Its irised ceiling rent, its sunless crypt unsealed![line break]";

Check tasting:
	say "You taste the salty, sweet [if the player is in the Ocean]water[otherwise]air.[end if]" instead;	

Instead of tasting something:	
	if the noun is the sky:
		say "You taste the salty, sweet [if the player is in the Ocean]water[otherwise]air.[end if]";		
	if the noun is the water:
		say "You taste the salty, sweet [if the player is in the Ocean]water[otherwise]air.[end if]";		
	otherwise if the noun is a physical:
		if the noun is carried by the player:
			say "You cautiously taste the [noun].[if the noun is the chunk of red ice] It is cold.[end if]";
		otherwise:
			say "That's too far away!";
	otherwise:
		say "It's hard to taste something you're not holding.";
		
Instead of waving:
	say "You wiggle all of your tentacles in the air."
	
Instead of saying sorry:
	say "You whisper 'sorry' to the sky.";

Instead of climbing:
	try going up;

Instead of swinging:
	say "You swing yourself about with your tentacles.";
	
Instead of sleeping:
	say "You don't want to be sleeping right now.";
	
Caving is an action out of world. Understand "xyzzy" as caving. Understand "plover" as caving. Understand "plugh" as caving.

Carry out caving:
	say "Your power is now at a maximum! You can crush, rocket, carry multiple things, and attract physical objects!";
	now SuctionPossible is 1;
	now CrushingOn is 1;
	if the carrying capacity of the player is 1:
		increase the carrying capacity of the player by 4;
	now RocketOn is 1;
	
Zorking is an action out of world. Understand "frotz" as zorking. Understand "blorb" as zorking. Understand "blorple" as zorking. Understand "jindak" as zorking.

Carry out zorking:
	say "A hollow voice says, 'Cretin'";
	now GoNow is 1;
	
Section 11-Amusing

Table of Amusing Matter 
title	subtable	description	toggle 
 "Standard responses"	 --	 "Did you try... Wiggling? Kissing yourself? Smelling yourself? Listening? Waking up? Anything else?"	 --
 "Alternate solutions"	 --	 "Did you try... finding both ways of opening the eye? Both ways of crushing the heart?"	 --
 "Unusual deaths"	 --	 "Did you try... becoming a diamond? Taking too long to open the eye?"	 --
 "Nautilus trivia"	 --	 "I discovered after writing this game that other IF games have used nautiluses. In particular, the world in Ryan Veeder's Nautilisia is shaped like one.[paragraph break]According to Wikipedia, nautiluses actually have very strong tentacles, unlike our protagonist. Also, they can in fact 'smell' using rhinophores, an external sensory organ. They move with jet propulsion and can change their buoyancy."	 --
 "Full poem"	 --	 "This is the ship of pearl, which, poets feign,[line break]
  Sails the unshadowed main,—[line break]
  The venturous bark that flings[line break]
On the sweet summer wind its purpled wings[line break]
In gulfs enchanted, where the Siren sings,[line break]
  And coral reefs lie bare,[line break]
Where the cold sea-maids rise to sun their streaming hair.[line break][paragraph break]
Its webs of living gauze no more unfurl;[line break]
  Wrecked is the ship of pearl![line break]
  And every chambered cell,[line break]
Where its dim dreaming life was wont to dwell,[line break]
As the frail tenant shaped his growing shell,[line break]
  Before thee lies revealed,—[line break]
Its irised ceiling rent, its sunless crypt unsealed![line break][paragraph break]
Year after year beheld the silent toil[line break]
  That spread his lustrous coil;[line break]
  Still, as the spiral grew,[line break]
He left the past year’s dwelling for the new,[line break]
Stole with soft step its shining archway through,[line break]
  Built up its idle door,[line break]
Stretched in his last-found home, and knew the old no more.[line break][paragraph break]
Thanks for the heavenly message brought by thee,[line break]
  Child of the wandering sea,[line break]
  Cast from her lap, forlorn![line break]
From thy dead lips a clearer note is born[line break]
Than ever Triton blew from wreathèd horn![line break]
  While on mine ear it rings,[line break]
Through the deep caves of thought I hear a voice that sings:—[line break][paragraph break]
Build thee more stately mansions, O my soul,[line break]
  As the swift seasons roll![line break]
  Leave thy low-vaulted past![line break]
Let each new temple, nobler than the last,[line break]
Shut thee from heaven with a dome more vast,[line break]
  Till thou at length art free,[line break]
Leaving thine outgrown shell by life’s unresting sea![line break]
--Oliver Wendell Holmes, 'The Chambered Nautilus'
"

Rule for amusing a victorious player: 
	now the current menu is the Table of Amusing Matter; 
	now the current menu title is "Things to Try"; 
	carry out the displaying activity; 
	clear the screen. 

[Train Stop is a scene. Train Stop begins when the player is in the Station for the third turn. Train Stop ends when the time since Train Stop began is 3 minutes. 

When Train Stop begins: 
	now the Flying Scotsman is in the Station; 
	say "The Flying Scotsman pulls up at the platform, to a billow of steam and hammering." 

When Train Stop ends: 
	now the Flying Scotsman is nowhere; 
	say "The Flying Scotsman inches away, with a squeal of released brakes, gathering speed invincibly until it disappears around the hill. All is abruptly still once more." ]
