"Delightful Wallpaper" by "Andrew Plotkin ('Edgar O. Weyrd')". 
The story headline is "A Cozy Mansion Mystery in the Making". 
[IFID:78c03780-9f93-4780-9044-97158bd940a1] 
[Developed with 3Z95] 

The release number is 6. 
The story creation year is 2006. 

[ 
Copyright 2006 Andrew Plotkin <erkyrath@eblong.com> 
<http://eblong.com/zarf/if.html> 

This source code is provided for personal, educational use only. The story and text of _Delightful Wallpaper_ belong to me; you may not use them or create derivative works which contain them. However, you have permission to use the programming techniques of this game in your own works, and you may use the source code excluding game text. 

If you want to *play* this game, you're in the wrong place. Go to my web site: <http://eblong.com/zarf/zweb/wallpaper/> 

Obvious warning:  This code contains spoilers! If you haven't played _Delightful Wallpaper_, and you read this code, you'll certainly ruin the game for yourself. Play it first. I am releasing this code for the benefit of Inform programmers who are familiar with the game and want to know how I did it. 

This source code was written for an early version of Inform 7 -- build 3Z95. This is very out of date, and it will not compile right with modern versions. 
] 


Chapter - Commonplaces.

Use the serial comma. 
Use American dialect. 
Use no scoring. 
Use full-length room descriptions. 
Include (- 
Constant MANUAL_PRONOUNS; 
Constant LibraryMessages = MyLibraryMessages; 
-) before the library. 

Include (- 
Object MyLibraryMessages 
	with before [ x; 
		Go: switch (lm_n) { 
			6: "The door is closed.^"; 
		} 
	]; 
-). 

To say nil: 
	stop. 

To say period: 
	(- print "."; -). 

To say ellipsis: 
	(- print "..."; -). 

To decide whether nottrue (c - condition): 
	(- (~~({c})) -). 

To next repetition: 
	(- continue; -). 

To decide whether (item - an object) acts plural: 
	(- ({item} has pluralname) -); 

To say is/are (item - object): 
	if item acts plural, say "are"; 
	otherwise say "is". 

To say status counter: 
	if the ending has not happened begin; 
		if the unread-count is one, say "1 note unread"; 
		if the unread-count is greater than one, say "[unread-count] notes unread"; 
	otherwise; 
		if living count is one, say "[ellipsis]1 remains"; 
		else say "[ellipsis][living count] remain"; 
	end if. 

A portal is a kind of door. 
Portals are usually scenery. Portals are usually open. 
Destinality relates various portals to one room. 
The verb to inject (it injects, they inject) implies the destinality relation. 

To say openness of (P - portal): 
	if P is impassable, say "closed"; 
	else say "open"; 

To say cap a/an openness of (P - portal): 
	if P is impassable, say "A closed"; 
	else say "An open"; 

To say a/an openness of (P - portal): 
	if P is impassable, say "a closed"; 
	else say "an open"; 

