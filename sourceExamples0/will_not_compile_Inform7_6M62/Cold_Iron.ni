"Cold Iron" by Andrew Plotkin ("Lyman Clive Charles"). 
[IFID:44cb5fd6-2293-4473-9784-6ec1ced280d2] 

The story headline is "A hot summer's tale". 
The release number is 6. 

[ 
Copyright 2011 Andrew Plotkin <erkyrath@eblong.com> 
<http://eblong.com/zarf/if.html> 

This source code is provided for personal, educational use only. The story and text of _Cold Iron_ belong to me; you may not use them or create derivative works which contain them. However, you have permission to use the programming techniques of this game in your own works, and you may use the source code excluding game text. 

If you want to *play* this game, you're in the wrong place. Go to my web site: <http://eblong.com/zarf/zweb/coldiron/> 

Obvious warning:  This code contains spoilers! If you haven't played _Cold Iron_, and you read this code, you'll certainly ruin the game for yourself. Play it first. I am releasing this code for the benefit of Inform programmers who are familiar with the game and want to know how I did it. 

I implemented this game using Inform 7 build 6G60. It probably won't work with earlier releases, and I can't make guarantees about future ones. 
] 

Use American dialect. 
Use serial comma. 
Use no scoring. 

When play begins: 
	say "Isn't it always like that? You spent a hot morning chivvying the plow and the Bishop up and down the north field. No satisfaction there -- it's just to turn in the clover. The view and the Bishop's hind end never change -- a mule's ass no matter what you call the mule, and Reverd Pearson has lectured you enough about calling him 'the Bishop,' but you figure he's your mule so you can call him what you like -- the mule, that is, not Reverd Pearson -- anyway, a whole morning and now it's time to chop the wood, and your good axe has gone missing.[para]Reverd Pearson would say you're a careless lunkhead who'd lose his ear if it wasn't nailed on. You figure he's right, a man of the cloth, but that doesn't mean piskeys didn't steal the thing. You know about piskeys." 

When play begins: 
	now the right hand status line is ""; 
	set oak talkable. 

The yourself can be Farm or Rev. The player is Farm. 
The yourself can be railed or loose. The player is railed. 

The description of the player is "[if the player is Farm]As weather-beaten as ever. Not as thin, though[else]You are as God made you[end if]." 

Instead of taking inventory: 
	if the number of things carried by the player is zero: 
		say "You are empty-handed"; 
	else if the number of things carried by the player is one: 
		say "You just have [a random thing carried by the player]"; 
	else: 
		say "You have [a list of things carried by the player]"; 
	if the player carries the watch: 
		if the watch is closed: 
			say ". The watch is closed"; 
		else if the watch is unpopped: 
			say ". The watch is open"; 
		else: 
			say ". The watch's secret compartment is open"; 
			if something is in the watch: 
				say " and contains [a list of things in the watch]"; 
	if the player is wearing the branches: 
		say ". You're wearing a wreath of holly"; 
	instead say "." 

Chapter -- Credits 

After printing the banner text: 
	say "(Type ABOUT for credits and game information.)" 

Understand "help" as a mistake ("(For a link to a walkthrough, as well as game credits and acknowledgements, type ABOUT.)"). 

Abouting is an action out of world. 
Understand "about", "credits" as abouting. 

Report abouting: 
	say "[em][Story title][/em] is copyright 2011 by Andrew Plotkin [fixed letter spacing]<erkyrath@eblong.com>[variable letter spacing]. It may be distributed for free, but not sold or included in any for-profit collection without written permission from the author. For more of my games, see [fixed letter spacing]http://eblong.com/zarf/if.html[variable letter spacing].[para]"; 
	say "This game was created for the 2011 Interactive Fiction Competition. It was a serious (albeit snack-sized) entrant; however, it was also part of a secret plan. I conspired with Kevin Jackson-Mead, Doug Orleans, and Mike Hilborn to create four games with a joint metapuzzle. By connecting shared elements between the games, a player could discover a secret ending.[para]"; 
	say "Sadly, nobody figured this out during the competition itself. (Although several people remarked on the 'coincidental' shared elements.) A few days after IFComp ended, we posted an announcement that there [em]was[/em] a metapuzzle spanning the four games. That was all it took; a group on IFMud (notably Carl Muckenhoupt and Michael Martin) worked out the rest within hours.[para]"; 
	say "[em][Story title][/em] would not exist but for the help and support of the People's Republic of Interactive Fiction, and Kevin Jackson-Mead, who suggested the original idea. Naturally, we four metapuzzle authors beta-tested each others' games; thanks also to Adri Mills and Brendan Desilets. Plus, of course, everybody who played the game in the first few days of the IFComp. (Play transcripts were made available to authors, to aid in game updates.) The 'look for axe' command is dedicated to you.[para]"; 
	say "(The original release credited 'Bates College', a joke gotten by exactly nobody. The metapuzzle was built in the spirit of the Bates Discordian Icehouse Team.)[para]"; 
	say "If you want to try the metapuzzle yourself, play [em][Story title], Playing Games, Last Day of Summer,[/em] and [em]The Life (and Deaths) of Doctor M[/em] at [fixed letter spacing]http://ifcomp.org/comp11/[variable letter spacing]. For the walkthrough originally included with this game, and the transcript of MUD folk working on the metapuzzle, see [fixed letter spacing]http://eblong.com/zarf/zweb/coldiron/about.html[variable letter spacing]."; 

Chapter -- not for release 

Zapping is an action out of world applying to one number. 

Understand "zap [number]" as zapping. 

Carry out zapping: 
	if the number understood is: 
		-- 1: 
			now the book is discovered; 
			now the player carries the book; 
			now the player is in Forest1; 
			stop; 
		-- 2: 
			now the book is discovered; 
			now the player carries the book; 
			now the bead is discovered; 
			now the player carries the bead; 
			now the CabbageTale is important; 
			now the CabbageTale is known; 
			now the CabbageTale is part of the book; 
			now the player is in Forest3; 
			stop; 
		-- 3: 
			now the book is discovered; 
			now the player carries the book; 
			now the CabbageTale is known; 
			now the CabbageTale is part of the book; 
			now the KnifeTale is important; 
			now the KnifeTale is known; 
			now the KnifeTale is part of the book; 
			now the knife is discovered; 
			now the player carries the knife; 
			now the bead is discovered; 
			now the bead is off-stage; 
			now the guy is off-stage; 
			now the player is in the Clearing; 
			stop; 
		-- 4: 
			now the book is discovered; 
			now the player carries the book; 
			now the CabbageTale is known; 
			now the CabbageTale is part of the book; 
			now the KnifeTale is important; 
			now the KnifeTale is known; 
			now the KnifeTale is part of the book; 
			now the knife is discovered; 
			now the bead is discovered; 
			now the bead is off-stage; 
			now the guy is off-stage; 
			now the knife is in the stump; 
			now the stump is discovered; 
			now the player is in the AtStump; 
			stop; 
		-- 5: 
			now the book is discovered; 
			now the knife is discovered; 
			now the bead is discovered; 
			begin second phase; 
			stop; 
		-- 6: 
			now the bead is discovered; 
			now the player carries the bead; 
			now the player is in Forest3; 
			begin third phase; 
			try taking the watch; 
			now the watch is handled; 
			stop; 
	say "(Zap [the number understood] not understood.)" 

Chapter -- Utilities 

A thing can be discovered or undiscovered. 
A room can be discovered or undiscovered. 

To say em -- running on: (- style underline; -). 
To say /em -- running on: (- style roman; -). 

To say dot -- running on: (- print (char) '.'; -). 

Definition: a thing is undirectional if it is not a direction. 
Definition: a thing is unhandled if it is not handled. 

To decide what action name is the action-to-be: (- (action_to_be) -). 