A procedural rule: 
	ignore the can't go through closed doors rule. 
	[if the noun is an intention, 
		ignore the can't take component parts rule.] 

A thing can be unsittable. A thing is usually not unsittable. 
Instead of entering something unsittable: 
	say "There is no rest for the messenger." 

A oneshot is a kind of thing. A oneshot can be fired. 
To decide whether first trying (item - oneshot): 
	if item is fired, decide no; 
	now item is fired; 
	decide yes. 

Wallpaper is a kind of thing. Wallpaper is always scenery. The printed name of wallpaper is usually "wallpaper". 
Understand "lovely" or "delightful" or "paper" or "wallpaper" as wallpaper. Understand "wall paper" as wallpaper. 

To say break: 
	(- I7_RunOnParagraph(true); new_line; -). 

Rule for deciding whether all includes scenery: it does not. 

The room-ellipsis-oneshot is a oneshot. 

Before looking: 
	now the room-ellipsis-oneshot is not fired. 

Carry out looking: 
	if the Ending has happened, note local intentions; 
	continue the action. 

Before printing the name of a room while looking or going or constructing the status line: 
	if first trying the room-ellipsis-oneshot, say "[roman type]You survey...[bold type][line break]"; 
	say "...the ". 

After printing the name of a room while looking or going or constructing the status line: 
	if constructing the status line activity is going on, say ellipsis; 
	else say ",[line break]". 

Traversing something is an activity. 

To say default traversal: 
	choose a random row in the Table of Generic Travel Verbs; 
	say "You [word entry]"; 
	if a random chance of 65 in 101 succeeds begin; 
		choose a random row in the Table of Generic Travel Adverbs; 
		say " [word entry]"; 
	end if; 
	if a random chance of 35 in 101 succeeds, 
		say " to"; 
	else 
		say " into"; 
	say "..." 

Rule for traversing something (called D): 
	say default traversal; 

Running into something is an activity. 

Rule for running into something (called D): 
	say "[The D] is closed." 

To decide whether (D - door) is impassable: 
	if D is a tower-link begin; 
		if the facing of D is the tower rotation, decide no; 
		else decide yes; 
	end if; 
	if D injects a room (called R) begin; 
		if D is open, decide no; 
		if the location is R, decide yes; 
		else decide no; 
	end if; 
	if D is open, decide no; 
	else decide yes. 

When play begins: 
	repeat with item running through all doors which inject a room begin; 
		now the item is closed; 
	end repeat; 

Before going through a door (called D): 
	if D is impassable begin; 
		carry out the running into activity with D; 
		stop the action; 
	end if; 
	carry out the traversing activity with D. 

A thing can be tractable or intractable. Things are usually intractable. The player is tractable. 

Zapping is an action applying to one visible thing. 
Carry out zapping: 
	say "(BUG: You cannot zap things.)" 

Instead of taking, removing, dropping, switching on, switching off, opening, closing, wearing, turning, pushing, pulling, touching, burning, cutting, attacking, waving, rubbing, squeezing, tasting, new-eating, or drinking something intractable: 
	say "Manipulation of gross material substance is not your forte." 

Instead of going nowhere: 
	say default no-go message. 

The no-go limit is a number which varies. The no-go limit is two. 
The no-go counter is a number which varies. The no-go counter is zero. 

To say default no-go message: 
	increase the no-go counter by one; 
	if the no-go counter is greater than the no-go limit begin; 
		change the no-go counter to zero; 
		increase the no-go limit by one; 
		say "You can't go that way. (Despite your abstention from gross materiality, you can't walk through walls. Or doors. It's a burden, yes.)"; 
		stop; 
	end if; 
	say "You can't go that way." 

Understand "go on/onto [something]" as entering. 

New-eating is an action applying to one visible thing. 
Understand the command "eat" as something new. Understand "eat [something]" as new-eating. 
Instead of new-eating: 
	say "[The noun] [is/are noun] clearly inedible." 
Instead of new-eating the player: 
	say "It doesn't work that way." 

Understand "climb in/into/through [something]" as entering. 
Understand "climb on/onto [something]" as climbing. 

Jumping over is an action applying to one thing. 
Understand "jump over [something]" as jumping over. 
Understand the command "leap" as "jump". 

Instead of jumping: 
	say "Gravity is your inescapable mistress." 
Instead of jumping over: 
	say "Gravity is your inescapable mistress." 

Swimming is an action applying to nothing. 
Understand "swim" as swimming. 
Understand the command "dive" as "swim". 

Instead of swimming: 
	say "There's nowhere to swim." 

Understand the command "shift" as something new. 

Instead of taking inventory: 
	let C be the number of things carried by the player; 
	if C is zero, 
		instead say "You have no intentions. (But you do have your handy notepad.)"; 
	say "In addition to your notes"; 
	if C is one, say ", you have one idea:"; 
	else say ", you have [C in words] ideas:"; 
	say line break; 
	list the contents of the player, indented, with newlines, giving inventory information, with extra indentation. 

Understand the command "place" as "put". 

Understand "give [intention] to [something]" as giving it to. 


Chapter - Message tables 

Table of Generic Travel Verbs 
word 
"traipse" 
"travel" 
"wander" 
"stride" 
"move" 
"proceed" 
"advance" 

Table of Generic Travel Adverbs 
word 
"thoughtfully" 
"carefully" 
"hopefully" 
"inquisitively" 
"wearily" 
"warily" 

To say interjection: 
	choose a random row in the Table of Interjections; 
	say "[phrase entry]". 

Table of Interjections 
phrase 
"Dear me" 
"Oh my" 
"My" 
"My my" 
"Goodness" 
"Goodness gracious" 
"Gracious" 
"Heavens" 
"Oh dear" 
"Zounds" 

To say book title: 
	choose a random row in the Table of Book Adjectives; 
	say "[phrase entry]"; 
	choose a random row in the Table of Book Subjects; 
	say " [phrase entry]". 

Table of Book Adjectives 
phrase 
"Lifestyles of" 
"A Reader's Guide to" 
"The Life and Times of" 
"Notes Towards" 
"An Introduction to" 
"Fallacies of" 
"Unusual Permutations of" 
"The Book of" 
"Recipes of" 
"Clowns and" 
"Congress with" 
"Arousing" 
"The House of" 
"Fear" 
"Weep for" 

Table of Book Subjects 
phrase 
"Nicaragua" 
"the Rich and Eccentric" 
"the Names of the Dead" 
"Pudding" 
"Subjects and Objects" 
"Gruesome Expiration" 
"Untoward Ends" 
"Untimely Demise" 
"Unseemly Conduct" 
"Sorrow" 
"the Weakly Godlike" 
"Doom" 
"the Unfortunate" 
"Very Small Things" 
"the End Times" 
"Clocks" 
"the Author" 

Chapter - Debugging - Not for release 

Understand "zap [thing]" as zapping. 
Understand "zap [direction]" as zapping. 

Instead of zapping: 
	instead say "(What?)". 

Instead of zapping the player: 
	if the Ending has happened, 
		say "[living count] alive; deaths: [death list]."; 
	if the Ending has not happened begin; 
		let FF be zero; 
		let GG be zero; 
		if the front door is open, change FF to one; 
		if foyer-grate-north is open, change GG to one; 
		if the location is the Kitchen or the location is the Sitting Room begin; 
			if FF is not GG, say "Parity: WRONG."; 
		else; 
			if FF is GG, say "Parity: WRONG."; 
		end if; 
	end if; 
	say "Courtyard: [if Courtyard is revisited]revisited[otherwise]once[end if]."; 
	say "Front door: [openness of front door]."; 
	say "Grating (N): [openness of foyer-grate-north]."; 
	say "Grating (W): [openness of foyer-grate-west]."; 
	say "Pantry door (NW): [openness of pantry-door]."; 
	say "Hallway door (NE): [openness of hallway-door]."; 
	say "Library door (SE): [openness of library-door]."; 
	say "French doors: [if french doors injects the Conservatory]forward[otherwise]backward[end if][if french doors are open] (open)[end if]."; 
	say "Small door: [if small door injects the Whimzy Garden]forward[otherwise]backward[end if][if small door is open] (open)[end if]."; 
	say "Secret door: [openness of secret-shelf-door]."; 
	say "Floor level: [floor level]."; 
	say "Bridge: [tower rotation]." 

To say death list: 
	repeat with A running through archetypes begin; 
		if A is dead begin; 
			say "[A] ([fate of A]) "; 
			if the fate of A is the null-intent, 
				say "BUG "; 
		otherwise; 
			if the fate of A is not the null-intent, 
				say "BUG "; 
		end if; 
	end repeat. 

Instead of zapping a door (called D): 
	if D injects a room (called R) begin; 
		if the location is not R, instead say "(You are on the good side of the door.)"; 
		let SR be the front side of D; 
		if SR is R, let SR be the back side of D; 
		move the player to SR; 
		stop the action; 
	end if; 
	if D is open, 
		now D is closed; 
	else 
		now D is open; 
	instead say "([The D] is now [if D is open]open[otherwise]closed[end if].)". 

Instead of zapping the grey sky: 
	rotate the tower clockwise; 
	instead say "(Tower now [tower rotation].)". 

Instead of zapping northwest: 
	move the player to the North-West Tower. 
Instead of zapping northeast: 
	move the player to the North-East Tower. 
Instead of zapping southwest: 
	move the player to the South-West Tower. 
Instead of zapping southeast: 
	move the player to the South-East Tower. 
Instead of zapping down: 
	reverse the garden doors; 
	say "(Garden doors reversed.)" 

Instead of zapping the moving-floor: 
	change the floor level to the floor level minus 1; 
	if the floor level is less than zero, change the floor level to 2; 
	say "(Floor level [floor level].)" 

Instead of zapping the mansion: 
	move the legacy-intent to the Courtyard; 
	now the legacy-intent is handled; 
	now the Courtyard is revisited; 
	now the foyer-description-oneshot is fired; 
	say "(Moved legacy intent.)" 

Instead of zapping the mansion when the Ending has happened: 
	say "(Now in Conservatory.)"; 
	move the music-intent to the player; 
	move the player to the Conservatory, without printing a room description; 
	try putting the music-intent on the piano. 

Chapter - Introductions 

When play begins: 
	change right hand status line to "[status counter]"; 
	say "Grey gravel crunches in the drive. Grey windows retreat behind wrought-iron balcony rails. Grey skies press down over the looming, shadowy edifice.[break]"; 
	say "You [italic type]do[roman type] enjoy your job, but the decor can become a [italic type]bit much[roman type] sometimes. You shall hope that the inside of this mansion proves to be cheerier." 

After printing the banner text: 
	say "(Type 'about' for credits and game information.)" 

The description of the player is "Tall, pale, cadaverously thin? Clad in black and a stovepipe hat? That would seem to suit the circumstances. It hardly matters, of course -- nobody will see you." 

The notes are a thing. The description is "[notes recitation]". 
Understand "pad" or "handy" or "note" or "notepad" or "notebook" as the notes. 
The notes are part of the player. The notes are tractable. 
Instead of dropping the notes: 
	say "Discard your notes? Certainly not." 
Instead of taking the notes: 
	say "You always have that." 

Chapter - Rooms 

Section - Courtyard 

The Courtyard is a room. The description is "[courtyard description]". 
The Courtyard can be revisited. The Courtyard is not revisited. 
To say courtyard description: 
	if the Courtyard is not revisited, 
		say "...which is quite deserted. Oh dear. This drama will be difficult enough without all your players [italic type]in absentia[roman type]. Well, you'll find a way to bring them around.[break]Wings"; 
	else 
		say "...which is empty, but with an air of anticipation. Wings"; 
	say " of the house [if first trying courtyard-loom-oneshot]loom (or have we already had 'loom'?) [italic type]lean[roman type][otherwise]lean[end if] solidly to the east and west. The main entrance stands [if front door is open]open[otherwise]closed[end if] to the north."; 
	if the legacy-intent is carried, say "[break]Ah, yes. If you drop the legacy intention here, it should work very well." 
The courtyard-loom-oneshot is a oneshot. 

Instead of going south in the Courtyard: 
	say "You have much work to do, and none of it lies to the south." 

Instead of going nowhere from the Courtyard: 
	say "The mansion's only entrance is to the north." 

Instead of going inside in the Courtyard: 
	try going north. 

Rule for traversing the front door when in the Courtyard: 
	if the Courtyard is revisited begin; 
		say "You eye the massive portal warily, but it remains open. Perhaps it has become resigned to your presence. You re-enter..."; 
		stop; 
	end if; 
	notice the front-door-note; 
	now the front door is closed; 
	say "You advance through the massive portal. It booms shut behind you.[break]How unusual -- most architecture doesn't react to your presence, much less your movements. This house must be peculiarly sensitive. It will make things awkward, though certainly not impossible.[break]You look around..." 
Rule for traversing the front door when in the Foyer: 
	now the Courtyard is revisited; 
	if the Ending has not happened and the legacy-intent is not carried, 
		say "You congratulate yourself on mastering the front door, but you really need to get to work. Somewhere in the house, there must be an intention that will serve to gather the players.[break]"; 
	say "You step out into..."; 

The mansion is scenery in the Courtyard. The description is "The [if Courtyard is not revisited]darkened mansion[otherwise]mansion, now flickering with life,[end if] surrounds the courtyard on three sides. It is a thoroughgoing monstrosity, with wrought iron and decorative gables tacked onto the battlements of an ancient fortress. Towers are involved." 
Understand "house" or "wing" or "wings" or "edifice" or "balcony" or "rail" or "rails" or "looming" or "darkened" as the mansion. 

Instead of entering the mansion: 
	try going north. 

Some towers are scenery in the Courtyard. The description is "You can see one tower above the body of the mansion, and two more above the east and west wings. More undoubtedly lurk out of your line of sight. They are small Victorian peaked garrets, not medieval barbicans, but they still manage to... well, to loom." 
Understand "tower" or "garret" or "garrets" or "peaked" as the towers. 
Instead of doing anything other than examining with the towers: 
	say "The towers are far above you." 

Section - Foyer 

The Foyer is a room. The description is "...which is [Foyer description]". 

The foyer-description-oneshot is a oneshot. 

To say Foyer description: 
	if first trying foyer-description-oneshot begin; 
		say "filled with sheeted furniture and gloom. The air is faintly damp, silent, scented with mold and furniture polish. Well. Not very cheery at the moment.[break]"; 
		say "The wallpaper has promise, mind you.[break]"; 
		say "But now is not the time. No doubt things will liven up when the guests arrive -- [italic type]that[roman type] will be the time. You shift your perceptions from the [italic type]now[roman type] to the [italic type]maybe[roman type]..."; 
		stop; 
	end if; 
	say "charmingly gaslit, and filled with stuffed peacocks and overstuffed divans. The floor is covered with an ornate Turkish confection, and the walls are hung with a lovely yellow-and-taupe flower print. An enormous coat-tree fills one corner of the room.[break]"; 
	if foyer-grate-north is closed or foyer-grate-west is closed, 
		say "(BUG) The doorways are blocked by steel grates.[break]"; 
	say "A peaked archway leads north, and a wider doorway opens to the west. The house's main entrance, to the south, stands [openness of front door]." 

The front door is south of the Foyer and north of the Courtyard. The front door is a portal. The description is "A towering slab of mahogany. It [if open]yawns open[otherwise]is firmly shut[end if]." 
Understand "massive" or "portal" or "entrance" or "slab" or "mahogany" as the front door. 

Rule for running into the front door: 
	say "The front door is solidly, massively, obdurately shut. And many other -ly words besides." 

Instead of opening the front door: 
	say "Manipulation of gross material substance is not your forte."; 
	if the front door is closed, 
		say "[break]But your movements have already had an effect on the door. No doubt your passage produces etheric currents, which change the house's perception of itself. A bit of experimentation should give you the trick of it.[break]" 

Instead of going outside in the Foyer: 
	try going south. 
Instead of exiting in the Foyer: 
	try going south. 

The furniture is scenery in the Foyer. The description is "Everything is uncovered now. You are surrounded by expanses of plush velvet, button-sewn leather, and the occasional taxidermic nightmare." 
Understand "divan" or "divans" or "peacock" or "peacocks" or "plush" or "velvet" or "leather" or "overstuffed" or "stuffed" or "sheeted" as the furniture. 
The furniture is unsittable. 

The Turkish carpet is scenery in the Foyer. The description is "A Turkish carpet, that is, not candy. It looks like it was imported at enormous expense, and then trod on." 
Understand "ornate" or "confection" or "rug" or "floor" as the Turkish carpet. 

Instead of searching the Turkish carpet: 
	say "If the carpet wants to hitch itself aside and reveal a secret passage, no doubt it will do so. (You give the front door a glare.)" 
Instead of looking under the Turkish carpet: 
	try searching the Turkish carpet. 
Instead of pushing or pulling the Turkish carpet: 
	try searching the Turkish carpet. 

The foyer-paper is wallpaper in the Foyer. The description is "The wallpaper displays yellow and taupe flowering vines. You approve; the owner shows excellent taste." 
Understand "yellow" or "taupe" or "flower" or "flowers" or "flowering" or "vine" or "vines" or "print" as the foyer-paper. 

The coat-tree is scenery in the Foyer. The description is "The thing seems more ceremonial than functional. Foyers have coat-trees; therefore, this foyer has a coat-tree[if intro-set-2 is in Foyer].[break][Boy] will be balancing on the arms of the coat-tree as if heights mean nothing to him[end if]." 
Understand "coat" or "tree" or "coattree" or "coats" or "enormous" as the coat-tree. 

Section - Sitting Room 

The Sitting Room is a room. The description is "[Sitting Room description]". 

To say Sitting Room description: 
	say "...a casual arrangement of davenports and ottomans, surrounding tiny tea tables and a shallow fireplace. The room is subtly divided into conversation spaces and private corners -- an excellent use of space. The wallpaper does not distract.[break]"; 
	say "Peaked archways lead north, east, and south[if foyer-grate-north is closed], but the south one is barred by a heavy steel grating[end if]. A smaller doorway leads west." 

After going to the Sitting Room: 
	if the foyer-grate-north is closed begin; 
		discover the gratings; 
		notice the grating-note; 
	otherwise; 
		if the grating-note is noticed begin; 
			erase the vine-arch-note; 
			fully understand the grating-note; 
		end if; 
	end if; 
	continue the action. 

A grating-portal is a kind of portal. The description is "[grating-portal description]". A grating-portal has some text called the normal description. The normal description of a grating-portal is usually "(BUG) no description." 
To say grating-portal description: 
	if the item described is open begin; 
		say "[the normal description of the item described][break]"; 
		stop; 
	end if; 
	say "A steel grating has slid down, blocking the [if the item described is foyer-grate-north]south archway[otherwise]east doorway[end if]"; 
	if first trying grating-portal-oneshot, 
		say ". You wonder idly what kind of person installs a portcullis in his foyer. Of course it's really a [italic type]configurational[roman type] portcullis -- a knot in the geometry of the house. So it might only exist in the early 18th century. Or it might represent the Viscount's fear of stampeding haddock. From your point of view, which is all that matters, it's a steel grate"; 
	say "." 
The grating-portal-oneshot is a oneshot. 
Understand "steel" or "grate" or "grating" as the foyer-grate-north when the foyer-grate-north is closed. 
Understand "steel" or "grate" or "grating" as the foyer-grate-west when the foyer-grate-west is closed. 
Rule for running into a grating-portal: 
	say "A steel grating blocks the way." 
Instead of searching a grating-portal when the noun is closed: 
	say "You can make out the Foyer on the other side." 

The foyer-grate-north is a grating-portal. The foyer-grate-north is north of the Foyer and south of the Sitting Room. 
The normal description of the foyer-grate-north is "It's an open archway with decorative carved trim. The archway rises to a faux-Gothic peak." 
Understand "peaked" or "peak" or "arch" or "archway" as the foyer-grate-north. 
The printed name of the foyer-grate-north is "peaked archway". 
Instead of closing the foyer-grate-north when the foyer-grate-north is open: 
	say "It's an archway, not a door." 
Rule for traversing the foyer-grate-north: 
	if the Ending has happened begin; 
		say default traversal; 
		stop; 
	end if; 
	if the front door is open, 
		now the front door is closed; 
	else 
		now the front door is open; 
	near-notice peaked-arches-note; 
	if in the Foyer and the front door is open begin; 
		say "As you move through the archway, the front door swings open again, behind you on the other side of the room"; 
		if first trying the seeing-door-oneshot, 
			say ". [the description of the seeing-door-oneshot]"; 
		say ".[break]This is..."; 
		stop; 
	end if; 
	if in the Sitting Room and the front door is closed begin; 
		say "As you re-enter the foyer, you see that the front door is open -- but swinging shut, as you move through the archway"; 
		if first trying the seeing-door-oneshot, 
			say ". [the description of the seeing-door-oneshot]"; 
		say ".[break]This is..."; 
		stop; 
	end if; 
	choose a random row in the Table of Generic Travel Verbs; 
	say "As you [word entry] through the archway, "; 
	if in the Foyer, 
		say "the front door swings shut, behind you. Ahead is..."; 
	else 
		say "the front door swings open before you, in..."; 

The seeing-door-oneshot is a oneshot. The description is "That resolves that question: the house's doors are definitely responding to your movement" 

A peaked-arch is a kind of portal. The printed name of a peaked-arch is usually "peaked archway". The description is usually "It's an open archway with decorative carved trim. The archway rises to a faux-Gothic peak." 
Understand "peaked" or "arch" or "archway" as a peaked-arch. 
Rule for traversing a peaked-arch: 
	if the Ending has happened begin; 
		say default traversal; 
		stop; 
	end if; 
	if the front door is open, 
		now the front door is closed; 
	else 
		now the front door is open; 
	far-notice peaked-arches-note; 
	choose a random row in the Table of Generic Travel Verbs; 
	say "As you [word entry] through the archway, you hear a door [if the front door is open]open[otherwise]close[end if] somewhere. The arch leads to..." 
Instead of closing a peaked-arch: 
	say "It's an archway, not a door." 

The sitting-archway-north is a peaked-arch. The sitting-archway-north is north of the Sitting Room and south of the Eastern Hallway. 
Understand "northern" or "north" as the sitting-archway-north when in the Sitting Room. 
Rule for printing the name of the sitting-archway-north when in the Sitting Room: 
	say "northern peaked archway". 
The sitting-archway-east is a peaked-arch. The sitting-archway-east is east of the Sitting Room and west of the Conservatory. 
Understand "eastern" or "east" as the sitting-archway-east when in the Sitting Room. 
Rule for printing the name of the sitting-archway-east when in the Sitting Room: 
	say "eastern peaked archway". 

Understand "southern" or "south" as the foyer-grate-north when in the Sitting Room. 
Rule for printing the name of the foyer-grate-north when in the Sitting Room: 
	say "southern peaked archway". 

The sitting-paper is wallpaper in the Sitting Room. The description is "Oh, nothing special. Pine and olive pinstripes on green. Plainer than you would have chosen." 
Understand "pine" or "olive" or "green" or "pinstripe" or "pinstripes" or "stripe" or "stripes" as the sitting-paper. 

The sitting-furniture is scenery in the Sitting Room. The printed name is "furniture". The description is "The furniture is sedate and heterogenous. You are fairly sure that whoever bought it was [italic type]thinking[roman type] the word 'heterogenous.'" 
Understand "davenport" or "ottoman" or "ottomans" or "tiny" or "tea" or "table" or "tables" or "space" or "spaces" or "heterogenous" or "furniture" as the sitting-furniture. 
The sitting-furniture is unsittable. 

The fireplace is scenery in the Sitting Room. The description is "The fireplace is decoratively burning a few twigs." 
Understand "fire" or "shallow" or "twig" or "twigs" as the fireplace. 

Section - Dining Room 

The Dining Room is a room. The description is "...which offers a teak dining table the size of a cricket pitch, surrounded by stylish modern chairs narrow enough to stand in for the bats. Floor space is a fragmentary afterthought.[break]A wide doorway leads east[if foyer-grate-west is closed], but a steel grating has slid down across it. A[otherwise], and a[end if] smaller peaked archway leads north. To the west is a vine-panelled door, which is [openness of library-door].[break][if windvane-oneshot is fired]A windvane arrow in the ceiling points [tower rotation]. And hanging[otherwise]Hanging[end if] above the table is the glass-and-iron glory of the Electrical Chandelier." 

After going to the Dining Room: 
	notice the library-door-note; 
	if the library-door is open begin; 
		fully understand the library-door-note; 
		erase the southeast-note; 
	end if; 
	if the foyer-grate-west is closed begin; 
		discover the gratings; 
		notice the grating-note; 
	otherwise; 
		if the grating-note is noticed begin; 
			erase the vine-arch-note; 
			fully understand the grating-note; 
		end if; 
	end if; 
	continue the action. 

The foyer-grate-west is a grating-portal. The foyer-grate-west is west of the Foyer and east of the Dining Room. 
The normal description of the foyer-grate-west is "It's a wide doorway." 
Understand "wide" or "wider" or "doorway" as the foyer-grate-west. 
The printed name of the foyer-grate-west is "wide doorway". 
Instead of closing the foyer-grate-west when the foyer-grate-west is open: 
	say "It's an doorway, not a door." 
Rule for traversing the foyer-grate-west: 
	if the location is the Foyer, rotate the tower clockwise; 
	else rotate the tower counterclockwise; 
	notice the rotate-arch-note; 
	choose a random row in the Table of Generic Travel Verbs; 
	say "As you [word entry] through the doorway, you hear a rumbling and squeaking[if first trying the hear-rotate-oneshot], as if some ponderous clockwork were revolving[end if] overhead.[break]This is..." 
The hear-rotate-oneshot is a oneshot. 

The Electrical Chandelier is scenery in the Dining Room. 
The description is "The Electrical Chandelier is a circular construction, nearly as wide as the room itself. Dozens of glass-bedecked arms are supported by iron chains; gutta-percha electrical conductors weave among them. The bulbs fill the room with sharp white brilliance.[if first trying windvane-oneshot][break]Upon closer examination, a brass arrow set into the ceiling is not part of the Chandelier at all.[end if][if intro-set-5 is in Dining Room][break][description of intro-set-5][end if]". 
Understand "electric" or "glory" or "glass" or "iron" or "bulb" or "bulbs" or "circular" or "construction" or "conductor" or "gutta-percha" or "gutta" or "percha" as the chandelier. 

The windvane is scenery in the Dining Room. 
The description is "[if first trying windvane-oneshot][end if]A brass arrow, like that of a windvane, is attached to the ceiling mount of the Electrical Chandelier -- although it appears to be a separate mechanism. The arrow is pointing [tower rotation]." 
Understand "wind" or "vane" or "brass" or "arrow" as the windvane. 
The windvane-oneshot is a oneshot. 

The dining-paper is wallpaper in the Dining Room. The description is "The wallpaper is a mesh of silvery zigzags and blue arcs, no doubt in honor of the Electrical Chandelier. You are quite weak with envy." 
Understand "silver" or "silvery" or "blue" or "zigzag" or "zigzags" or "arc" or "arcs" or "mesh" as the dining-paper. 

The dining table is scenery in the Dining Room. The description is "The table makes it clear that the owner could entertain simply everybody for dinner." 
Understand "teak" or "cricket" or "pitch" as the dining table. 

Some chairs are scenery in the Dining Room. The description is "The chairs are so daringly Norwegian that one could hardly sit in them." 
Understand "chair" or "stylish" or "modern" or "narrow" or "norwegian" as the chairs. 
The chairs are unsittable. 

Section - Kitchen 

The Kitchen is a room. The description is "...although it's not a terribly practical one. There is a vast blackened woodstove roaring away, some hanging ironmongery, and little else. The sideboard laden with alcoholic bottles, flasks, and decanters doesn't seem quite right for a kitchen, but no doubt someone insisted.[break]A peaked archway leads south, a small doorway leads east, and a vine-carved archway leads north. To the west is [a/an openness of pantry-door] leaf door." 

After going to the Kitchen: 
	notice the pantry-door-note; 
	if the pantry-door is open begin; 
		fully understand the pantry-door-note; 
		erase the northwest-note; 
	end if; 
	continue the action. 

The small doorway is a portal. The small doorway is west of the Sitting Room and east of the Kitchen. 
Understand "smaller" as the small doorway. 
Instead of closing the small doorway: 
	say "It's a doorway, not a door." 

The kitchen-archway is a peaked-arch. The kitchen-archway is south of the Kitchen and north of the Dining Room. 

The kitchen-paper is wallpaper in the kitchen. The description is "The wallpaper sports domestic-looking pink flowers and bunches of grapes, all vague with soot around the upper corners." 
Understand "pink" or "flower" or "flowers" or "bunch" or "bunches" or "of" or "grape" or "grapes" or "soot" as the kitchen-paper. 

The grating-discovery is a number which varies. The grating-discovery is zero. 
To discover the gratings: 
	now the grating-discovery is one. 

An ivy-portal is a kind of portal. 
Rule for traversing an ivy-portal (called P): 
	if the Ending has happened begin; 
		say default traversal; 
		stop; 
	end if; 
	if foyer-grate-west is open begin; 
		now all grating-portals are closed; 
		notice vine-arch-note; 
	otherwise; 
		now all grating-portals are open; 
		fully understand vine-arch-note; 
	end if; 
	choose a random row in the Table of Generic Travel Verbs; 
	let the direction-text be " from the foyer"; 
	if grating-discovery is zero begin; 
		if P is the library-door, 
			change the direction-text to ", somewhere to the east"; 
		else 
			change the direction-text to ", somewhere to the southeast"; 
	end if; 
	say "As you [word entry] through the [if P is ivy-archway]archway[otherwise]door[end if], "; 
	if foyer-grate-west is open, 
		say "you hear a clanking[direction-text], as if a metal chain were being drawn up.[break]You enter..."; 
	otherwise 
		say "you hear a rattle and clank[direction-text].[break]You enter..." 

The ivy-archway is an ivy-portal. The ivy-archway is north of the Kitchen and south of the Western Hallway. The printed name is "vine archway". The description is "It's a wide archway, flanked by doorposts fancifully carved with ivy vines." 
Understand "ivy" or "vine" or "vines" or "vine-carved" or "carved" or "doorpost" or "doorposts" or "archway" or "arch" as the ivy-archway. 
Instead of closing the ivy-archway: 
	say "It's an archway, not a door." 

The woodstove is scenery in the Kitchen. The description is "The stove is a sooty mechanical monster, with a thoroughly unnecessary number of valves and pipes. The house may well have been built around it." 
Understand "wood" or "stove" or "vast" or "black" or "blackened" or "sooty" or "monster" or "roaring" or "valve" or "valves" or "pipe" or "pipes" or "fire" or "flames" as the woodstove. 
Instead of entering the woodstove: 
	say "It doesn't look that homey." 
Instead of searching the woodstove: 
	say "You see flames." 

Some kitchen implements are scenery in the Kitchen. The description is "Various kitchen implements hang from racks." 
Understand "ironmongery" or "iron" or "rack" or "racks" as the implements. 

The sideboard is scenery in the Kitchen. The description is "It seems this is where the liquor is kept. Not the best way to treat a fine port. Or a mediocre bourbon. Or this clam juice." 
Understand "bottle" or "bottles" or "flask" or "flasks" or "decanter" or "decanters" or "alcohol" or "alcoholic" or "liquor" or "bourbon" or "port" or "whiskey" or "whisky" or "gin" or "rum" or "clam" or "juice" as the sideboard. 

Section - Library 

The Library is a room. The description is "...which may have started out as an architectural display of ceiling-high bookshelves, but has now overflowed into stacks and piles of books in every corner and on every table. One could very nearly call it a satisfactory library. A clear path winds towards a fat, reader-devouring armchair in the center.[break]A vine-panelled door stands [openness of library-door] to the east[if secret-shelf-door is open]. More interestingly, a bookshelf in the north wall has swung open[end if]." 

After going to the Library: 
	if the secret-shelf-door is open begin; 
		erase the low-arch-note; 
		notice the secret-note; 
		fully understand the secret-note; 
	end if; 
	continue the action. 

The library-door is an ivy-portal. The library-door is east of the Library and west of the Dining Room. The library-door is closed. The printed name is "panelled door". The description is "The door has an intricate pattern of vines inlaid in the wood. It is [openness of library-door]." 
Understand "panel" or "panelled" or "vine" or "vine-panel" or "pattern" or "door" as the library-door. 

The library-paper is wallpaper in the Library. The description is "Do shelved books count?". 

An armchair is scenery in the Library. The description is "The armchair is stripy, plush, and squashed by years of late-night bibliophily." 
Understand "fat" or "chair" or "reader" or "devouring" or "reader-devour" or "stripy" or "plush" as the armchair. 
The armchair is unsittable. 

A clear path is scenery in the Library. The description is "It is not geometrically significant. It's where the library's resident has managed to not put any books." 
Instead of entering the clear path: 
	say "Nothing happens." 

Some bookshelves are scenery in the Library. The description is "The collection is eclectic at best." 
Understand "book" or "books" or "bookshelf" or "bookshelves" or "shelf" or "shelves" or "stack" or "stacks" or "pile" or "piles" as the bookshelves. 
Instead of looking under the bookshelves: 
	say "Under the books are more books." 
Instead of searching the bookshelves: 
	if a random chance of 47 in 101 succeeds, 
		say "[Interjection] -- you discover [italic type][book title].[roman type]"; 
	else 
		say "You discover [italic type][book title][period][roman type] [Interjection].". 

Section - Pantry 

The Pantry is a room. The description is "...which contains a curious mix of unidentifiable tins and canisters with bottles, jars, and flasks of baroque coloring and conformation. Someone's approach to provender tilts alarmingly towards the alchemical.[break]A leaf door to the east is [openness of pantry-door], a hallway door to the north is [openness of hallway-door], and a trap door in the floor is [openness of the trap door][if secret-shelf-door is open]. More interestingly, a rack of fruit preserves on the south wall has swung aside, revealing a narrow gap[end if]." 

After going to the Pantry: 
	notice the trap-door-note; 
	notice the hallway-door-note; 
	if the hallway-door is open begin; 
		fully understand the hallway-door-note; 
		erase the northeast-note; 
	end if; 
	if the secret-shelf-door is open begin; 
		erase the low-arch-note; 
		notice the secret-note; 
		fully understand the secret-note; 
	end if; 
	continue the action. 

The pantry-door is an ivy-portal. The pantry-door is east of the Pantry and west of the Kitchen. The pantry-door is closed. The printed name is "leaf door". The description is "Not a door which opens in sections, as it happens, but a door with ivy leaves painted on it. It is [openness of pantry-door]." 
Understand "ivy" or "leaf" or "leaves" or "painted" or "door" as pantry-door. 

The hallway-door is a portal. The hallway-door is north of the Pantry and south of the West End Hallway. The hallway-door is closed. The printed name is "hallway door". The description is "It is [openness of hallway-door]." 
Understand "hallway" or "door" as the hallway-door. 

The secret-shelf-door is a portal. The secret-shelf-door is south of the Pantry and north of the Library. The secret-shelf-door is closed. The printed name is "secret door". The description is "[description of secret door]". 
Understand "secret" or "door" or "narrow" or "gap" or "rack" or "shelf" or "fruit" or "preserves" as the secret-shelf-door when the secret-shelf-door is open and the location is the Pantry. 
Understand "secret" or "door" or "narrow" or "gap" or "rack" or "shelf" or "bookshelf" or "poetic" or "tomes" as the secret-shelf-door when the secret-shelf-door is open and the location is the Library. 
To say description of secret door: 
	if the secret-shelf-door is closed begin; 
		say "You can no longer see any trace of the secret door."; 
		stop; 
	end if; 
	if in the Library, 
		say "A bookshelf, previously notable only for the dustiness of its poetic tomes"; 
	else 
		say "A rack, previously notable only for the murkiness of its fruit preserves"; 
	say ", has revealed itself to be a secret door. A narrow gap is visible beyond." 
Rule for running into the secret-shelf-door: 
	say default no-go message. 
Rule for traversing the secret-shelf-door: 
	say "You duck through the secret door, into..." 
Instead of searching the secret-shelf-door: 
	say "You can make out the [if in Library]pantry[otherwise]library[end if]." 

The pantry-paper is wallpaper in the Pantry. The description is "Alarmingly, it's a plain sea-green. No pattern at all. Are these people mad?". 
Understand "plain" or "green" or "sea" or "sea-green" as the pantry-paper. 

The provender is scenery in the Pantry. The description is "The assortment is indescribable." 
Understand "tin" or "tins" or "bottle" or "bottles" or "canister" or "canisters" or "jar" or "jars" or "flask" or "flasks" or "assortment" or "vinegar" as the provender. 
Instead of smelling the provender: 
	say "All the containers are sealed, so there should be no order. Nonetheless, there are traces of... well, everything. With vinegar." 
Instead of smelling the Pantry: 
	try smelling the provender. 

Section - Conservatory 

The Conservatory is a room. The description is "...which consists of a dustcloth-covered grand piano, a collection of metronomes in a cupboard, and (in one unregarded corner) a standing Victrola. Music would appear to be an art that the family honors, rather than enjoys.[break][Cap a/an openness of wooden door] wooden door leads east, and there is an archway to the west. The southern wall is entirely glass, looking out upon a small enclosed garden, [Conservatory doorstuff]." 
To say Conservatory doorstuff: 
	if the French doors is impassable begin; 
		say "but the French doors are"; 
		if the wooden door is impassable, say " also"; 
		say " closed"; 
	otherwise; 
		say "and the French doors are open"; 
	end if; 

After going to the Conservatory: 
	notice the atelier-door-note; 
	notice the french-door-note; 
	check-discover the french-door-note; 
	continue the action. 

The wooden door is a portal. The wooden door is east of the Conservatory and west of the Atelier. The wooden door injects the Conservatory. 
Rule for traversing the wooden door when the Ending has not happened: 
	say "The wooden door closes behind you. You are now in..." 

Some French doors are a portal. The French doors are north of the Whimzy Garden and south of the Conservatory. The French doors inject the Conservatory. 
Understand "door" or "glass" or "wall" as the French doors. The description is "A glass wall separates the conservatory from the garden. Delicate French doors stand [openness of French doors]." 
Understand "northern" or "north" as the French doors when in the Whimzy Garden. 
Understand "southern" or "south" as the French doors when in the Conservatory. 
Instead of searching the French doors: 
	if in the Conservatory, 
		try examining the remote-garden; 
	else 
		try examining the remote-conservatory. 
Rule for running into the French doors: 
	say "The French doors are closed." 
Rule for traversing the French doors when the Ending has not happened: 
	say "The French doors close gently behind you. You are now in..." 

The remote-garden is scenery in the Conservatory. The printed name is "garden". The description is "Through the glass you can see a small whimzy-garden. It sports flowerbeds, paths, a garden well -- quite cozy." 
Understand "whimzy" or "whimzy-garden" or "whimsy" or "whimsy-garden" or "garden" or "small" or "enclosed" or "well" or "tower" or "flowers" or "flower" or "flowerbed" or "flowerbeds" as the remote-garden. 
Instead of entering the remote-garden: 
	try going south. 
Instead of searching the remote-garden: 
	try examining the remote-garden. 

The grand piano is scenery in the Conservatory. The description is "Under the dustcloth, it is in perfect condition. Pristine. Ne'er before touched by human hand. [Interjection]." 
Understand "dustcloth" or "cloth" or "covered" as the grand piano. 
Instead of searching or looking under the piano: 
	say "Under the dustcloth is a piano. Under the piano is nothing of note." 

Some metronomes are scenery in the Conservatory. The description is "The metronomes have been lovingly arranged and labelled as to manufacturer, date of manufacture, and country of origin. A few are inscribed as presentation pieces." 
Understand "metronome" or "cupboard" or "collection" as the metronomes. 
Instead of searching the metronomes: 
	try examining the metronomes. 

A Victrola is scenery in the Conservatory. The description is "The Victrola is a slender, refined, and elegant piece of furniture. It barely deigns to play records at all." 
Understand "standing" or "record" or "player" as the Victrola. 

Section - Garden 

The Whimzy Garden is a room. The description is "...a tiny enclosed garden-courtyard, roofed in glass. The northern wall is also glass; the French doors leading into the conservatory stand [openness of the French doors]. A smaller door to the east is [openness of small door]. The garden's west side is the base of a stone tower; a doorway leads west to the tower stair.[break]The garden itself is surprisingly ingenuous. Narrow flagstone paths wind among terraced beds of flowers. The garden centers around a well with a low, moss-grown coping." 

After going to the Whimzy Garden: 
	notice the garden-door-note; 
	notice the french-door-note; 
	fully understand the french-door-note; 
	check-discover the french-door-note; 
	continue the action. 

The tower stairway is a portal. The tower stairway is above the Garden and below the Central Tower. The description is "Behind a doorway, stone stairs wind the length of the tower." 
Understand "stair" or "stairs" or "doorway" as the tower stairway. 
Instead of going west in the Garden: 
	try going up. 
Instead of climbing the tower stairway: 
	try entering the tower stairway. 
Rule for traversing the tower stairway: 
	if the location is the Garden, say "You climb the stairs to the top of..."; 
	else say "You descend the tower stairs, and find yourself in..." 

The remote-conservatory is scenery in the Garden. The printed name is "conservatory". The description is "Through the glass you can see the piano, standing in disused splendor in the conservatory." 
Understand "grand" or "piano" or "disused" or "conservatory" as the remote-conservatory. 
Instead of entering the remote-conservatory: 
	try going north. 
Instead of searching the remote-conservatory: 
	try examining the remote-conservatory. 

Some flowers are scenery in the Garden. The description is "Someone has a good eye for texture: small bright points of color hide between gentler stands of coneflower and trained roses. The patterns would work well for a drawing-room paper." 
Understand "flower" or "flowerbed" or "bed" or "beds" or "terraced" or "color" or "texture" or "rose" or "roses" or "coneflower" or "stand" or "stands" as the flowers. 
Instead of searching the flowers: 
	say "Nothing is concealed among the flowers." 
Instead of entering the flowers: 
	say "Walking on the flowers would be boorish." 
Instead of smelling the flowers: 
	say "Warm earth, cool water, and the trailing scent of the flowers." 
Instead of smelling the Garden: 
	try smelling the flowers. 

The local-garden is scenery in the Garden. The printed name is "whimzy garden". The description is "The garden paths do an excellent job of winding, considering that the whole garden is less than twenty feet across." 
Understand "garden" or "whimzy" or "whimsy" or "whimzy-garden" or "whimsy-garden" or "narrow" or "path" or "paths" or "flagstone" as the local-garden. 
Instead of entering the local-garden: 
	say "You walk along the paths for a while. It is relaxing, but not metaphysically significant." 

The well is scenery in the Garden. The description is "The well might have been a water source once, but it has been garden decoration for decades. A soupy green surface lies placid, a few feet below the coping." 
Understand "low" or "coping" or "moss" or "grown" or "moss-grown" or "soupy" or "green" or "water" or "surface" as the well. 
Instead of searching the well: 
	try examining the well. 
Instead of entering the well: 
	say "Exploring the water would be neither pleasant nor productive." 
Instead of swimming in the Garden: 
	try entering the well. 
Instead of going down in the Garden: 
	try entering the well. 

To reverse the garden doors: 
	if the French doors inject the Conservatory begin; 
		now the French doors inject the Garden; 
		now the small door injects the Rarely-Used Room; 
	else; 
		now the French doors inject the Conservatory; 
		now the small door injects the Garden; 
	end if; 

Section - Atelier 

The Atelier is a room. The description is "...which is a romantic name for a closet where artists starve. This one is clearly romantic, but to be fair, also shows evidence of actual art. There are canvases on stands and more leaning against the walls. A table is covered with ruined brushes and tubes of paint.[break][Cap a/an openness of wooden door] wooden door leads west, and a low archway opens to the south." 

After going to the Atelier: 
	fully understand the atelier-door-note; 
	continue the action. 

Some canvases are scenery in the Atelier. The description is "A few landscapes, a few portraits, a few odd abstractions. They all share a general gloom and a fussy, tight brushstroke; but the artist seems willing to try a variety of subjects and styles." 
Understand "art" or "canvas" or "painting" or "paintings" or "stand" or "stands" or "portrait" or "portraits" or "landscape" or "abstraction" as the canvases. 

Some supplies are scenery in the Atelier. The description is "You see the detritus of the ongoing struggle with Art. In this case, dirty paintbrushes. It's funny because it's true." 
Understand "painting supplies" or "ruined" or "brush" or "brushes" or "tube" or "tubes" or "paint" or "ruined" or "paintbrush" as the supplies. 

The atelier-table is scenery in the Atelier. The printed name is "table". The description is "The table is covered with painting supplies." 
Understand "table" as the atelier-table. 
Instead of searching the atelier-table: 
	try examining the atelier-table. 

Section - Rarely-Used Room 

The Rarely-Used Room is a room. The description is "...or, rather, a room for the rarely-used. Gardening tools piled here, cans of paint rusting there. Rags and bricks and bundles of wooden laths. Velocipede wheels and a wheelless bicycle they will not fit. All the rubbish, in short, that builds up under the feet of people who buy things when they remember to and then buy them again when they forget.[break]A small door to the west [rare doorstuff], and there is a low archway to the north." 
To say rare doorstuff: 
	if the small door is impassable, say "is closed"; 
	else say "leads out to the garden". 

The small door is a portal. The small door is east of the Garden and west of the Rarely-Used Room. The small door injects the Garden. 
Understand "smaller" as the small door. 
Rule for traversing the small door when the Ending has not happened: 
	fully understand the garden-door-note; 
	say "The small door closes behind you. You are now in..." 

The low archway is a portal. The low archway is north of the Rarely-Used Room and south of the Atelier. 
Rule for traversing the low archway: 
	if the Ending has happened begin; 
		say default traversal; 
		stop; 
	end if; 
	if the secret-shelf-door is open begin; 
		now the secret-shelf-door is closed; 
		fully understand low-arch-note; 
	else; 
		now the secret-shelf-door is open; 
		notice low-arch-note; 
	end if; 
	say "As you pass through the archway, there is a faint [if the secret-shelf-door is open]squeaking noise[otherwise]creak-thump[end if] from the far west side of the house.[break]The arch leads to..." 
Instead of closing the low archway: 
	say "It's an archway, not a door." 

The rubbish is scenery in the Rarely-Used Room. The description is "You see absolutely nothing special about the rubbish." 
Understand "gardening" or "tool" or "tools" or "can" or "cans" or "paint" or "rags" or "bricks" or "bundles" or "wooden" or "lath" or "laths" or "velocipede" or "wheel" or "wheels" or "wheelless" or "bicycle" as the rubbish. 
Instead of searching the rubbish: 
	say "Treasures are undoubtedly buried and lost in this room. Retrieving them is not your concern, of course[if legacy-intent is not handled]. But it is the concern of those who will soon arrive -- you see a legacy intention amid the rubbish[end if]." 

Section - Hallway 

The hallway-region is a region. 
The East End Hallway, the West End Hallway, the Eastern Hallway, the Western Hallway are in the hallway-region. 
A hallway-link is a kind of portal. 

After going to the hallway-region: 
	notice the floor-segment-note; 
	continue the action. 

A fake-door is a kind of portal. A fake-door is always closed. The printed name is "uninteresting door". The description is usually "It's closed. And, truly, it doesn't go anywhere interesting. You can tell." 
Understand "uninteresting" or "boring" or "door" as a fake-door. 

The East End Hallway is a room. The printed name is "East End of the Hallway". The description is "...a plain and uncarpeted back corridor. It runs west from here. The wallpaper is a faded paisley of unremarkable coloring.[break]You can see, if not reach, a round opening in the hallway ceiling." 

The hallway-link-1 is a hallway-link. The hallway-link-1 is east of the Eastern Hallway and west of the East End Hallway. 
The tower-opening-ne is a portal. The printed name is "round opening". The description is "The opening leads to a short vertical shaft. [if in East End Hallway]It probably leads to the top of a tower, but you won't be able to reach it from down here.[otherwise]You can make out an uncarpeted floor below. The drop is not so far as to discomfit you.[end if]". 
The tower-opening-ne is above the East End Hallway and below the North-East Tower. 
The tower-opening-ne injects the East End Hallway. 
Understand "small" or "round" or "opening" or "hole" or "gap" or "shaft" as the tower-opening-ne. 
Rule for running into the tower-opening-ne: 
	say "The opening is too high to reach." 
Rule for traversing the tower-opening-ne: 
	fully understand the ne-tower-gap-note; 
	say "You slide through the opening and drop silently to the floor of..." 
Instead of searching the tower-opening-ne: 
	try examining the tower-opening-ne. 
Instead of climbing the tower-opening-ne: 
	try entering the tower-opening-ne. 

The Eastern Hallway is a room. The description is "...a plain and uncarpeted back corridor. It runs both east and west from here, although you are nearer the east end. The wallpaper is a faded paisley of unremarkable coloring.[break]To the south is a peaked archway; to the north, an uninteresting closed door." 

The hallway-link-2 is a hallway-link. The hallway-link-2 is east of the Western Hallway and west of the Eastern Hallway. 
The fake-door-2 is a fake-door. The fake-door-2 is north of the Eastern Hallway and southwest of the Not Really A Room. 

After going to the Eastern Hallway: 
	notice the uninteresting-door-note; 
	continue the action. 
After going to the Western Hallway: 
	notice the uninteresting-door-note; 
	continue the action. 
After going to the East End Hallway: 
	notice the ne-tower-gap-note; 
	continue the action. 

The Western Hallway is a room. The description is "...a plain and uncarpeted back corridor. It runs both east and west from here, although you are nearer the west end. The wallpaper is a faded paisley of unremarkable coloring.[break]To the south is a vine-carved archway; to the north, an uninteresting closed door." 

The hallway-link-3 is a hallway-link. The hallway-link-3 is east of the West End Hallway and west of the Western Hallway. 
The fake-door-3 is a fake-door. The fake-door-3 is north of the Western Hallway and southeast of the Not Really A Room. 

The West End Hallway is a room. The printed name is "West End of the Hallway". The description is "...a plain and uncarpeted back corridor. It runs east from here. The wallpaper is a faded paisley of unremarkable coloring.[break][Cap a/an openness of hallway-door] door is south." 

The hallway-paper is a backdrop in the hallway-region. The printed name is "wallpaper". The description is "A dun paisley on yellowed paper. It would be in dire need of replacement, if anyone cared about back corridors." 
Understand "lovely" or "delightful" or "paper" or "wallpaper" as the hallway-paper. Understand "wall paper" as the hallway-paper. Understand "faded" or "paisley" or "dun" or "yellowed" as the hallway-paper. 

The floor level is a number which varies. The floor level is two. 

The moving-floor is a backdrop. The printed name is "floor segment". The moving-floor is in the hallway-region. The moving-floor is not scenery. The initial appearance is "[appearance of moving-floor]". The description is "[description of moving-floor]". 
The moving-floor can be discovered. The moving-floor is not discovered. 
Understand "moving" or "movable" or "segment" or "section" or "hallway" or "hall" or "corridor" or "floor" or "curious" or "anomaly" or "clockwork" or "mechanism" as the moving-floor. 
Understand "hole" or "square" or "opening" or "depths" as the moving-floor when the floor level is zero. 
Understand "outline" as the moving-floor when the floor level is one. 
To say appearance of moving-floor: 
	let loc be "down the hall"; 
	if the location is Western Hallway, change loc to "to the west"; 
	if the location is West End Hallway, change loc to "to the east"; 
	if the floor level is two begin; 
		if the moving-floor is not discovered, 
			say "[if location is Western Hallway or location is West End Hallway]Immediately[otherwise]Down the hall[end if] to the [if location is West End Hallway]east[otherwise]west[end if], you see a curious anomaly. A segment of the corridor floor has been elevated -- via some sort of clockwork mechanism -- all the way to the ceiling, if not higher."; 
		else 
			say "The moving floor segment [loc] is elevated to ceiling level."; 
	end if; 
	if the floor level is one, 
		say "The moving floor segment [loc] has returned to ground level."; 
	if the floor level is zero, 
		say "The floor segment [loc] has dropped down out of sight, leaving a square opening." 
To say description of moving-floor: 
	say "Part of the hallway floor"; 
	if the location is the West End Hallway, say ", directly to the east,"; 
	if the location is the Western Hallway, say ", directly to the west,"; 
	if the floor level is two, 
		say " has been raised up through the ceiling. The space where it was is now occupied by baroque clockwork, which must be supporting it"; 
	if the floor level is one, 
		say " appears to be mobile; it is currently level with the rest of the hallway"; 
	if the floor level is zero, 
		say " has descended into the lower depths of the house"; 
	if the location is the Eastern Hallway or the location is the East End Hallway begin; 
		say ". You cannot see more from this distance."; 
		stop; 
	end if; 
	say "." 

Instead of doing anything other than examining or zapping the moving-floor when the location is the Eastern Hallway or the location is the East End Hallway: 
	say "The moving floor segment is well down the hall from you. You'll have to approach more closely." 

Instead of searching the moving-floor: 
	if the floor level is two, 
		say "The clockwork is most likely merely symbolic. Which does not mean it is not an obstacle."; 
	if the floor level is one, 
		say "Nothing is now visible but an outline in the floor."; 
	if the floor level is zero, 
		say "You can see nothing below." 

Instead of going down in the hallway-region when the floor level is zero: 
	try entering the moving-floor. 

Instead of climbing the moving-floor: 
	try entering the moving-floor. 

Instead of entering the moving-floor: 
	if the floor level is two, 
		say "The clockwork is too tightly constructed to pass through."; 
	if the floor level is one, 
		say "The segment is closed now."; 
	if the floor level is zero, 
		say "You would normally be untroubled by a drop into a lightless cellar. But this elevating mechanism is a configurational knot -- a notion in the house's mind -- not a physical mechanism. (Who would be absurd enough to build such a thing for real?) You could very well fall forever." 

The hallway-link-3 is closed. 

Rule for traversing a hallway-link (called H): 
	let dir be east; 
	if H is hallway-link-1 and the location is East End Hallway, 
		let dir be west; 
	if H is hallway-link-2 and the location is Eastern Hallway, 
		let dir be west; 
	if the Ending has happened begin; 
		say "You walk along the hallway, to..."; 
		stop; 
	end if; 
	if dir is east and the floor level is zero begin; 
		say "You hear a grinding sound from the hole in the floor as you reach..."; 
		stop; 
	end if; 
	if dir is west and the floor level is two begin; 
		say "The clockwork quivers and emits a grinding sound, but does not move, as you reach..."; 
		stop; 
	end if; 
	if dir is east begin; 
		say "As you move along the corridor, you hear a whirr behind you"; 
		if the floor level is one, say ". You glance back to see the floor segment sinking downward. It drops out of sight as you approach..."; 
		else say ". You glance back to see the clockwork descending. The floor reaches an even level as you approach..."; 
		change the floor level to the floor level minus one; 
		now the moving-floor is discovered; 
		real-notice the floor-segment-note; 
	else; 
		say "As you move along the corridor, you hear a whirr"; 
		if the floor level is one, say ", and you see the floor segment rising again. It reaches the ceiling as you approach..."; 
		else say ", and you see the floor segment rising into place again. It reaches an even level as you approach..."; 
		change the floor level to the floor level plus one; 
		now the moving-floor is discovered; 
		fully understand the floor-segment-note; 
	end if. 

Rule for running into the hallway-link-3: 
	if the Ending has happened begin; 
		if the location is the Western Hallway begin; 
			say "The floor segment politely lifts you to the tower roof, and then descends after you step off."; 
			move the player to the North-West Tower; 
		else; 
			say "The floor segment politely lowers you to the cellar, and then ascends after you step off."; 
			move the player to the Wine Cellar; 
		end if; 
		stop; 
	end if; 
	if the floor level is zero begin; 
		say "There is a gaping hole in the floor there[if first trying floor-down-oneshot]. It fills the width of the hallway, and you're not the jumping type. So getting past will be problematic[end if]."; 
		stop; 
	end if; 
	if the floor level is two begin; 
		say "The corridor is blocked by the clockwork machinery[if first trying floor-up-oneshot]. It fills the width of the hallway. You can make out that the corridor continues beyond it, but getting past will be problematic[end if]."; 
		stop; 
	end if; 
	if the location is the Western Hallway begin; 
		say "As you step onto the floor segment, it begins rising with a smooth whirr. Two steps take you across it, and you are lifted into open air."; 
		notice the bridge-note; 
		now the floor level is two; 
		fully understand the floor-segment-note; 
		move the player to the North-West Tower; 
	else; 
		say "As you step onto the floor segment, it begins descending with a smooth whirr. Two steps take you across it, and you are lowered into musty dimness."; 
		now the floor level is zero; 
		fully understand the floor-segment-note; 
		move the player to the Wine Cellar; 
	end if. 
The floor-down-oneshot is a oneshot. 
The floor-up-oneshot is a oneshot. 

Section - Wine Cellar 

The Wine Cellar is a room. The description is "...in which racks of bottles obscure stacks of moldering casks, which conceal who knows what. By the smell, some ancestral Viscount experimented with cellar-aged cheese, and perhaps cellar-grown mushrooms and cellar-imprisoned nemeses.[break][if floor level is zero]A square opening lets in light from above, but you see no way to reach it from here. [end if]The narrow tunnel to the south is the only available exit." 

After going to the Wine Cellar: 
	now the Tunnel is southgoing; 
	continue the action. 

The narrow-tunnel is a portal. The narrow-tunnel is south of the Wine Cellar and north of the Tunnel. The printed name is "narrow tunnel". The description is "A narrow passage, tunnelled through the living rock... well, not the living rock. The excavated-and-walled-with-mortared stones rock." 
Understand "narrow" or "tunnel" or "passage" as the narrow-tunnel. 

Some bottles are scenery in the Wine Cellar. The description is "You are surrounded by wines from the many corners of the world. Peeling labels and layers of grime attest to their antiquity. If you had a taste for such things, you would be impressed." 
Understand "wine" or "wines" or "bottle" or "rack" or "racks" or "stack" or "stacks" or "cask" or "casks" or "moldering" or "mouldering" or "corner" as the bottles. 
Instead of searching the bottles: 
	say "An inventory of the wines would be of no value to you." 
Instead of smelling the bottles: 
	say "Best not to ask." 
Instead of smelling the Wine Cellar: 
	try smelling the bottles. 

The cellar-opening is scenery in the Wine Cellar. The printed name is "opening". The description is "You can make out the dingy wallpaper of the corridor above." 
Understand "square" or "opening" as the cellar-opening. 
Instead of going up in the Wine Cellar: 
	try entering the cellar-opening. 
Instead of climbing the cellar-opening: 
	try entering the cellar-opening. 
Instead of entering the cellar-opening: 
	say "The opening is too high to reach." 
Instead of searching the cellar-opening: 
	try examining the cellar-opening. 
Instead of doing anything with the cellar-opening when the floor level is not zero: 
	say "You can see no trace of the opening[if first trying no-clockwork-oneshot]. Nor of the clockwork that should be below it. Ah, the vagaries of subjective architecture[end if]." 
The no-clockwork-oneshot is a oneshot. 

Section - Tunnel 

The Tunnel is a room. The description is "...of which the best that can be said is that the ceiling isn't too low. The passage winds from [if southgoing]north to south, widening[otherwise]south to north, narrowing[end if] slightly as it goes.[break]A wooden ladder climbs to [a/an openness of the trap door] trap-door above." 
The Tunnel can be northgoing or southgoing. 

The wide-tunnel is a portal. The wide-tunnel is south of the Tunnel and north of the Other Cellar. The printed name is "wider tunnel". The description is "The tunnel is wider here -- who knows why." 
Understand "wide" or "wider" or "tunnel" or "passage" as the wide-tunnel. 

The trap door is a portal. The trap door is below the Pantry and above the Tunnel. The description is "A solid piece of carpentry." The trap door injects the Pantry. 
Understand "solid" or "trapdoor" or "trap-door" as the trap door. 
Rule for running into the trap door: 
	say "The trap door is solidly closed." 
Rule for traversing the trap door: 
	fully understand the trap-door-note; 
	say "You ascend. As you climb to your feet, the trap door thumps sullenly shut, leaving you in..." 
Rule for traversing the trap door when the Ending has happened: 
	if the location is the Pantry, say "You descend to..."; 
	else say "You ascend to..." 

The wooden ladder is scenery in the Tunnel. The description is "It serves the butler in his quests to serve the wine up to his guests. (Oh, bravo.)" 
Instead of climbing the ladder: 
	try going up. 
Instead of entering the ladder: 
	try going up. 

Section - Other Cellar 

The Other Cellar is a room. The description is "...which might once have been an inventor's workshop, if the inventor were obsessed with steam-powered bathtubs. Or dirigible pipe organs. Or... internal-combustion automated masseurs? It's all cobwebs and rusting pipes now.[break]A tunnel runs north, and a disused stairway ascends." 

After going to the Other Cellar: 
	now the Tunnel is northgoing; 
	continue the action. 

The disused stairway is a portal. The disused stairway is above the Other Cellar and below the South-West Tower. The description is "A plain stone stairway." 
Understand "plain" or "stone" or "stairs" or "stair" as the disused stairway. 
Instead of climbing the disused stairway: 
	try entering the disused stairway. 
Rule for traversing the disused stairway: 
	if the location is the Other Cellar, 
		say "You climb the lengthy stairs, emerging at the top of..."; 
	else 
		say "You descend the stairs, around and around, to..." 

Some old parts are scenery in the Other Cellar. The description is "Old, rusty parts and pipes lie everywhere. They are uniformly beyond any use." 
Understand "pile" or "piles" or "rubbish" or "cobweb" or "cobwebs" or "rusting" or "rusty" or "pipe" or "pipes" or "bathtub" or "bathtubs" or "tub" or "tubs" or "organ" or "organs" or "masseur" or "masseurs" as the old parts. 

Section - Outdoors 

The outdoors-region is a region. The Courtyard is in the outdoors-region. 
The upper-outdoors-region is a region. The upper-outdoors-region is in the outdoors-region. 
The Central Tower, Tight Rope, North-West Tower, North-East Tower, South-East Tower, and South-West Tower are in the upper-outdoors-region. 

The grey sky is a backdrop in the outdoors-region. The description is "Clouds piled beneath clouds -- the only skies you ever see. Moonlight, mostly obscured, tears a few rough edges into the billowing gray upheaval." 
Understand "gray" or "skies" or "cloud" or "clouds" as the sky. 
Instead of doing anything other than examining or zapping with the sky: 
	say "The sky will never come within your reach." 

Instead of going up in the upper-outdoors-region: 
	say "You are at the top of the tower." 

The upper-mansion is a backdrop in the upper-outdoors-region. The printed name is "mansion". The description is "The mansion is spread out below you. Its mountainous roof-peaks reach up, mirroring the dark billows of cloud above. You have become quite convinced that this house dislikes you." 
Understand "mansion" or "house" or "wing" or "wings" or "edifice" or "balcony" or "rail" or "rails" or "looming" or "darkened" or "roof" or "roof-peaks" or "roofline" or "rooflines" or "view" as the upper-mansion. 
Instead of entering the upper-mansion: 
	try going down. 

Some upper-towers are a backdrop in the upper-outdoors-region. The printed name is "towers". The description is "[upper-towers description]". 
Understand "towers" or "quincunx" or "center/central/northwest/northeast/southwest/southeast tower" or "center" or "central" as the upper-towers. 
To say upper-towers description: 
	if the location is the Central Tower begin; 
		say "Four towers stand above the mansion, surrounding this central one, in the hemicardinal directions. A bridge stretches to the [tower rotation] one."; 
		stop; 
	end if; 
	if the location is the Tight Rope begin; 
		say "Five towers stand above the mansion. You are midway between the two northernmost; the larger central tower is some distance to the south. You can see a bridge running from that central tower to the [tower rotation]."; 
		stop; 
	end if; 
	say "Four other towers stand above the mansion, to the"; 
	if location is North-West Tower, say " east, south, and (two) southeast"; 
	if location is North-East Tower, say " west, south, and (two) southwest"; 
	if location is South-West Tower, say " east, north, and (two) northeast"; 
	if location is South-East Tower, say " west, north, and (two) northwest"; 
	say ". The central tower of the quincunx is rather the largest"; 
	if tower rotation is the facing of the location, 
		say ". A bridge runs towards it"; 
	else 
		say ". You can see a bridge from it to the [tower rotation] tower"; 
	say "." 
Instead of doing anything other than examining with the upper-towers: 
	say "The towers are distant." 

A corner-tower is a kind of room. A corner-tower has a direction called the facing. 
The tower rotation is a direction which varies. The tower rotation is northwest. 

A tower-link is a kind of portal. The printed name is "bridge". The description is "[tower-link description]". 
A tower-link has a direction called the facing. 
To say tower-link description: 
	if the location is the Central Tower begin; 
		say "A narrow bridge stretches from here to the [tower rotation] tower."; 
		stop; 
	end if; 
	if the facing of the location is the tower rotation, 
		say "A narrow bridge stretches from here to the central tower."; 
	else 
		say "You can make out a bridge, spanning from the central tower to the [tower rotation] one. Not much good to you here, clearly." 
Understand "bridge" or "narrow" or "narrow bridge" as the tower-link-ne when the tower-link-ne is referrable. 
Understand "bridge" or "narrow" or "narrow bridge" as the tower-link-nw when the tower-link-nw is referrable. 
Understand "bridge" or "narrow" or "narrow bridge" as the tower-link-se when the tower-link-se is referrable. 
Understand "bridge" or "narrow" or "narrow bridge" as the tower-link-sw when the tower-link-sw is referrable. 
To decide whether (D - tower-link) is referrable: 
	if the location is not the Central Tower, decide yes; 
	if the facing of D is the tower rotation, decide yes; 
	decide no. 
Instead of climbing a tower-link: 
	try entering the noun. 

Rule for traversing a tower-link: 
	say "You traverse the bridge to..." 

Rule for traversing the tower-link-ne when the location is not Central Tower and the hallway-door is closed: 
	now the hallway-door is open; 
	notice the northeast-note; 
	say "You step onto the bridge and begin walking [opposite of facing of location]. You hear the distant clunk of a door opening as you approach..." 

Rule for traversing the tower-link-nw when the location is not Central Tower and the pantry-door is closed: 
	now the pantry-door is open; 
	notice the northwest-note; 
	say "You step onto the bridge and begin walking [opposite of facing of location]. You hear the distant thunk of a door opening as you approach..." 

Rule for traversing the tower-link-se when the location is not Central Tower and the library-door is closed: 
	now the library-door is open; 
	notice the southeast-note; 
	say "You step onto the bridge and begin walking [opposite of facing of location]. You hear the distant kerchunk of a door opening as you approach..." 

Rule for traversing the tower-link-sw when the location is not Central Tower and the the French doors inject the Conservatory: 
	reverse the garden doors; 
	notice the southwest-note; 
	say "You step onto the bridge and begin walking [opposite of facing of location]. You hear the distant sounds of two doors opening as you approach..." 

Rule for running into a tower-link (called D): 
	if the location is the Central Tower, 
		say "The bridge leads [tower rotation], not [facing of D]."; 
	else 
		say "There is no bridge from here to the central tower." 

To rotate the tower clockwise: 
	let newdir be northwest; 
	if the tower rotation is northwest, let newdir be northeast; 
	if the tower rotation is northeast, let newdir be southeast; 
	if the tower rotation is southeast, let newdir be southwest; 
	change the tower rotation to newdir. 

To rotate the tower counterclockwise: 
	let newdir be northeast; 
	if the tower rotation is northeast, let newdir be northwest; 
	if the tower rotation is northwest, let newdir be southwest; 
	if the tower rotation is southwest, let newdir be southeast; 
	change the tower rotation to newdir. 

To say bridge initial view: 
	if the facing of the location is the tower rotation begin; 
		if the location is the North-West Tower or the North-East Tower, 
			say "A narrow bridge extends towards you from the center tower. It runs right to your windowsill; you could easily climb out the [opposite of tower rotation] window."; 
		else 
			say "A narrow bridge extends towards you from the center tower. It runs right to the [opposite of tower rotation] edge of your roof."; 
	else; 
		say "A narrow bridge appears to extend from the center tower to the [tower rotation] one."; 
	end if. 

The North-West Tower is a corner-tower. The facing is northwest. The description is "...a tiny round wooden attic, no doubt built upon a battlement of the original mansion. Wide windows give an excellent view of the rooflines below, and the rumpled grey skies above.[break]You can make out other towers against the clouds -- there seems to be one at each corner of the house, and a larger one rising from its center. [bridge initial view][break]A rope, tied to the windowsill, stretches east towards an adjacent tower. [if floor level is two]A square section of hallway floor shows where you were elevated[otherwise]A square opening in the floor leads down into darkness[end if]." 

The nw-tower-opening is scenery in the North-West Tower. The printed name is "opening". The description is "[if floor level is two]Merely a square section of wooden floor.[otherwise]You can see nothing below.[end if]". 
Understand "floor" or "square" or "opening" or "hole" or "section" or "hallway" or "hall" as the nw-tower-opening. 
Instead of entering the nw-tower-opening: 
	if the floor level is two, 
		say "Standing on the floor-section produces no interesting reaction."; 
	else 
		say "You would normally be untroubled by a fall into a tower. But this elevating mechanism is a configurational knot -- a notion in the house's mind -- not a physical mechanism. (Who would be absurd enough to build such a thing for real?) You could very well fall forever." 
Instead of climbing the nw-tower-opening: 
	try entering the nw-tower-opening. 
Instead of going down in the North-West Tower: 
	try entering the nw-tower-opening. 
Instead of searching the nw-tower-opening: 
	try examining the nw-tower-opening. 

The tower-link-nw is a tower-link. The facing is northwest. The tower-link-nw is southeast of the North-West Tower and northwest of the Central Tower. 

The North-East Tower is a corner-tower. The facing is northeast. The description is "...a conical garret. Its windows look out over the rest of the mansion.[break]There is a round opening in the floor; the mansion's back corridor is visible below. You could drop down with no trouble[if first trying northeast-tower-oneshot], but to get back here, you'd have to take the long way around[end if].[break]The other four towers are outlined against the dark skies. [bridge initial view][break]A rope, tied to the windowsill, stretches west towards an adjacent tower." 
The northeast-tower-oneshot is a oneshot. 

The tower-link-ne is a tower-link. The facing is northeast. The tower-link-ne is southwest of the North-East Tower and northeast of the Central Tower. 

The South-West Tower is a corner-tower. The facing is southwest. The description is "...which is topped by a wooden structure, barely more than a lean-to. The mansion's roofs spread out below.[break]A stairway descends into the tower.[break][bridge initial view]" 

The tower-link-sw is a tower-link. The facing is southwest. The tower-link-sw is northeast of the South-West Tower and southwest of the Central Tower. 

The South-East Tower is a corner-tower. The facing is southeast. The description is "...which ends in a bare stone platform. There is no way down.[break][bridge initial view]" 

The tower-link-se is a tower-link. The facing is southeast. The tower-link-se is northwest of the South-East Tower and southeast of the Central Tower. 
Instead of going down in the South-East Tower: 
	say "There is no way down into the house from here." 

The Central Tower is a room. The description is "...atop which is a graceful open-walled pavilion -- a gazebo in the sky, if you like. Not that the sky is a pleasant prospect at the moment.[break]Stairs descend within the tower.[break]You can see the four other towers of the mansion surrounding you. A narrow bridge extends across the windy gap to the [tower rotation] tower." 

Instead of going north in the Central Tower: 
	say "The bridge leads [tower rotation], not north." 
Instead of going south in the Central Tower: 
	say "The bridge leads [tower rotation], not south." 
Instead of going east in the Central Tower: 
	say "The bridge leads [tower rotation], not east." 
Instead of going west in the Central Tower: 
	say "The bridge leads [tower rotation], not west." 

A rope-link is a kind of portal. The printed name is "[if location is Tight Rope][facing]ern [end if]rope". The description is "[description of rope-link facing of item described]". 
A rope-link has a direction called the facing. 
To say description of rope-link (F - direction): 
	if the location is Tight Rope, 
		say "The rope stretches towards the tower to the [F]."; 
	else 
		say "The rope is tied to the windowsill. It stretches away into the dark sky, to the [opposite of F], towards the adjacent north[opposite of F] tower. It's quite taut; you could walk along it with no trouble at all." 
Understand "tight" or "taut" or "rope" or "tightrope" as a rope-link. 
Understand "eastern" as the rope-link-e when the location is the Tight Rope. 
Understand "western" as the rope-link-w when the location is the Tight Rope. 
Instead of climbing a rope-link (called RL): 
	try entering the RL. 
Rule for traversing a rope-link (called RL): 
	let dir be east; 
	let underfoot be zero; 
	let dest be the Tight Rope; 
	if the location is North-East Tower, let dir be west; 
	if the location is the Tight Rope begin; 
		if RL is rope-link-w, let dir be west; 
		if RL is rope-link-w, let dest be the North-West Tower; 
		else let dest be the North-East Tower; 
	end if; 
	if dir is east begin; 
		rotate the tower clockwise; 
		if the tower rotation is northeast, let underfoot be one; 
	else; 
		rotate the tower counterclockwise; 
		if the tower rotation is northwest, let underfoot be one; 
	end if; 
	real-notice the bridge-note; 
	if the location is the Tight Rope, 
		say "As you stride along the rope"; 
	else 
		say "You hop lightly onto the sill, step onto the rope, and stride [dir]wards. As you move"; 
	say ", the central tower revolves [if dir is east]clockwise[otherwise]counterclockwise[end if] with a ponderous rumble"; 
	if first trying see-tower-oneshot, 
		say ".[break]The bridge, attached as it is to the tower, revolves [if dir is east]clockwise[otherwise]counterclockwise[end if] as well. It"; 
	else 
		say ". The bridge"; 
	if underfoot is one, say " passes swiftly under your feet, and"; 
	say " is now pointing at the [tower rotation] tower"; 
	if dest is the Tight Rope begin; 
		say ". You stop in the middle of"; 
	else; 
		if the facing of the dest is the tower rotation, say "; you follow it to"; 
		else say ". The rope, however, takes you to"; 
	end if; 
	say "..." 
The see-tower-oneshot is a oneshot. 

The Tight Rope is a room. The description is "...which is stretched between two towers, to the east and west. Most people would call this a desperate and precarious perch above certain death. You find the view, and the gusty wind, refreshing." 

The rope-link-w is a rope-link. The facing is west. The rope-link-w is west of the Tight Rope and east of the North-West Tower. 
The rope-link-e is a rope-link. The facing is east. The rope-link-e is east of the Tight Rope and west of the North-East Tower. 

Instead of going up in the Tight Rope: 
	say "That would be quite a rope trick." 
Instead of going down in the Tight Rope: 
	say "You would rather reach one of the towers before descending." 
Instead of going nowhere from the Tight Rope: 
	say "East and west would seem to be your options." 

Instead of jumping in the Tight Rope: 
	say "You bounce a few times, but it really doesn't suit you." 

The rope-bridge is scenery in the Tight Rope. The printed name is "bridge". The description is "You can see a bridge running from the central tower to the [tower rotation] one." 
Understand "bridge" or "narrow" or "narrow bridge" as the rope-bridge. 
Instead of doing anything other than examining with the rope-bridge: 
	say "The bridge is nowhere near your perch." 

The wind is scenery in the Tight Rope. The description is "Smell that air." 
Understand "gusty" or "air" as the wind. 
Instead of smelling the wind: 
	say "Wonderful!" 
Instead of smelling the Tight Rope: 
	try smelling the wind. 

Section - Final Footnote 

The Not Really A Room is a room. The description is "(BUG) You should not be here." 

Chapter - Sets 

The Ending is a scene. 
The Ending begins when the legacy-intent is in the Courtyard and the Ending has not happened. 

When Ending begins: 
	now the French doors are open; 
	now the small door is open; 
	now the trap door is open; 
	now the wooden door is open; 
	now the pantry-door is open; 
	now the hallway-door is open; 
	now the library-door is open; 
	now the front door is open; 
	now the secret-shelf-door is open; 
	now the foyer-grate-north is open; 
	now the foyer-grate-west is open; 
	now the floor level is 1; 
	now the Courtyard is revisited; 
	invoke the intro-set-1; 
	invoke the intro-set-2; 
	invoke the intro-set-3; 
	invoke the intro-set-4; 
	invoke the intro-set-5; 
	invoke the drinks-set-1; 
	say "Probabilities shift and solidify. The [italic type]dramatis personae,[roman type] you sense, are now certain to arrive. You should return to the house (which should now be much less obstreperous) to consider their intentions." 

The Ending ends when the living count is 0. 

When Ending ends: 
	say "[break]"; 
	say notes recitation of deaths; 
	say "[break]Which brings this assignment to a timely, if somewhat exhausting, close. No rest for the messenger, of course. The next pack of cards is already being shuffled, and their road has yet to be paved..."; 
	end the game in victory. 

Section - Basics 

A color is a kind of value. The colors are teal, amber, violet, crimson, indigo, maroon, azure, lime, beige, coral, topaz, and white. 

An intention is a kind of thing. Intentions are always tractable. 
An intention has a color. Intentions are usually white. The description of an intention is usually "[describe-intention the item described]". The initial appearance of an intention is usually "[describe-intention the item described]". 
Understand "intent" or "intention" or "sphere" or "flash" or "light" as an intention. Understand the color property as describing intentions. 

After printing the name of an intention (called IN) while taking inventory: 
	say " ([color of IN])". 

Instead of taking an intention: 
	if the noun is part of something (called parent), 
		change the current target to the parent; 
	else 
		change the current target to the location of the noun; 
	try importing the noun from the current target. 

Importing it from is an action applying to two visible things. 
Check importing it from: 
	if the player has the noun, 
		instead say "You have taken that already." 
Carry out importing it from: 
	move the noun to the player; 
	change the visible invocations to zero; 
	change the visible uninvocations to zero; 
	carry out the extracting activity with the noun; 
	if the visible invocations is zero begin; 
		if the visible uninvocations is zero, 
			say "Taken."; 
		else 
			say "Taken. The intention's consequences fade."; 
	end if. 

Instead of dropping an intention when the noun is carried: 
	change the current target to the location; 
	if nottrue committable noun begin; 
		carry out the noncommitting activity with noun; 
		stop the action; 
	end if; 
	move the noun to the current target; 
	change the visible invocations to zero; 
	change the visible uninvocations to zero; 
	carry out the committing activity with noun; 
	if visible invocations is zero, 
		say default commit of noun. 

Instead of putting an intention on something when the noun is carried: 
	if the second noun is the player, 
		instead say "No one here knows you exist. You are merely a temporary vessel for their intentions."; 
	if the second noun is an intention, 
		instead say "How amusingly abstract."; 
	change the current target to the second noun; 
	if nottrue committable noun begin; 
		carry out the noncommitting activity with noun; 
		stop the action; 
	end if; 
	now the noun is part of the current target; 
	change the visible invocations to zero; 
	change the visible uninvocations to zero; 
	carry out the committing activity with noun; 
	if visible invocations is zero, 
		say default commit of noun. 

Instead of inserting an intention into something when the noun is carried: 
	try putting the noun on the second noun. 

Instead of giving an intention to something when the noun is carried: 
	try putting the noun on the second noun. 

To decide whether committable (IN - intention): 
	change current acceptability to zero; 
	carry out the checking acceptability activity with IN; 
	if the current acceptability is not zero, decide yes; 
	decide no. 

The current intention is an intention which varies. 
The current target is an object which varies. 
The current acceptability is a number which varies. 
The visible invocations is a number which varies. 
The visible uninvocations is a number which varies. 
Extracting something is an activity. 
Checking acceptability something is an activity. 
Committing something is an activity. 
Noncommitting something is an activity. 
Describing something is an activity. 

The null-intent is an intention. 

To accept target (O - object): 
	if O is the current target, change the current acceptability to one. 

Rule for noncommitting something (this is the noncommital rule): 
	if the current target is an Inform library animate object begin; 
		if the current target acts plural begin; 
			say "They are not the best recipients"; 
		else; 
			if current target is female, say "She"; 
			else say "He"; 
			say " is not the best recipient"; 
		end if; 
		say " -- at least, not here."; 
		stop; 
	end if; 
	if the current target is a room, 
		say "This is not the best place."; 
	else 
		say "That is not the best place." 

To say default commit of (IN - intention): 
	if the current target is a room, 
		say "You release [the IN]."; 
	else 
		say "You place [the IN] on [the current target]." 

Rule for writing a paragraph about an intention (called INT): 
	say describe-intention INT. 

To say describe-intention (INT - intention): 
	change the current intention to INT; 
	if INT is part of something (called the item), 
		change the current target to the item; 
	else 
		change the current target to the location of INT; 
	carry out the describing activity with INT. 
Rule for describing an intention: 
	say default describe-intention. 
To say default describe-intention: 
	if the current target is not a room, 
		say "[The current intention] is within [the current target]."; 
	else 
		say "[The current intention] is here." 

A set-piece is a kind of thing. A set-piece is always fixed in place. The initial appearance of a set-piece is always "[appearance of piece the item described]". 
The description of a set-piece is usually "(BUG) [item described]." 
A set-piece has a room called the destination. 

To say appearance of piece (O - object): 
	say "[description of O]"; 
	if an intention (called IN) is part of O begin; 
		if IN shows up by O, 
			say "[break][describe-intention IN]"; 
	end if. 

To note local intentions: 
	repeat with item running through intentions begin; 
		if item is part of something (called P) begin; 
			if P is the player, next repetition; 
			if the P is a set-piece, next repetition; 
			if P is in location and item shows up by P, 
				say describe-intention item; 
		end if; 
	end repeat. 

To decide whether (INT - intention) shows up by (O - object): 
	if O is the well, decide no; 
	if O is the woodstove, decide no; 
	if O is the chandelier, decide no; 
	if O is the smooch-set-2-lady begin; 
		if the smooch-set-3-lady is in the location, 
			decide no; 
	end if; 
	if O is the smooch-set-2-cousin begin; 
		if the smooch-set-3-cousin is in the location, 
			decide no; 
	end if; 
	if O is the smooch-set-2-butler begin; 
		if the smooch-set-3-butler is in the location, 
			decide no; 
	end if; 
	decide yes. 

To say note (INT - intention): 
	say "[italic type]([ellipsis][the INT][ellipsis])[roman type]". 

To invoke (S - set-piece), reversed: 
	let R be the destination of S; 
	if S is in R, stop; 
	if reversed begin; 
		move S to R; 
	else; 
		now all set-pieces in R are in the intention-buffer; 
		move S to R; 
		now all set-pieces in the intention-buffer are in R; 
	end if; 
	if the location is R begin; 
		if the visible invocations is not zero, say line break; 
		say appearance of piece S; 
		increase the visible invocations by one; 
	end if. 

To uninvoke (S - set-piece): 
	if the location encloses S, 
		increase the visible uninvocations by one; 
	remove S from play. 

The intention-buffer is a container. 

Section - Dramatis Personae 

An archetype is a kind of person. An archetype can be male or female. 

An archetype can be alive or dead. An archetype is usually alive. 
An archetype has an intention called the fate. The fate of an archetype is usually the null-intent. 

Viscount is a male archetype. The printed name is "Viscount R__". 
Madame is a female archetype. The printed name is "Madame C__". 
Cousin is a male archetype. The printed name is "Cousin J__". 
Lady is a female archetype. The printed name is "Lady F__". 
Butler is a male archetype. The printed name is "Mr P__". 
Boy is a male archetype. The printed name is "Young Lord M__". 
Girl is a female archetype. The printed name is "Little V__". 

The living count is a number which varies. The living count is seven. 

To mark (A - archetype) alive: 
	now the fate of A is the null-intent; 
	if A is dead begin; 
		now A is alive; 
		increase the living count by one; 
	end if. 
To mark (A - archetype) dead by (N - intention): 
	now the fate of A is N; 
	if A is alive begin; 
		now A is dead; 
		decrease the living count by one; 
	end if. 

To measure life of (A - archetype): 
	stop. 

To measure life of Viscount: 
	if the stealth-intent is part of the dining-set-1-viscount begin; 
		mark Viscount dead by stealth-intent; 
		uninvoke poker-set-1; 
		uninvoke poker-set-2; 
		uninvoke ring-set-3-viscount; 
		uninvoke rat-set-3-viscount; 
		uninvoke smooch-set-3-cousin; 
		invoke knife-set-1-viscount; 
		stop; 
	end if; 
	if the melee-intent is part of the chandelier begin; 
		mark Viscount dead by melee-intent; 
		uninvoke poker-set-1; 
		uninvoke rat-set-3-viscount; 
		uninvoke ring-set-3-viscount; 
		uninvoke knife-set-1-viscount; 
		uninvoke smooch-set-3-cousin; 
		invoke poker-set-2; 
		stop; 
	end if; 
	if the melee-intent is part of the intro-set-1, 
		uninvoke poker-set-1; 
	else 
		invoke poker-set-1; 
	uninvoke poker-set-2; 
	uninvoke knife-set-1-viscount; 
	if the melee-intent is part of the smooch-set-2-cousin begin; 
		mark Viscount dead by melee-intent; 
		uninvoke rat-set-3-viscount; 
		uninvoke ring-set-3-viscount; 
		invoke smooch-set-3-cousin; 
		stop; 
	end if; 
	if the toxic-intent is part of the drinks-set-3-scotch begin; 
		mark Viscount dead by toxic-intent; 
		uninvoke ring-set-3-viscount; 
		uninvoke smooch-set-3-cousin; 
		invoke rat-set-3-viscount; 
		stop; 
	end if; 
	if the chemic-intent is part of the drinks-set-2-scotch begin; 
		mark Viscount dead by chemic-intent; 
		uninvoke rat-set-3-viscount; 
		uninvoke smooch-set-3-cousin; 
		invoke ring-set-3-viscount; 
		stop; 
	end if; 
	mark Viscount alive; 
	uninvoke rat-set-3-viscount; 
	uninvoke ring-set-3-viscount; 
	uninvoke smooch-set-3-cousin. 

To measure life of Cousin: 
	if the melee-intent is part of the smooch-set-2-cousin 
		and the stealth-intent is not part of the dining-set-1-viscount begin; 
		mark Cousin dead by melee-intent; 
		uninvoke rat-set-3-cousin; 
		uninvoke ring-set-3-cousin; 
		invoke smooch-set-3-cousin; 
		stop; 
	end if; 
	if the toxic-intent is part of the drinks-set-3-martini begin; 
		mark Cousin dead by toxic-intent; 
		uninvoke ring-set-3-cousin; 
		uninvoke smooch-set-3-cousin; 
		invoke rat-set-3-cousin; 
		stop; 
	end if; 
	if the chemic-intent is part of the drinks-set-2-martini begin; 
		mark Cousin dead by chemic-intent; 
		uninvoke rat-set-3-cousin; 
		uninvoke smooch-set-3-cousin; 
		invoke ring-set-3-cousin; 
		stop; 
	end if; 
	mark Cousin alive; 
	uninvoke rat-set-3-cousin; 
	uninvoke ring-set-3-cousin; 
	uninvoke smooch-set-3-cousin. 

To measure life of Madame: 
	if the stealth-intent is part of the dining-set-1-madame begin; 
		mark Madame dead by stealth-intent; 
		uninvoke ring-set-3-madame; 
		uninvoke rat-set-3-madame; 
		uninvoke device-set-4-madame; 
		invoke knife-set-1-madame; 
		stop; 
	end if; 
	if the toxic-intent is part of the drinks-set-3-sherry begin; 
		mark Madame dead by toxic-intent; 
		uninvoke ring-set-3-madame; 
		uninvoke knife-set-1-madame; 
		uninvoke device-set-4-madame; 
		invoke rat-set-3-madame; 
		stop; 
	end if; 
	if the chemic-intent is part of the drinks-set-2-sherry begin; 
		mark Madame dead by chemic-intent; 
		uninvoke rat-set-3-madame; 
		uninvoke knife-set-1-madame; 
		uninvoke device-set-4-madame; 
		invoke ring-set-3-madame; 
		stop; 
	end if; 
	if the oscillic-intent is part of the intro-set-1-madame begin; 
		mark Madame dead by oscillic-intent; 
		uninvoke knife-set-1-madame; 
		uninvoke rat-set-3-madame; 
		uninvoke ring-set-3-madame; 
		invoke device-set-4-madame; 
		stop; 
	end if; 
	mark Madame alive; 
	uninvoke knife-set-1-madame; 
	uninvoke rat-set-3-madame; 
	uninvoke ring-set-3-madame; 
	uninvoke device-set-4-madame. 

To measure life of Lady: 
	if the stealth-intent is part of the dining-set-1-lady begin; 
		mark Lady dead by stealth-intent; 
		uninvoke rat-set-3-lady; 
		uninvoke smooch-set-3-lady; 
		uninvoke art-set-3-lady; 
		invoke knife-set-1-lady; 
		stop; 
	end if; 
	if the melee-intent is part of the smooch-set-2-lady begin; 
		mark Lady dead by melee-intent; 
		uninvoke knife-set-1-lady; 
		uninvoke rat-set-3-lady; 
		uninvoke art-set-3-lady; 
		invoke smooch-set-3-lady; 
		stop; 
	end if; 
	if the berserk-intent is part of the art-set-2-lady begin; 
		mark Lady dead by berserk-intent; 
		uninvoke knife-set-1-lady; 
		uninvoke rat-set-3-lady; 
		uninvoke smooch-set-3-lady; 
		invoke art-set-3-lady; 
		stop; 
	end if; 
	if the toxic-intent is part of the drinks-set-3-cocktail begin; 
		mark Lady dead by toxic-intent; 
		uninvoke knife-set-1-lady; 
		uninvoke smooch-set-3-lady; 
		uninvoke art-set-3-lady; 
		invoke rat-set-3-lady; 
		stop; 
	end if; 
	mark Lady alive; 
	uninvoke knife-set-1-lady; 
	uninvoke rat-set-3-lady; 
	uninvoke smooch-set-3-lady; 
	uninvoke art-set-3-lady. 

To measure life of Butler: 
	if the stealth-intent is part of the dining-set-1-butler begin; 
		mark Butler dead by stealth-intent; 
		uninvoke smooch-set-3-butler; 
		uninvoke art-set-3-butler; 
		invoke knife-set-1-butler; 
		stop; 
	end if; 
	if the melee-intent is part of the smooch-set-2-butler begin; 
		mark Butler dead by melee-intent; 
		uninvoke knife-set-1-butler; 
		uninvoke art-set-3-butler; 
		invoke smooch-set-3-butler; 
		stop; 
	end if; 
	if the berserk-intent is part of the art-set-2-viscount begin; 
		mark Butler dead by berserk-intent; 
		uninvoke knife-set-1-butler; 
		uninvoke smooch-set-3-butler; 
		invoke art-set-3-butler; 
		stop; 
	end if; 
	mark Butler alive; 
	uninvoke knife-set-1-butler; 
	uninvoke smooch-set-3-butler; 
	uninvoke art-set-3-butler. 

To measure life of Boy: 
	if the bacchanal-intent is in the North-West Tower begin; 
		mark Boy dead by bacchanal-intent; 
		uninvoke the intro-set-4; 
		invoke wire-set-3; 
		invoke wire-set-4; 
	else; 
		mark Boy alive; 
		invoke the intro-set-4; 
		uninvoke wire-set-3; 
		uninvoke wire-set-4; 
	end if; 

To measure life of Girl: 
	if the ringing-intent is part of the well begin; 
		mark Girl dead by ringing-intent; 
		invoke well-set-4; 
		uninvoke well-set-5; 
		stop; 
	end if; 
	if the ringing-intent is part of the woodstove begin; 
		mark Girl dead by ringing-intent; 
		invoke well-set-5; 
		uninvoke well-set-4; 
		stop; 
	end if; 
	mark Girl alive; 
	uninvoke well-set-5; 
	uninvoke well-set-4; 

A set-piece-viscount is a kind of set-piece. The printed name is usually "[Viscount]". A set-piece-viscount is always Inform library male. A set-piece-viscount is always Inform library animate object. 
The description is usually "[Viscount] is an imposingly tall figure with an even more imposing beard -- bushy, black, and ostentatious. He carries his duelling poker with him at all times." 
Understand "r" or "r_" or "r__" or "r-" or "r--" or "viscount" or "man" or "beard" or "duelling" or "poker" as a set-piece-viscount. 

A set-piece-madame is a kind of set-piece. The printed name is usually "[Madame]". A set-piece-madame is always female. A set-piece-madame is always Inform library animate object. 
The description is usually "[Madame] is slender and regal. Her hair is an impeccable silver bun, but it is belied by the intense glitter in her eye. She smokes a black Russian cigar without apology." 
Understand "c" or "c_" or "c__" or "c-" or "c--" or "madame" or "woman" or "bun" or "russian" or "cigar" as a set-piece-madame. 

A set-piece-cousin is a kind of set-piece. The printed name is usually "[Cousin]". A set-piece-cousin is always Inform library male. A set-piece-cousin is always Inform library animate object. 
The description is usually "[Cousin] is a fair-haired young gentleman. He affects a thin moustache and a monocle, through which he peers at the world with private amusement." 
Understand "j" or "j_" or "j__" or "j-" or "j--" or "cousin" or "man" or "mustache" or "moustache" or "monocle" as a set-piece-cousin. 

A set-piece-lady is a kind of set-piece. The printed name is usually "[Lady]". A set-piece-lady is always female. A set-piece-lady is always Inform library animate object. 
The description is usually "[Lady] is a young lady with modishly short hair and a modishly long cigarette holder. Her pearls do not match her silk wrap, but are expensive enough that it doesn't matter." 
Understand "f" or "f_" or "f__" or "f-" or "f--" or "lady" or "woman" or "cigarette" or "holder" or "pearls" or "silk" or "wrap" as a set-piece-lady. 

A set-piece-butler is a kind of set-piece. The printed name is usually "[Butler]". A set-piece-butler is always Inform library male. A set-piece-butler is always Inform library animate object. 
The description is usually "[Butler], the butler, is a iron-grey, muscular man of middle years." 
Understand "p" or "p_" or "p__" or "p-" or "p--" or "mr" or "mister" or "butler" or "man" or "muscular" as a set-piece-butler. 

A set-piece-boy is a kind of set-piece. The printed name is usually "[Boy]". A set-piece-boy is always Inform library male. A set-piece-boy is always Inform library animate object. 
The description is usually "[Boy] is a well-dressed child of twelve." 
Understand "m" or "m_" or "m__" or "m-" or "m--" or "boy" or "young" or "lord" as a set-piece-boy. 

A set-piece-girl is a kind of set-piece. The printed name is usually "[Girl]". A set-piece-girl is always female. A set-piece-girl is always Inform library animate object. 
The description is usually "[Girl] is a girl-child of perhaps eight." 
Understand "v" or "v_" or "v__" or "v-" or "v--" or "girl" or "little" or "child" or "girl-child" as a set-piece-girl. 

A set-piece-device is a kind of set-piece. The printed name is usually "curious device". 
Understand "unusual" or "curious" or "device" or "feather" or "feathers" or "tentacle" or "electrophor" or "gel" as a set-piece-device. 

Section - Legacy 

The legacy-intent is a violet intention. The printed name is "legacy intention". The description is "[legacy-intent description]". 
Understand "legacy" or "weyrd" as the legacy-intent. 
The legacy-intent is in the Rarely-Used Room. 
To say legacy-intent description: 
	if first trying the examine-intent-oneshot begin; 
		say "It's an intention.[break]Oh, then, let us say that it is a sphere of radiating light -- like a crystal snow-globe which has exploded, an infinitesimal moment ago, and then frozen -- exactly the size of a racketball. Let us say that it is violet.[break]What it [italic type]is,[roman type] is an intention: the intention of a group of people to come to this house, to drink wine and play music; to laugh lightly and converse; to indulge their whims; to tear the place apart looking for the Weyrd Legacy. This is what you've been looking for[if the legacy-intent is not handled]. You'd better take it along[end if]."; 
		stop; 
	end if; 
	say "It's the intention of many people to come to this house, all professing different reasons, but all in search of the Weyrd Legacy. It is violet in color."; 
	if the Ending has not happened begin; 
		if the legacy-intent is not handled, 
			say "[break](Intentions are not material. You can pick them up and carry them where you wish to place them.)"; 
		if the legacy-intent is handled and the location is not the Courtyard, 
			say "[break](The legacy intent would serve best outside, in the courtyard.)"; 
	end if. 

Rule for describing the legacy-intent: 
	if the current target is the Rarely-Used Room, 
		instead say "An intention, buried in the rubbish, catches your eye. Ah! It's a legacy intention."; 
	if the current target is the Courtyard, 
		instead say "The legacy intent shines violet, drawing the players to this place."; 
	say default describe-intention. 

Rule for checking acceptability of the legacy-intent: 
	accept target Courtyard. 

Rule for noncommitting the legacy-intent: 
	if the current target is the Whimzy Garden, 
		instead say "No, no. The main courtyard, outside."; 
	abide by the noncommital rule. 

After taking the legacy-intent: 
	say "Taken."; 
	if first trying the take-intent-oneshot, 
		say "[break]Now, the best place for this would be... the courtyard, most likely. That would be the immediate destination for anyone with this intent[if the Courtyard is not revisited]. You'll have to get back outside, of course...[otherwise].[end if][break]". 
Check importing the legacy-intent from when the Ending has happened: 
	instead say "The guests have arrived; this intention is serving its purpose here." 
The examine-intent-oneshot is a oneshot. 
The take-intent-oneshot is a oneshot. 

Section - Introductions 

The intro-set-1 is a set-piece. The printed name is "group". The destination is the Sitting Room. 
The description is "[Viscount], [Madame], [Cousin], and [Lady] will stand here[if intro-set-1 is not discovered], eyeing each other in uncomfortable silence. They will be unable to offer any topic of conversation other than their transparent excuses for coming to this place[otherwise], engaged in animated conversation -- on every topic except the Weyrd Legacy. Their faces will be genial, their eyes predatory[end if]." 
Understand "group" or "people" or "guests" as intro-set-1. 
The intro-set-1 can be discovered. The intro-set-1 is not discovered. 
Intro-set-1-viscount is a set-piece-viscount. Intro-set-1-viscount is part of the intro-set-1. 
Intro-set-1-madame is a set-piece-madame. Intro-set-1-madame is part of the intro-set-1. 
Intro-set-1-cousin is a set-piece-cousin. Intro-set-1-cousin is part of the intro-set-1. 
Intro-set-1-lady is a set-piece-lady. Intro-set-1-lady is part of the intro-set-1. 

Intro-set-2 is a set-piece-boy. The destination is the Foyer. 
The description is "[Boy] will be swinging acrobatically on the arms of the coat tree." 
Carry out examining the intro-set-2: 
	instead say "[Boy] is a well-dressed child of twelve. He will be engaged in ruining his expensive tailoring through unsupervised aerobatics." 

Intro-set-3 is a set-piece-girl. The destination is the Conservatory. 
The description is "[Girl] will sit in a corner, absorbed by the tinkling of the tiny silver bell she will be playing with." 
Understand "tiny" or "silver" or "bell" as the intro-set-3. 
Carry out examining the intro-set-3: 
	instead say "[Girl] is a girl-child of perhaps eight. She will sit in a corner, absorbed by the tinkling of the tiny silver bell she will be playing with." 

Intro-set-4 is a set-piece-boy. The destination is the North-West Tower. 
The description is "[Boy] will lean against the windowsill, staring distraughtly at vague shapes of the towers." 
Carry out examining the intro-set-4: 
	instead say "[Boy] is a well-dressed child of twelve. He will be engaged in a moody torpor." 

The intro-set-5 is a set-piece. The printed name is "flicker". The destination is the Dining Room. 
The description is "[The Electrical Chandelier] will flicker, plunging the room into darkness for a few moments. Then light will return." 
Understand "flicker" or "dark" or "darkness" as the intro-set-5. 

The dining-set-1 is a set-piece. The printed name is "group". The destination is the Dining Room. 
The description is "Everyone will be sitting down to dine. [Viscount] will rule the table's head; [Madame] and [Lady] will exchange artless chatter as [Cousin] offers witty barbs. [Boy] and [Girl] will be seen and not heard. [Butler] will bring forth courses with silent efficiency." 
Understand "group" or "people" or "guests" as dining-set-1. 
Dining-set-1-viscount is a set-piece-viscount. Dining-set-1-viscount is part of the dining-set-1. 
Dining-set-1-madame is a set-piece-madame. Dining-set-1-madame is part of the dining-set-1. 
Dining-set-1-cousin is a set-piece-cousin. Dining-set-1-cousin is part of the dining-set-1. 
Dining-set-1-lady is a set-piece-lady. Dining-set-1-lady is part of the dining-set-1. 
Dining-set-1-butler is a set-piece-butler. Dining-set-1-butler is part of the dining-set-1. 
Dining-set-1-boy is a set-piece-boy. Dining-set-1-boy is part of the dining-set-1. 
Dining-set-1-girl is a set-piece-girl. Dining-set-1-girl is part of the dining-set-1. 

Section - Music 

The music-intent is a teal intention. The printed name is "musical intention". The description is "[description of music-intent]". 
Understand "music" or "musical" as the music-intent. 
The music-intent is part of the intro-set-1. 

To say description of music-intent: 
	if the music-intent is part of something (called target) and the target is not the intro-set-1 begin; 
		say "The [music-intent] has been placed in [the target]. "; 
		carry out the describing activity with the music-intent; 
		stop; 
	end if; 
	say "[Viscount] imagines that a touch of music might break the ice." 

Rule for describing the music-intent: 
	if the current target is the intro-set-1, 
		instead say "A musical intention hangs within the Viscount. It is teal."; 
	if the current target is the piano, 
		instead say "The dustcloth will be folded back [note music-intent], and the Viscount will entertain his guests with a mild rondelay."; 
	if the current target is the metronomes, 
		instead say "The Viscount will be gleefully showing off [note music-intent] his prize metronome, to the delight of all."; 
	if the current target is the Victrola, 
		instead say "The Victrola will have been started [note music-intent], and the room will be filled with the scratchy strains of elegant days."; 
	say default describe-intention. 

Rule for extracting the music-intent: 
	if the current target is not the intro-set-1 begin; 
		increase visible invocations by 1; 
		say "Taken. The intention's immediate consequences fade, although the greater potential of the house remains."; 
		stop; 
	end if. 

Rule for checking acceptability of the music-intent: 
	accept target piano; 
	accept target metronomes; 
	accept target Victrola. 

Rule for noncommitting the music-intent: 
	if the current target is the Conservatory, 
		instead say "This is the right location, of course. But the Viscount's intentions are probably more specific. You consider what you might place the musical intention into."; 
	if the current target is the intro-set-3, 
		instead say "The tiny silver bell is certainly musical, but you doubt it would serve to entertain the entire household."; 
	if the current target is female, 
		instead say "She doesn't sing that well."; 
	if the current target is Inform library male, 
		instead say "He doesn't sing that well."; 
	abide by the noncommital rule. 

Rule for committing the music-intent: 
	carry out the describing activity with the music-intent; 
	if the intro-set-1 is discovered begin; 
		increase visible invocations by 1; 
		stop; 
	end if; 
	now the intro-set-1 is discovered; 
	invoke the dining-set-1, reversed; 
	invoke the well-set-1; 
	invoke the well-set-2; 
	invoke the wire-set-1; 
	now the melee-intent is part of the intro-set-1; 
	invoke the ring-set-1; 
	invoke the rat-set-1; 
	invoke the drinks-set-2; 
	uninvoke the drinks-set-1; 
	invoke the drinks-set-3; 
	invoke the device-set-1; 
	move the artistic-intent to the Library; 
	invoke the smooch-set-1-butler; 
	invoke the smooch-set-1-cousin; 
	invoke the smooch-set-1-lady; 
	invoke the smooch-set-1-madame; 
	increase visible invocations by 1; 
	say "[break]You feel the possibilities solidify further. There should be plenty of potential now, distributed through the rooms of the house.[break]" 

Section - The Well 

Well-set-1 is a set-piece-girl. The destination is Eastern Hallway. 
The description is "[Girl] will run down the hall, frantically searching for something she has lost." 
Carry out examining the well-set-1: 
	instead say "[Girl] is a girl-child of perhaps eight. She will run down the hall, frantically searching for something she has lost." 

Well-set-2 is a set-piece-cousin. The destination is the North-East Tower. 
The description is "[Cousin] will be lounging provocatively by a window. His eyes will be lost in thought, if not unaware of the allure of his pose." 

Well-set-3 is a set-piece-cousin. The destination is the North-East Tower. 
The description is "[Cousin] will glance down, and notice -- gracious -- a small silver bell lying on the ground. He will pick it up with a thoughtful air." 
Understand "small" or "silver" or "bell" as the well-set-3. 

The well-set-4 is a set-piece. The destination is the Garden. 
The description is "[description of Well-set-4-cousin][break][description of Well-set-4-girl]". 
Well-set-4-cousin is a set-piece-cousin. Well-set-4-cousin is part of the well-set-4. 
The description is "[Cousin] will wander through the garden. As he passes by the well, the silver bell will slip from his fingers." 
Well-set-4-girl is a set-piece-girl. Well-set-4-girl is part of the well-set-4. 
The description is "Later, [Girl] will be found floating, pale and still, in the well. The bell [note ringing-intent] will be dimly visible beneath the water's surface." 
Understand "small" or "silver" or "bell" as the well-set-4-girl. 

The well-set-5 is a set-piece. The destination is the Kitchen. 
The description is "[description of Well-set-5-cousin][break][description of Well-set-5-girl]". 
Well-set-5-cousin is a set-piece-cousin. Well-set-5-cousin is part of the well-set-5. 
The description is "[Cousin] will wander through the garden. As he passes by the woodstove, the silver bell will slip from his fingers." 
Well-set-5-girl is a set-piece-girl. Well-set-5-girl is part of the well-set-5. 
The description is "Later, [Girl] will be found, dead of heat-exhaustion, by the woodstove. A small puddle of silver [note ringing-intent] will be visible near the stove's rear vent." 
Understand "small" or "silver" or "puddle" as the well-set-5-girl. 

The ringing-intent is an amber intention. The printed name is "ringing intention". The description is "[description of ringing-intent]". 
Understand "chime" or "ringing" as the ringing-intent. 
The ringing-intent is part of the well-set-2. 

To say description of ringing-intent: 
	if the ringing-intent is part of the well-set-2 begin; 
		say "[Cousin] has not yet noticed something shining on the ground."; 
		stop; 
	end if; 
	if the ringing-intent is part of the well begin; 
		say description of the well-set-4-girl; 
		stop; 
	end if; 
	if the ringing-intent is part of the woodstove begin; 
		say description of the well-set-5-girl; 
		stop; 
	end if; 
	say "[Cousin] recalls that [Girl] has been looking everywhere for the silver bell." 

Rule for describing the ringing-intent: 
	if the current target is the well-set-2, 
		instead say "A ringing intention hovers, unnoticed, by his foot. It is amber in color."; 
	say default describe-intention. 

Rule for extracting the ringing-intent: 
	if the current target is the well-set-2 begin; 
		uninvoke well-set-2; 
		invoke well-set-3; 
		stop; 
	end if; 
	measure life of Girl. 

Rule for checking acceptability of the ringing-intent: 
	accept target well; 
	accept target woodstove. 

Rule for committing the ringing-intent: 
	measure life of Girl. 

Rule for noncommitting the ringing-intent: 
	if the current target is a set-piece-cousin, 
		instead say "[Cousin] already has the bell."; 
	if the current target is a set-piece-girl, 
		instead say "[Cousin] is unlikely to simply give the bell back to her."; 
	if the current target is the fireplace, 
		instead say "It's not that much of a fireplace."; 
	if the current target is the Garden or the current target is the local-garden, 
		instead say "If the bell were lost in the garden paths, [Cousin] thinks to himself, the girl could find it with little difficulty."; 
	abide by the noncommital rule. 

Section - The Wire 

Wire-set-1 is a set-piece-madame. The destination is the Foyer. 
The description is "[Madame] will absently leave an unfinished flute of champagne sitting on the arm of a divan." 
Understand "unfinished" or "flute" or "champagne" as the wire-set-1. 

Wire-set-2 is a set-piece-madame. The destination is the Foyer. 
The description is "[Madame] will pick up her flute of champagne, and consider it thoughtfully." 
Understand "unfinished" or "flute" or "champagne" as the wire-set-2. 

Wire-set-3 is a set-piece. The destination is the North-West Tower. 
The description is "[description of Wire-set-3-madame][break][description of Wire-set-3-boy]". 
Wire-set-3-madame is a set-piece-madame. Wire-set-3-madame is part of the Wire-set-3. 
The description is "[Madame] will arrive for some fresh air. She will, without apparent forethought, leave a flute of champagne on the windowsill." 
Wire-set-3-boy is a set-piece-boy. Wire-set-3-boy is part of the Wire-set-3. 
The description is "Later, [Boy] will dance in wild hilarity on the windowsill, and then cartwheel off along the rope. The empty champagne flute [note bacchanal-intent] will be left rolling in a corner." 
Understand "empty" or "flute" or "champagne" as the wire-set-3-boy. 

Wire-set-4 is a set-piece-boy. The destination is the Tight Rope. 
The description is "[Boy] will laugh, perform a perfect pirouette, slip from the rope, and vanish into the darkness." 
Understand "perfect" or "pirouette" as the wire-set-4. 

The bacchanal-intent is a crimson intention. The printed name is "bacchanal intention". The description is "[description of bacchanal-intent]". 
Understand "bacchanal" as the bacchanal-intent. 
The bacchanal-intent is part of the wire-set-1. 

To say description of bacchanal-intent: 
	if the bacchanal-intent is part of the wire-set-1 begin; 
		say "[Madame] has forgotten her champagne."; 
		stop; 
	end if; 
	if the bacchanal-intent is in the North-West Tower begin; 
		say description of the wire-set-3-madame; 
		stop; 
	end if; 
	say "[Madame] is giving thought to her flute of champgne." 

Rule for describing the bacchanal-intent: 
	if the current target is the wire-set-1, 
		instead say "A bacchanal intention hovers above the champagne. It is crimson in color."; 
	say default describe-intention. 

Rule for writing a paragraph about the bacchanal-intent: 
	if the bacchanal-intent is in the North-West Tower, 
		now the bacchanal-intent is mentioned. 

Rule for extracting the bacchanal-intent: 
	if the current target is the wire-set-1 begin; 
		uninvoke wire-set-1; 
		invoke wire-set-2; 
		stop; 
	end if; 
	measure life of Boy. 

Rule for checking acceptability of the bacchanal-intent: 
	accept target North-West Tower. 

Rule for committing the bacchanal-intent: 
	measure life of Boy. 

Rule for noncommitting the bacchanal-intent: 
	if the current target is intro-set-4, 
		instead try dropping the bacchanal-intent; 
	if the current target is drinks-set-1 or current target is drinks-set-2 or current target is drinks-set-3, 
		instead say "[Butler] is in the business of passing out drinks, not receiving them."; 
	if the current target is a set-piece-madame, 
		instead say "It is her champagne in the first place."; 
	if the current target is a set-piece-boy, 
		instead say "[Boy] is not presently in the mood."; 
	if the current target is a set-piece and the current target is an Inform library animate object begin; 
		if the current target acts plural, say "They do not"; 
		else say "[Current target] does not"; 
		instead say " look like the champagne type."; 
	end if; 
	abide by the noncommital rule. 

Section - The Poker 

Poker-set-1 is a set-piece. The printed name is "[Viscount]". The destination is the Dining Room. 
The description is "[Viscount] will glare at the Chandelier in bristling irritation." 

Poker-set-2 is a set-piece. The printed name is "[Viscount]". The destination is the Dining Room. 
The description is "[Viscount] will glare at the Chandelier. Abruptly, he will leap to his feat, shout an imprecation, and lash out at the electrical device with his duelling poker.[break]The result [note melee-intent] will be violently and voltaically fatal to the Viscount." 

[### melee-intent can become invisible (if set on chandelier when stealth kills R)] 

The melee-intent is an indigo intention. The printed name is "melee intention". The description is "[description of melee-intent]". 
Understand "melee" as the melee-intent. 

To say description of melee-intent: 
	if the melee-intent is part of the smooch-set-1-madame or the melee-intent is part of the smooch-set-2-madame begin; 
		say "The Viscount has no grievance against [Madame]."; 
		stop; 
	end if; 
	if the melee-intent is part of the smooch-set-1-lady begin; 
		say "The Viscount has no grievance against [Lady]."; 
		stop; 
	end if; 
	if the melee-intent is part of the smooch-set-1-cousin begin; 
		say "The Viscount has no grievance against [Cousin]."; 
		stop; 
	end if; 
	if the melee-intent is part of the smooch-set-1-butler begin; 
		say "The Viscount has no grievance against [Butler]."; 
		stop; 
	end if; 
	say "The Viscount's duelling poker is never far from his thoughts." 

Rule for describing the melee-intent: 
	if the current target is the intro-set-1, 
		instead say "Trailing near the Viscount's duelling poker is an indigo melee intention."; 
	if the current target is the smooch-set-1-lady, 
		instead say "The melee intention drifts uncertainly around the pair."; 
	if the current target is the smooch-set-2-lady, 
		instead say "The melee intention circles around the pair."; 
	if the current target is the smooch-set-1-cousin, 
		instead say "The melee intention drifts uncertainly around the pair."; 
	if the current target is the smooch-set-2-cousin, 
		instead say "The melee intention circles around the pair."; 
	if the current target is the smooch-set-1-butler, 
		instead say "The melee intention drifts uncertainly around the pair."; 
	if the current target is the smooch-set-2-butler, 
		instead say "The melee intention circles around the pair."; 
	say default describe-intention. 

Rule for extracting the melee-intent: 
	if the current target is the Chandelier begin; 
		measure life of Viscount; 
		stop; 
	end if; 
	if the current target is the smooch-set-2-butler begin; 
		measure life of Butler; 
	end if; 
	if the current target is the smooch-set-2-cousin begin; 
		measure life of Cousin; 
		measure life of Viscount; 
	end if; 
	if the current target is the smooch-set-2-lady begin; 
		measure life of Lady; 
	end if. 

Rule for checking acceptability of the melee-intent: 
	accept target Chandelier; 
	accept target smooch-set-2-butler; 
	accept target smooch-set-2-cousin; 
	accept target smooch-set-2-lady. 

Rule for committing the melee-intent: 
	if the current target is the Chandelier begin; 
		measure life of Viscount; 
		stop; 
	end if; 
	if the current target is the smooch-set-2-butler begin; 
		measure life of Butler; 
	end if; 
	if the current target is the smooch-set-2-cousin begin; 
		measure life of Cousin; 
		measure life of Viscount; 
	end if; 
	if the current target is the smooch-set-2-lady begin; 
		measure life of Lady; 
	end if. 

Rule for noncommitting the melee-intent: 
	if the current target is the Sitting Room or the current target is the Dining Room, 
		instead say "Several possible targets are present. You should be more specific as to where you wish to put it."; 
	if the current target is the intro-set-1, 
		instead say "To be sure; but which of them?"; 
	if the current target is the dining-set-1, 
		instead say "To be sure; but which of them?"; 
	if the current target is a set-piece-viscount, 
		instead say "The Viscount is irascible, but he is unlikely to beat himself to death with his own poker."; 
	if the current target is the intro-set-5, 
		instead say "The Viscount might flail away in the darkness, but this is unlikely to achieve anything."; 
	if the current target is the smooch-set-1-butler, 
		instead say "The Viscount has no grievance against [Butler]."; 
	if the current target is the smooch-set-1-lady, 
		instead say "The Viscount has no grievance against [Lady]."; 
	if the current target is the smooch-set-1-cousin, 
		instead say "The Viscount has no grievance against [Cousin]."; 
	if the current target is the smooch-set-1-madame or the current target is the smooch-set-2-madame, 
		instead say "The Viscount has no grievance against [Madame]."; 
	abide by the noncommital rule. 

Section - The Knife 

Knife-set-1-viscount is a set-piece-viscount. The destination is the Dining Room. 
The description is "All will be shocked to discover [Viscount], stone gory dead, with a knife [note stealth-intent] buried in his heart." 
Understand "knife" or "heart" as the knife-set-1-viscount. 

Knife-set-1-lady is a set-piece-lady. The destination is the Dining Room. 
The description is "All will be shocked to discover [Lady], stone gory dead, with a knife [note stealth-intent] buried in her heart." 
Understand "knife" or "heart" as the knife-set-1-lady. 

Knife-set-1-madame is a set-piece-madame. The destination is the Dining Room. 
The description is "All will be shocked to discover [Madame], stone gory dead, with a knife [note stealth-intent] buried in her heart." 
Understand "knife" or "heart" as the knife-set-1-madame. 

Knife-set-1-butler is a set-piece-butler. The destination is the Dining Room. 
The description is "All will be shocked to discover [Butler], stone gory dead, with a knife [note stealth-intent] buried in his heart." 
Understand "knife" or "heart" as the knife-set-1-butler. 
[### names conflict with dining-set-1-* objects. Although not much, since these objects are top-level scenery.] 

The stealth-intent is a lime intention. The printed name is "stealth intention". The description is "[description of stealth-intent]". 
The stealth-intent is part of the dining-set-1. 
Understand "stealth" or "stealthy" as the stealth-intent. 

To say description of stealth-intent: 
	if the stealth-intent is part of the dining-set-1 begin; 
		say "[Cousin] fingers his knife and waits for his moment."; 
		stop; 
	end if; 
	say "[Cousin] fingers his knife in the brief darkness." 

Rule for describing the stealth-intent: 
	if the current target is the dining-set-1, 
		instead say "A lime-colored stealth intention circles around [Cousin]."; 
	say default describe-intention. 

Rule for checking acceptability of the stealth-intent: 
	accept target dining-set-1-viscount; 
	accept target dining-set-1-lady; 
	accept target dining-set-1-madame; 
	accept target dining-set-1-butler. 

Rule for extracting the stealth-intent: 
	if the current target is the dining-set-1-viscount begin; 
		measure life of Viscount; 
		measure life of Cousin; 
		stop; 
	end if; 
	if the current target is the dining-set-1-lady begin; 
		measure life of Lady; 
		stop; 
	end if; 
	if the current target is the dining-set-1-madame begin; 
		measure life of Madame; 
		stop; 
	end if; 
	if the current target is the dining-set-1-butler begin; 
		measure life of Butler; 
		stop; 
	end if. 

Rule for committing the stealth-intent: 
	if the current target is the dining-set-1-viscount begin; 
		measure life of Viscount; 
		measure life of Cousin; 
		stop; 
	end if; 
	if the current target is the dining-set-1-lady begin; 
		measure life of Lady; 
		stop; 
	end if; 
	if the current target is the dining-set-1-madame begin; 
		measure life of Madame; 
		stop; 
	end if; 
	if the current target is the dining-set-1-butler begin; 
		measure life of Butler; 
		stop; 
	end if. 

Rule for noncommitting the stealth-intent: 
	if the current target is the Sitting Room or the current target is the Dining Room, 
		instead say "Several possible targets are present. You should be more specific as to where you wish to put it."; 
	if the current target is the intro-set-1, 
		instead say "To be sure; but which of them?"; 
	if the current target is the dining-set-1, 
		instead say "To be sure; but which of them?"; 
	if the current target is a set-piece-cousin, 
		instead say "He does not intend suicide."; 
	if the current target is a set-piece-boy or the current target is a set-piece-girl, 
		instead say "Knifing children is beyond even [Cousin], it seems."; 
	if the current target is an Inform library animate object, 
		instead say "[Cousin] has no intention of using his knife where it can be seen."; 
	abide by the noncommital rule. 

Section - Drinks 

A set-piece-scotch is a kind of set-piece. The printed name is usually "mug of scotch". 
The description is usually "The Viscount always partakes of Scotch before dinner. A big mug of scotch." 
Understand "drink" or "scotch" or "big" or "mug" or "mug of scotch" as a set-piece-scotch. 

A set-piece-cocktail is a kind of set-piece. The printed name is usually "lychee cocktail". 
The description is usually "[Lady]'s cocktail contains lychee fruit, bits of mango, and mint leaves." 
Understand "drink" or "cocktail" or "elaborate" or "lychee" or "fruit" or "mango" or "mint" or "leaves" as a set-piece-cocktail. 

A set-piece-martini is a kind of set-piece. The printed name is usually "martini". 
The description is usually "[Cousin] enjoys a martini with a candied tamarind in it." 
Understand "drink" or "martini" or "candied" or "tamarind" as a set-piece-martini. 

A set-piece-sherry is a kind of set-piece. The printed name is usually "sherry". 
The description is usually "A large glass of sherry for [Madame]." 
Understand "drink" or "sherry" or "large" or "glass" as a set-piece-sherry. 

Drinks-set-1 is a set-piece-butler. The destination is the Kitchen. 
The description is "[Butler] will be standing at the sideboard, preparing a tray." 
Carry out examining drinks-set-1: 
	instead say "[Butler], the butler, is a iron-grey, muscular man of middle years. He will be setting out a tray for pre-dinner drinks, although the drinks themselves will not yet be in evidence." 
Understand "tray" or "drinks" as the drinks-set-1. 

Drinks-set-3 is a set-piece-butler. The destination is the Kitchen. 
The description is "[Butler] will be assembling a tray of pre-dinner drinks at the sideboard[if the toxic-intent is not part of the rat-set-1]. His body will be turned to conceal one hand[detail of drinks-set-3 0][end if]." 
Carry out examining drinks-set-3: 
	instead say "[Butler], the butler, is a iron-grey, muscular man of middle years. He will be preparing a tray of drinks: a martini, a sherry, a cocktail, and a mug of scotch[if the toxic-intent is not part of the rat-set-1]. Shielded from view, his hand will slip into his pocket[detail of drinks-set-3 1][end if]." 
Understand "tray" or "drinks" or "body" or "hand" as the drinks-set-3. 
Understand "crystal" as the drinks-set-3 when the drinks-set-3 encloses the toxic-intent. 
To say detail of drinks-set-3 (N - number): 
	if the toxic-intent is part of something (called P) and P is part of the drinks-set-3 begin; 
		say "[if N is 0], which will[otherwise] and[end if] drop a crystal [note toxic-intent] into [the P]"; 
	end if. 

The drinks-set-3-scotch is a set-piece-scotch. Drinks-set-3-scotch is part of drinks-set-3. 
The drinks-set-3-cocktail is a set-piece-cocktail. Drinks-set-3-cocktail is part of drinks-set-3. 
The drinks-set-3-sherry is a set-piece-sherry. Drinks-set-3-sherry is part of drinks-set-3. 
The drinks-set-3-martini is a set-piece-martini. Drinks-set-3-martini is part of drinks-set-3. 

Drinks-set-2 is a set-piece-butler. The destination is the Foyer. 
The description is "[Butler] will pass through the room, carrying a tray of drinks. [Lady] will reach out and pluck her cocktail from the tray[detail of drinks-set-2]." 
Carry out examining drinks-set-2: 
	instead say "[Butler] is a muscular man of middle years. He will be carrying a tray of drinks: a martini, a sherry, a cocktail, and a mug of scotch." 
Understand "tray" or "drinks" as the drinks-set-2. 
To say detail of drinks-set-2: 
	if the chemic-intent is part of something (called P) and P is part of the drinks-set-2 begin; 
		say ". Her hand [note chemic-intent] will pause briefly over [the P]"; 
	end if. 

Drinks-set-2-lady is a set-piece-lady. Drinks-set-2-lady is part of drinks-set-2. 
The description is "[Lady] will flourish her hand elaborately as she extracts her cocktail from the tray[detail of drinks-set-2]." 

The drinks-set-2-scotch is a set-piece-scotch. Drinks-set-2-scotch is part of drinks-set-2. 
The drinks-set-2-cocktail is a set-piece-cocktail. Drinks-set-2-cocktail is part of drinks-set-2. 
The drinks-set-2-sherry is a set-piece-sherry. Drinks-set-2-sherry is part of drinks-set-2. 
The drinks-set-2-martini is a set-piece-martini. Drinks-set-2-martini is part of drinks-set-2. 

Section - Ring 

Ring-set-1 is a set-piece-lady. The destination is the Pantry. 
The description is "[Lady] will be adjusting her jewelry here in the dubious privacy of the pantry." 
Understand "jewelry" or "ring" as the ring-set-1. 

Ring-set-2 is a set-piece-lady. The destination is the Pantry. 
The description is "[Lady] will be adjusting her jewelry. She will pause, take a small pellet from an unmarked tin, and slip it into a hollow ring." 
Understand "pellet" or "hollow" or "jewelry" or "ring" as the ring-set-2. 

Ring-set-3-viscount is a set-piece-viscount. The destination is the Foyer. 
The description is "Later, [Viscount] will be found lying sprawled on a divan, cold and dead. An opalescent film will mar his lips." 
Understand "opal" or "opalescent" or "film" or "lips" as the ring-set-3-viscount. 

Ring-set-3-cousin is a set-piece-cousin. The destination is the Foyer. 
The description is "Later, [Cousin] will be found lying languidly on a divan, cold and dead. An opalescent film will mar his lips." 
Understand "opal" or "opalescent" or "film" or "lips" as the ring-set-3-cousin. 

Ring-set-3-madame is a set-piece-madame. The destination is the Foyer. 
The description is "Later, [Madame] will be found lying elegantly on a divan, cold and dead. An opalescent film will mar her lips." 
Understand "opal" or "opalescent" or "film" or "lips" as the ring-set-3-madame. 
[### Which do you mean, Madame C__ or Madame C__?] 

The chemic-intent is a maroon intention. The printed name is "chemic intention". The description is "[description of chemic-intent]". 
The chemic-intent is part of the ring-set-1. 
Understand "chemic" or "chemical" as the chemic-intent. 

To say description of chemic-intent: 
	if the chemic-intent is part of the ring-set-1 begin; 
		say "[Lady] is studying the rows of tins and jars."; 
		stop; 
	end if; 
	if the chemic-intent is part of something (called P) and P is part of the drinks-set-2 begin; 
		say "[Lady] is paying particular attention to [the P]."; 
		stop; 
	end if; 
	say "[Lady] is thinking fondly of her hollow ring." 

Rule for describing the chemic-intent: 
	if the current target is the ring-set-1, 
		instead say "A chemic intention hovers in the corner of a shelf. It is maroon."; 
	say default describe-intention. 

Rule for extracting the chemic-intent: 
	if the current target is the ring-set-1 begin; 
		uninvoke ring-set-1; 
		invoke ring-set-2; 
		stop; 
	end if; 
	if the current target is the drinks-set-2-scotch begin; 
		measure life of Viscount; 
		stop; 
	end if; 
	if the current target is the drinks-set-2-martini begin; 
		measure life of Cousin; 
		stop; 
	end if; 
	if the current target is the drinks-set-2-sherry begin; 
		measure life of Madame; 
		stop; 
	end if. 

Rule for checking acceptability of the chemic-intent: 
	accept target drinks-set-2-scotch; 
	accept target drinks-set-2-martini; 
	accept target drinks-set-2-sherry. 

Rule for committing the chemic-intent: 
	if the current target is the drinks-set-2-scotch begin; 
		measure life of Viscount; 
		stop; 
	end if; 
	if the current target is the drinks-set-2-martini begin; 
		measure life of Cousin; 
		stop; 
	end if; 
	if the current target is the drinks-set-2-sherry begin; 
		measure life of Madame; 
		stop; 
	end if. 

Rule for noncommitting the chemic-intent: 
	if the current target is a set-piece-lady, 
		instead say "[Lady] is apparently unwilling to administer the pellet to herself."; 
	if the current target is drinks-set-2, 
		instead say "Certainly; but in which drink, is the question."; 
	if the current target is drinks-set-2-cocktail, 
		instead say "[Lady] has no intention of dropping the pellet into her own cocktail."; 
	if the current target is wire-set-1 or current target is wire-set-2, 
		instead say "Unfortunately, [Lady]'s hand is nowhere near the champagne."; 
	if the current target is wire-set-3-boy, 
		instead say "But [Lady] isn't here."; 
	if the current target is drinks-set-3 or the current target is part of drinks-set-3, 
		instead say "The tray is here, but [Lady] is not. Perhaps she intends to adulterate it elsewhere."; 
	if the current target is intro-set-1, 
		instead say "[Lady] intends to introduce her substance more surreptitiously."; 
	if the current target is an Inform library animate object, 
		instead say "[Lady] intends to introduce her substance more surreptitiously."; 
	if the current target is the well, 
		instead say "There is really too much water in the well for the pellet to make any difference."; 
	abide by the noncommital rule. 

Section - Rat Poison 

Rat-set-1 is a set-piece-butler. The destination is the Wine Cellar. 
The description is "[Butler] will be selecting bottles for the guests upstairs." 

Rat-set-2 is a set-piece-butler. The destination is the Wine Cellar. 
The description is "[Butler] will be selecting bottles for the guests upstairs. His eye will be caught by a small box marked 'rat poison' which is lying in a corner. With a speculative look, he will pocket a few crystals." 
Understand "small" or "box" or "rat" or "poison" or "crystal" or "crystals" as the rat-set-2. 

Rat-set-3-viscount is a set-piece-viscount. The destination is the Kitchen. 
The description is "Later, [Viscount] will be found lying dead, clutching his abdomen in an excess of travail." 
Understand "abdomen" or "belly" or "excess" or "travail" as the rat-set-3-viscount. 

Rat-set-3-cousin is a set-piece-cousin. The destination is the Kitchen. 
The description is "Later, [Cousin] will be found lying dead, clutching his abdomen in an excess of travail." 
Understand "abdomen" or "belly" or "excess" or "travail" as the rat-set-3-cousin. 

Rat-set-3-madame is a set-piece-madame. The destination is the Kitchen. 
The description is "Later, [Madame] will be found lying dead, clutching her abdomen in an excess of travail." 
Understand "abdomen" or "belly" or "excess" or "travail" as the rat-set-3-madame. 

Rat-set-3-lady is a set-piece-lady. The destination is the Kitchen. 
The description is "Later, [Lady] will be found lying dead, clutching her abdomen in an excess of travail." 
Understand "abdomen" or "belly" or "excess" or "travail" as the rat-set-3-lady. 

The toxic-intent is an azure intention. The printed name is "toxic intention". The description is "[description of toxic-intent]". 
The toxic-intent is part of the rat-set-1. 
Understand "toxic" as the toxic-intent. 

To say description of toxic-intent: 
	if the toxic-intent is part of the rat-set-1 begin; 
		say "The butler has not yet noticed something sitting in the corner."; 
		stop; 
	end if; 
	say "[Butler] is thinking idly about serving the drinks." 

Rule for describing the toxic-intent: 
	if the current target is the rat-set-1, 
		instead say "A toxic intention lies in a corner between two racks. It is azure in color."; 
	say default describe-intention. 

Rule for extracting the toxic-intent: 
	if the current target is the rat-set-1 begin; 
		uninvoke rat-set-1; 
		invoke rat-set-2; 
		stop; 
	end if; 
	if the current target is the drinks-set-3-scotch begin; 
		measure life of Viscount; 
		stop; 
	end if; 
	if the current target is the drinks-set-3-martini begin; 
		measure life of Cousin; 
		stop; 
	end if; 
	if the current target is the drinks-set-3-sherry begin; 
		measure life of Madame; 
		stop; 
	end if; 
	if the current target is the drinks-set-3-cocktail begin; 
		measure life of Lady; 
		stop; 
	end if. 

Rule for checking acceptability of the toxic-intent: 
	accept target drinks-set-3-scotch; 
	accept target drinks-set-3-martini; 
	accept target drinks-set-3-cocktail; 
	accept target drinks-set-3-sherry. 

Rule for committing the toxic-intent: 
	if the current target is the drinks-set-3-scotch begin; 
		measure life of Viscount; 
		stop; 
	end if; 
	if the current target is the drinks-set-3-martini begin; 
		measure life of Cousin; 
		stop; 
	end if; 
	if the current target is the drinks-set-3-sherry begin; 
		measure life of Madame; 
		stop; 
	end if; 
	if the current target is the drinks-set-3-cocktail begin; 
		measure life of Lady; 
		stop; 
	end if. 

Rule for noncommitting the toxic-intent: 
	if the current target is rat-set-1 or the current target is rat-set-2, 
		instead say "The butler already has the rat poison."; 
	if the current target is the bottles, 
		instead say "The butler's intentions are for the guests, not future generations of wine connoisseurs."; 
	if the current target is the provender, 
		instead say "The butler's intentions are for the guests, not future generations of diners."; 
	if the current target is the well, 
		instead say "There is really too much water in the well for the butler's crystals to make any difference."; 
	if the current target is drinks-set-2 or the current target is part of drinks-set-2, 
		instead say "The butler has no intention of making such a move where he can be observed."; 
	if the current target is drinks-set-3, 
		instead say "Certainly; but in which drink, is the question."; 
	if the current target is intro-set-1, 
		instead say "[Butler] intends to introduce his crystals more surreptitiously."; 
	if the current target is an Inform library animate object, 
		instead say "[Butler] intends to introduce his crystals more surreptitiously."; 
	abide by the noncommital rule. 

Section - Smoochies 

The smooch-set-1-butler is a set-piece-butler. The printed name is "pair". The destination is the Rarely-Used Room. 
The description is "The Viscount and the butler will be entwined in a muscular but tender embrace behind a velocipede. [Interjection]." 
Understand "pair" or "men" or "embrace" or "tender" or "r" or "r_" or "r__" or "r-" or "r--" or "viscount" or "beard" or "duelling" or "poker" as the smooch-set-1-butler. 

The smooch-set-1-cousin is a set-piece-cousin. The printed name is "pair". The destination is the West End Hallway. 
The description is "[Cousin] will be tenderly combing the Viscount's beard, as the Viscount leans against the wall and sighs in contentment. [Interjection]." 
Understand "pair" or "men" or "comb" or "tender" or "r" or "r_" or "r__" or "r-" or "r--" or "viscount" or "beard" or "duelling" or "poker" as the smooch-set-1-cousin. 

The smooch-set-1-lady is a set-piece-lady. The printed name is "pair". The destination is the Library. 
The description is "The Viscount will be bent over [Lady]'s hand, kissing it with delicate intensity. It would be a romantic image, were it not for where his other hand will be. [Interjection]." 
Understand "pair" or "hand" or "kiss" or "r" or "r_" or "r__" or "r-" or "r--" or "viscount" or "man" or "beard" or "duelling" or "poker" as the smooch-set-1-lady. 

The smooch-set-1-madame is a set-piece-madame. The printed name is "pair". The destination is the Central Tower. 
The description is "The Viscount and [Madame] will be locked in a furiously ardent kiss. [Interjection]." 
Understand "pair" or "ardent" or "kiss" or "r" or "r_" or "r__" or "r-" or "r--" or "viscount" or "man" or "beard" or "duelling" or "poker" as the smooch-set-1-madame. 

The smooch-set-2-butler is a set-piece-butler. The printed name is "pair". The destination is the Rarely-Used Room. 
The description is "[Viscount] and the butler will be having a furious argument -- something about [Madame] and a device." 
Understand "pair" or "men" or "fight" or "argument" or "r" or "r_" or "r__" or "r-" or "r--" or "viscount" or "beard" or "duelling" or "poker" as the smooch-set-2-butler. 

The smooch-set-2-cousin is a set-piece-cousin. The printed name is "pair". The destination is the West End Hallway. 
The description is "[Viscount] and [Cousin] will be having a furious argument -- something about [Madame] and a device." 
Understand "pair" or "men" or "fight" or "argument" or "r" or "r_" or "r__" or "r-" or "r--" or "viscount" or "beard" or "duelling" or "poker" as the smooch-set-2-cousin. 

The smooch-set-2-lady is a set-piece-lady. The printed name is "pair". The destination is the Library. 
The description is "[Viscount] and [Lady] will be having a furious argument -- something about [Madame] and a device." 
Understand "pair" or "fight" or "argument" or "r" or "r_" or "r__" or "r-" or "r--" or "viscount" or "man" or "beard" or "duelling" or "poker" as the smooch-set-2-lady. 

The smooch-set-2-madame is a set-piece-madame. The printed name is "pair". The destination is the Central Tower. 
The description is "The Viscount and [Madame] will be locked in a furiously ardent kiss. After a moment, she will murmur something in his ear about a curious device. [Interjection]." 
Understand "pair" or "ardent" or "kiss" or "r" or "r_" or "r__" or "r-" or "r--" or "viscount" or "man" or "beard" or "duelling" or "poker" as the smooch-set-2-madame. 

The smooch-set-3-butler is a set-piece. The printed name is "assault". The destination is the Rarely-Used Room. 
The description is "Later, the corpse of [Butler], the butler, will be discovered -- the apparent victim of [note melee-intent] a violent assault with a poker." 

The smooch-set-3-cousin is a set-piece. The printed name is "assault". The destination is the West End Hallway. 
The description is "Later, the bodies of the Viscount and [Cousin] will be discovered -- the mutually fatal outcome of [note melee-intent] a duel with knife and poker." 

The smooch-set-3-lady is a set-piece. The printed name is "assault". The destination is the Library. 
The description is "Later, the corpse of [Lady] will be discovered, the apparent victim of [note melee-intent] a violent assault with a poker." 

Include (- has pluralname -) when defining the smooch-set-1-butler. 
Include (- has pluralname -) when defining the smooch-set-1-cousin. 
Include (- has pluralname -) when defining the smooch-set-1-lady. 
Include (- has pluralname -) when defining the smooch-set-1-madame. 
Include (- has pluralname -) when defining the smooch-set-2-butler. 
Include (- has pluralname -) when defining the smooch-set-2-cousin. 
Include (- has pluralname -) when defining the smooch-set-2-lady. 
Include (- has pluralname -) when defining the smooch-set-2-madame. 

Section - The Device 

Device-set-1 is a set-piece-madame. The destination is the Other Cellar. 
The description is "[Madame] will be wandering around in distracted curiosity, prodding through one pile of rubbish and another." 

Device-set-2 is a set-piece-madame. The destination is the Other Cellar. 
The description is "[Madame] will uncover a most unusual device in a rusted pile." 
Understand "unusual" or "curious" or "device" or "feather" or "feathers" or "tentacle" or "electrophor" or "gel" as the device-set-2. 
Carry out examining device-set-2: 
	instead say "[Madame] will uncover a most curious device. Curious in a not-just-the-feathers-but-the-whole-hen way. There may be tentacles involved, and electrophoresis gel." 

The device-set-3-none is a set-piece-device. The destination is the Sitting Room. 
The description is "[Madame] will be displaying a most curious device to the other guests." 
Carry out examining device-set-3-none: 
	instead say  "[Madame] will be displaying a most curious device to the other guests. Curious in a not-just-the-feathers-but-the-whole-hen way. There may be tentacles involved, and electrophoresis gel." 

The device-set-3-madame is a set-piece-device. The destination is the Sitting Room. 
The description is "[Madame] will be toying with [note oscillic-intent] a most curious device. She has conceived, she will say, a desire to test it this evening in private. She will return to describe the results afterwards." 

The device-set-3-lady is a set-piece-device. The destination is the Sitting Room. 
The description is "[Madame] will be displaying [note oscillic-intent] a most curious device. She will discreetly ask [Lady] to help her test it, later, in private." 

The device-set-3-cousin is a set-piece-device. The destination is the Sitting Room. 
The description is "[Madame] will be displaying [note oscillic-intent] a most curious device. She will discreetly ask [Cousin] to help her test it, later, in private." 

The device-set-3-viscount is a set-piece-device. The destination is the Sitting Room. 
The description is "[Madame] will be displaying [note oscillic-intent] a most curious device. She will discreetly ask [Viscount] to help her test it, later, in private." 

Device-set-4-madame is a set-piece-madame. The destination is the Sitting Room. 
The description is "Later, [Madame] will be found dead -- a victim, apparently, of nervous exhaustion." 

The oscillic-intent is a beige intention. The printed name is "oscillic intention". The description is "[description of oscillic-intent]". 
The oscillic-intent is part of the device-set-1. 
Understand "oscillic" or "oscillating" as the oscillic-intent. 

To say description of oscillic-intent: 
	if the oscillic-intent is part of the device-set-1 begin; 
		say "[Madame] intends to find something in the piles of old parts."; 
		stop; 
	end if; 
	say "[Madame] wonders with whom to share her discovery." 

Rule for describing the oscillic-intent: 
	if the current target is the device-set-1, 
		instead say "An oscillic intention hides within an otherwise undistinguished pile of pipes. The intention is beige."; 
	say default describe-intention. 

Rule for extracting the oscillic-intent: 
	if the current target is the device-set-1 begin; 
		uninvoke device-set-1; 
		invoke device-set-2; 
		invoke device-set-3-none; 
		stop; 
	end if; 
	if the current target is the intro-set-1-madame begin; 
		uninvoke device-set-3-madame; 
		invoke device-set-3-none; 
		measure life of Madame; 
		stop; 
	end if; 
	if the current target is the intro-set-1-lady begin; 
		uninvoke device-set-3-lady; 
		invoke device-set-3-none; 
		uninvoke smooch-set-2-lady; 
		invoke smooch-set-1-lady; 
		if the melee-intent is part of the smooch-set-2-lady begin; 
			now the melee-intent is part of the smooch-set-1-lady; 
			measure life of Lady; 
		end if; 
		stop; 
	end if; 
	if the current target is the intro-set-1-cousin begin; 
		uninvoke device-set-3-cousin; 
		invoke device-set-3-none; 
		uninvoke smooch-set-2-cousin; 
		invoke smooch-set-1-cousin; 
		if the melee-intent is part of the smooch-set-2-cousin begin; 
			now the melee-intent is part of the smooch-set-1-cousin; 
			measure life of Cousin; 
			measure life of Viscount; 
		end if; 
		stop; 
	end if; 
	if the current target is the intro-set-1-viscount begin; 
		uninvoke device-set-3-viscount; 
		invoke device-set-3-none; 
		uninvoke smooch-set-2-madame; 
		invoke smooch-set-1-madame; 
		uninvoke smooch-set-2-butler; 
		invoke smooch-set-1-butler; 
		if the melee-intent is part of the smooch-set-2-butler begin; 
			now the melee-intent is part of the smooch-set-1-butler; 
			measure life of Butler; 
		end if; 
		stop; 
	end if. 

Rule for checking acceptability of the oscillic-intent: 
	accept target intro-set-1-madame; 
	accept target intro-set-1-lady; 
	accept target intro-set-1-viscount; 
	accept target intro-set-1-cousin. 

Rule for committing the oscillic-intent: 
	if the current target is the intro-set-1-madame begin; 
		uninvoke device-set-3-none; 
		invoke device-set-3-madame; 
		measure life of Madame; 
		stop; 
	end if; 
	if the current target is the intro-set-1-lady begin; 
		uninvoke device-set-3-none; 
		invoke device-set-3-lady; 
		uninvoke smooch-set-1-lady; 
		invoke smooch-set-2-lady; 
		if the melee-intent is part of the smooch-set-1-lady begin; 
			now the melee-intent is part of the smooch-set-2-lady; 
			measure life of Lady; 
		end if; 
		stop; 
	end if; 
	if the current target is the intro-set-1-cousin begin; 
		uninvoke device-set-3-none; 
		invoke device-set-3-cousin; 
		uninvoke smooch-set-1-cousin; 
		invoke smooch-set-2-cousin; 
		if the melee-intent is part of the smooch-set-1-cousin begin; 
			now the melee-intent is part of the smooch-set-2-cousin; 
			measure life of Cousin; 
			measure life of Viscount; 
		end if; 
		stop; 
	end if; 
	if the current target is the intro-set-1-viscount begin; 
		uninvoke device-set-3-none; 
		invoke device-set-3-viscount; 
		uninvoke smooch-set-1-madame; 
		invoke smooch-set-2-madame; 
		uninvoke smooch-set-1-butler; 
		invoke smooch-set-2-butler; 
		if the melee-intent is part of the smooch-set-1-butler begin; 
			now the melee-intent is part of the smooch-set-2-butler; 
			measure life of Butler; 
		end if; 
		stop; 
	end if. 

Rule for noncommitting the oscillic-intent: 
	if the current target is the Sitting Room, 
		instead say "Several possible targets are present. You should be more specific as to where you wish to put it."; 
	if the current target is the intro-set-1, 
		instead say "To be sure; but which of them?"; 
	if the current target is the device-set-3-none, 
		instead say "That would be unnecessarily recursive."; 
	if the current target is the device-set-1 or the current target is the device-set-2, 
		instead say "[Madame] already has the device."; 
	if the current target is a set-piece-madame, 
		instead say "[Madame] does not have the device here and now."; 
	if the current target is an Inform library animate object, 
		instead say "This is not where [Madame] has chosen to present her discovery."; 
	if the current target is a room, 
		instead say "[Madame] does not intend to simply put down her discovery and walk away."; 
	abide by the noncommital rule. 

Section - Art 

The art-set-1 is a set-piece. The printed name is "pair". The destination is the Atelier. 
The description is "[Lady] will posing in the center of the room, wearing very little of consequence. [Viscount] will be seated before a canvas, palette and brush [note artistic-intent] in hand, studying her intently." 
Understand "pair" as art-set-1. 
Art-set-1-viscount is a set-piece-viscount. Art-set-1-viscount is part of the art-set-1. 
Art-set-1-lady is a set-piece-lady. Art-set-1-lady is part of the art-set-1. 

Include (- has pluralname -) when defining the art-set-1. 

The art-set-2 is a set-piece. The printed name is "pair". The destination is the Atelier. 
The description is "[Lady] will posing in the center of the room, wearing very little of consequence. The Viscount will be preparing [note artistic-intent] his assault on the canvas, when [Butler], the butler, will hurtle through the door." 
Understand "pair" as art-set-2. 
Art-set-2-viscount is a set-piece-viscount. Art-set-2-viscount is part of the art-set-2. 
Art-set-2-lady is a set-piece-lady. Art-set-2-lady is part of the art-set-2. 
Art-set-2-butler is a set-piece-butler. Art-set-2-butler is part of the art-set-2. 

Include (- has pluralname -) when defining the art-set-2. 

The art-set-3-butler is a set-piece. The printed name is "assault". The destination is the Atelier. 
The description is "Later, [Viscount] will announce that he has been forced to defend himself from [note berserk-intent] [Butler], who will apparently have run mad. Tragically, the butler will not survive." 

The art-set-3-lady is a set-piece. The printed name is "assault". The destination is the Atelier. 
The description is "Later, [Viscount] will announce that [note berserk-intent] [Butler] has run mad and attacked [Lady]. Tragically, she will not survive." 

[### berserk-intent can become invisible (if set on a victim who dies earlier elsewhere)] 

The artistic-intent is a coral intention. The printed name is "artistic intention". The description is "[description of artistic-intent]". 
Understand "artistic" or "artist" as the artistic-intent. 

Rule for describing the artistic-intent: 
	if the current target is the Library, 
		instead say "An artistic intention -- coral in color -- hangs within the Viscount."; 
	say default describe-intention. 

Rule for writing a paragraph about the artistic-intent: 
	if the artistic-intent is in the Atelier, 
		now the artistic-intent is mentioned. 

To say description of artistic-intent: 
	if the artistic-intent is in the Library begin; 
		say "The Viscount has an intense admiration for [Lady]'s geometric configuration. (You cannot blame him.)"; 
		stop; 
	end if; 
	say "[Viscount] is artistically inspired by [Lady]'s form." 

Rule for extracting the artistic-intent: 
	if the current target is the Atelier begin; 
		if the berserk-intent is part of the art-set-1, 
			uninvoke art-set-1; 
		else 
			uninvoke art-set-2; 
		if the berserk-intent is part of the art-set-2-viscount begin; 
			move the berserk-intent to the Atelier; 
			measure life of Butler; 
		end if; 
		if the berserk-intent is part of the art-set-2-lady begin; 
			move the berserk-intent to the Atelier; 
			measure life of Lady; 
		end if; 
		stop; 
	end if. 

Rule for checking acceptability of the artistic-intent: 
	accept target Atelier. 

Rule for committing the artistic-intent: 
	if the current target is the Atelier begin; 
		if the berserk-intent is in the Atelier, 
			now the berserk-intent is part of the art-set-1; 
		if the berserk-intent is part of the art-set-1, 
			invoke art-set-1; 
		else 
			invoke art-set-2; 
		stop; 
	end if. 

Rule for noncommitting the artistic-intent: 
	if the current target is a set-piece-viscount, 
		instead say "It is his intention in the first place."; 
	if the current target is a set-piece-lady, 
		instead say "This is not the place for such things."; 
	if the current target is the canvases, 
		instead try dropping the artistic-intent; 
	abide by the noncommital rule. 

Section - Berserk 

The berserk-intent is a topaz intention. The printed name is "berserk intention". The description is "[description of berserk-intent]". 
The berserk-intent is part of the art-set-1. 
Understand "berserk" or "berserker" as the berserk-intent. 

Rule for describing the berserk-intent: 
	if the current target is the art-set-1, 
		instead say "A berserk intention drifts by the door. It is topaz-colored."; 
	if the current target is the Atelier, 
		instead say "A berserk intention drifts uncertainly around the room."; 
	say default describe-intention. 

To say description of berserk-intent: 
	if the berserk-intent is part of the art-set-1 begin; 
		say "Someone is angrily searching for the Viscount and his model."; 
		stop; 
	end if; 
	if the art-set-2 is not in the Atelier begin; 
		say "The butler is wondering where the Viscount and [Lady] might be."; 
		stop; 
	end if; 
	say "The butler is furiously jealous." 

Rule for extracting the berserk-intent: 
	if the current target is the art-set-1 begin; 
		uninvoke art-set-1; 
		invoke art-set-2; 
		stop; 
	end if; 
	if the current target is the art-set-2-viscount begin; 
		measure life of Butler; 
		stop; 
	end if; 
	if the current target is the art-set-2-lady begin; 
		measure life of Lady; 
		stop; 
	end if. 

Rule for checking acceptability of the berserk-intent: 
	accept target art-set-2-viscount; 
	accept target art-set-2-lady. 

Rule for committing the berserk-intent: 
	if the current target is the art-set-2-viscount begin; 
		measure life of Butler; 
		stop; 
	end if; 
	if the current target is the art-set-2-lady begin; 
		measure life of Lady; 
		stop; 
	end if. 

Rule for noncommitting the berserk-intent: 
	if the current target is the art-set-1 or the current target is the art-set-2 or the current target is the Atelier begin; 
		if the art-set-2 is in the Atelier, 
			instead say "The butler's attention is focussed on a single person."; 
	end if; 
	if the current target is the smooch-set-1-lady or the current target is the smooch-set-2-lady, 
		instead say "The butler, oddly, is not disturbed by the thought of this scene."; 
	if the current target is a set-piece-butler, 
		instead say "The butler has no thought for himself."; 
	abide by the noncommital rule. 


Chapter - Your Notes 

Understand "help" as a mistake ("As you explore the game, you will automatically take notes about the things you notice. Read the notes to remind yourself what is significant."). 

To say notes recitation: 
	if the ending has not happened, 
		say notes recitation of doors; 
	else 
		say notes recitation of deaths. 

Section - Doors 

To say notes recitation of doors: 
	if the number of filled rows in the Table of Door Notes is zero begin; 
		say "Your blank notepad shines enticingly. You look forward to taking some notes, as soon as you learn something."; 
		stop; 
	end if; 
	say "You consult your [if unread-count is not zero]updated [end if]notes...[break]"; 
	change the unread-count to zero; 
	repeat through the Table of Door Notes begin; 
		let note be the Obj entry; 
		if note is erased, next repetition; 
		say "[if note is unread]*[otherwise]-[end if] [note]: [description of note]"; 
		now note is not unread; 
	end repeat. 

Table of Door Notes 
Obj 
door-note 
with 25 blank rows 

The unread-count is a number which varies. The unread-count is zero. 

A door-note is a kind of thing. A door-note can be noticed. A door-note can be understood. A door-note can be unread. A door-note can be erased. 
The description of a door-note is usually "[part/full of the item described]". 
To say part/full of (N - door-note): 
	if N is understood, say full-desc of N; 
	else say partial-desc of N. 
A door-note has some text called the partial-desc. A door-note has some text called the full-desc. 
The partial-desc of a door-note is usually "[nil]Closed; opened by ???" 
The full-desc of a door-note is usually "BUG." 

The front-door-note is a door-note. The printed name is "Front door". 
The partial-desc is "Closed; opened by [if peaked-arches-note is nearknown]peaked arch?[otherwise]???[end if]". 
The full-desc is "[nil]Flipped open/closed by peaked arches." 

The peaked-arches-note is a door-note. The printed name is "Peaked archway". 
The peaked-arches-note can be nearknown, farknown, or unknown. The peaked-arches-note is unknown. 
The description is "[if farknown]Opens some door?[end if][if nearknown]Opens front door?[end if]". 

To near-notice peaked-arches-note: 
	if peaked-arches-note is erased, stop; 
	if peaked-arches-note is unknown begin; 
		now peaked-arches-note is nearknown; 
		notice peaked-arches-note; 
		stop; 
	end if; 
	if peaked-arches-note is farknown begin; 
		erase peaked-arches-note; 
		now front-door-note is understood; 
		renotice front-door-note; 
		stop; 
	end if. 
To far-notice peaked-arches-note: 
	if peaked-arches-note is erased, stop; 
	if peaked-arches-note is unknown begin; 
		now peaked-arches-note is farknown; 
		notice peaked-arches-note; 
		stop; 
	end if; 
	if peaked-arches-note is nearknown begin; 
		erase peaked-arches-note; 
		now front-door-note is understood; 
		renotice front-door-note; 
		stop; 
	end if. 

The vine-arch-note is a door-note. The printed name is "Vine arch (kitchen to hallway)". 
The partial-desc is "[nil]Closes something?" 
The full-desc is "[nil]Flips something open/closed?" 

The grating-note is a door-note. The printed name is "Steel gratings (around foyer)". 
The full-desc is "[nil]Flipped open/closed by [if Pantry is not visited]vine arch (kitchen)[otherwise]vine/leaf doorways[end if]." 

The low-arch-note is a door-note. The printed name is "Low archway (rarely-used to atelier)". 
The partial-desc is "[nil]Opens something?" 
The full-desc is "[nil]Flips something open/closed?" 

The secret-note is a door-note. The printed name is "Secret door (library to pantry)". 
The full-desc is "[nil]Flipped open/closed by low archway (rarely-used to atelier)." 

The rotate-arch-note is a door-note. The printed name is "Foyer-dining doorway". 
The partial-desc is "[nil]Rumbling noise?" 

The bridge-note is a door-note. The printed name is "Tower bridge". 
The partial-desc is "[nil]Connects two towers?" 
The full-desc is "[nil]Rotated by rope, foyer-dining doorway." 

To real-notice the bridge-note: 
	if the bridge-note is understood, stop; 
	now the bridge-note is understood; 
	renotice the bridge-note; 
	erase the rotate-arch-note. 

The trap-door-note is a door-note. The printed name is "Trap door". 
The full-desc is "[nil]One-way (up)." 

The ne-tower-gap-note is a door-note. The printed name is "Ceiling opening (east end hall[if understood], northeast tower[end if])". 
The partial-desc is "[nil]Out of reach." 
The full-desc is "[nil]One-way (down)." 

The uninteresting-door-note is a door-note. The printed name is "Uninteresting doors". 
The partial-desc is "[nil]Uninteresting." 

The pantry-door-note is a door-note. The printed name is "Leaf door (kitchen)". 
The full-desc is "[nil]Open (by tower bridge, when northwest)." 

The library-door-note is a door-note. The printed name is "Panelled door (dining room)". 
The full-desc is "[nil]Open (by tower bridge, when southeast)." 

The hallway-door-note is a door-note. The printed name is "Hallway door (pantry)". 
The full-desc is "[nil]Open (by tower bridge, when northeast)." 

The northwest-note is a door-note. The printed name is "Tower bridge, when northwest". 
The partial-desc is "[nil]Opened some door?" 

The southwest-note is a door-note. The printed name is "Tower bridge, when southwest". 
The partial-desc is "[nil]Opened two doors somewhere?" 

The northeast-note is a door-note. The printed name is "Tower bridge, when northeast". 
The partial-desc is "[nil]Opened some door?" 

The southeast-note is a door-note. The printed name is "Tower bridge, when southeast". 
The partial-desc is "[nil]Opened some door?" 

The atelier-door-note is a door-note. The printed name is "Conservatory door (east side)". 
The full-desc is "[nil]One-way (west)." 

The french-door-note is a door-note. The printed name is "French doors (conservatory to garden)". 
The full-desc is "[nil]One-way ([if not discovered]north[otherwise]south -- reversed by tower bridge southwest[end if])." 
The french-door-note can be discovered. 

To check-discover the french-door-note: 
	if french doors injects the Whimzy Garden and the french-door-note is not discovered begin; 
		now the french-door-note is discovered; 
		renotice the french-door-note; 
		now the garden-door-note is discovered; 
		renotice the garden-door-note; 
		erase the southwest-note; 
	end if. 

The garden-door-note is a door-note. The printed name is "Garden door (east side)". 
The partial-desc is "[nil][if not discovered]Closed; opened by[otherwise]Opened by[end if] ???". 
The full-desc is "[nil]One-way ([if not discovered]west[otherwise]east -- reversed by tower bridge southwest[end if])." 
The garden-door-note can be discovered. 

The floor-segment-note is a door-note. The printed name is "Hallway floor segment". 
The partial-desc is "[nil][if not discovered]Raised?[otherwise]Moving along hall lowers it?[end if]". 
The full-desc is "[nil]Eastward in hall lowers; westward in hall raises." 
The floor-segment-note can be discovered. 

To real-notice the floor-segment-note: 
	if the floor-segment-note is discovered, stop; 
	now the floor-segment-note is discovered; 
	renotice the floor-segment-note. 

To notice (N - door-note): 
	if N is noticed, stop; 
	now N is noticed; 
	renotice N; 
	choose a blank row in the Table of Door Notes; 
	change Obj entry to N. 

To renotice (N - door-note): 
	if N is unread, stop; 
	now N is unread; 
	increase the unread-count by one. 

To erase (N - door-note): 
	if N is erased, stop; 
	now N is erased; 
	if N is unread, 
		decrease the unread-count by one. 

To fully understand (N - door-note): 
	if N is understood, stop; 
	now N is understood; 
	renotice N. 

Section - Deaths 

To say notes recitation of deaths: 
	if the living count is seven, 
		say "You look over your notes on the players. Only fragments at this point, and of course all subject to revision and rearrangement -- as the possibilities warrant."; 
	if the living count is greater than zero and the living count is less than seven, 
		say "You look over your notes on the players."; 
	say verse of Viscount; 
	say verse of Cousin; 
	say verse of Lady; 
	say verse of Madame; 
	say verse of Butler; 
	say verse of Boy; 
	say verse of Girl. 

To say verse of (A - archetype): 
	say break; 
	if A is not dead begin; 
		say fragment of A; 
	else; 
		say "[italic type]"; 
		carry out the commemorating activity with A; 
		say "[roman type][break]"; 
	end if; 

An archetype has some text called the fragment. The fragment is usually "(BUG.)" 

The fragment of the Viscount is "Lovely lady, jewels...? finger... ringer (no)[line break]Falls into a cup... [Viscount] drinks it up..." 

The fragment of the Butler is "Brush and pigment (?) Lovely form[line break][Butler] something something, meets his end." 

The fragment of the Lady is "[Lady] has been seen... with device/machine?[nil]The Viscount, with his poker(?) made a scene..." 

The fragment of the Cousin is "Something something, silver tray[line break][Cousin] picked up a glass, ???" 

The fragment of the Madame is "[Madame]... meal, beneath ?candelabrum wheel[line break]Lights went out, la la la, knife appeared." 

The fragment of the Boy is "[Boy] will dance... tower roof?[nil]Unsteady, jape/grape?" 

The fragment of the Girl is "[Girl], la la la bell[line break]Something something, down the well." 

Commemorating something is an activity. 
Rule for commemorating something (called A): 
	say "(BUG) death of [A]". 


Rule for commemorating the Viscount when the fate of Viscount is the melee-intent: 
	if the melee-intent is part of the Chandelier, 
		instead say "[Viscount] has finally learned / Harsh experience discerned[line break]The value of (or maybe not) / Striking while the wire is hot"; 
	say "[Cousin] has now been seen / Tarrying with C__[apostrophe]s machine[line break][Viscount] came forth to fret / A scrap both men may soon regret". 

Rule for commemorating the Viscount when the fate of Viscount is the stealth-intent: 
	say "[Viscount] demands the meal / Beneath the bright electric wheel[line break]The lights go out, the lights come on / A knife appears, the meal is done". 

Rule for commemorating the Viscount when the fate of Viscount is the toxic-intent: 
	say "The butler has a silent way / Of offering a silver tray[line break][Viscount] picked up a glass / And drank it trustingly, alas". 

Rule for commemorating the Viscount when the fate of Viscount is the chemic-intent: 
	say "Beauteous lady, gazes linger / Starlight sparkles on her finger[line break]Starlight falls into a cup / [Viscount] will drink it up". 


Rule for commemorating the Cousin when the fate of Cousin is the melee-intent: 
	say "[Viscount]... (see above)". 

Rule for commemorating the Cousin when the fate of Cousin is the toxic-intent: 
	say "The butler has a silent way / Of offering a silver tray[line break][Cousin] picked up a glass / And drank it trustingly, alas". 

Rule for commemorating the Cousin when the fate of Cousin is the chemic-intent: 
	say "Beauteous lady, gazes linger / Starlight sparkles on her finger[line break]Starlight falls into a cup / [Cousin] will drink it up". 


Rule for commemorating the Madame when the fate of Madame is the stealth-intent: 
	say "[Madame] is served the meal / Beneath the bright electric wheel[line break]The lights go out, the lights come on / A knife appears, the meal is done". 

Rule for commemorating the Madame when the fate of Madame is the toxic-intent: 
	say "The butler has a silent way / Of offering a silver tray[line break][Madame] picked up a glass / And drank it trustingly, alas". 

Rule for commemorating the Madame when the fate of Madame is the chemic-intent: 
	say "Beauteous lady, gazes linger / Starlight sparkles on her finger[line break]Starlight falls into a cup / [Madame] will drink it up". 

Rule for commemorating the Madame when the fate of Madame is the oscillic-intent: 
	say "[Madame] will seek no more / For treasures out beyond her door[line break]Enticed to take demanding measures / For her solitary pleasures". 


Rule for commemorating the Lady when the fate of Lady is the stealth-intent: 
	say "[Lady] is served the meal / Beneath the bright electric wheel[line break]The lights go out, the lights come on / A knife appears, the meal is done". 

Rule for commemorating the Lady when the fate of Lady is the toxic-intent: 
	say "The butler has a silent way / Of offering a silver tray[line break][Lady] picked up a glass / And drank it trustingly, alas". 

Rule for commemorating the Lady when the fate of Lady is the melee-intent: 
	say "[Lady] has now been seen / Tarrying with C__[apostrophe]s machine[line break]The Viscount, chewed with envy green / Made a rather violent scene". 

Rule for commemorating the Lady when the fate of Lady is the berserk-intent: 
	say "Brush and pigment limn a form / Paint is cold but flesh is warm[line break][Lady], though never lewd / Meets her end while sitting nude". 


Rule for commemorating the Butler when the fate of Butler is the stealth-intent: 
	say "[Butler] serves forth the meal / Beneath the bright electric wheel[line break]The lights go out, the lights come on / A knife appears, the meal is done". 

Rule for commemorating the Butler when the fate of Butler is the melee-intent: 
	say "The Viscount has nearby been seen / Tarrying with C__[apostrophe]s machine[line break][Butler] in green is penned / Arrives in fury, meets his end". 

Rule for commemorating the Butler when the fate of Butler is the berserk-intent: 
	say "Brush and pigment limn a form / Paint is cold but flesh is warm[line break][Butler] in green is penned / Arrives in fury, meets his end". 


Rule for commemorating the Boy when the fate of Boy is the bacchanal-intent: 
	say "Boy will dance as he is able / High above the rooftop gable[line break]Encouraged by a little jape / Unsteadied by a touch of grape". 


Rule for commemorating the Girl when the fate of Girl is the ringing-intent: 
	if the ringing-intent is part of the well, 
		instead say "Little girl with silver bell / Lost it down the garden well[line break]Little girl she followed after / Trailing silver bubbling laughter"; 
	if the ringing-intent is part of the woodstove, 
		instead say "Little girl did laugh and rove / Lost her bell beneath the stove[line break]Little girl she burned to follow / To her toy's new hidey-hollow"; 
	say "(BUG) death of [Girl], ringing". 


Section - Credits 

Displaying credits is an action out of world. 
Understand "about" as displaying credits. 
Understand "credits" as displaying credits. 

Report displaying credits: 
	say "[italic type][Story title][roman type] is copyright 2006 by Andrew Plotkin [fixed letter spacing]<erkyrath@eblong.com>[variable letter spacing]. It may be distributed for free, but not sold or included in any for-profit collection without written permission from the author. The game was written for the Twelfth Annual IF Competition. For more IF by the same author, see [fixed letter spacing]<http://eblong.com/zarf/if.html>[variable letter spacing].[break]"; 
	say "Thanks to the beta-testers: Jason McIntosh, Bill Racicot, Adam Thornton, Emily Short.[break]"; 
	say "[italic type][Story title][roman type] spun out of a dizzying array of influences, including Mark Z. Danielewski's [italic type]House of Leaves,[roman type] Kit Manson's [italic type]Maze,[roman type] and -- of course -- the works of Edward Gorey. (Or should I say 'Ogdred Weary'?) I offer it with my memories of John M. Ford, who died in the final days of the game's creation. I didn't think of Ford as an influence on [italic type][Story title][roman type] when I started writing it. I suppose I didn't need to." 