To say that-those (T - thing): 
	if T is plural-named: 
		say "those"; 
	else: 
		say "that". 

To say para -- running on: 
	(- DivideParagraphPoint(); new_line; -). 

To clear the/-- screen: 
	(- VM_ClearScreen(0); -) 

To wait for a key: (- KeyPause(); -) 

To set (T - thing) talkable: 
	(- give {T} talkable; -) 

To set say__p: 
	(- say__p = 1; -) 

Include (- 
[ KeyPause i; 
	i = VM_KeyChar(); 
	rfalse; 
]; 
-). 

Chapter -- Actions 

Understand the commands "verbose", "brief", "superbrief" as something new. 
Understand the commands "short", "long", "normal" as something new. 
Understand the commands "think" as something new. 

Definition: a thing is goable if it is scenery or it is fixed in place. 
Definition: a thing is ungoable if it is not goable. 

Understand the command "go" as something new. 
Understand "go" as going. 
Understand "go [direction]" as going. 
Understand "go [undirectional goable thing]" as a mistake ("(Try 'go to [noun]' or 'enter [noun]'.)"). 
Understand "go [undirectional ungoable thing]" as a mistake ("(That makes no sense.)"). 
Understand "go into/in/inside/through/to [something]" as entering. 


Understand "place [things preferably held]" as dropping. 
Understand "place [other things] in/inside/into [something]" as inserting it into. 
Understand "place [other things] on/onto [something]" as putting it on. 
Understand "place down [things preferably held]" as dropping. 


Understand "stick [other things] in/inside/into [something]" as inserting it into. 
Understand "stick [other things] on/onto [something]" as putting it on. 
Understand the command "jam" as "stick". 


Stabbing is an action applying to one thing. 

Understand "stab [something]" as stabbing. 
Understand "stab [other things] in/inside/into/through [something]" as inserting it into. 
Understand "stab [other things] on/onto [something]" as putting it on. 
Understand "stab [something] with [other things]" as inserting it into (with nouns reversed). 
Understand the commands "impale", "jab" as "stab". 

Check stabbing when the player carries the knife: 
	if the noun is the knife: 
		instead say "Knives do that, yes."; 
	instead try inserting the knife into the noun. 
Report stabbing: 
	instead say "You are not equipped for stabbing." 

[### attack X with Y?] 

Reading is an action applying to one thing. 

Understand the command "read" as something new. 
Understand "read [something]" as reading. 

Report reading: 
	instead say "You can't read [a noun]." 


Forseeking is an action applying to one thing. 

Understand "search for [something]" as forseeking. 
Understand "look for [something]" as forseeking. 
Understand "find [something]" as forseeking. 

Check forseeking the player: 
	if the player is Farm: 
		instead say "You're right here."; 
	else: 
		instead say "All your life, you sometimes feel." 

Report forseeking: 
	if the noun is singular-named: 
		instead say "[The noun]? It's here."; 
	else: 
		instead say "[The noun]? They're here."; 


Weaving is an action applying to one thing. 

Understand "weave [something]" as weaving. 
Understand the command "tie" as something new. 
Understand the commands "bend", "fold", "spindle", "wrap", "tie" as "weave". 

Report weaving: 
	instead say "You're not sure how to weave [a noun]." 

Creating is an action applying to one thing. 

Understand "make [something]" as creating. 
Understand the commands "build", "create" as "make". 

Check creating the player: 
	instead say "You are what you are." 

Report creating: 
	if the noun is singular-named: 
		instead say "[The noun] is what it is."; 
	else: 
		instead say "[The noun] are what they are."; 

Washing is an action applying to one thing. 
Understand "wash [something]" as washing. 

Understand "wash [other things] in/on/with [something]" as inserting it into. 
Understand the command "clean" as something new. 
Understand the command "rinse", "clean" as "wash". 

Report washing: 
	instead say "There's no water nearby." 

The block sleeping rule is not listed in the check sleeping rulebook. 
Check sleeping: 
	instead say "You can't sleep now." 

The block drinking rule is not listed in the check drinking rulebook. 
Report drinking: 
	instead say "You can't drink [that-those noun]." 

Understand the commands "torture", "fight", "murder", "kill", "wreck", "crack", "thump" as something new. 
Understand "knock [something]" as attacking. 
Understand "knock on [something]" as attacking. 
Understand the command "thump" as "knock". 

The block attacking rule is not listed in the check attacking rulebook. 
Report attacking: 
	instead say "Violence isn't the answer to this one." 

Incanting is an action applying to nothing. 
Understand "regleotis" as incanting. 

Report incanting: 
	say "That's not a word I recognize." 

Persuasion rule for asking the oak to try incanting: 
	try incanting; 
	say "A bird chirps, far off."; [I'm going to a bad place for this.] 
	persuasion fails. 

Persuasion rule for asking the oak to try doing something: 
	instead say "You can't talk to [the oak]." 

Understand the command "answer" as something new. 
Understand "answer [text] to [something]" as answering it that (with nouns reversed). 
Understand the commands "say", "shout", "speak" as something new. 
Understand the commands "say", "shout", "speak", "whisper" as "answer". 

Does the player mean answering the player that: 
	it is likely. 
Does the player mean answering the oak that: 
	it is likely. 

Check answering the oak that when the topic understood matches "regleotis": 
	instead try incanting. 

Timesetting it to is an action applying to one thing and one time. 
Vaguesetting is an action applying to one thing. 

Understand the command "set", "adjust" as something new. 
Understand "set [something]" as vaguesetting. 
Understand "set [something] to [time]" as timesetting it to. 
Understand the command "adjust" as "set". 

Report timesetting: 
	instead say "[The noun] can't be adjusted." 
Report vaguesetting: 
	instead say "[The noun] can't be adjusted." 

Chapter -- Stories 

A tale is a kind of thing. 
A tale can be important. 
A tale can be known. 

To say know (T - tale): 
	now T is known. 

Understand "story", "tale", "story of", "tale of" as a tale. 

Check reading a tale: 
	instead try examining the noun. 

Check weaving a tale: 
	instead try weaving the book. 

Check weaving the book: 
	instead say "Weaving a tale? A fine thing, but you've never been much for making up stories. That's why you borrowed the Reverd's book." 

Does the player mean doing something to an important not known tale: 
	it is very likely. 

The book is a thing. 

Understand "battered", "old", "tales", "stories" as the book. 
Understand "story", "tale" as the book when no tale is part of the book. 

To say check-table-book: 
	if the book is on the table: 
		say ".[para]A battered book is lying on the table, though"; 
		now the book is mentioned. 

To say book-intro: 
	say "It's an old book of tales you borrowed from Reverd Pearson up at the chapel. He made you promise to take care of it, not that you'd ever let a book get ruined -- the chapel only has six books, six story books that is, the Reverd has his big Book up on his lectern, but that isn't this one. This is just stories. You like stories, and the Reverd likes you to practice your reading"; 

Check reading the book: 
	if the player does not carry the book: 
		try taking the book; 
	instead try examining the book. 

Check opening the book: 
	instead try reading the book. 

Check examining the book: 
	if the player does not carry the book: 
		if the book is undiscovered: 
			say "[book-intro]"; 
			now the book is discovered; 
		else: 
			say "It's an old book of tales you borrowed from Reverd Pearson up at the chapel"; 
		instead say "."; 
	if no tales are part of the book: 
		instead say "You flip through the book. You've read all the stories twice, though, and getting your axe back is at the top of your mind."; 
	if an important tale (called T) is part of the book: 
		instead try examining T; 
	instead say "You've found [the list of tales which are part of the book]." 

The CabbageTale is a tale. The printed name is "Tale of the Cabbage Farmer". 

The description is "You turn to [the item described]...[para][know CabbageTale][em]A cabbage farmer lost his entire harvest, when the fairies stole...[/em] Sad, but not the important part. Here: [em]The tinker said, 'I lost my magic stone, and I'll reward you handsomely if you find it.' At that the farmer realized that the stone he'd found, which had slain the dragon and toppled the giants['] tower, was that very magic stone.[/em][if important][para][cabbage-focustext][run paragraph on][end if]" 

Understand "cabbage", "cabbages", "farmer" as the CabbageTale. 

To say cabbage-focustext: 
	say "Now this sounds hopeful. If you keep walking, you'll certainly find the tinker who lost this bead, and he'll probably turn out to be a fairy or wizard himself. He'll point you in the right direction."; 
	if the location does not enclose the bead: 
		say "[line break]Now, where did you leave the thing?" 

The KnifeTale is a tale. The printed name is "Four Doors". 
The KnifeTale can be wrongway. 

The description is "You turn to [the item described]...[para][know KnifeTale]There are four brothers, and they go through four doors... [first time]You're not doing it justice. No, here's the part you remembered. [only][em]The third brother was lost as lost could be, but he remembered the knife he'd gotten from the tinker. He stuck the knife into an oak stump, and sure as sure, the hilt's shadow pointed the way home.[/em][if important][para][knife-focustext][run paragraph on][end if]"; 

Understand "four", "doors" as the KnifeTale. 

To say knife-focustext: 
	if the KnifeTale is wrongway: 
		say "That sounds... but you [em]don't[/em] want to go home right now, do you? You need to go deeper into the forest."; 
	else: 
		say "That sounds like just what you have to do." 

The HollyTale is a tale. The printed name is "The Village and the Night Gomps". 

The description is "You turn to [the item described]...[para][know HollyTale][em]Every night a few sheep would disappear, or a few dogs. The villagers laid the blame to wolves, at first, but...[/em] Further on. [em]The boy remembered a charm he'd heard from a ragged traveller. He plucked holly branches, wove them into a wreath, and washed the wreath in a stream. Then, wearing the holly wreath for a hat, he crept into the cave. The night gomps couldn't see a hair of him, under his holly wreath; they kept right on arguing, and the boy watched and listened..[/em]"; 

Understand "night", "gomp", "gomps", "village" as the HollyTale. 

Chapter -- Home 

House is a room. The printed name is "Your Front Room". 

The description is "Reverd Pearson says a man's home is his fortress. Your home is two rooms of dressed timber, but the roof doesn't leak, so that's fine. Not enough of a fortress to keep out the piskeys, though, it seems. The front door is west, and east is where you sleep in back." 

The table is a supporter in House. "A maplewood table stands in the center of this room[first time]. It's your home's pride (though the Reverd has warned you about pride) -- a handsome furnishing that your cousin down the road made for you when your house was raised[only]. Every time you walk in you're pleased to see it. Only there should be an axe leaning against the table's corner, and there isn't[check-table-book]." 

Understand "maple", "maplewood", "furnishing", "handsome" as the table. 

Check examining the table: 
	instead say "Square, smooth, and you keep it clean. It's a good table[if the book is on the table]. The book is lying on the table[end if]." 

The book is on the table. 

Check dropping the book when the player is not in House: 
	instead say "You can't leave a book lying around outdoors." 

Report taking the book when the book was on the table: 
	say "You pick it up off the table"; 
	if the book is undiscovered: 
		now the book is discovered; 
		say ". [book-intro]"; 
	instead say "." 

The non-axe is scenery in the House. The printed name is "axe". 

Understand "axe", "ax" as the non-axe. 

Instead of doing anything to the non-axe: 
	instead say "The important thing about the axe is that it's nowhere in sight." 

The front-door is scenery in the House. The printed name is "front door". 
Understand "front", "door", "exit" as the front-door. 
The description is "The front door is to the west, and that's where you should be heading." 

Check going west from the House when the player is not carrying the book: 
	instead say "You can't go off piskey-hunting without the book![first time][line break]...That might not make sense if you had to explain it. But it's true.[only]" 

Report going west from the House: 
	say "You step out into the summer sun." 

Check entering the front-door: 
	instead try going west. 

Check searching the front-door: 
	instead try examining the front-door. 

Check exiting in the House: 
	instead try going west. 
Check going outside in the House: 
	instead try going west. 

Check going inside in the House: 
	instead try going east. 
Check going east in the House: 
	instead say "You can't sleep now. The sun is up and you've got work to do out there." 

Check going nowhere in the House: 
	instead say "It's just the front room and the room where you sleep[first time]. But the sun is up and you've got work to do out there[only]." 


The Yard is west of the House. The printed name is "Your Yard". 

The description is "The yard is tidy enough, with the house on one side and the barn on the other. Your field, freshly-plowed, is to the north, and the road runs southeast into town. But your business is to the south, into the deep forest where men don't live[first time]. Reverd Pearson says it's just trees, but he doesn't live across the road from them[only]." 

Instead of going west in the Yard: 
	try examining the barn. 

Instead of going inside in the Yard: 
	say "You could go into the barn to the west or the house to the east, but there's no point in either right now." 

Instead of going north in the Yard: 
	say "You just came in from the fields. No reason to go back." 

Instead of going southeast in the Yard: 
	say "Go into town for a new axe? You will if you can't find the old one, but you couldn't buy one half as good. And you'd as soon not spend the money." 

Report going east from the Yard: 
	say "You step inside. The room is cool and dim." 

The road is scenery in the Yard. The description is "A dirt track leads southeast towards town. Beyond it, the trees begin." 

Understand "dirt", "track", "town" as the road. 

Check entering the road: 
	instead say "Why did the farmer cross the road? That's a joke. You've told it to the Reverd many times, but he never gets it." 

The house-outside is scenery in the Yard. The printed name is "house". The description is "Your house looks about like ever. Roof still solid." 

Understand "house", "home", "front", "door" as the house-outside. 

Instead of entering the house-outside: 
	try going east. 

The barn is scenery in the Yard. The description is "You know the axe isn't in the barn, because you were just there, watering the Bishop and getting his tack hung away." 

Understand "stable" as the barn. 

Instead of entering the barn: 
	try examining the barn. 

The forest-edge is scenery in the Yard. The printed name is "forest". The description is "The edges of the trees are bright sunny green, but they have shadows underneath. Your axe is in there somewhere -- hidden by the folk who stole it." 

Understand "tree", "trees", "forest", "deep", "shadow", "shadows" as the forest-edge. 

Instead of entering the forest-edge: 
	try going south. 

Report going south from the Yard: 
	say "Road dust scuffs from your feet into the moist undergrowth." 


Chapter - Forest 

A ForestRoom is a kind of room. 

Forest-running is an activity. 

For forest-running: 
	say "(BUG) Exit not implemented." 

Instead of going up in a ForestRoom: 
	try climbing the ForestTrees. 

Instead of going down in a ForestRoom: 
	say "You're already on the ground." 

Instead of going inside in a ForestRoom: 
	say "Go in where?" 

Instead of exiting in a ForestRoom: 
	say "The only way out of the forest is farther in." 

Instead of going nowhere in a ForestRoom: 
	carry out the forest-running activity. 

The ForestTrees are a plural-named backdrop. The printed name is "trees". 

The description is "The trees are tall, old, and thick with shade." 

Understand "forest", "trees", "elm", "lesser", "canopy" as the ForestTrees. 
Understand "tree" as the ForestTrees when the location is not Forest3 and the location is not AtStump. 

When play begins: 
	move the ForestTrees backdrop to all ForestRooms. 

Check climbing the ForestTrees: 
	if the player is Farm: 
		instead say "You're a little old and heavy to be climbing trees."; 
	else: 
		instead say "You would look absurd climbing a tree like a schoolchild[one of][or]. More's the shame[stopping]."; 

Check taking the ForestTrees: 
	instead say "They're rooted." 

Check entering the ForestTrees: 
	if the gloom is in the location: 
		instead try entering the gloom; 
	instead say "You're already among the trees." 

Check searching the ForestTrees: 
	if the gloom is in the location: 
		instead try searching the gloom; 
	instead say "You can't see anything unusual among the trees." 


InitialForestRegion is a region. 
Forest1 is in InitialForestRegion. 
Forest2 is in InitialForestRegion. 
Forest3 is in InitialForestRegion. 

First for forest-running when the player is Rev and the player is loose: 
	say "You turn and head briskly through the woods. After a few minutes, you step out into sunlight, and cross the road towards home."; 
	now the player is in OutsideChapel. 

For forest-running when in InitialForestRegion and the player carries the bead and CabbageTale is important and CabbageTale is known: 
	say "You stride through the forest, clutching the bead."; 
	now the player is in Clearing. 

For forest-running when in Forest3 and the knife is in the Clearing: 
	say "You stumble across the clearing."; 
	now the player is in Clearing. 

For forest-running when in Forest3 and KnifeTale is important: 
	say "You stumble across the stump again."; 
	now the player is in AtStump. 

For forest-running when in Forest3 and HollyTale is important: 
	say "You stumble across the stump again."; 
	now the player is in AtStump. 

Forest1 is a ForestRoom. The printed name is "Under the Trees". 
Forest1 has a number called the counter. The counter is 1. 
Forest1 can be wrongway. 

The description is "Everything here is cool and quiet[if undiscovered]. You didn't realize how much creak, bustle, and insect-buzz filled your yard until you entered the trees. They[else]. Trees[end if] tower around you, mostly elm here -- Reverd Pearson sometimes talks about timbering, but that's not going to happen[check-wrongway]." 

Forest1 is south of the Yard. Nothing is north of Forest1. 

To say check-wrongway: 
	if Forest1 is wrongway: 
		now Forest1 is not wrongway; 
		say ".[para][one of]This is the way home, all right. But home isn't where you wanted to go[or]Wherever the piskeys hid your axe must be deeper into the forest, not on the road home[stopping]"; 

After looking in Forest1 when the bead is not handled: 
	increment the counter of Forest1; 
	if the counter of Forest1 is: 
		-- 1: say "You're sure you need to move deeper into the forest. Which way, though, is the question."; 
		-- 3: now the counter of Forest1 is zero. 

For forest-running when in Forest1: 
	if Forest1 is undiscovered: 
		say "You're already feeling a little lost. You head into the trees as if you weren't, though."; 
	else: 
		say "You move carefully through the trees."; 
	now Forest1 is discovered; 
	now the counter of Forest1 is zero; 
	now the player is in Forest2. 


Forest2 is a ForestRoom. The printed name is "Brushy Hollow". 
Forest2 has a number called the counter. The counter is 1. 

The description is "The ground sinks here, beneath the trees; the muddy hollow is choked with sumac. You have no plans to root around in that mess." 

After looking in Forest2 when the bead is not handled: 
	increment the counter of Forest2; 
	if the counter of Forest2 is: 
		-- 3: say "Searching here isn't getting you anywhere."; 
		-- 4: now the counter of Forest2 is zero. 

Instead of going down in Forest2: 
	try entering the sumac. 

Instead of going inside in Forest2: 
	try entering the sumac. 

The sumac is scenery in Forest2. The printed name is "sumac brush". 

The description is "The hollow is a tangle of poison sumac -- bright green, bright red, and waiting to make your life hell if you're fool enough to get into it[first time]. Fortunately, you can't see any sign of your axe in there[only]." 

Understand "brush", "brushy", "hollow", "mud", "muddy", "poison", "mess", "tangle" as the sumac. 

Check entering the sumac: 
	instead say "Crawl into the sumac? You made that mistake once when you were twelve. Never again." 

Check climbing the sumac: 
	instead try entering the sumac. 

Check searching the sumac: 
	instead say "You can't see your axe in the sumac, which is a good thing." 

Check looking under the sumac: 
	instead try searching the sumac. 

Check touching the sumac: 
	instead say "No, thank you." 

Check rubbing the sumac: 
	instead try touching the sumac. 
Check taking the sumac: 
	instead try touching the sumac. 
Check tasting the sumac: 
	instead try touching the sumac. 

Check weaving the sumac: 
	instead say "You might be able to weave poison sumac branches, but you value your fingers more." 

For forest-running when in Forest2: 
	say "You move deeper into the forest."; 
	now the counter of Forest2 is zero; 
	now the player is in Forest3. 


Forest3 is a ForestRoom. The printed name is "Fallen Oak". 

The description is "[Forest3-desc]." 

To say Forest3-desc: 
	if the player is Farm: 
		say "An enormous oak has fallen across the forest floor[if AtStump is not visited]. Or been cut down -- you can't see the roots from here[else] -- cut down, as you now know[end if]. Branches and bark are slowly shedding from the tree's body, but it will be years yet decaying"; 
	else: 
		say "Your afternoon constitutional in the woods has led you to this enormous oak -- although you can't recall seeing it on any previous venture. Bark peels from the fallen arboreal monolith; its base, or the stump as may be, is not visible from here"; 

The oak is scenery in Forest3. The printed name is "fallen oak". 

The description is "The oak must have towered above the lesser trees[if the bead is not handled].[para]A glass bead is lying under the oak[end if][if the watch is in Forest3 and the watch is unhandled].[para]A gold watch is lying in a small hollow in the oak[end if]." 

Understand "fallen", "oak", "enormous", "branch", "branches", "bark", "bole", "trunk", "tree", "knot" as the oak. 
Understand "hollow", "hidden" as the oak when the player is Rev. 

Check climbing the oak: 
	instead say "You can't climb a fallen tree." 

Check entering the oak: 
	instead say "Worms and beetles make their home in the fallen oak, but there's no hollow large enough for you." 

Check searching the oak: 
	if the bead is unhandled: 
		instead try examining the bead; 
	if the watch is in Forest3 and the watch is unhandled: 
		instead try examining the watch; 
	instead say "You discover nothing else." 

Check looking under the oak: 
	instead try searching the oak. 

The bead is in Forest3. The printed name is "glass bead". 

The description is "[bead-description]." 
To say bead-description: 
	if the player is Farm: 
		say "The bead is smooth glass, not exactly clear, but clean. It's special"; 
		if CabbageTale is not known: 
			say ".[para]You're sure you remember something about stones in the book"; 
	else: 
		say "It's a smooth, refractive glass spheroid the size of a pigeon's egg" 

Understand "glass", "smooth", "clear", "clean", "pale", "bit", "bit of", "special", "jewel", "refractive", "spheroid", "sphere" as the bead. 

Rule for writing a paragraph about the bead when the bead is not handled: 
	if the bead is undiscovered: 
		say "Something -- a bit of glass -- catches your eye, lying under the oak bole."; 
	else: 
		say "A glass bead is lying under the oak tree's bole." 

Rule for writing a paragraph about the bead: 
	say "A glass bead is lying nearby." 

Instead of examining the bead when the bead is unhandled: 
	if the bead is undiscovered: 
		say "You've found a pale glass bead, lying half-hidden in the mulch under the oak"; 
	else: 
		say "A pale glass bead lies half-hidden under the oak"; 
	now the bead is discovered; 
	instead say ". Even in the forest shadow, it seems to glow a little." 

Report taking the bead when the bead is unhandled: 
	now the bead is discovered; 
	now the CabbageTale is important; 
	now the CabbageTale is part of the book; 
	instead say "You pluck the glass bead from the mulch, and polish it with your thumb.[para]This reminds you of a story.[para]The Tale of the... Cabbage Farmer, or something. In the Reverd's story book. You liked it, although you don't raise cabbages. The young man found... you should re-read it. See, this is why you brought the book. Your memory isn't good for words." 

Before forest-running when in Forest3: 
	reset the tree. 

For forest-running when in Forest3: 
	say "You leave the fallen oak behind."; 
	now the player is in Forest1. 

Chapter - The Guy 

Clearing is a ForestRoom. 

The description is "The trees lean back, just a little, leaving spots of sunlight across the undergrowth." 

The ClearingLight is scenery in the Clearing. The printed name is "sunlight". 

Understand "light", "sun", "sunlight" as the ClearingLight. 

The description is "It's very warm." 

Instead of doing anything except examining or touching the ClearingLight: 
	say "It's just sunlight." 

Check touching the ClearingLight: 
	instead try examining the ClearingLight. 

The guy is a man in the Clearing. The printed name is "man". "A spry-looking man [one of]sits crosslegged on the forest floor[or]stands here[stopping]. He wears a lazy grin, threadbare clothes, and an absurd sort of a hat[first time].[para]The man peers up at you from under his hat, and then scrambles to his feet. 'I don't suppose you can help me?' he asks. 'I lost my watch-jewel somewhere nearby. If you could find it, I might be able to do you a favor in return.'[para]Now see? This is exactly what Reverd Pearson says only happens in fairy stories. You'll tell him all about it next time you see him, for sure[only]." 

Understand "man", "person", "figure" as the guy. 

The description of the guy is "He's the sort of man you might see anywhere, although his clothes tell you he might not have done any honest work recently, and his face tells you he's not about to start." 

The guy wears the hat. The description of the hat is "It's just a hat. Well, a pretty ridiculous sort of hat[first time]. But that's the man's burden to carry and none of yours[only]." 

Understand "absurd", "ridiculous", "sort", "sort of" as the hat. 

Instead of showing the book to the guy: 
	say "[one of]'Words? Don't believe in them, myself. They change when you're not looking at them.'[or]'Keep the book. It's my watch-jewel I've lost.'[stopping]" 

Instead of giving the book to the guy: 
	try showing the book to the guy. 

Instead of showing the bead to the guy: 
	say "His eyes glitter, but he only says, 'That looks like it. Give here.'" 

Instead of giving the bead to the guy: 
	now the knife is in the Clearing; 
	now the bead is off-stage; 
	now the guy is off-stage; 
	now the CabbageTale is not important; 
	say "The man snatches the glass bead out of the air and holds it up to the light. You see something in his eyes.[para]'So what's a watch-jewel?' you begin, but he waves his hand dismissively. 'Answers are worse than books,' he says, which makes no sense anyway. 'Now what do you deserve instead? Here -- this is my best knife.' He flips a small blade out of his belt, holds it out hilt-first -- and lets it slip through his fingers.[para]The knife sticks upright in the ground. When you look back up, the man, his hat, and his glass bead are gone." 

[### asking] 

Check dropping the bead when in Clearing: 
	instead try giving the bead to the guy. 

For forest-running when in Clearing: 
	if the CabbageTale is important: 
		say "The man waves, seeming entirely unoffended as you turn and walk away through the trees."; 
		now the player is in Forest3; 
		stop; 
	if the KnifeTale is important: 
		say "You [if KnifeTale is known]go looking for a[else]wander off, and stumble over a[end if] stump."; 
		now the player is in AtStump; 
		stop; 
	say "You wander off."; 
	now the player is in Forest3. 

The knife is a thing. The printed name is "gleaming knife". "A gleaming knife is stuck lightly point-down in the soil." 

Understand "shiny", "shining", "gleaming", "sharp", "edge", "hilt" as the knife. 

Check examining the knife: 
	say  "It looks as sharp as sharp can be."; 
	if the knife is discovered and the KnifeTale is not known: 
		say "[line break]You read something about a knife."; 
	if the knife is not discovered: 
		say knife-discovery; 
	if the KnifeTale is known and the player is not carrying the knife: 
		try examining the shadow; 
	stop the action. 

To say knife-discovery: 
	now the knife is discovered; 
	now the KnifeTale is part of the book; 
	now the KnifeTale is important; 
	say "[line break]The knife's edge gleams, and that reminds you of a story." 

Check touching the knife: 
	instead say "You feel nothing unexpected... ouch!" 

Check inserting the knife into the player: 
	instead say "Suicide is a sin[if the player is Farm], says the Reverd[end if]." 

The shadow is part of the knife. 

Report taking the knife when the knife is not discovered: 
	say "You pluck the knife from the ground."; 
	instead say knife-discovery; 

Check examining the shadow when the player is carrying the knife: 
	instead say "The knife's shadow is however you happen to be holding it, right now." 

Check examining the shadow when the knife is in the stump: 
	if the stump is undiscovered: 
		now the stump is discovered; 
		say "The shadow of the knife... yes, it lies across the stump, pointing southwest. Which has nothing to do with the position of the sun, and wouldn't the Reverd be furious to see it"; 
	else: 
		say "The shadow of the knife lies across the stump, pointing southwest"; 
	instead say "."; 

Check examining the shadow: 
	instead say "The sun is high, so the knife doesn't have much of a shadow." 

Instead of reading the shadow: 
	try examining the shadow. 

Instead of doing anything except examining or reading to the shadow: 
	say "It's a shadow." 

Chapter - Stumpage 

AtStump is a ForestRoom. The printed name is "Oak Stump". 

The description is "The great oak you found earlier must have fallen from here -- and it was cut, for sure. This stump has the axe-marks. Not your axe, though; this was done years ago. Sunlight falls through the long tear in the forest canopy[if the knife is in the stump][knife-stump][end if]." 

To say knife-stump: 
	say ".[para]The knife is stuck upright in the old stump[if the stump is discovered]. Its shadow stretches off to the southwest[end if]" 

The StumpLight is scenery in the AtStump. The printed name is "sunlight". 

Understand "light", "sun", "sunlight" as the StumpLight. 

The description is "It's very warm." 

Instead of doing anything except examining or touching the StumpLight: 
	say "It's just sunlight." 

Check touching the StumpLight: 
	instead try examining the StumpLight. 

The stump is a scenery container in AtStump. The printed name is "oak stump". 

Check examining the stump: 
	instead say "The oak stump must be a yard across. Whoever hacked it across must have worked for it[if the knife is in the stump][knife-stump][end if]." 

Understand "great", "oak", "tree", "axe", "ax", "mark", "marks", "axe-marks", "old" as the stump. 

Instead of putting something on the stump: 
	try inserting the noun into the stump. 

Check inserting the book into the stump: 
	instead say "The book has gotten you this far; you're not going to leave it lying on a stump." 

Check entering the stump: 
	instead say "[one of]You step up on the stump. Then you decide it might not be polite to the forest piskeys, so you step down[or]Oh, not again[stopping]." 

Report inserting the knife into the stump: 
	say "You jam the knife[one of][or] again[stopping] point-down into the stump"; 
	if the stump is discovered: 
		say ". Its shadow still points southwest"; 
	instead say "." 

Instead of going southwest in AtStump when the stump is discovered: 
	say "You follow [if the knife is in the stump]the angle of the knife's shadow[else]the angle you saw of the shadow[end if]."; 
	now Forest1 is wrongway; 
	now KnifeTale is wrongway; 
	now the player is in Forest1. 

Instead of going northeast in AtStump when the stump is discovered: 
	say "You backtrack along the path of the knife's shadow."; 
	if the HollyTale is not part of the book: 
		now the HollyTale is important; 
		now the HollyTale is part of the book; 
		now the KnifeTale is not important; 
	now the player is in Hill. 

For forest-running when in AtStump: 
	say "You follow along the fallen tree."; 
	now the player is in Forest3. 

Chapter - The Hill 

Hill is a ForestRoom. The printed name is "Small Hill". 

The description is "It's not much of a hill -- a hummock at best. But there's a big, glossy holly bush right at the top[if the HollyTale is not known], which reminds you of another story[end if]." 

The bush is scenery in Hill. The printed name is "holly bush". 

The description is "The bush is a mass of prick-pointed, glossy leaves[if the HollyTale is not known]. It reminds you of another story[end if][if the axehead is lurking]. You can see a rusty axe-head beneath it[end if]." 

Understand "holly", "glossy", "big", "mass", "green", "screen", "root", "roots" as the bush. 
Understand "leaf", "leaves", "branch", "branches" as the bush when the branches are off-stage. 

Check taking the bush when the branches are off-stage: 
	now the player carries the branches; 
	now the axehead is in the Hill; 
	instead say "You snap a handful of branches from the bush.[para]You spy something glinting rustily beneath the screen of leaves. Now, if that's your axe left under this bush, you'll be as surprised as the next man -- surely it's too good a tool for even a thoughtless piskey to discard. But--[para]"; 

Check taking the bush: 
	instead say "You have already taken some branches." 

Check weaving the bush: 
	instead say "You can't weave branches that are still on the bush." 

Check searching the bush: 
	if the axehead is lurking: 
		instead say "You can see a rusty axe-head lying among the holly roots."; 
	if the HollyTale is not known: 
		instead say "You stare at the holly bush, trying to bring that story to mind."; 
	instead say "The holly branches are leafed thick and glossy." 

Instead of looking under the bush: 
	try searching the bush. 

The branches are a plural-named wearable thing. The printed name is "holly [if woven]wreath[else]branches[end if]". 
The branches can be woven. The branches can be damp. 

Understand "holly", "branch", "leaf", "leaves", "leafy", "handful", "bundle", "prickly" as the branches. 
Understand "woven", "wreath", "circle", "circlet" as the branches when the branches are woven. 
Understand "damp", "wet" as the branches when the branches are damp. 
Understand "wreath" as the branches when the action-to-be is the weaving action or the action-to-be is the creating action. 

Check examining the branches: 
	if the branches are woven: 
		say "It's a prickly wreath of woven holly branches"; 
		if the branches are damp: 
			say ", slightly damp"; 
		if the player is wearing the branches: 
			say ". You know they're prickly, because they're prickling your head"; 
		instead say "."; 
	if the player is carrying the branches: 
		instead say "You are holding a bundle of [if the branches are damp]damp, [end if]leafy, prickly holly branches."; 
	else: 
		instead say "A handful of [if the branches are damp]damp [end if]holly branches are lying on the ground." 

Check touching the branches: 
	instead say "The leaves are stiff and edged with sharp points[if the branches are damp]. They're still a bit damp[end if]." 

Check creating the branches: 
	instead try weaving the branches. 

Check weaving the woven branches: 
	instead say "You've already woven the branches into a wreath." 

Check weaving the branches: 
	now the branches are woven; 
	now the branches are singular-named; 
	set pronouns from the branches; 
	if the player is Farm: 
		instead say "Better prepared than left standing, the Reverd says, so you bend the holly branches around into a rough circlet. A bit of weaving and tucking, and you have a nice wreath."; 
	else: 
		say "You're not much of a craftsman, but you wrestle with the prickly branches for a few minutes and produce a serviceable wreath"; 
		if scariness is 2: 
			say ".[para]This is the charm you were thinking of earlier, isn't it? Holly to pass unseen[scare at least 3]"; 
		instead say "." 

Check wearing the not woven branches: 
	instead say "A handful of loose branches don't work as a hat." 

Report wearing the branches: 
	say "You position the wreath on your head[one of], trying not to scratch yourself too badly[or][stopping]"; 
	if the branches are damp: 
		say ". A few drops of water dribble down behind your ear"; 
	if scariness is: 
		-- 1: say ". The sensation reminds you of a thought you were having, earlier"; 
		-- 2: say ". This is the charm you were thinking of earlier, isn't it? Holly to pass unseen[scare at least 3]"; 
		-- 3: 
			if the branches are not damp: 
				say ".[para]But the charm is not yet complete"; 
	instead say "." 

The axehead is a thing. The printed name is "axe-head". "You can see a rusty axe-head hiding under the holly bush." 

Understand "axe", "ax", "head", "axe-head", "ax-head", "rusty", "rustily", "glint", "glinting", "something" as the axehead. 

Definition: the axehead is lurking if it is in Hill and it is not handled. 

Check examining the axehead when the player is Farm: 
	if the axehead is not discovered: 
		now the axehead is discovered; 
		instead say "This is not your axe, though. It can't be. It's rusty. It doesn't even have a handle. It's a rusty old axe head, lying under a bush. What good is that?[para]Oh, you might as well take it. Worse to worst, you can sharpen it up and put a good hickory handle on it."; 
	else: 
		instead say "This is not your axe. It's a rusty old axe head, lying under a bush. But waste not, as the Reverd says, sometimes until you want to hit him." 

Check examining the axehead when the player is Rev: 
	instead say "It's a rusty old axe-head, no doubt lost by a rustic old farmer years ago." 

Check taking the axehead when the player is Farm: 
	if the axehead is not discovered: 
		now the axehead is discovered; 
		say "This is not your axe, though. It can't be. It's rusty. It doesn't even have a handle. It's a rusty old axe head, lying under a bush. What good is that?[para]Oh, you might as well take it. Worse to worst, you can sharpen it up and put a good hickory handle on it. You reach in"; 
	else: 
		say "You reach carefully under the prickles"; 
	say " and seize the cool rough iron."; 
	instead begin second phase. 

For forest-running when in Hill and the player is Farm: 
	say "You pick your way down to the oak stump."; 
	now the player is in AtStump. 

For forest-running when in Hill and the player is Rev: 
	say "(BUG)."; 


Chapter - The Reverend 

A WoodsRoom is a kind of room. 

To begin second phase: 
	move the ForestTrees backdrop to all WoodsRooms; 
	now the HollyTale is known; 
	now the knife is off-stage; 
	now the book is off-stage; 
	if the player is not wearing the branches: 
		now the player carries the branches; 
	now the player carries the axehead; 
	now the axehead is handled; 
	now the axehead is discovered; 
	now the player is Rev; 
	say "[para](Hit any key...)"; 
	wait for a key; 
	clear the screen; 
	say "[para][para]You turn the artifact over in your hand. A simple axe head, corroded by the elements; but evocative of a simpler way of life.[para]For a moment you allow your mind to wander. What would the owner of this axe have believed? Cold iron and fairies, charms and [if the branches are woven]a wreath of [end if]holly branches?[para]No, you have no time for these musings. The day grows late, and you are required back at the chapel house."; 
	now the player is in Hill2. 

Hill2 is a WoodsRoom. The printed name is "Small Hill". 

The description is "It isn't much of a hill, but then the woods behind the Old College aren't much of a forest. There's a big, glossy holly bush right at the top. A path leads back to the north." 

The bush2 is scenery in Hill2. The printed name is "holly bush". 

The description is "The bush -- holly, or [em]ilex[/em], you are sure -- is a mass of prick-pointed, glossy leaves." 

Understand "bush", "holly", "glossy", "big", "mass", "green", "screen", "root", "roots" as the bush2. 

Check taking the bush2: 
	instead say "You have already taken some branches." 

Check weaving the bush2: 
	instead say "You can't weave branches that are still on the bush." 

Check searching the bush2: 
	instead say "The holly branches are leafed thick and glossy." 

Instead of looking under the bush2: 
	try searching the bush2. 

The hill-path is scenery in Hill2. The printed name is "path". 
Understand "path", "trail" as the hill-path. 

The description is "A common forest path. It runs north, down the hill." 

Check entering the hill-path: 
	instead try going north. 

Instead of going nowhere from Hill2: 
	say "You could wander further through the Old College woods, but not today[first time]. Perhaps next Wednesday, if the rectory schedule permits[only]." 

Instead of going down in Hill2: 
	try going north. 

Instead of going up in Hill2: 
	say "You're at the top of the hill already." 


The Copse is a WoodsRoom. The printed name is "Dim Copse". 
The Copse is north of Hill2. 

The description is "[scare at least 1]A stream trickles through the woods here, but there's no gap in the tree-foliage overhead. If anything, the branches press more thickly than ever. Twilight is advancing, and the forest has taken on a lowering gloom.[para]The path curves from the south to the northwest, following the stream." 

The copse-path is scenery in the Copse. The printed name is "path". 
Understand "path", "trail" as the copse-path. 

The description is "A common forest path. It runs from south to northwest." 

Check entering the copse-path: 
	instead try going northwest. 

Instead of going east in the Copse: 
	say "The stream is narrow, but still too wide to step across. Besides, there's nothing on the other side but trees, and then, after some miles, the town." 

Instead of going northeast in the Copse: 
	try going east. 
Instead of going southeast in the Copse: 
	try going east. 
Instead of going north in the Copse: 
	say "The path home heads off to the northwest." 
Instead of going west in the Copse: 
	say "The path home heads off to the northwest." 

Instead of going up in the Copse: 
	try climbing the ForestTrees. 
Instead of going down in the Copse: 
	say "There is no magical land underground." 

Definition: the branches are charmed if they are woven and they are damp and the player wears them. 

Scariness is a number that varies. Scariness is zero. 
Gloomcount is a number that varies. Gloomcount is zero. 

To say scare at least (N - number): 
	if scariness is less than N: 
		now scariness is N. 

To set scare at least (N - number): 
	if scariness is less than N: 
		now scariness is N. 

Check going northwest in the Copse: 
	if the branches are charmed: 
		say "You set your teeth, pull the holly firmly down over your ears -- ouch -- and press ahead into the shadows."; 
		continue the action; 
	increase gloomcount by 1; 
	if gloomcount is: 
		-- 1: 
			say "The gloom ahead gives you pause"; 
		-- 2: 
			set scare at least 2; 
			say "You feel... [em]watched[/em].[para]You know the sensation is absurd, but you cannot rid your mind of it. Something in the trees ahead has its eye on you; and you cannot force yourself to continue under its gaze"; 
		-- otherwise: 
			say "You still cannot force yourself to continue"; 
	if scariness is 2: 
		instead say ".[para][one of]This reminds you of a thought[or][em]The night gomps couldn't see a hair of him, under his holly wreath[/em][dot][dot][or]The tale you were recalling -- holly branches, woven and then washed in water. It's silly, but then so is your sudden fear of the twilight[scare at least 3][stopping]."; 
	if scariness is 3: 
		if the branches are not enclosed by the Copse: 
			instead say ". Now where did you leave the holly branches?"; 
		if the branches are not woven: 
			if the branches are damp and the player carries the branches: 
				instead say ". No, this is not how the story went."; 
		if the branches are woven and the branches are damp and the player is not wearing the branches: 
			instead say ".[para]You realize you have not put the holly wreath on."; 
		if the branches are woven and the branches are not damp and the player is wearing the branches: 
			instead say ".[para]The charm is not complete until the holly has been washed in stream water."; 
		instead say "."; 
	instead say "."; 

The gloom is scenery in the Copse. 
Understand "shade", "shadow", "shadows", "dark", "darkness", "lowering", "twilight", "eye" as the gloom. 

Check examining the gloom: 
	instead say "The trees to the northwest cast a menacing weight of shadow." 

Check examining the ForestTrees in the Copse: 
	instead try examining the gloom. 

Check entering the gloom: 
	instead try going northwest. 

Check searching the gloom: 
	instead try examining the gloom. 

Instead of doing anything except examining or searching or entering to the gloom: 
	say "Metaphysically implausible." 

The stream is scenery in the Copse. 
Understand "river", "water", "narrow", "trickle", "brook", "chilly" as the stream. 

The description is "You stand on the west bank of what usually seems a cheerfully bubbling brook. Today the water only looks chilly." 

Check taking the stream: 
	instead say "You have no way to carry water." 

Check drinking the stream: 
	instead say "Good heavens no. Wild animals could have done anything in that water." 

Check touching the stream: 
	instead say "You bend and let the water run through your fingers for a moment." 

Check entering the stream: 
	instead try going east. 

Instead of putting something on the stream: 
	try inserting the noun into the stream. 

Check inserting the axehead into the stream: 
	instead say "You dip the axe-head into the stream[one of]. It doesn't get noticeably cleaner, but then it doesn't get noticeably rustier either[or] again[or] once again[stopping]." 

Check inserting the branches into the stream: 
	if the player wears the branches: 
		instead say "Yes, but not while you're [em]wearing[/em] [the branches]."; 
	if the branches are damp: 
		say "You dip [the branches] into the stream again, just in case"; 
		if scariness is 2: 
			say ". This is the charm you were thinking of earlier, isn't it? Holly to pass unseen[scare at least 3]"; 
		instead say "."; 
	now the branches are damp; 
	if the branches are not woven: 
		say "You trail the holly branches in the stream, then rise and shake off the excess moisture. They still glisten a bit"; 
	else: 
		say "You kneel and dip the wreath into the stream. Droplets of water cling to the glossy leaves"; 
	if scariness is 2: 
		say ".[para]This is the charm you were thinking of earlier, isn't it? Holly to pass unseen[scare at least 3]"; 
	instead say "." 


Instead of washing the player in the Copse: 
	say "You've already bathed today." 

Instead of washing in the Copse: 
	try inserting the noun into the stream. 


Amid is a WoodsRoom. The printed name is "Amid the Trees". 
Amid is northwest of the Copse. 

The description is "It is uncommonly dim, even considering the hour. The stream is no longer visible. Nor is the path, for that matter. But somewhere to the north, a brighter green is filtering between the trees." 

Instead of going up in Amid: 
	try climbing the ForestTrees. 
Instead of going down in Amid: 
	say "There is no magical land underground." 

Instead of going southeast in Amid: 
	say "You have no intention of going back." 
Instead of going south in Amid: 
	try going southeast. 
Instead of going east in Amid: 
	try going southeast. 
Instead of going nowhere in Amid: 
	say "It would be absurd to go any deeper into the trees." 

Before going north from Amid: 
	now scariness is zero; 
	say "The trees part, very suddenly. There. You weren't so far off the path after all. You walk briskly across the green towards your destination." 

Check taking off the branches in Amid: 
	instead say "You're not removing the wreath here. No indeed." 


OutsideChapel is a room. The printed name is "Chapel Green". 
OutsideChapel is north of Amid. 

The description is "Sunlight turns the chapel's facade to pink and gold -- summer evenings are kind to the shabby old place." 

Instead of going south from OutsideChapel: 
	say "You've done with the woods for today." 
Instead of going southeast in OutsideChapel: 
	try going south. 
Instead of going southwest in OutsideChapel: 
	try going south. 

The chapelface is scenery in OutsideChapel. The printed name is "chapel". 

Understand "chapel", "door", "building", "stone", "facade", "pink", "gold", "shabby", "old" as the chapelface. 

The description is "The chapel is the same old stone building it's been for, oh, who knows how long. The door stands open to the north." 

Check entering the chapelface: 
	instead try going north. 

Check closing the chapelface: 
	instead say "Close the door of the Lord's house? No." 

Report taking off the branches in OutsideChapel: 
	instead say "Your fears seem abruptly childish, and your appearance suddenly absurd. You pull the holly wreath from your head and turn it self-consciously in your fingers." 


The Chapel is north of OutsideChapel. 

The description is "Your chapel is a simple place; what ornament the walls offer is worn and perhaps a little dusty. Your duties await at the altar." 

The altar is a scenery supporter in the Chapel. 

After going north from OutsideChapel when the player is railed: 
	say conditional paragraph break; 
	try looking; 
	say "The cool and quiet air calms you, and the last of your forest-born fears disperse[if the player is wearing the branches]. (You self-consciously pull the wreath from your head.) Children[else]. Children[end if] would laugh at you, if you told the day's story.[para]...Just so. Your fancies have always amused the children of the parish. Should you write the stories down, even publish them? A book of fairy tales, with pixies and holly charms and just a bit of giddy terror in the shadows? It might do; it might do very well. If it helps banish the fears of a lonely old Reverend, then all the better."; 
	end the story finally. 

For printing a locale paragraph about the altar: 
	now the altar is mentioned; 
	if something is on the altar: 
		say "Lying on the altar [is-are a list of things on the altar]." 

Check exiting in the Chapel: 
	instead try going south. 
Check going outside in the Chapel: 
	instead try going south. 

Instead of going nowhere from the Chapel: 
	say "The only exit is south." 

Win-failure-report is a truth state that varies. 

Every turn when the player is loose in the Chapel: 
	if the watch is on the altar and the bead is in the watch: 
		say "The watch emits a startling, piercing chime. The sound resonates from the walls. As it begins to fade, a shadow crosses the doorway behind you. You sense someone kneeling in the pews.[para]The watch chimes again, and you blink and look around, feeling suddenly and inexplicably released. The chapel is empty.[para]Except -- you chuckle -- he left his hat."; 
		end the story finally saying "You have won the four games of Hat, Pin, Jewel, and Watch"; 
		stop; 
	if the watch is on the altar: 
		if win-failure-report is false: 
			say "[one of]You wait a moment, peering at the watch, but nothing happens. Has something been left incomplete[or]What else is there to do[stopping]?"; 
		now win-failure-report is true; 
	else: 
		now win-failure-report is false. 

Chapter - Secret Ending 

The oak has a number called the clobbercount. 
The oak can be worded. The oak is not worded. 

To reset the tree: 
	now the oak is not worded; 
	now the clobbercount of the oak is zero. 

Check incanting in Forest3: 
	if the player is Rev: 
		instead say "Magic words? You don't believe in them, not really."; 
	now the oak is worded; 
	instead say "You whisper the word 'regleotis' to the fallen oak[one of][or] again[stopping]." 

Check attacking the oak: 
	if the oak is worded and the player is Farm: 
		increment the clobbercount of the oak; 
		if clobbercount of the oak is two: 
			instead say "The fallen oak emits a second hollow [em]thump[/em]."; 
		if clobbercount of the oak >= three: 
			say "The fallen oak emits a third hollow [em]thump[/em]."; 
			instead begin third phase; 
	instead say "The fallen oak emits a hollow [em]thump[/em]." 

To begin third phase: 
	now the oak is not worded; 
	now the bead is discovered; 
	now the bead is handled; 
	now the watch is in Forest3; 
	now the knife is off-stage; 
	now the book is off-stage; 
	now the branches are off-stage; 
	now the axehead is off-stage; 
	now the player is Rev; 
	now the player is loose; 
	say "[para](Hit any key...)"; 
	wait for a key; 
	clear the screen; 
	say "[para][para]"; 
	try looking. 

The watch is an openable closed container. The printed name is "gold watch". 
The watch can be popped or unpopped. The watch is unpopped. 
The watch has a time. The time of the watch is 12:00 AM. 
Understand "gold", "golden", "pocket", "pocket-watch", "pocketwatch", "case" as the watch. 
Understand "face", "hand", "hands" as the watch when the watch is open. 
Understand "secret", "compartment" as the watch when the watch is open and the watch is popped. 

The knob is part of the watch. The printed name is "silver knob". 
Understand "silver", "stem" as the knob. 
The description is "A large silver knob and stem adorns the watch." 

Check pushing the knob: 
	instead try opening the watch. 

Check turning the knob: 
	instead try vaguesetting the watch; 

Check vaguesetting the knob: 
	instead try vaguesetting the watch. 

Check timesetting the knob to: 
	instead try timesetting the watch to the time understood. 


Rule for writing a paragraph about the watch when the watch is not handled: 
	say "[one of]Your idle knocking on the trunk has dislodged some bark. Curious, you lean closer -- and discover a gold pocket-watch lying in a hidden hollow[or]A gold pocket-watch is lying in a small hollow in the oak's trunk[stopping]." 

Rule for writing a paragraph about the watch: 
	say "A gold watch is lying nearby." 

Carry out examining the watch: 
	if the watch is unhandled: 
		instead say "It is quite inexplicable that a watch should be secreted away in a tree trunk -- but there it is."; 
	if the watch is closed: 
		instead say "It's a fine gold pocket-watch, with a silver stem and knob, although the chain is missing. The watch is closed."; 
	if the watch is unpopped: 
		instead say "It's a fine gold pocket-watch, with a silver stem and knob, although the chain is missing. The watch is open; its face reads [time of the watch]."; 
	say "The pocket-watch is open. The face stands open as well, revealing a small secret compartment"; 
	if something is in the watch: 
		say ", which contains [a list of things in the watch]"; 
	else: 
		say ", which is empty"; 
	instead say "." 

Report taking the watch when the watch is unhandled: 
	instead say "You carefully extract the watch from the oak tree." 

Check inserting something into the oak when the player is Rev: 
	instead say "There's no point." 

Check searching the watch: 
	instead try examining the watch. 
Check reading the watch: 
	instead try examining the watch. 

Check opening the watch when the player does not carry the watch: 
	instead say "You're not holding the gold watch." 

Check closing the watch when the player does not carry the watch: 
	instead say "You're not holding the gold watch." 

Check opening the watch when the watch is open: 
	instead say "The watch is already open." 

Report opening the watch: 
	instead say "You push the stem, and the watch pops open[one of]. It is [time of the watch]... well, no, it isn't. The watch isn't running[or]. It reads [time of the watch][stopping]." 

Report closing the watch: 
	if the watch is popped: 
		now the watch is unpopped; 
		now the time of the watch is 12:00 AM; 
		instead say "You close up the watch. The secret compartment clicks shut behind the case."; 
	else: 
		instead say "You close up the watch." 

Check vaguesetting the watch: 
	if the watch is closed: 
		instead say "You can't set the watch blind."; 
	if the watch is popped: 
		instead say "The knob will not turn now."; 
	let T be the time of the watch; 
	now the time of the watch is five minutes after T; 
	say "You turn the knob a smidgen, and the hands move. The watch now reads [time of the watch]"; 
	special time check; 
	instead say "." 

Check timesetting the watch to: 
	if the watch is closed: 
		instead say "You can't set the watch blind."; 
	if the watch is popped: 
		instead say "The knob will not turn now."; 
	now the time of the watch is the time understood; 
	say "You turn the knob until the hands read [time of the watch]"; 
	special time check; 
	instead say "." 

To special time check: 
	if the time of the watch is 9:37 AM or the time of the watch is 9:37 PM: 
		now the watch is popped; 
		now the watch is discovered; 
		say "[one of].[para]The watch emits a startling [em]click[/em]. Its[or]. Its[stopping] face pops up, revealing a tiny secret compartment nestled in the works"; 
		if something is in the watch: 
			say ". The compartment contains [a list of things in the watch]"; 
		else: 
			say ". The compartment is empty"; 

First check inserting the watch into the watch: 
	instead say "That makes no sense." 

Check inserting something into the watch when the watch is closed: 
	instead say "The watch is closed." 

Check inserting something into the watch when the watch is unpopped: 
	if the watch is undiscovered: 
		instead say "There isn't enough room between the case and face for anything to fit."; 
	else: 
		instead say "The secret compartment isn't open." 

Check inserting something into the watch when the watch is popped and the noun is not the bead: 
	instead say "There's no room." 


[Story ends.]
