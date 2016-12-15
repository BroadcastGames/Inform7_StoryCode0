"Fragile Shells" by Stephen Granade

[The source code to Fragile Shells is licensed under a Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License. You are encouraged to take large chunks of the source and incorporate them into your games.]

Include Extended Banner by Stephen Granade.
Include Plurality by Emily Short.

[TK UPDATE RELEASE NUMBER]

[Version history

1: 31 Jan 2010, for the Jay Is Games Casual Game Design Competition #7.
2: 4 Feb 2010, to add a few synonyms (like >REMOVE <stuck thing>).
3: 3 Mar 2010, to fix minor bugs.
4: 1 Apr 2010, to add the final bit of story I should have put in there in the first place.
5: 9 May 2010, to fix a lot of stuff found through a ClubFloyd runthrough
6: 9 Nov 2011, to fix some minor stuff]

The release number is 6. The story creation year is 2010. The story headline is "An Interactive Escape". The story genre is "Science Fiction". The story copyright string is "2010". The story rights statement is "All rights reserved." The story description is "You don't know how long you've been hammering against the station's wall, but you stop as soon as you realize what you've been doing."

Volume 0 - On New Say Phrases and Workarounds

Chapter 1 - New Generic Say Phrases

To say mdash: say unicode 8212;

To say is-are of (L - a list of objects):
	if the number of entries in L is 1, say "is";
	otherwise say "are".

To say s of (L - a list of objects):
	if the number of entries in L is 1, say "s".

Chapter 2 - I7 Extensions and Workarounds

[Since you can't pass variables defined by "let" or phrase options to another phrase (i.e. I7 has no closures), this hacky global workaround.]
hacky global item is an object that varies.

Volume 1 - On New and Changed Kinds

A weapon is a kind of thing.

A thing can be small, large, or clippable. A thing is usually large.

A thing can be tubular. A thing is usually not tubular.

[A one-time deal. Concept borrowed from zarf. NB that you cannot examine a one-time deal without affecting it all Schrodinger-like. The first time you query it, it is changed from not over to over.]
A one-time deal is a kind. A one-time deal can be over. The specification of a one-time deal is "Represents an event that should occur once and only once. You can see whether a one-time deal has occurred or not, but note that the first time you do so, the one-time deal is then considered to have occurred."
To decide if (d - a one-time deal) has occurred:
	if d is over, decide yes;
	now d is over;
	decide no.

To decide if (d - a one-time deal) has not occurred:
	if d has occurred, decide no;
	decide yes.

Chapter 1 - Directions

The starboard is a direction. The starboard has opposite port. Understand "sb" as starboard.

The port is a direction. The port has opposite starboard. Understand "p" as port.

The fore is a direction. The fore has opposite aft. Understand "f" as fore. Understand "forward" as fore.

The aft is a direction. The aft has opposite fore. Understand "a" as aft.

The fore-starboard is a direction. The fore-starboard has opposite aft-port.

The aft-port is a direction. The aft-port has opposite fore-starboard.

The fore-port is a direction. The fore-port has opposite aft-starboard.

The aft-starboard is a direction. The aft-starboard has opposite fore-port.

Index map with fore mapped as north. Index map with aft mapped as south. Index map with port mapped as west. Index map with starboard mapped as east.

[Map N, S, E, and W to fore, aft, starboard, and port]
Before going north, instead try going fore.
Before going south, instead try going aft.
Before going east, instead try going starboard.
Before going west, instead try going port.
Before going northeast, instead try going fore-starboard.
Before going northwest, instead try going fore-port.
Before going southeast, instead try going aft-starboard.
Before going southwest, instead try going aft-port.

[Mark which directions are nautical or compass-based.]
A direction can be nautical or compass-based. A direction is usually compass-based.

Starboard, port, fore, aft, fore-starboard, aft-port, fore-port, and aft-starboard are nautical.

[I want to know if a direction is opposite another one in a general sense: north, northeast, and northwest are generally away from south, southeast, and southwest, for example. I only define this for nautical directions, though, since compass-based directions get mapped to nautical ones.]
To decide if (d1 - a direction) is generally opposite from (d2 - a direction):
	if d1 is:
		-- fore:
			if d2 is aft or d2 is aft-starboard or d2 is aft-port:
				decide yes;
			decide no;
		-- aft:
			if d2 is fore or d2 is fore-starboard or d2 is fore-port:
				decide yes;
			decide no;
		-- starboard:
			if d2 is port or d2 is fore-port or d2 is aft-port:
				decide yes;
			decide no;
		-- port:
			if d2 is starboard or d2 is fore-starboard or d2 is aft-starboard:
				decide yes;
			decide no;
		-- fore-starboard:
			if d2 is aft-port or d2 is port or d2 is aft:
				decide yes;
			decide no;
		-- fore-port:
			if d2 is aft-starboard or d2 is starboard or d2 is aft:
				decide yes;
			decide no;
		-- aft-starboard:
			if d2 is fore-port or d2 is port or d2 is fore:
				decide yes;
			decide no;
		-- aft-port:
			if d2 is fore-starboard or d2 is starboard or d2 is fore:
				decide yes;
			decide no;

Chapter 2 - Openupables

An openupable is a kind of thing. An openupable can be openable. An openupable is usually openable. An openupable can be open or closed. An openupable is usually closed.

Volume 2 - On Changes to the World Model

Chapter 1 - New and Changed Actions

Rule for deciding whether all includes fixed in place things: it does not.

Understand "dog [something]" as closing. Understand "undog [something]" as opening.

Understand "ride [something]" or "ride on [something]" as entering.

Understand "let go of [things preferably held]" as dropping. Understand "release [things preferably held]" as dropping.

Understand the command "yank" as "pull".

Understand the command "stick" as "tie".

Understand "chain [something] to [something]" or "loop [something] around [something]" or "clip [something] to [something]" or "combine [something] with [something]" or "combine [something] and [something]" or "tie [something] around [something]" as tying it to.

Understand "screw [something preferably held] to [something]" or "screw [something preferably held] on [something]" as putting it on.

Instead of jumping, say "You can't really jump inside the station in zero-g."
Instead of jumping when in the Science Room or in the Sleep Room, try going aft.
Instead of jumping when in EVA, try going aft.

Instead of listening, say "You can't hear anything but your own breathing and the soughing of oxygen in your helmet."

Instead of smelling, say "The only thing you can smell is yourself inside this suit."

Instead of smelling the player, say "You're starting to smell inside this suit."

Instead of thinking, say "It makes your head hurt worse to do so, but you'll do your best."

Instead of climbing something, say "Zero-g means never having to climb things."

Breathing is an action applying to nothing. Understand "breathe" as breathing. Report breathing: say "You've got plenty of oxygen, but there's no need to start hyperventilating, especially since you're not sure you could stop once you started."

Report an actor touching (this is the gloved report touching things rule):
	instead say "You feel nothing unexpected, mainly because you're wearing gloves."

The gloved report touching things rule is listed before the report touching things rule in the report touching rulebook.

Report dropping (this is the player can't really drop things in zero-g rule):
	say "You leave [it-them of the noun] floating." instead.
The player can't really drop things in zero-g rule is listed before the standard report dropping rule in the report dropping rulebook.

[New-ish commands]

Waxing nostalgic is an action applying to nothing. Understand "xyzzy" or "plugh" or "plover" or "yoho" as waxing nostalgic.

Report waxing nostalgic: say "If you could teleport from the station to Earth, you'd do it in a heartbeat."

Diagnosing is an action applying to nothing. Understand "diagnose" as diagnosing.

Report diagnosing: say "The suit's mini-doc [if in EVA]warns you that your blood pressure and respiration have spiked. Oh, and you probably have a concussion[otherwise]reports that you have a concussion[end if]."

Flipping is an action applying to one thing. Understand "flip [something]" as flipping.
Check flipping:
	abide by the can't switch on unless switchable rule;
	if the noun is switched on, try switching off the noun instead;
	try switching on the noun instead.

[Make "attack" require another noun]
Attacking it with is an action applying to two things. Understand "attack [something] with [something preferably held]" as attacking it with.

[This next rule is necessary.]
Before attacking something:
	if a weapon (called the sap) is held by the player:
		say "(with [the sap])";
		instead try attacking the noun with the sap.

Rule for supplying a missing second noun while attacking something with:
	if a random weapon (called the sap) is held by the player:
		say "(with [the sap])";
		change the second noun to the sap.

Report attacking it with: instead say "[The second noun] do[es] not make a very good weapon."

[Allow "turn" to take another noun, and remap it to unlock with]
Turning it with is an action applying to two things. Understand "turn [something] with [something preferably held]" as turning it with.

Report turning something with something: say "[That-those] do[es]n't seem to be something you can unscrew."

[Create verbs to support "move <x> with <y>" and "prise/pry <x> with <y>"]
Prying it with is an action applying to two things. Understand "pry [something] with [something preferably held]" or "pry [something]" as prying it with. Understand the command "prise" as "pry".

Check prying something with something that is not held (this is the must hold prying things rule):
	say "(first taking [the second noun])[command clarification break]";
	try taking the second noun;
	if the actor is not holding the second noun, stop the action.

Report prying it with: instead say "[The second noun] isn't well suited for prying anything."

Moving it with is an action applying to two things. Understand "move [something] with [something preferably held]" or "push [something] with [something preferably held]" or "pull [something] with [something preferably held]" as moving it with.

Report moving it with: instead say "[The second noun] isn't well suited for moving anything."

Freeing it with is an action applying to two things. Understand "free [something] with [something preferably held]" as freeing it with.

Report freeing it with: instead say "[The noun] do[es]n't need freeing in that way."

Taking it with is an action applying to two things. Understand "take [something] with [something preferably held]" or "get [something] with [something preferably held]" or "hook[something] with [something preferably held]" or "reach [something] with [something preferably held]" or "pick up [something] with [something preferably held]" or "pick [something] up with [something preferably held]" as taking it with.

Before taking something with something that is not held (this is the must hold things used to take other things rule):
	say "(first taking [the second noun])[command clarification break]";
	silently try taking the second noun;
	if the actor is not holding the second noun, stop the action.

The last carry out taking it with rule (this is the convert taking it with to plain taking rule):
	try taking the noun instead.

Plugging is an action applying to one thing. Understand "plug [things]" as plugging. Understand the command "connect" as "plug". Understand the command "re-attach" as "plug". Understand the command "re-connect" as "plug".

Report plugging something: instead say "[That-those] do[es]n't need plugging."

Plugging it into is an action applying to two things. Understand "plug [something] into [something]" or "plug [something] to [something]" as plugging it into.

Report plugging it into: instead say "There's nowhere to plug anything into [the second noun]."

Unplugging is an action applying to one thing. Understand "unplug [things]" or "disconnect [things]" as unplugging.

Report unplugging something: instead say "[Cap that-those] do[es]n't need unplugging."

Unplugging it from is an action applying to two things. Understand "unplug [something] from [something]" or "disconnect [something] from [something]" as unplugging it from.

Report unplugging it from: instead say "[The noun] do[es]n't need unplugging."

Detaching is an action applying to one thing. Understand "detach [something]" or "unstick [something]" or "unattach [something]" as detaching.

Report detaching something: instead say "[Cap that-those] do[es]n't need to be detached."

Detaching it from is an action applying to two things. Understand "detach [something] from [something]" or "unstick [something] from [something]" or "unattach [something] from [something]" as detaching it from.

Report detaching it from: instead say "[The noun] do[es]n't need detaching."

Understand "untie [something] from [something]" or "unchain [something] from [something]" or "unclip [something] from [something]" as untying it from.
Understand "untie [something]" or "unchain [something]" or "unclip [something]" as untying it from.

Untying it from is an action applying to two things.

Check untying it from:
	unless the noun is chained to the second noun or the second noun is chained to the noun, say "[The noun] and [the second noun] aren't chained together." instead.

Carry out untying it from:
	now the noun is not chained to the second noun.

Report untying it from:
	say "Unchained."

Typing it on is an action applying to one topic and one thing. Understand "type [text] on [something]" or "enter [text] on [something]" or "type [text]" or "enter [text]" as typing it on.

Report typing it on: say "You can't type on [the second noun]."

Understand "type" as a mistake ("You'll have to say what word you want to type and what you'll be typing on.").

Typing on is an action applying to one thing. Understand "type on [something]" as typing on.

Report typing on: say "You can't type on [the noun]."

Thinking abstractly about is an action applying to one topic. Understand "who is [text]" or "who's [text]" or "whos [text]" or "who am [text]" or "think about [text]" or "ponder [text]" or "remember [text]" as thinking abstractly about.

Thinking concretely about is an action applying to one thing. Understand "who is [something]" or "who's [something]" or "whos [something]" or "who am [something]" or "think about [something]" or "ponder [something]" or "remember [something]" as thinking concretely about.

Carry out thinking abstractly about: say "You can mainly think about the spacestation crewmembers."

Instead of thinking abstractly about a topic listed in the Table of Crewpersons:
	say "[reply entry][paragraph break]".

Instead of thinking concretely about the empty spacesuit, try thinking abstractly about "suzan".

Carry out thinking concretely about:
	if the noun is the player, instead try thinking abstractly about "me";
	say "You can mainly think about other the other spacestation crewmembers."

Table of Crewpersons
topic	reply
"suzan/susan harrison" or "suzan/suze/susan" or "harrison"	"Suzan's the mission commander. You've known Captain Harrison for years, having served together on three separate missions, one of which will remain redacted for a long time to come."
"simon mahil" or "simon" or "mahil" or "i" or "me"	"You've been piloting EELV-boosted spacecraft for nearly a decade. As a reward for doing such a good job you got stuck onboard the space station for months."
"quintin davies" or "quintin" or "davies"	"Mission Specialist Quintin Davies, Warrant Officer and all-around skilled technician. His PhD is in physics, which means everyone made him deal with the station's plumbing and constant electrical problems."
"patricia morrison" or "patricia" or "morrison"	"Dr. Patricia Morrison has authored numerous definitive papers on the effect of long-term space travel and weightlessness in space. You haven't had a chance to see what kind of hands-on doctor she is, but after today you'll hopefully get your chance."
"crippen"	"Robert Crippen was the first pilot of the NASA Space Shuttle to take it to orbit, way back in 1981. It's become something of an in-joke to swear by him."

[The player, by the bye, is a London-born Indian of Punjabi/Sikh descent]

Chapter 2 - Keeping Track of What Has Been Seen

[Use a variant of Eric's Epistemology to track when we've seen something or not. I want to also mark items when they're explicitly examined, and I don't want things marked as seen/examined until after examining (instead of before, as is done in Eric's extension).]

A thing can be seen or unseen. A thing is usually unseen.
A thing can be examined or unexamined. A thing is usually unexamined.

Carry out looking (this is the mark items as seen when looking rule):
	unless in darkness:
		repeat with item running through the things enclosed by the location:
			if the item is not enclosed by an opaque closed container:
				now the item is seen.

Carry out examining something visible (this is the mark items as seen on examining rule):
	now the noun is seen;
	now the noun is examined.

The mark items as seen on examining rule is listed last in the carry out examining rulebook.

[If the item has no description or is a direction, it now won't be marked as seen b/c the above rule is listed last in the rulebook. Let's add a new rule to catch these corner cases. Note that "goes undescribed by the source text" is defined by and discussed in the standard rules.]
Carry out examining something visible (this is the mark undescribed items as seen on examining rule):
	if the noun goes undescribed by source text:
		follow the mark items as seen on examining rule.

Carry out opening a container (this is the mark items as seen on opening a container rule):
	repeat with item running through things that are enclosed by the noun:
		if the item is unseen and the item is visible then change the item to seen.

The mark items as seen on opening a container rule is listed after the standard opening rule in the carry out opening rules.

Chapter 3 - Fiddled Descriptions

[I don't want the extra paragraph after a device's description saying what its state is.]
The examine described devices rule is not listed in the carry out examining rulebook.

[I also don't want supporters to list their contents in room descriptions.]
The describe what's on scenery supporters in room descriptions rule is not listed in the for printing a locale paragraph about rulebook.

Chapter 4 - Updated Inventory

[The inventory rules skip mentioning anything spacesuity, and all small items are described as being in your pouch. Since the only thing you can wear is the spacesuit, I'll hard-code that description in. I also don't bother having inventory rules for holding containers or supporters because there are none in this game.]

[N.B. much of this is taken wholesale from Jon Ingold's "Written Inventory" extension, but reworked for my nefarious purposes.]

[Some things can be hidden from the inventory. I do this via a hacky definition.]
Definition: a thing is inventoried:
	if it is not the stick pad and it is adhered, decide no;
	decide yes.

Definition: a thing is suit-clipped:
	if it is clippable, decide yes;
	if it is the chain and it is available for chaining, decide yes;
	decide no.
Definition: a thing is not-suit-clipped if it is not suit-clipped.

Encasement relates a thing (called X) to a thing (called Y) when X is part of Y or X is held by Y. The verb to be encased by implies the encasement relation.

The print empty inventory rule is not listed in the carry out taking inventory rules.
The print standard inventory rule is not listed in the carry out taking inventory rules.

Definition: a container is empty if the number of things in it is zero. 
Definition: a supporter is empty if the number of things on it is zero. 
Definition: a thing is empty if the number of things encased by it is zero.

Definition: a thing is non-empty if it is not empty. 

[All of the following code is extremely slow in Parchment. Like, seconds of pause between listing things. So I'll generate the lists by hand, which is not nearly as neat, but hey.]
[The first carry out taking inventory rule (this is the intro list rule):
	say "You're [run paragraph on]";

Carry out taking inventory when the number of inventoried large things carried by the player is zero (this is the new semi-empty inventory rule):
	say "wearing a flex spacesuit[run paragraph on]";
	if the number of inventoried non-spacesuity things had by the player is zero, say "." instead.

Carry out taking inventory when the number of inventoried large things carried by the player is greater than zero (this is the carrying in spacesuit inventory rule):
	say "carrying [a list of inventoried not-suit-clipped large things carried by the player] and you're wearing a flex spacesuit[run paragraph on]";

Carry out taking inventory when the number of inventoried small things carried by the player is greater than zero (this is the carrying in pouch inventory rule):
	say ". You also have [a list of inventoried small things carried by the player] stored in your suit pouch[run paragraph on]";

Carry out taking inventory when the number of inventoried suit-clipped things carried by the player is greater than zero (this is the carrying clipped to the suit inventory rule):
	say ". Clipped to your suit is [a list of inventoried suit-clipped things carried by the player][run paragraph on]";

The last carry out taking inventory rule (this is the outro list rule):
	say "."
]

[There's a strange bug where, when I build up a list in Carry out taking inventory w/two elements, the elements are printed as "a book, and a bell" instead of "a book and a bell".]

[TK For some reason this doesn't work at all. When called, it ends up with a list w/0 elements. Weird.]
[To two-print (L - a list of objects) with indefinite articles:
	if the number of entries in L is not 2:
		report bug "There should have only been two objects in the list that we just tried to print.";
		say "(only [number of entries in L] entries: [L with indefinite articles]) ";
	otherwise:
		let O1 be entry 1 of L;
		let O2 be entry 2 of L;
		say "[a O1] and [a O2]".]

Carry out taking inventory:
	let inv-list be the list of inventoried things carried by the player;
	let large-list be a list of things;
	let small-list be a list of things;
	let suit-clipped-list be a list of things;
	repeat with O running through inv-list:
		if O is large and O is not-suit-clipped:
			add O to large-list;
		otherwise if O is small:
			add O to small-list;
		otherwise if O is suit-clipped:
			add O to suit-clipped-list;
	say "You're [run paragraph on]";
	if the number of entries in large-list is greater than 0:
		say "carrying ";
		if the number of entries in large-list is 2:
			say "[a entry 1 of large-list] and [a entry 2 of large-list]";
			[two-print large-list with indefinite articles;]
		otherwise:
			say large-list with indefinite articles;
		say " and you're [run paragraph on]";
	say "wearing a flex spacesuit[run paragraph on]";
	if the number of entries in small-list is greater than 0:
		say ". You also have ";
		if the number of entries in small-list is 2:
			say "[a entry 1 of small-list] and [a entry 2 of small-list]";
			[two-print small-list with indefinite articles;]
		otherwise:
			say small-list with indefinite articles;
		say " stored in your suit pouch[run paragraph on]";
	if the number of entries in suit-clipped-list is greater than 0:
		say ". Clipped to your suit is ";
		if the number of entries in suit-clipped-list is 2:
			say "[a entry 1 of suit-clipped-list] and [a entry 2 of suit-clipped-list]";
			[two-print suit-clipped-list with indefinite articles;]
		otherwise:
			say suit-clipped-list with indefinite articles;
	say "."

Chapter 5 - Gawking At as an Activity to Tack Things Onto Room Descriptions

[This first look rule is taken from the Saint Eligius example.]

The first look rule is listed after the room description paragraphs about objects rule in the carry out looking rules. A room can be commented or uncommented. A room is usually uncommented. 

This is the first look rule: 
    if the location is uncommented, carry out the gawking at activity with the location. 

Gawking at something is an activity. 

After gawking at a room (called the target): now the target is commented.

Chapter 6 - Distant Items

[Add a new thing: distant items, which can't be reached. c.f. the Electrified example]
A thing can be distant. A thing is usually not distant.

To say out-of-reach message for (n - a thing):
	if n is the faraway external battery module, say "You can't reach the battery from here, and there isn't anything to use as handholds near the edge. The only way you can reach the battery is to go for a spacewalk, and that's suicide without a tether.";
	otherwise say "You can't reach [the n] from here."

This is the check for distant items rule:
	if the action requires a touchable noun and the noun is not nothing and the noun is not a direction and the noun is not a room:
		if the noun is distant, say out-of-reach message for the noun instead;
	if the action requires a touchable second noun and the second noun is not nothing:
		if the second noun is distant, say out-of-reach message for the second noun instead;

The check for distant items rule is listed before the basic accessibility rule in the action-processing rules.

[Also, since I occasionally put far-away things into scope:]
Before doing something other than examining to something which is not enclosed by the location (this is the player isn't Mister Fantastic rule):
	let l be the noun;
	if l is enclosed by the location and the second noun is not nothing, change l to the second noun;
	if l is distant, continue the action;
	if l is a backdrop and l is in the location, continue the action;
	[The chain is an exception to this]
	if l is the chain, continue the action;
	if l is the external battery module, instead say out-of-reach message for the faraway external battery module;
	instead say "[The l] [is-are of l] too far away.";

Does the player mean doing something other than examining something which is not enclosed by the location: it is very unlikely.

Chapter 7 - Changed Parsing

[Map >USE X TO Y Z to >Y Z WITH X]

After reading a command:
	if the player's command matches the text "use ":
		let T be indexed text;
		let T be the player's command;
		replace the regular expression "^use (.+?) to (.+)" in T with "\2 with \1";
		change the text of the player's command to T.

Chapter 8 - Cross-Connecting Relation for Wires, Plus Wire-Things (which should be in Volume 1 but oh well)

A wire-thing is a kind of thing. A wire-thing can be connected or disconnected. A wire-thing is usually connected. A wire-thing is usually fixed in place.

Cross-connecting relates one thing to another (called the other wire).

The verb to cross-connect (it cross-connects, they cross-connect, it cross-connected, it is cross-connected, it is cross-connecting) implies the cross-connecting relation. The verb to be cross-connected to implies the cross-connecting relation.

Definition: A wire-thing is hooked-up if it cross-connects something.
Definition: A wire-thing is non-hooked-up if it cross-connects nothing.

Instead of examining a hooked-up wire-thing:
	say "[The noun] is plugged into [the other wire of the noun]."

Instead of examining a disconnected wire-thing:
	say "[The noun] is disconnected from the panel."

Instead of examining a connected wire-thing:
	say "[The noun] is connected to the panel."

Instead of pulling a wire-thing, try unplugging the noun.

Instead of detaching a wire-thing, try unplugging the noun.

Instead of detaching a wire-thing from something, try unplugging the noun from the second noun.

Instead of tying a wire-thing to a wire-thing, try plugging the noun into the second noun.

Instead of tying a wire-thing to the control panel, try plugging the noun instead.
Instead of inserting a wire-thing into the control panel when the control panel is open, try plugging the noun instead.

Before taking a wire-thing:
	if the noun is connected or the noun cross-connects something, instead try unplugging the noun.

Instead of unplugging a hooked-up thing:
	say "You disconnect [the noun] from [the other wire of the noun].";
	see if the screen turns off;
	now the entire mass of wires is fiddled with;
	now the noun is disconnected;
	now the other wire of the noun is disconnected;
	now the noun cross-connects nothing;
	see if the screen turns on.

Instead of unplugging a hooked-up thing from something:
	if the second noun is not the other wire of the noun, say "[The noun] isn't connected to [the second noun].";
	otherwise try unplugging the noun.

Instead of unplugging a disconnected wire-thing, say "You've already unplugged [the noun]."

Instead of unplugging a connected wire-thing:
	say "You pull [the noun] loose from the panel.";
	see if the screen turns off;
	now the entire mass of wires is fiddled with;
	now the noun is disconnected;
	see if the screen turns on.

Instead of unplugging a connected wire-thing from the control panel, try unplugging the noun.

Before plugging a hooked-up thing:
	say "(first unplugging [the noun] from [the other wire of the noun])[command clarification break]";
	try unplugging the noun from the other wire of the noun;
	if the noun is hooked-up, stop the action.

Instead of plugging a connected wire-thing, say "[The noun] is already plugged into the panel."

Instead of plugging a disconnected wire-thing:
	say "You re-connect [the noun] to the panel.";
	see if the screen turns off;
	now the entire mass of wires is fiddled with;
	now the noun is connected;
	see if the screen turns on.

Before plugging a hooked-up thing into something:
	if the second noun is the other wire of the noun, instead say "[The noun] is already plugged into [the second noun].";
	say "(first unplugging [the noun] from [the other wire of the noun])[command clarification break]";
	try unplugging the noun from the other wire of the noun;
	if the noun is hooked-up, stop the action.

Before plugging a connected wire-thing into something:
	say "(first unplugging [the noun])[command clarification break]";
	try unplugging the noun;
	if the noun is connected, stop the action.

Before plugging something into a hooked-up thing:
	if the noun is the other wire of the second noun, instead say "[The noun] is already plugged into [the second noun].";
	say "(first unplugging [the second noun] from [the other wire of the second noun])[command clarification break]";
	try unplugging the second noun from the other wire of the second noun;
	if the second noun is hooked-up, stop the action.

Before plugging something into a connected wire-thing:
	say "(first unplugging [the second noun])[command clarification break]";
	try unplugging the second noun;
	if the second noun is connected, stop the action.

Instead of plugging a disconnected wire-thing into the control panel:
	say "You plug [the noun] back into the panel.";
	see if the screen turns off;
	now the entire mass of wires is fiddled with;
	now the noun is connected;
	see if the screen turns on.

Instead of plugging a wire-thing into a wire-thing:
	say "You plug [the noun] into [the second noun].";
	see if the screen turns off;
	now the entire mass of wires is fiddled with;
	now the noun cross-connects the second noun;
	now the noun is connected;
	now the second noun is connected;
	see if the screen turns on.

To say list of cross-connected wires:
	now every wire-thing is not marked for listing;
	now every hooked-up non-terminal non-battery-plugged wire-thing is marked for listing;
	let c be 1;
	let cnt be the number of marked for listing wire-things / 2;
	repeat with w running through the marked for listing wire-things:
		if w is not marked for listing, next;
		say "[if c is not 1], [end if][if c is not 1 and c is cnt]and [end if][if c is 1][The w][otherwise][the w][end if] is plugged into [the other wire of w]";
		now the other wire of w is not marked for listing;
		increment c by 1.

[Wires can be connected, disconnected, cross-connected (aka hooked-up, in which case they're also connected), and battery-plugged (which is a subset of cross-connected but to terminal-things)]
To say connected and disconnected wires:
	let cc be the number of connected non-terminal wire-things;
	let dc be the number of disconnected non-terminal wire-things;
	let bp be the number of battery-plugged wire-things;
	let hu be the number of hooked-up non-terminal non-battery-plugged wire-things;
	let tcc be the number of connected non-hooked-up wire-things;
	let period-flag be 0;
	if dc is greater than zero or bp is greater than zero or hu is greater than zero, say paragraph break;
	if bp is greater than zero:
		say "[The list of battery-plugged wire-things] [if bp is 1]is[else]are[end if] plugged into the battery";
		change period-flag to 1;
	if hu is greater than zero:
		say "[if period-flag is 1]. [end if][list of cross-connected wires]";
		change period-flag to 1;
	[Okay, so. I want to list the disconnected wires, unless there are more of those than connected ones, in which case list the *connected* wires.]
	if dc is greater than zero or tcc is greater than zero:
		if period-flag is 1, say ". [run paragraph on]";
		if dc <= tcc and dc is not zero:
			say "[The list of disconnected non-terminal wire-things] [if dc is greater than 1]are[else]is[end if] disconnected from the panel";
			if tcc is greater than zero:
				say ". The rest of the wires are connected to the panel";
		otherwise if tcc is not zero:
			if dc is zero:
				say "[if bp is greater than zero or hu is greater than zero]The rest[otherwise]All[end if] of the wires are connected to the panel";
			otherwise:
				say "[The list of connected non-hooked-up wire-things] [if tcc is greater than 1]are[else]is[end if] connected to the panel";
				if dc is greater than zero:
					say ". The rest of the wires are disconnected from the panel";
		otherwise:
			say "[if bp is greater than zero or hu is greater than zero]The rest[otherwise]All[end if] of the wires are disconnected from the panel";

[Terminals for the battery]
A terminal-thing is a kind of wire-thing. A terminal-thing is always disconnected.

Definition: a wire-thing is battery-plugged if it cross-connects a terminal-thing.

Definition: a wire-thing is non-battery-plugged if it is not battery-plugged.

Definition: a thing is non-terminal if it is not a terminal-thing.

Chapter 9 - Adhering Relation for Stick Pads

Adhering relates things to each other. The verb to be stuck to implies the adhering relation.

Definition: A thing is adhered if the number of things stuck to it is greater than 0.

Definition: something is anchored if it is fixed in place or it is scenery or it is part of an anchored thing.

To decide if (t1 - a thing) is affixed to (t2 - a thing):
	if t1 is stuck to t2, decide yes;
	[Since only the stick pad is adhering, and it can only adhere to two things, I only have to traverse at most one step in the relation to determine affixing]
	if t1 is stuck to something (called s):
		if s is stuck to t2, decide yes;
	decide no.

After examining an adhered thing (called the stuckee):
	if the stuckee is not the stick pad, say "Stuck to [the stuckee] is [the list of things stuck to the stuckee]."

[Adjust the apparent size of the stick pad as it gets adhered and de-adhered]
To perform a post-adhering check:
	if the stick pad is not adhered:
		now the stick pad is small;
	otherwise:
		let flag be 0;
		repeat with l running through the list of things stuck to the stick pad:
			if l is not small, change flag to 1;
		if flag is 0, now the stick pad is small;
		otherwise now the stick pad is large.

[To make life simple, you can't take or drop adhered things.]
After taking an adhered thing:
	if the noun is the stick pad, now the noun is small;
	say "You remove [the noun] from [the list of things stuck to the noun] and [if the noun is small]put [it-them of the noun] in your pouch[otherwise]take [it-them of the noun][end if].";
	now the noun is stuck to nothing;
	perform a post-adhering check.

After dropping an adhered thing:
	if the noun is the stick pad, now the noun is small;
	say "You remove [the noun] from [the list of things stuck to the noun] and let go of [it-them of the noun].";
	now the noun is stuck to nothing;
	perform a post-adhering check.

A thing can be stickable. A thing is usually stickable.

[These next four rules depend on there only being one thing that sticks (i.e. the stick pad) in the world]
Instead of putting something adhered on something (this is the convert putting to sticking 1 rule):
	if the second noun is adhered, continue the action;
	try tying the second noun to the stick pad.

Instead of putting something on something adhered (this is the convert putting to sticking 2 rule):
	if the noun is adhered, continue the action;
	try tying the noun to the stick pad.

Instead of tying something adhered to something:
	if the second noun is adhered, continue the action;
	try tying the second noun to the stick pad.

Instead of tying something to something adhered:
	if the noun is adhered, continue the action;
	try tying the noun to the stick pad.

[New grammar for removing that takes into account an adhered thing]
Understand "remove [something adhered] from [something]" as detaching it from.
Before taking off an adhered thing, instead try detaching the noun.

[Synchronize this w/changes to the "before tying something to the chain" rule]
Instead of detaching an adhered thing:
	say "You detach [the noun] from [the list of things stuck to the noun].";
	now the noun is stuck to nothing;
	perform a post-adhering check.

Instead of pulling an adhered thing:
	if the noun is anchored, continue the action;
	[Note that this description assumes the stick pad is the only way to adhere things together]
	say "The stick pad isn't very strong[mdash]you give a tug and detach [the noun] from [the list of things stuck to the noun].";
	now the noun is stuck to nothing;
	perform a post-adhering check.

Chapter 10 - Chaining Relation for Lengths of Chain

Chaining relates things to each other. The verb to be chained to implies the chaining relation.

Definition: a thing is restrained if it is chained to something.

Definition: a thing is hindering if it is chained to the noun and it is not within the location.

Definition: a thing is chained-elsewhere if it is chained to the chain and it is not within the location.

[Loopable things can have the chain chained to it.]
A thing can be loopable or unloopable. A thing is usually unloopable.

[New grammar for removing that takes into account a chained thing]
Understand "remove [something restrained] from [something]" as detaching it from.
Before taking off something restrained, instead try detaching the noun.

Volume 3 - On the Physical Environment

Chapter 1 - The Player Character's Stuff

The description of the player is "You're in full kit, suited up against the vacuum[if the wrist readout is not seen and the flex spacesuit is not seen]. Your suit's wrist readout is flashing[end if]."

The player is not stickable.

Some hands are part of the player. The description is "Your hands are gloved." Understand "hand" and "gloved hand/hands" as hands. The hands are not stickable.

The head is part of the player. The description is "As the backup pilot, your head is stuffed full of all kinds of programs that can calculate things like thrust based on what you see and feel, then dump the answers right into short term memory. Getting those programs in there involved a lot of money[mdash]not yours, thankfully[mdash]and delicate surgery.

Come to think of it, the docs warned you that the surgery could make
any neural trauma much worse." Understand "program/programs" as the head. The head is not stickable.

Instead of touching the head, say "Your helmet's in the way, but regardless you can tell you took a nasty blow to the head."

Some legs are part of the player. The description is "Your [if the trapping struts are tight]leg is pinned in some wreckage[else]legs and feet are encased in your spacesuit[end if]." Understand "leg" or "foot" or "feet" as legs. The legs are not stickable.

Instead of touching the legs, say "You can't really feel them since they're in your spacesuit."

A thing can be spacesuity or non-spacesuity. A thing is usually non-spacesuity. Instead of taking or dropping or taking off a spacesuity thing worn by the player, say "Taking off [the noun] would expose you to vacuum. Patricia, your flight medical officer, assured you that that is contraindicated if you want to keep living."

The helmet is worn by the player. The description is "Your helmet includes a forward spotlight." Understand "forward spotlight/spot" and "spotlight/spot" as the helmet. The helmet is spacesuity and not stickable. Instead of switching on the helmet, say "The helmet spotlight is already on." Instead of switching off the helmet, say "You'll leave it on for now, thanks."

Does the player mean switching on the helmet: it is unlikely.
Does the player mean switching off the helmet: it is unlikely.

Some gloves are worn by the player. The description is "Your spacesuit includes gloves." Understand "glove" or "gloved" as gloves. The gloves are spacesuity and not stickable.

The flex spacesuit is worn by the player. The description is "Your suit is a standard-issue flex spacesuit[mdash]not a hardshell, thankfully, which means no radiation concerns. It has the usual handy extras: a pouch for storing small items and D-rings for tethers.[if the flex spacesuit is not seen and the wrist readout is not seen] [the description of the wrist readout][end if]". The flex spacesuit is spacesuity and not stickable and loopable. Understand "suit" or "flexsuit" or "flex suit" or "my suit/spacesuit" as the flex spacesuit.

Instead of searching the flex spacesuit, try taking inventory.

[To give precedence to the empty spacesuit:]
Does the player mean doing something with the flex spacesuit: it is unlikely.

The wrist readout is part of the flex spacesuit. The description is "[if not seen]You reflexively check the suit's readout: p[else]P[end if]lenty of oxygen; no integrity issues. [if in EVA]The suit's mini-doc warns you
that your blood pressure and respiration have spiked. Oh, and you
probably have a concussion[otherwise]The health report is rather more worrying, though. The suit thinks you've had a concussion[end if]." Understand "suit readout" or "health report" or "report" as the wrist readout. The wrist readout is not stickable.

The pouch is a closed container. It is part of the flex spacesuit. The description is "A small snap pouch for holding sundries[if the number of small things carried by the player is greater than zero] such as [the list of small things carried by the player] that you currently have in there[end if]." Understand "snap pouch" as the pouch. Instead of opening the pouch, say "No need. You've long trained to open the pouch only long enough to put something in or take something out of it." The pouch is not stickable.

[Small items are stored in the pouch.]

Before taking a small thing (called the pouched-thing) that is carried by the player:
	instead say "It's best to leave [the pouched-thing] in the pouch instead of carrying it in your hands."

Instead of searching the pouch:
	let l be the list of inventoried small things carried by the player;
	if the number of entries in l is greater than zero, say "You have [l with indefinite articles] stored in the pouch.";
	otherwise say "There's nothing in the pouch."

Instead of inserting a small thing into the pouch:
	if the noun is carried, say "It is already in the pouch.";
	otherwise try taking the noun.

Instead of inserting a large thing into the pouch, say "[The noun] won't fit in the pouch."

The d-ring is part of the flex spacesuit. The description is "A D-shaped ring of metal attached to your spacesuit." Understand "d ring/rings" or "d-rings/ring/rings" as the d-ring. The d-ring is loopable and not stickable.

[Clipped items are clipped to the D-ring.]
Before taking a clippable thing (called the clipped-thing) that is carried by the player:
	instead say "It's best to leave [the clipped-thing] clipped to your spacesuit instead of carrying it in your hands."

The survival backpack is part of the spacesuit. The description is "You can't really see it, but you know it's back there providing oxygen and scrubbing carbon dioxide." Before taking off the backpack, instead try taking off the flex spacesuit. The survival backpack is not stickable.

Some boots are part of the spacesuit. The description is "Your boots have small electromagnets and prox sensors inbuilt that let them grab hold to the outside of the station for EVAs." Understand "boot" as the boots. The boots are not stickable.

Chapter 2 - Rooms and Their Contents

Section 0 - Dark Area

[This section is listed before the regions section b/c otherwise the game will by default start the player in a room other than Dark Area. Dark Area must be the first-named room in the source.]

A calm survey is a one-time deal.

To say initial survey:
	if a calm survey has not occurred, say "You take a more calm survey of your surroundings this time. You're in Node 4, the cylindrical science module. Some of the walls and bulkheads have buckled and parts of the module are now floating free or have otherwise been shoved to where they shouldn't be. You just know as soon as the news reaches Earth that the net'll light up with cries of how much taxpayer money went out the airlock.[paragraph break]"

Dark Area is a room. "[if unvisited]Something took out the fluorescents, so the only light comes from your helmet's forward spot. Since you're facing the wall you twist your neck and look around frantically, your spotlight dancing across the remains of Node 4, before you realize what a bad idea moving your head fast is[otherwise][initial survey]You're pinned near the starboard wall by some wreckage. Since you're facing the wall you've got a good view of the supplemental lighting switch that's at chest height[end if]."

Rule for printing the name of the Dark Area: do nothing. Rule for printing the name of the Dark Area while constructing the status line: say "In the Dark".

The fake-node-4 is scenery in the Dark Area. Understand "station" or "node 4" or "node four" or "wall" as the fake-node-4. Instead of examining the fake-node-4, try looking.

To say dark-strut-details:
	if the player is in the Dark Area, say "ou train your spotlight on the metal wrapped around your leg and see that y";

Some trapping struts are in the Dark Area. The description is "[if the trapping struts are loose]Some of the struts have bowed out of the floor[else]Y[dark-strut-details]ou're trapped by two struts that bowed out of the floor when[mdash]well, when whatever happened happened. It looks like you wedged your foot in between them for purchase and got caught, though you can't remember doing that. The struts are covered in scratches and dents, as if someone previously attacked it with a heavy object[end if]." The printed name of trapping struts is "struts". Understand "wreckage" or "scratches" or "dents" or "strut" as trapping struts. The struts can be tight or loose. The struts can be tested or untested.  The struts are tight, untested and loopable.

The trapping struts are scenery. Instead of taking the trapping struts, say "The struts are part of the station's infrastructure. You're not going to be able to take them." Instead of opening the trapping struts when the prise bar is carried, try prying the trapping struts with the prise bar.

Instead of going when the trapping struts are tight:
	if the trapping struts are not tested:
		say "You push off against the wall only to be pulled up short when one of your legs doesn't go with you. It's pinned.";
		now the trapping struts are tested;
	else:
		say "You might be able to pull your leg free, but you'd probably breach the suit to do it. Better to find another way.";

Instead of pulling the legs when the trapping struts are tight:
	now the trapping struts are tested;
	try going west.
Instead of taking the legs when the trapping struts are tight:
	now the trapping struts are tested;
	try going west.

Instead of pushing or pulling the trapping struts when the trapping struts are tight, say "You push on the struts but can't free your leg with just your bare hands."

The supplemental lighting switch is scenery in the Dark Area. The description is "The switch turns on and off the Node's supplemental lights. Right now the lights are switched [if switched off]off. If you've been a good little boy, the supplementals will still be working[else]on[end if]." The supplemental lighting switch is a device. Understand "light" as the supplemental lighting switch.

Instead of switching off the supplemental lighting switch when the lighting switch is switched on, say "Thanks, no. Your psych profile didn't turn up any latent claustrophobia, but long enough on ruined space station with no lights might change your mind."

Report switching on the supplemental lighting switch:
	say "Oh thank goodness: the supplemental LED lights begin to glow all along the station. The lights reveal details like the prise bar jammed into a nearby screen and how the entire aft end of Node 4 is gone, ripped away like the end of a tube of biscuits[mdash]

[mdash]you had strapped yourself into the sleeping rack and closed its door, hoping it would provide protection, expecting that it wouldn't, and there was a flash of light visible through the edges of the sleeping rack's door and your head cracked against the wall[mdash]

You pause until a sudden wave of dizziness passes.";
	now the trapping struts are in the Exercise Room;
	now the supplemental lighting switch is in the Exercise Room;
	move the player to the Exercise Room, without printing a room description;
	stop the action.

Section 1 - Regions and Backdrops

Node 4 is a region. Exercise Room, Escape Room, Science Room, and Sleep Room are in Node 4.

The ceiling is a loopable backdrop in Node 4. The description is "The ceiling is not too high above your head."

Instead of tying the ceiling to the chain, say "You'll have to be more specific about what you want to loop the chain around."

The floor is a loopable backdrop in Node 4. The description is "The floor is just below you[if in the Exercise Room]. Some struts have bowed out of the floor[else if in the Science Room]. There's a large crack in it[end if]."

Instead of tying the floor to the chain, say "You'll have to be more specific about what you want to loop the chain around."

Some walls are a loopable backdrop in Node 4. The description is "What's left of the walls are around you." Understand "bulkhead/bulkheads/wall" as the walls. The printed name is "wall".

Instead of tying some walls to the chain, say "You'll have to be more specific about what you want to loop the chain around."

Instead of going up in Node 4, say "Node 4 was designed to look something like a regular rectangular room, so there's not enough room for you to go up or down from where you are."

Instead of going down in Node 4, try going up.

The spacestation is a loopable backdrop in Node 4. Understand "station" or "node 4" or "node four" as the spacestation. Instead of examining the spacestation, try looking.

Instead of tying the spacestation to the chain, say "You'll have to be more specific about what you want to loop the chain around."

The forward hatch is a backdrop. It is in the Exercise Room and the Escape Room. The description is "The hatch is dogged shut." Instead of opening the forward hatch, say "You tug and tug but can't undog the hatch. When Node 4 was damaged, the hatch must have warped enough to be permanently jammed in place." Instead of closing the forward hatch, say "It's already closed." Instead of attacking the forward hatch with the prise bar, say "You brace yourself and take a swing at the hatch, which only knocks you back and does little damage to the hatch."

Instead of prying the forward hatch with the prise bar, say "You aren't able to budge the hatch."

The end of the station is a backdrop. It is in the Science Room and the Sleep Room. The description is "Looking through the open end of the station, you see stars wheel by as the station spins and tumbles[if the faraway external battery module is on-stage]. At the edges of the station you can see one of the station's batteries barely attached to the outside of the station[end if]." Understand "hole/edge/edges" or "spacestation" or "ragged edge/edges" or "jagged edge/edges" or "open" or "opening" as the end of the station.

Instead of entering the end of the station, try going aft.

The fake-end-of-station is a distant backdrop. It is in the Escape Room and the Exercise Room. The description is "You can just see the new end of the station aft of here." Understand "hole/edge/edges" or "ragged edge/edges" or "jagged edge/edges" or "end" or "edge of the station" or "end of the station" as the fake-end-of-station. The printed name of the fake-end-of-station is "end of the station".

Does the player mean doing something with the fake-end-of-station: it is unlikely.

Some stars are a distant backdrop. It is in the Science Room, the Sleep Room, and EVA. The description is "The sky is filled with the usual stars[if not in EVA and the external battery module is on-stage], blocked in part by the station and one of its external battery modules[end if]. The programs in your head merrily catalog constellations for you like some hyperactive star-struck kid." Understand "sky/star" as stars.

The faraway external battery module is a distant backdrop. It is in the Science Room and the Sleep Room. The description is "One of the battery modules dotted around the exterior of the station. It's slightly larger than a loaf of bread. It's on the exterior skin of the station[mdash]you can just see it from here." The printed name is "battery module".

[Don't put random debris in the Escape Room, or it would clash with the column of debris.]
The random debris is a backdrop. It is in Exercise Room, Science Room, and Sleep Room. The description is "Bits of useless metal and plastic are floating around the station." Understand "metal" or "plastic" or "junk" as the random debris.

Instead of doing something other than examining with the random debris, say "The random debris floating around is unimportant."

Some LED lights are a backdrop in Node 4. The description is "Node 4 is filled with LED lights providing illumination." Instead of doing something other than examining with the LED lights, say "The LED lights aren't important." Understand "light" as the LED lights.

Section 2 - Exercise Room

Exercise Room is a room. The description is "You're [if the trapping struts are tight]still trapped facing the starboard wall, so you can't see whether the escape pod is attached to the port side of Node 4 or not. Fore you can see the hatch to the station exterior is dogged shut. Looking aft you can't see the remaining three-quarters of Node 4, since it seems to have gone missing[otherwise]in the fore end of Node 4 by the starboard wall. Exercise equipment like the stationary bicycle is stored here, even though no one can use it while many of the Node's science experiments are ongoing. From here the sleeping racks are aft near where Node 4 now ends and the escape pod is to port. The hatch to the station exterior is fore[end if]." The printed name of the Exercise Room is "Node 4: Fore, Starboard".

Rule for printing the name of the Exercise Room when the trapping struts are tight:
	if constructing the status line is going on, say "Trapped Against a Wall";
	otherwise do nothing.

Instead of going fore in the Exercise Room, say "The hatch is dogged shut."

The prise bar is a weapon in the Exercise Room. "A prise bar sticks out of a now-defunct LCD screen." The description is "The prise bar is a completely straight piece of metal the length of your arm and made of some light alloy because of the cost to bring things into orbit. Both ends are flattened and are the width of three of your fingers. The prise bar only sees occasional use thanks to Newton's Third." Understand "crowbar/prybar/pry-bar/prisebar/prise-bar/jimmy" or "jimmy/pry/spud bar" or "pry" as the prise bar.

After taking the prise bar for the first time, say "You pull the prise bar free from the screen."

[Make us default to prying things with the bar]
Rule for supplying a missing second noun while prying:
	if the prise bar is held by the player:
		say "(with [the prise bar])";
		change the second noun to the prise bar.

[Let us "pull prise bar" to pull it out of the LCD screen]
Instead of pulling the prise bar when the prise bar is not handled, try taking the prise bar.

Instead of attacking something with the prise bar, say "Even given all of the damage done to the station, you're reluctant to do more."

Instead of attacking the trapping struts with the prise bar when the trapping struts are tight, say "You indulge in a Gordon Freeman moment, but the wreckage trapping your leg doesn't budge much under such an indiscriminate assault."

Instead of attacking the trapping struts with the prise bar, say "You hit the struts several times. The struts absorb the blows."

Instead of moving something with the prise bar, try prying the noun with the prise bar.

Instead of unlocking something with the prise bar, try prying the noun with the prise bar.

Report prying something with the prise bar: instead say "That doesn't truly need prising."

Instead of prying the legs with the prise bar when the trapping struts are tight, try prying the trapping struts with the prise bar.

Instead of prying the trapping struts with the prise bar:
	if the prise bar is not held:
		consider the must hold prying things rule;
	if the trapping struts are tight:
		now the trapping struts are loose;
		now the exercise bike is in the Exercise Room;
		now the pedals are in the Exercise Room;
		now the flexible water line is in the Exercise Room;
		say "You slip one end of the prise bar between the struts holding you in place and apply pressure. You feel a vibration through your suit leg as the struts move apart until there's enough space that you slip your foot free.";
		record 1 point for "freeing yourself from the struts";
	else:
		say "There's no need to move the struts any further."

Instead of moving the trapping struts with the prise bar, try prying the trapping struts with the prise bar.
Instead of inserting the prise bar into the trapping struts, try prying the trapping struts with the prise bar.

Instead of freeing some legs with something when the trapping struts are tight, try moving the trapping struts with the second noun.
Instead of freeing the player with something when the trapping struts are tight, try moving the trapping struts with the second noun.

The defunct LCD screen is scenery in the Exercise Room. The description is "Back when the station had power and the screen hadn't had a prise bar rammed through it, you used the touch screen to record your daily exercise." Understand "touch" as the defunct LCD screen. Instead of touching the defunct LCD screen, say "Nothing happens, probably because it had a prise bar rammed through it." Instead of switching on the defunct LCD screen, try touching the defunct LCD screen.

The exercise bike is a loopable fixed in place openupable. The description is "This space bicycle doesn't look that much like a regular bicycle. It's a grey trapezoidal box held together by about twenty screws. Pedals stick out of it, and attached above it is a seat with very little cushioning. Next to the seat is a water line that you've sipped from many times before while exercising." Understand "bicycle" or "cycle" or "grey/gray" or "trapezoidal box" or "box" or "space bike/bicycle/cycle" or "seat" or "bike/bicycle/cycle seat" or "equipment" as the exercise bike.

Rule for writing a paragraph about the exercise bike:
	if the exercise bike is open, say "The bicycle is open, revealing a small wheel to which its pedals are attached.";
	otherwise now the exercise bike is mentioned.

To say wheel-details:
	say "Inside, the bicycle is mainly a single small wheel about the size of your gloved hand with fingers stretched wide. The small wheel has holes all along its perimeter. The bike's pedals are attached to either side of the wheel, and stick out a long distance compared to the small wheel";

Instead of opening the bike when the bike is closed and the screwdriver is carried:
	change the description of the exercise bike to "The bicycle has a seat and pedals sticking out of a now-open grey box. Next to the seat is a water line that you've sipped from many times before while exercising. [wheel-details].";
	say "You unclip the screwdriver and painstakingly remove all the screws holding the bicycle's trapezoidal box together. You let them all float away[mdash]might as well, given the rest of the debris that fills the station[mdash]and fold open the bike.

[wheel-details].[line break]";
	now the bike is open;
	move the small wheel to the location of the bike;
	remove the cycle screws from play.

Instead of opening the bike when the bike is open, say "It's already open."

Instead of opening the bike, say "You can't remove all of those screws by hand."

Instead of turning the bike, try opening the bike.
Instead of turning the bike with the screwdriver, try opening the bike.

Instead of prying the bike with the prise bar when the bike is open, say "The bicycle is already open."

Instead of prying the bike with the prise bar, say "The screws defeat your best efforts."

Instead of entering the bike, try entering the pedals.

Some cycle screws are part of the bike. The description is "Lots and lots of tiny screws." The cycle screws are not stickable.

Instead of taking or turning the cycle screws, try opening the bike.

Instead of turning the cycle screws with the screwdriver, try opening the bike.

Instead of prying the cycle screws with the prise bar, try prying the bike with the prise bar.

Some pedals are scenery. The description is "The pedals stick out from the bicycle." Understand "pedal" or "bicycle pedal/pedals" or "bike pedal/pedals" as pedals.

Instead of entering the pedals when the small wheel is restrained, try turning the pedals.

Instead of entering the pedals, say "Riding the bicycle would be a feat and a half. Even a flex suit doesn't give you enough range of motion, and your survival backpack would get in the way. You can turn the pedals, though, which you do."

To say pedal turning:
	say "You push on the bicycle pedals, making them[if the exercise bike is open] and the small wheel[end if] turn".

Instead of pushing or turning the pedals when the small wheel is adhered:
	if the chain is affixed to the small wheel:
		say "[pedal turning]. As you do, the chain rips off the stick pad.";
		now the chain is stuck to nothing;
	[This next bit assumes that only the stick pad is sticky]
	otherwise if the number of things stuck to the stick pad is 1:
		say "You push the pedals and watch the stick pad go around and around on the small wheel.";
	otherwise:
		say "The stick pad isn't very strong[mdash]when you turn the pedals [the list of things stuck to the noun] come[s of the list of things stuck to the noun] free.";
		now the small wheel is stuck to nothing;
	perform a post-adhering check.

Instead of pushing or turning the pedals when the small wheel is restrained:
	say "[pedal turning]. As you do, the chain begins to wind around the axle";
	if the chain is not carried and the chain is available for chaining:
		move the chain to the location of the small wheel;
		instead say ". Eventually you stop and unwind the chain from the axle.";
	say ". You keep turning until the chain pulls taut";
	if the chain is chained to the column of debris:
		say ". Then you turn some more, until the chain slackens and the debris that used to be in front of the escape pod breaks into fragments and starts tumbling all around you. You bat random pieces of it out of the way and it joins the rest of the debris filling the station.

Take that, Archimedes.";
		now the column of debris is not chained to the chain;
		remove the column of debris from play;
		move the chain to the location of the small wheel;
		record 1 point for "removing the debris from in front of the escape pod door";
	otherwise if the chain is carried and the chain is available for chaining:
		say ". Then you stop because the chain is pulling on you.";
	otherwise:
		say " and refuses to budge anymore."

Instead of pushing or turning the pedals, say "[pedal turning][if the chain is chained to the bike] and bumping the chain that's looped around the main part of the bike but otherwise doing nothing[end if][one of]. You're reminded of endless hours on the bicycle, working desperately to stave off bone loss[or][stopping]."

The flexible water line is a tubular fixed in place scenery supporter. The description is "A flexible water line[if the nozzle is on the water line]. Someone's left their nozzle on the line post-exercise, a sanitary no-no. Probably Quintin. You'll have to scold him, assuming he's still alive[end if]."

Instead of taking the water line, say "You tug on the water line but it's not going anywhere."

Instead of drinking the water line, say "Not while you're wearing a helmet."

Instead of putting something on the water line when the noun is not the nozzle and the noun is not the stick pad and the noun is not adhered, say "[The noun] do[es]n't fit on the water line."

The nozzle is a small thing on the water line. The description is "A nozzle with clear plastic on one end and hard metal on the other. The clear plastic end has a very small opening. Its large metal end is threaded and fits all standard tubing on board the station."

Before taking off the nozzle when the nozzle is on a tubular thing (called the tubular-thing), instead try taking the nozzle.

Instead of taking the nozzle when the nozzle is on a tubular thing (called the tubular-thing):
	follow the standard taking rule;
	say "You twist the nozzle off of [the tubular-thing] and store it in your suit."

Instead of turning the nozzle when the nozzle is on a tubular thing, try taking the nozzle.

The small wheel is a loopable scenery. The description is "The small wheel is about the size of your palm. It has holes all along its perimieter. The bike's pedals are attached to either side of the wheel by a small axle, and stick out a long distance compared to the wheel." Understand "axle" or "hole" or "holes" as the small wheel. The printed name of the wheel is "bike's wheel".

Instead of tying the bike to the chain when the bike is open, try tying the small wheel to the chain.

Instead of untying the bike from the chain when the bike is not restrained and the small wheel is restrained, try untying the small wheel from the chain.

Instead of turning the small wheel, try turning the pedals.

Instead of tying the small wheel to the chain:
	consider the successful chain-tying rule;
	say "You clip the carabiner to one of the holes in the wheel and turn the pedals some to wind the chain on the wheel[if the chain is held and the chain is available for chaining]. You now have a chain that runs from [the noun] to your suit, forming a tether[end if].";

Section 3 - Escape Room

The Escape Room is port of the Exercise Room. The description is "Thank goodness the escape pod is still here. The converted Predpriyatie craft is port of here; its door is [escape pod door condition][if the column of debris is in the Escape Room] and debris is wedged in front of it[end if]. The door is flanked by a[if power is available]n active[otherwise] dark[end if] display screen on one side and the door's control panel on the other. The exercise equipment is to starboard and the science experiments are aft, closer to the new jagged edge of Node 4." The printed name of the Escape Room is "Node 4: Fore, Port".

Instead of going port in the Escape Room when the escape pod door is not open (this is the open the door first rule), say "Not until you get the door [if the escape pod door is part-opened]all the way [end if]open[if the column of debris is in the Escape Room] and that debris out of the way[end if]."

Instead of going port in the Escape Room when the column of debris is in the Escape Room (this is the get the debris out of the way rule), say "Not until you get that debris out of the way."

The open the door first rule is listed before the get the debris out of the way rule in the instead rulebook.

The display screen is scenery in the Escape Room. The description is "The screen should be lit up like a, well, a lit screen, but it isn't. Even though the main power's out the screen and door should have switched over to auxiliary power." The display screen can be flashback-given. The display screen is not flashback-given.

Instead of switching on or switching off the display screen, say "It doesn't have an on/off switch."

Instead of touching the display screen, say "It's a dumb display, not a touch screen."

Instead of typing the topic understood on the display screen, try touching the display screen.

Before examining the display screen when not power is available:
	instead follow the standard examining rule.

Instead of examining the display screen:
	say "The screen's in data-dump mode, which means it's showing[one of][mdash]wait, this can't be right. The screen claims that Node 4 is following one of the really old docking protocols. The transponder beacons are even active, the ones that once guided visiting vehicles to the antiquated docking port at the other end of Node 4[mdash]

[mdash]'Don't you see? The scow's navigation is just a veneer on top of the old software! I turn on the beacon, jettison the node with me on it, and pilot it away from the station. We send an emergency docking command and trip the original failsafes. The shuttle will follow, trying desperately to dock with the node instead of ramming the rest of the station. That way, if it's rigged to explode, it only takes out Node 4.'[run paragraph on][mdash]

You'd been shouting at Quintin, but it was Suzan you had to convince. The station was observing radio silence, though when you try to remember why you can't. You just can't.[or] old status information about how Node 4 was following antiquated docking protocols.[stopping]";
	now the display screen is flashback-given.

The embedded compartment is a closed unopenable fixed in place container in the Escape Room. "Embedded sideways in a wall is a[if open]n open[else] closed[end if] compartment attached to a jagged piece of metal." The description is "It's a box roughly 30 centimeters on a side, with a ruff of jagged metal that was ripped from an equipment rack. The whole thing is embedded sideways in a wall, which makes you glad you weren't hit by it when it came whizzing through the station. The compartment has a featureless door that is [if the embedded compartment is open and the number of things in the embedded compartment is greater than zero]open. Inside you can see [a list of things in the embedded compartment][else if the embedded compartment is open]open[else]closed[end if]." Understand "jagged" or "metal" or "box" or "featureless door" or "piece of metal" as the embedded compartment. Understand the closed property as describing the embedded compartment. The printed name is "embedded compartment[if the location is not the location of the embedded compartment] that is near the escape pod[end if]".

Instead of taking the embedded compartment, say "It's well and truly stuck in the wall."

To say button-hint: say "The only way to open it is electronically[if the single button is clearly-seen] with the button aft of here[otherwise].

This compartment used to be with the others next to the experiments aft of here. With any luck you'll find the button that opens the compartment there[end if]."

Instead of opening the embedded compartment when the embedded compartment is closed, say "You scrabble at it with gloved fingers with no success. [button-hint]"

Instead of attacking the embedded compartment with the prise bar, say "You make the bar and your arm vibrate but accomplish nothing else."

Instead of turning the embedded compartment with the screwdriver, say "There aren't any accessible screws on the compartment."

Instead of prying the embedded compartment with the prise bar when the embedded compartment is closed, say "You can't slip the prise bar between the door and the rest of the compartment, not enough to get any leverage. [button-hint]"

Instead of inserting something into the compartment when the compartment is open, say "That's a good way to lose access to [the noun] if the compartment closes again."

To say logbook contents: say "[one of]Like all of them, this logbook has all four of your names on the front in order of rank: Suzan Harrison, Simon Mahil, Quintin Davies, and Patricia Morrison. It also has obsessive step-by-step instructions for running several of the on-station experiments and recording the results, because the space program is all about hiring the smartest, most capable people it can find, training them exhaustively, and then not trusting them to do their job.

There are a lot of notes in the logbook's margins. Several of them are notes Quintin wrote when he made on-the-fly repairs to the station. One talks about the problems he'd had with the escape pod door malfunctioning, and how he had to disconnect the door control and computer from backup power to fix the problem. He noted that disconnecting only the green and yellow wires and connecting the two current-carrying wires[mdash]the white-and-red wire and the red wire[mdash]together would restore backup power[or]On the cover are the names of everyone in order of rank: Suzan Harrison, Simon Mahil, Quintin Davies, and Patricia Morrison. One of Quintin's notes in the margin describes how to re-connect backup power to the escape pod door and computer by disconnecting only the green and yellow wires and by connecting the two current-carrying wires, the white-and-red wire and the red wire, together[stopping]. Normally the white-and-red wire and the red wire would run to the power source"

The logbook is in the embedded compartment. The description is "[if the logbook is in the embedded compartment]You can't tell much about the logbook while it's in the compartment.[otherwise][logbook contents]." Understand "book" as logbook.

After taking the logbook when the gas line is not exhausted:
	say "As you remove the logbook from the compartment, the door swings back
shut. It looks like you had just enough nitrogen to get the job done.";
	unpoosh the single button;
	remove the nitrogen gas cloud from play;
	now the gas line is exhausted;
	record 1 point for "rescuing the logbook from the compartment".

The escape pod door is scenery in the Escape Room. The escape pod door can be part-opened, closed, or open. The description is "The door to the escape pod is currently [if the escape pod door is closed]closed[else if the escape pod door is part-opened]partially opened[else]wide open[end if]." The escape pod door is closed. Understand "craft" or "predpriyatie" as the escape pod door.

Instead of searching the escape pod door when the pod door is open, say "You can see the escape pod through the door[if the column of debris is in the Escape Room], which is wonderful except you still need to get the debris out of the way[end if]."

Instead of searching the escape pod door when the pod door is part-opened, say "You can't see much through the part-opened door."

Instead of searching the escape pod door, say "It's closed."

Instead of inserting something into the escape pod door when the pod door is open or the pod door is part-opened, say "No need to shove anything into the escape pod[if the pod door is part-opened or the column of debris is in the Escape Room]. With luck you'll be able to hand-carry things in there soon enough[otherwise] when you can just hand-carry things in there[end if]."

Instead of opening the escape pod door, try pushing the control panel.

Instead of closing the escape pod door when the pod door is closed, say "It's already closed."

Instead of closing the escape pod door, say "Not when you've spent all this time trying to open it."

Instead of attacking the escape pod door with the prise bar, say "You scratch it some, but don't make any headway in opening it that way."

Instead of prying the escape pod door with the prise bar, say "You aren't able to budge the door[if the escape pod door is part-opened]. At a guess, the door needs more power to open fully[end if]."

Instead of entering the escape pod door, try going port.

To say stuff inside the control panel:
	let L be the list of things in the control panel;
	remove the list of wire-things from L, if present;
	say "[L with definite articles]";

The control panel is an openable closed container in the Escape Room. The control panel is fixed in place. The description is "The door is controlled by a button mounted on a panel that is [if the control panel is closed]secured by four screws[otherwise]dangling open, revealing [stuff inside the control panel][end if]." Understand "button" as the control panel. The control panel can be message-seen. The control panel is not message-seen.

Rule for writing a paragraph about the control panel:
	if the control panel is open, say "The control panel is open, revealing a mass of wires[if the mass of wires is adhered] held by a stick pad[else if the stick pad is in the control panel] and a stick pad[end if].";
	otherwise now the control panel is mentioned.

Instead of pushing the control panel when full power is available:
	if the escape pod door is open:
		instead say "The door is already open, so nothing happens.";
	otherwise if the escape pod door is part-opened:
		instead report bug "You shouldn't be in this situation with the door partway opened and you being able to push the button.";
	otherwise:
		say "The escape pod door slides fully open[if the column of debris is in the Escape Room]! Now you just have to get rid of that column of debris.[else]![end if]";
	now the escape pod door is open;
	record 1 point for "opening the escape pod door".

Instead of pushing the control panel when backup power is available and the escape pod door is closed:
	say "You push the door's button with one gloved finger. The escape pod door is opening! Your wrist readout flashes a warning about elevated blood pressure and respiration, but you can ignore it because you're about to get off of this wrecked station.

Then the door sticks after opening partway.";
	now the escape pod door is part-opened.

Instead of pushing the control panel when the escape pod door is part-opened:
	say "You stab at the button but nothing happens[if power is available].

The computer screen flashes a brief message that quickly disappears: 'INSUFFICIENT POWER TO FULLY OPEN POD DOOR.'[otherwise if the control panel is not message-seen]. At a guess, the door needs more power to open fully.[otherwise]. The door needs more power to open fully.";
	if power is available:
		now the control panel is message-seen.

Instead of pushing the control panel, say "You push the door's button with one gloved finger but nothing happens[if the mass of wires is fiddled with] even though you've fiddled with the wires[end if][one of]. The escape pod door is supposed to automatically open in the event main power fails, but something's clearly gone wrong. You spend a moment cursing stupid turn-of-the-century NASA engineers with their hipster sideburns and their iPods, since that's better than giving in to panic. Just because NASA's old ISS equipment was available at fire-sale prices doesn't mean it was a true bargain.[or].[stopping]"

Instead of prying the control panel with the prise bar, say "The screws hold the door control too flush against the wall for you to prise it open."

Instead of opening the control panel when the control panel is closed and the screwdriver is carried:
	say "You unclip the screwdriver and in short order have the four screws out. You let them drift away to join the rest of the junk while you gently pull the panel away from the bulkhead. With any luck you can fix what's wrong with the button.

Behind the panel is a mass of wires held in place by a stick pad.";
	now the control panel is open;
	repeat with item running through things that are enclosed by the control panel:
		if the item is unseen and the item is visible then change the item to seen;
	remove the control screws from play;

Instead of opening the control panel when the control panel is closed, say "You can't remove all of those screws by hand."

Instead of opening the control panel when the control panel is open, say "It's already open."

Instead of closing the control panel when the control panel is closed, say "It's already closed."

Instead of closing the control panel when the control panel is open, say "You can't truly put the control panel back together."

Before turning the control panel when the control panel is closed, instead try opening the control panel.

Before turning the control panel with the screwdriver, instead try opening the control panel.

Instead of inserting something into the control panel when the control panel is open:
	if the noun is the stick pad, say "Best to hold onto that stick pad instead of putting it back where you found it.";	
	otherwise say "There's no real room for [the noun] in there.";

Some control screws are part of the control panel. The description is "Four tiny screws." The control screws are not stickable.

Before taking or turning the control screws, instead try opening the control panel.

Before turning the control screws with the screwdriver, instead try opening the control panel.

The entire mass of wires is in the control panel. The mass of wires is fixed in place. The description is "[one of]Oh good grief, t[or]T[stopping]here are ten wires: Red, black, white, green, grey, blue, yellow, orange, violet, and white-and-red striped. They've got quick disconnects so you can yank them out of the panel easily. [connected and disconnected wires]." The printed name is "mass of wires". The mass of wires is ambiguously plural. The mass of wires can be unmolested or fiddled with. The mass of wires is unmolested.

Instead of taking the mass of wires, say "That's fixed in place, but you can disconnect the individual wires."

Instead of plugging the mass of wires into something, say "You'll have to specify which wire you want to plug."
Instead of plugging the mass of wires:
	if the number of disconnected non-terminal wire-things is 0:
		instead say "All of the wires are already plugged in.";
	repeat with w running through the disconnected non-terminal wire-things:
		try plugging w;
		if w is disconnected, stop the action.
Instead of unplugging the mass of wires:
	if the number of connected non-terminal wire-things is 0:
		instead say "All of the wires are already unplugged.";
	repeat with w running through the connected non-terminal wire-things:
		try unplugging w;
		if w is connected, stop the action.
Instead of pulling the mass of wires, try unplugging the mass of wires.
Instead of detaching the not adhered mass of wires, try unplugging the mass of wires.
Instead of plugging something into the mass of wires, try plugging the mass of wires into the noun.
Instead of tying something to the mass of wires, try plugging the mass of wires into the noun.
Instead of tying the mass of wires to something, try plugging the mass of wires into the second noun.
Instead of inserting something into the mass of wires, try plugging the mass of wires into the noun.
Instead of inserting the mass of wires into something, try plugging the mass of wires into the second noun.

The red wire is a wire-thing in the control panel. The black wire is a wire-thing in the control panel. The white wire is a wire-thing in the control panel. The green wire is a wire-thing in the control panel. The grey wire is a wire-thing in the control panel. Understand "gray" as the grey wire. The blue wire is a wire-thing in the control panel. The yellow wire is a wire-thing in the control panel. The orange wire is a wire-thing in the control panel. The violet wire is a wire-thing in the control panel. The white-and-red striped wire is a wire-thing in the control panel. Understand "red-and-white" as the white-and-red striped wire.

To decide if non-current wires are hooked up properly:
	if the black wire is disconnected, decide no;
	if the white wire is disconnected, decide no;
	if the green wire is connected, decide no;
	if the grey wire is disconnected, decide no;
	if the blue wire is disconnected, decide no;
	if the yellow wire is connected, decide no;
	if the orange wire is disconnected, decide no;
	if the violet wire is disconnected, decide no;
	decide yes.

To decide if backup power is available:
	if non-current wires are hooked up properly and the white-and-red striped wire is cross-connected to the red wire, decide yes;
	decide no.

To decide if full power is available:
	if non-current wires are hooked up properly and the red wire is battery-plugged and the white-and-red striped wire is battery-plugged, decide yes;
	decide no.

To decide if power is available:
	if backup power is available or full power is available, decide yes;
	decide no.

To see if the screen turns on:
	if backup power is available:
		say "[line break]The screen next to the door flickers into life.";
	otherwise if full power is available:
		say "[line break]The screen next to the door returns to life, though it's so bright that you might be able to get a tan from it";
		if the escape pod door is part-opened:
			say ". More importantly, the pod door opens fully!

That may have just voided your warranty.";
			now the escape pod door is open;
			record 1 point for "opening the escape pod door";
		otherwise:
			say "."

[This next one exists so we can call it right before we change the state of any of the wires (plugged, unplugged, cross-connected).  If power is available and any of the wire states change, then power goes away.]
To see if the screen turns off:
	if power is available, say "[line break]The screen next to the door turns off."

The stick pad is a small thing in the control panel. The description is "It's a square pad about the width of three of your fingers. It's made of some super-velcro substance the boffins came up with. It's lightly tacky on both sides and sticks to most any surface[if the number of things stuck to the stick pad is greater than 1]. The pad is holding [the list of things stuck to the stick pad] together[else if the stick pad is adhered]. The pad is stuck to [the list of things stuck to the stick pad][end if][one of]. Patricia always used one to secure her pens[mdash]

[mdash]dogging the hatch and looking through the porthole to see Patricia on the other side snap a salute even though she's never liked your dual astronaut and military roles, but she must have felt it was the most appropriate goodbye gesture she could make[mdash][or].[stopping]". Understand "super-velcro" or "square" as the stick pad. It is stuck to the mass of wires.

Instead of touching the stick pad, say "It's definitely sticky."

Rule for writing a paragraph about the stick pad when the stick pad is adhered:
	say "The stick pad is [if the number of things stuck to the stick pad is 1]stuck to [the list of things stuck to the stick pad][else]holding [the list of things stuck to the stick pad] together[end if]."

Rule for printing the name of the adhered stick pad while taking inventory:
	if the number of things stuck to the stick pad is greater than 1:
		say "[list of things stuck to the stick pad] combined using the stick pad";
	otherwise:
		say "[list of things stuck to the stick pad] (with the stick pad attached)";

Instead of putting something on the stick pad, try tying the noun to the second noun.
Instead of putting the stick pad on something, try tying the second noun to the noun.

Instead of tying the stick pad to something, try tying the second noun to the noun.

To decide if (n1 - a thing) and (n2 - a thing) are too far apart for sticking:
	if n1 is the gas line and n2 is the single button, decide no;
	if n2 is the gas line and n1 is the single button, decide no;
	if n1 is anchored and n2 is anchored, decide yes;
	decide no.

[Let's make it possible for people to COMBINE X AND Y without having to specify the stick pad.]
Definition: a thing is non-chain if it is not the chain.
Definition: a thing is non-sticky if it is not the stick pad.

Instead of tying a non-chain non-sticky thing to a non-chain non-sticky thing when the stick pad is carried and the stick pad is not adhered:
	say "(using the stick pad)";
	try tying the noun to the stick pad;
	if the noun is not stuck to the stick pad, stop the action;
	try tying the second noun to the stick pad.

Before tying something to the stick pad: 
	if the noun is stuck to the second noun, say "[The noun] and [the second noun] are already stuck together." instead;
	if the number of things stuck to the second noun is 1:
		let r be a random thing stuck to the second noun;
		if the noun and r are too far apart for sticking:
			say "[The second noun] is already stuck to [the r], and [the r] isn't close enough to [the noun]." instead;
	if the number of things stuck to the second noun is greater than 1, say "[The second noun] has no surfaces free." instead;
	if the noun is not stickable, say "[The second noun] doesn't adhere to [the noun]." instead.

To block the pad from the chain:
	say "While the stick pad adhered well enough to pull the chain out of the crack in the floor, the chain's flexibility and particular metal composition means it doesn't stick well enough for that to be useful."

Instead of tying something to the stick pad:
	[Block the chain right away, to make life very very easy.]
	if the noun is the chain:
		instead block the pad from the chain;
	if the number of things stuck to the second noun is 1:
		let t be a random thing stuck to the second noun;
		if t is anchored and the noun is anchored:
			say "You stick [the noun] and [the t] together with [the second noun]";
		otherwise if t is anchored and the noun is not anchored:
			[Handle the case of backdrops (which have no location) and things that are part of something else]
			if the location of t is nothing or t is part of something: [as it can be for backdrops]
				move the noun to the location;
			otherwise:
				move the noun to the location of t;
			say "You stick [the noun] to [the second noun] and [the t]";
		otherwise if the noun is anchored and t is not anchored:
			let loc be the location of the noun;
			[Handle backdrops and things that are part of something else]
			if loc is nothing or the noun is a part of something, let loc be the location;
			move the stick pad to loc;
			move t to loc;
			say "You stick [the second noun] and [the t] to [the noun]";
		otherwise:
			move the noun to the location of the stick pad;
			say "You stick [the noun] and [the t] together with [the second noun]";
	otherwise:
		say "You ";
		if the noun is not a room:
			if the noun is carried and the second noun is not carried:
				say "pick up [the second noun] and ";
			let h1 be the holder of the noun;
			let h2 be the holder of the second noun;
			if h1 is not h2:
				move the second noun to h1;
		say "stick [the second noun] to [the noun]";
	now the noun is stuck to the second noun;
	[Don't check if the gas line can then press on the button here -- if it can, it'll have slipped off the button already and so won't self-adhere.]
	perform a post-adhering check;
	if the gas line is pressing on the single button:
		poosh the single button;
		say ". With the stick pad holding it in place, the gas line presses the button[if the embedded compartment is seen], causing the compartment near the escape pod to swing open";
	say "."

Instead of detaching the stick pad from something:
	if the noun is not stuck to the second noun, instead say "[The noun] is not stuck to [the second noun].";
	say "You peel [the noun] off of [the second noun]";
	if the gas line is pressing on the single button:
		if the second noun is the single button, instead say ". The gas line immediately presses the stick pad against the button once more.";
		say ". Once freed, the gas line slides back off of the button[if the embedded compartment is seen] and the compartment near the escape pod closes[end if]";
		unpoosh the single button;
	now the noun is not stuck to the second noun;
	perform a post-adhering check;
	say "."

Instead of detaching something from the stick pad: try detaching the second noun from the noun.

After taking the adhered stick pad when the gas line is pressing on the single button:
	say "When you take the stick pad, the gas line slides back off of the button[if the embedded compartment is seen] and the compartment near the escape pod closes[end if].";
	unpoosh the single button;
	now the noun is stuck to nothing;
	perform a post-adhering check.

The column of debris is loopable scenery in the Escape Room. The description is "A whole wodge of twisted metal jammed in front of the escape pod door like a ruined column." Understand "ruined column" or "column/metal" as the column of debris.

Instead of pushing or pulling the column of debris, say "You wrap your arms around the debris and tug, but you can't get enough leverage in zero gravity to shift the debris."

Instead of attacking the column of debris with the prise bar, say "You hit it hard enough to feel the vibration through the suit and up your arm, but all you do is shove yourself around without actually shifting the debris."

Instead of prying the column of debris with the prise bar, say "You try to find a good point to jam the prise bar into and shift the debris, but nothing doing. You'll need a lot more lateral force than you can bring to bear with the bar."

Section 4 - Science Room

The Science Room is aft of the Escape Room and aft-port of the Exercise Room. The description is "While some of the station's science experiments are still here, many of them vanished along with the rest of Node 4. The port wall is filled with racks of equipment and inset storage compartments. The damage is extensive near the aft ragged edges where the station now ends. From here the escape pod is fore and the sleeping racks are starboard." The printed name of the Science Room is "Node 4: Aft, Port".

To attempt a spacewalk:
	if the chain is carried and the chain is chained to an anchored thing:
		change the return location of the EVA to the location;
		say "The piloting programs in your head plan your route. You take a deep breath and grasp your tether tightly. Ready, steady, go[mdash]and you jump, trusting your modified instincts to keep you safe. You soar out into space before the tether pulls taut and you land flat on the outside of the station, your boots grabbing hold.";
		move the player to EVA;
	otherwise:
		say "Without a tether you'd spiral off into space. The escape pod's a better choice for escaping. It may be an old Russian Predpriyatie spacecraft converted on the cheap, but you're more likely to survive reentry in it than in your spacesuit."

Instead of going aft in the Science Room, attempt a spacewalk.
Instead of going aft-starboard in the Science Room, try going aft.
Instead of going outside in the Science Room, try going aft.
Instead of exiting in the Science Room, try going aft.

[Let the player see the embedded compartment from here.]
After deciding the scope of the player while in the Science Room: place the embedded compartment in scope.

The large crack is an open unopenable fixed in place container in the Science Room. "The floor underneath you has a large crack in it." The description is "Plates in the floor have cracked open, revealing the station's underlying structure[if the large crack is not empty]. Deep down you can see [a list of things in the large crack][end if]." Understand "broken" or "plate/plates/structure" as the large crack.

Instead of attacking the large crack with the prise bar, say "You make the bar and your arm vibrate but accomplish nothing else."

Instead of prying the large crack with the prise bar, say "You do your best but you can't manage to widen the crack any."

Instead of taking something (called the encracked-thing) with the stick pad when the noun is in the large crack:
	if the stick pad is affixed to the prise bar, try taking the encracked-thing with the prise bar;
	otherwise continue the action.

Instead of taking something (called the encracked-thing) that is in the large crack, say "You gingerly reach between the broken floor plates trying to pick up [the encracked-thing], but [it-they] [is-are] about a meter down, and you'd likely tear your suit on the edges of the crack trying to get [it-them] this way."

Instead of inserting something into the large crack, say "Anything you put in the crack will be difficult to retrieve later, so best not to do that."

Instead of inserting the stick pad into the large crack:
	if something (called the encracked-thing) is in the large crack, say "You gingerly reach between the broken floor plates trying to pick up [the encracked-thing], but even with the stick pad you can't reach [the encracked-thing] without probably tearing your suit. Your arm's just not long enough.";
	otherwise continue the action;

Instead of inserting the prise bar into the large crack:
	if something (called the encracked-thing) is in the large crack, try taking the encracked-thing with the prise bar;
	otherwise continue the action;

Instead of taking something (called the encracked-thing) with the adhered prise bar when the noun is in the large crack:
	if the encracked-thing is the length of chain:
		say "With the stick pad on the end of the bar, you're able to snag the chain and pull it out from under the floor, even though the chain doesn't really want to stick to the pad. You coil the chain and attach it to one of your suit's D-rings.";
		record 1 point for "snagging the chain from the crack in the floor";
	otherwise:
		change hacky global item to the encracked-thing;
		report bug "[The hacky global item] shouldn't be in the crack.";
	move the noun to the player.

Instead of taking something (called the encracked-thing) with the prise bar when the noun is in the large crack:
	say "You're able to reach the chain with the prise bar, but there's no way
to then hook the chain on the straight flat bar."

[Note that this say phrase doesn't end with punctuation]
To say a/the/-- ends of the chain:
	[A single special case for being in the room EVA]
	if in EVA:
		say "The chain runs back into the station, tethering you";
		stop;
	let c be 1;
	if the chain is chained to something:
		repeat with anchor running through the list of things chained to the chain:
			if c is 1, say "O";
			otherwise say "; o";
			if anchor is in a room (called the next room) which is not the location:
				let the way be the best route from the location to the next room;
				say "ne end [if c is 1]of the chain [end if]runs [way]";
			otherwise:
				say "ne end [if c is 1]of the chain [end if]is looped around [the anchor]";
			increment c by 1;
	if the chain is carried and the chain is available for chaining:
		say "[if c is 1]O[otherwise]; o[end if]ne end [if c is 1]of the chain [end if]is clipped to your suit".

The length of chain is in the large crack. "The length of chain drifts here." The description is "[if the chain is in the crack]It's several meters long. You can't tell more about it while it's in the crack[otherwise]It's several meters long and very similar to a bike chain. Both ends sport carabiners, small metal loops with a spring-loaded latch[end if][if the chain is chained to something or the chain is carried]. [ends of the chain][end if]." The indefinite article of the chain is "a".

After printing the name of the chain while taking inventory: 
	if something is chained to the chain:
		say " (looped around [the list of things chained to the chain])";

After taking the chain when the chain is available for chaining:
	say "You attach the chain's carabiner to one of your suit's D-rings."

Instead of prying the chain with the prise bar when the chain is in the large crack, try taking the chain with the prise bar.

Instead of untying the flex spacesuit from the chain when the chain is carried and the chain is available for chaining, say "Best to leave it clipped to your suit." Instead of untying the d-ring from the chain when the chain is carried, try untying the flex spacesuit from the chain. Instead of removing the chain from the flex spacesuit when the chain is carried, try untying the flex spacesuit from the chain. Instead of removing the chain from the d-ring when the chain is carried, try untying the flex spacesuit from the chain.

The non-locking carabiner is part of the length of chain. The description is "The carabiners are small non-locking metal loops with a spring-loaded latch." Understand "carabiners" or "metal loop" or "metal loops" or "spring-loaded latch" or "spring-loaded latches" or "loop/loops/latch/latches" as the non-locking carabiner. The non-locking carabiner is not stickable.

Instead of unplugging the carabiner from the chain, say "The chain has been tightly attached to the carabiners, leaving you with no real way to separate a carabiner from the chain." Instead of removing the carabiner from the chain, try unplugging the carabiner from the chain. Instead of untying the carabiner from the chain, try unplugging the carabiner from the chain.

Instead of tying the carabiner to something, try tying the second noun to the chain. Instead of tying something to the carabiner, try tying the noun to the chain.

[Additional rules for describing the chain when it's running hither and yon.]
The describe the chain during looking rule is listed before the first look rule in the carry out looking rules. 

This is the describe the chain during looking rule:
	if the chain is carried and the chain is chained to something:
		say "[ends of the chain].";
	otherwise if the chain is not in the location and the chain is chained to something (called the anchor) in the location and the anchor is scenery:
		say "The chain is looped about [the anchor]";
		if the chain is not enclosed by the location:
			let the way be the best route from the location to the location of the chain;
			say " and from it runs [way]";
		say "."

Definition: the chain is available for chaining if the number of things chained to the chain is less than 2.
Definition: a thing is available for chaining if the number of things chained to it is 0.

Rule for writing a paragraph about the chain:
	say "The length of chain drifts here[if the chain is chained to something]. [ends of the chain][end if]."

Rule for writing a paragraph about a thing (called the anchor) which is chained to the chain: 
	if the chain is in an adjacent room:
		let the next room be the location of the chain;
		let the way be the best route from the location to the next room;
		say "The chain is looped about [the anchor] and from it runs [way].";
	otherwise:
		if the chain is stuck to something which is not visible:
			say "The chain is looped around [the anchor][if the chain is chained to something in an adjacent room (called the next room)] and runs [way][end if].";

After examining something which is chained to the chain:
	say "The chain is looped around [the noun]."

Definition: a thing is distant-chained if it is chained to the chain and it is not within the location.

Before going a nautical direction (called the way) when the player has something (called the link) which is chained to something anchored (called the anchor):
	if the link is chained to at least two anchored things:
		if something (called the distant-anchor) is distant-chained:
			let anchor-room be the location of the distant-anchor;
			if anchor-room is not nothing:
				let best way be the best route from the location to the anchor-room;
				if best way is a direction and best way is way:
					say "(moving along the chain)[paragraph break]";
					make no decision;
		silently try dropping the link;
		if the link is carried:
			say "You can't go in that direction holding [the link] while it is looped around [the list of anchored things chained to the link]." instead;
		otherwise:
			say "(dropping the chain first)[paragraph break]";
			make no decision;
	let next room be the location of the anchor;
	if the next room is not a room, continue the action;
	if the next room is not the location:
		let best way be the best route from the location to the next room;
		if best way is a direction and best way is generally opposite from way:
			say "[The link] [is-are of the link]n't long enough to let you go [way]." instead;
		[quick hack for when the player is in EVA]
		otherwise if the location is not EVA:
			say "(gathering the chain as you go)[paragraph break]";

After deciding the scope of the player:
	if something chained to the chain is in the location, place the chain in scope.

A reaching inside rule:
	if the noun is the chain:
		let the anchor be a random visible thing chained to the noun;
		if the anchor is touchable, allow access.

Before tying something to the chain:
	if the noun is the stick pad, block the pad from the chain instead;
	if the noun is chained to the second noun, say "The chain is already looped around [the noun]." instead;
	if the second noun is not available for chaining, say "Both ends of the chain are already looped around things." instead;
	if the noun is unloopable, say "There's no good way to loop the chain around [the noun]." instead;
	if the chain is adhered and the noun is not adhered:
		say "(first detaching [the list of things stuck to the chain] from the chain)";
		[Synchronize this w/changes to the "instead of detaching an adhered thing" rule]
		now the chain is stuck to nothing;
		perform a post-adhering check.

Instead of tying the flex spacesuit to the chain, try taking the chain.

Instead of tying the d-ring to the chain, try taking the chain.

Instead of tying the chain to something:
	try tying the second noun to the noun.

Instead of putting the chain on something, try tying the chain to the second noun.

[A separate rule so we can refer to it in multiple locations.]
This is the successful chain-tying rule:
	now the noun is chained to the second noun.

Instead of tying something to the chain:
	consider the successful chain-tying rule;
	say "You loop the chain around [the noun] and clip the carabiner to secure it[if the chain is held and the chain is available for chaining]. You now have a chain that runs from [the noun] to your suit, forming a tether[end if].";

Instead of tying something to a restrained thing which is not the chain:
	try tying the noun to the chain.

Instead of tying a restrained thing which is not the chain to something:
	try tying the second noun to the chain.

Instead of detaching or unplugging the chain, try untying the chain from.
Instead of detaching something from the chain, try untying the noun from the second noun.
Instead of detaching the chain from something, try untying the second noun from the noun.
Instead of unplugging something from the chain, try untying the noun from the second noun.
Instead of unplugging the chain from something, try untying the second noun from the noun.
Instead of removing the chain from a restrained thing, try untying the second noun from the noun.

Definition: a thing is secondary if it is not the noun.

Rule for supplying a missing second noun while untying something from:
	if the number of secondary things chained to the noun is 0:
		if the noun is the chain and the chain is carried by the player, instead say "Best to leave it clipped to your suit.";
		say "[The noun] [is-are of the noun]n't chained to anything." instead;
	if the noun is the chain:
		[The commented-out bits are from the Otranto example, and are undoubtedly the Right Way to Do It. Unfortunately, as of 5Z71, it's also the Slow Way to Do It, especially in Parchment. Instead, I fake the funk.]
		[let cnt be the number of restrained touchable things which are chained to the noun;
		if cnt is greater than 1:
			say "You'll have to say which thing you want to unchain [the noun] from.";
			rule fails;
		otherwise:
			if cnt is 0, say "You can't reach [the random thing chained to the noun]." instead;
			let the chained object be a random touchable thing which is chained to the chain;
			say "(from [the chained object])[command clarification break]";
			change the second noun to the chained object;]
		let cnt be 0;
		let chained object be nothing;
		repeat with test-obj running through things chained to the chain:
			change chained object to test-obj;
			if test-obj is touchable:
				increment cnt by 1;
		if cnt is 0, instead say "You can't reach [the chained object].";
		if cnt is greater than 1:
			say "You'll have to say which thing you want to unchain [the noun] from.";
			rule fails;
		otherwise:
			say "(from [the chained object])[command clarification break]";
			change the second noun to the chained object;
	otherwise:
		if the noun is chained to the chain :
			say "(from [the chain])[command clarification break]";
			change the second noun to the chain.

Before untying the chain from something: try untying the second noun from the noun instead.

Before untying something from the chain:
	if the second noun is not held:
		say "(first picking up [the second noun])[command clarification break]";
		try taking the second noun;
		if the actor is not holding the second noun, stop the action.

Before pulling something anchored that is not a wire-thing:
	[ew hacky]
	if the noun is the column of debris or the noun is the empty spacesuit or the noun is the mass of wires or the noun is the bolts or the noun is the struts, continue the action;
	say "[The noun] do[es]n't move." instead.

[Here I'm assuming that the only things you can clip the chain to aren't portable.]
Instead of pulling the chain:
	if the noun is in the large crack, instead try taking the noun;
	if the noun is not enclosed by the location:
		if the number of hindering things is 0:
			move the noun to the location;
			say "You pull the length of chain closer to you.";
		otherwise:
			say "The length of chain doesn't budge.";
	otherwise:
		say "You give the length of chain a tug";
		if the number of things chained to the noun is 0:
			say "[if the noun is carried], but it's clipped snugly to your suit[otherwise] and cause it to drift about[end if]";
		otherwise:
			say ", but since it's chained to [the list of things chained to the chain] it doesn't move";
		say "."

The science experiments are loopable scenery in the Science Room. The description is "All of the experiments are in 19-inch racks, complete with protruding handles, that are bolted into the wall. The experiments often meant one thing: tedious checklists. You had to follow extensive checklists and write down the results at every step in a logbook because typing information into a computer would be too easy. It was so tedious that you made Quintin do it for you whenever possible. The logbooks were stored in nearby storage compartments. You got in the habit of writing all kinds of notes on the logbooks just because they were handy.

[mention of button]." Understand "19-inch rack/racks" or "nineteen-inch rack/racks" or "rack/racks/equipment" or "rack/racks of equipment" or "handle/handles" as the science experiments.

Instead of opening the science experiments, say "The equipment is all electronics and broken plastic containers that used to hold spiders who are right now undoubtedly learning how to orbit without a spacecraft. There's nothing really useful in the whole bunch of it."

Instead of tying the science experiments to the chain:
	consider the successful chain-tying rule;
	say "You find a convenient handle on one of the experiments to clip one of the chain's carabiners onto[if the chain is held and the chain is available for chaining]. You now have a chain that runs from the experiments to your suit, forming a tether[end if].";

To say mention of button:
	say "Next to the storage compartments is a button that opens [if the embedded compartment is seen]the compartment you saw near the escape pod[otherwise]a closed compartment, though you don't see that compartment here with the others[end if]".

[To prevent disambiguation problems in the source code...]
The inset storage-compartments are scenery in the Science Room. The description is "The compartments are like the open, doorless nooks you stored your backpack in at college. You kept logbooks in the compartments, though all of them are now empty, denuded by the explosive decompression that ripped through Node 4 when three-quarters of it went missing.

[mention of button]." Understand "storage" or "compartments" as the storage-compartments. The printed name is "inset storage compartments".

Does the player mean doing something with the embedded compartment:
	if the player's command matches the text "compartments", it is unlikely;
	it is likely.

Instead of opening the storage-compartments, say "They're more like cubical shelves, so they're always open."

The single button is scenery in the Science Room. The description is "A simple momentary-contact button that some bright spark at NASA thought was an appropriate control to open [if the embedded compartment is seen]the compartment you saw near the escape pod. Whoever designed that stupid button and compartment is probably in his seventies now, which means you might be able to look him up and punch him if you get back to Earth and can obtain a visa for the NUS[otherwise]a sealed compartment[end if].

Dangling in front of the button is a gas line." The single button can be depressed or free. The single button is free. The single button can be clearly-seen. The single button is not clearly-seen.

To poosh the single button:
	now the single button is clearly-seen;
	now the embedded compartment is open;
	now the single button is depressed. [sad button :( ]

To unpoosh the single button:
	now the embedded compartment is closed;
	now the single button is free.

Carry out examining the single button: now the single button is clearly-seen.

Instead of pushing the adhered single button when something (called the stuckee) that is not the single button is stuck to the stick pad:
	say "[The stuckee] is in your way."

Instead of pushing the single button when the single button is depressed, say "It's already pushed down[if the gas line is pressing on the single button] by the gas line[end if]."

Instead of pushing the single button:
	if the gas line is not examined and the single button is not examined:
		say "There's a gas line [if the gas line is not open or the nozzle is not on the gas line]in front of the button, which you brush aside to[otherwise]next to the button, which you hadn't really looked at before. You[end if] ";
		now the gas line is examined;
	otherwise:
		say "You [if the gas line is not open or the nozzle is not on the gas line]brush aside the gas line to [end if]";
	say "push and hold the button[if the embedded compartment is seen]. The compartment near the escape pod swings open, so you keep holding the button[otherwise], but nothing seems to happen[end if].";
	if the embedded compartment is seen, poosh the single button.

Instead of dropping the single button when the single button is depressed:
	if the gas line is pressing on the single button, instead say "You'll have to turn off the gas line for that to happen.";
	say "You let go of the button[if the embedded compartment is seen]. The compartment near the escape pod closes[end if].";
	unpoosh the single button.

Before going when the location is the Science Room and the single button is depressed and the gas line is not pressing on the single button (this is the can't leave while holding the button rule):
	say "Before you leave you have to let go of the button[if the embedded compartment is seen], making the compartment near the escape pod swing closed[end if]";
	unpoosh the single button;
	if the gas line is open and the gas line is not exhausted:
		say ". You also turn off the gas line to save nitrogen";
		end gas spewing;
	say "."

Before going when the location is the Science Room and the gas line is open and the gas line is not pressing on the single button and the gas line is not exhausted (this is the Al Gore conservation rule):
	say "Before you leave you turn off the gas line to save nitrogen.";
	end gas spewing.

The can't leave while holding the button rule is listed before the Al Gore conservation rule in the before rulebook. [Since the first rule combines button-releasing and gas-turning-offing.]

Instead of attacking the single button with the prise bar when the single button is depressed, say "It's already pushed down; no need to hit it."

Instead of attacking the single button with the prise bar, say "Briefly hitting the button only makes the compartment near the escape pod open then close."

The gas line is a scenery tubular supporter in the Science Room. The description is "A nitrogen feed line for one of the experiments is in front of the button. It's a metal hard line that has an L-shaped bend right in front of the compartment button, with the threaded end of the line pointing away from the button[if the nozzle is on the gas line]. The end of the line has a nozzle attached to it[end if]. Partway up the line is the valve that controls nitrogen flow. The valve is [if the gas line is open]open[otherwise]closed[end if]." Understand "metal" or "nitrogen line" or "nitrogen gas line" or "pipe" or "bend" or "valve" or "threaded end" as the gas line. The gas line can be open or closed. The gas line can be openable. The gas line is closed and openable. The gas line can be exhausted. The gas line is not exhausted. The gas line can be once-flowed. The gas line is not once-flowed.

To begin gas spewing:
	now the gas line is open;
	now the gas line is once-flowed;
	if the gas line is not exhausted, move the nitrogen gas cloud to the location of the gas line;

To end gas spewing:
	now the gas line is closed;
	remove the nitrogen gas cloud from play;

To decide if the gas line is flowing firmly:
	if the gas line is open and the nozzle is on the gas line and the gas line is not exhausted, decide yes;
	decide no.

To decide if the gas line is pressing on the single button:
	if the gas line is affixed to the single button and the gas line is flowing firmly, decide yes;
	decide no.

To decide if the gas line is not pressing on the single button:
	if the gas line is pressing on the single button, decide no;
	decide yes.

To decide if the gas line can self-stick to the single button:
	if the number of things stuck to the stick pad is not 1, decide no;
	if the gas line is flowing firmly:
		if the gas line is stuck to the stick pad and the single button is not adhered, decide yes;
		if the single button is stuck to the stick pad and the gas line is not adhered, decide yes;
	decide no.

To make the gas line self-stick to the single button:
	now the gas line is stuck to the stick pad;
	now the single button is stuck to the stick pad.

Instead of switching on the gas line, try opening the gas line.
Instead of switching off the gas line, try closing the gas line.
Instead of turning the gas line:
	if the gas line is open, try closing the gas line;
	otherwise try opening the gas line.

After opening the gas line:
	begin gas spewing;
	say "You open the valve on the gas line";
	if the gas line is exhausted, instead say " but nothing comes out.";
	say ". Nitrogen begins flowing ";
	if the nozzle is not on the gas line, instead say "slowly out of the end of the line, causing the L bend in the gas line to press gently against the button but not hard enough to push the button.";
	say "quickly out of the end of the nozzle, causing the L bend in the gas line to press firmly enough on the button to [if the embedded compartment is seen]open the compartment near the escape pod[otherwise]press it";
	if the gas line can self-stick to the single button:
		make the gas line self-stick to the single button;
		say ". The force is also enough to make the stick pad adhere to the gas line and the button, holding the gas line in place on the button";
	if the gas line is pressing on the single button, poosh the single button;
	otherwise say ". Unfortunately the bend slips off of the button and the compartment closes once more";
	say "."

Instead of closing the gas line when the gas line is pressing on the single button:
	say "When you close the valve on the gas line, it stops pressing the button behind it[if the embedded compartment is seen], causing the compartment near the escape pod to close[end if].";
	unpoosh the single button;
	end gas spewing;
	consider the standard closing rule.

After closing the gas line:
	say "You close the valve on the gas line[if the gas line is not exhausted]. The cloud of nitrogen quickly disperses[end if].";
	end gas spewing.

Instead of putting the gas line on the single button when the gas line is open and the nozzle is on the gas line and the gas line is not exhausted:
	if the gas line is adhered or the single button is adhered, continue the action;
	say "You place the line back on the button, but it slides right back off."

Instead of putting the gas line on the single button:
	if the gas line is adhered or single button is adhered, continue the action;
	say "It's already resting against the button."

Before taking the nozzle when the nozzle is on the gas line and the gas line is open and the gas line is not exhausted:
	say "(first turning off the gas line)[command clarification break]";
	try closing the gas line;
	if the gas line is open, stop the action.

Instead of tying the nozzle to the gas line, try putting the nozzle on the gas line.
Instead of tying the gas line to the nozzle, try putting the nozzle on the gas line.
Instead of plugging the nozzle into the gas line, try putting the nozzle on the gas line.
Instead of tying the nozzle to the stick pad when the nozzle is on the gas line, try tying the gas line to the stick pad.

Before putting the nozzle on the gas line when the gas line is open and the gas line is not exhausted:
	say "(first turning off the gas line)[command clarification break]";
	try closing the gas line;
	if the gas line is open, stop the action.

[If I don't handle this next case by hand, then I can't put the nozzle on the gas line when the stick pad is on the line, b/c the "instead of putting something on something adhered" rule will kick in]
A procedural rule when putting the nozzle on the gas line:
	ignore the convert putting to sticking 2 rule.

Instead of putting something on the gas line when the noun is not the nozzle and the noun is not the stick pad and the noun is not adhered and the gas line is not adhered, say "[The noun] do[es]n't fit on the gas line."

The nitrogen gas cloud is fixed in place. "[if the nozzle is on the gas line]The gas line is spewing a cloud of nitrogen into the room[otherwise]A cloud of nitrogen has formed around the gas line[end if]." The description is "It's actually flecks of solid nitrogen that quickly sublimate away." Understand "cloud of nitrogen" or "solid" as the gas cloud. The nitrogen gas cloud is not stickable.  Instead of taking the gas cloud, say "You can't really take the nitrogen." Instead of touching the gas cloud, say "You can't feel it since you're wearing gloves."

Section 5 - Sleep Room

The Sleep Room is starboard of the Science Room and aft of the Exercise Room and aft-starboard of the Escape Room. The description is "There used to be four sleeping racks here, small coffin-like soundproof booths where you could have a little bit of privacy. Now there's just one left. Its door is [if the sleeping rack is closed]closed[otherwise]open, revealing an empty spacesuit[end if]. The other three racks must have been ripped away when the accident happened. The station ends aft of here in a ring of jagged, twisted metal." The printed name of the Sleep Room is "Node 4: Aft, Starboard".

Instead of going aft in the Sleep Room, attempt a spacewalk.
Instead of going aft-port in the Sleep Room, try going aft.
Instead of going outside in the Sleep Room, try going aft.
Instead of exiting in the Sleep Room, try going aft.

The sleeping rack is a scenery closed openable container in the Sleep Room. The description is "The remaining sleeping rack is barely big enough for a person. Its door is [if open]open[otherwise]closed[end if]." Understand "coffin" or "coffin-like" or "booth" or "door" or "racks" as the sleeping rack.

After opening the sleeping rack for the first time: say "You open the door and a body falls towards you!

Right, deep breaths, it's just an empty spacesuit."

Instead of entering the sleeping rack, say "It's a tight enough fit when you're in shirt sleeves. In a spacesuit with backpack you'll never fit." Instead of inserting something into the sleeping rack, say "There's no need to put anything in the sleeping rack."

The empty spacesuit is fixed in place. It is in the sleeping rack. The description of the empty spacesuit is "The empty spacesuit is just like yours, except it has SUZAN HARRISON stenciled on it[if the screwdriver is in the spacesuit]. It also has the screwdriver you've used for EVA repair missions strapped to it[end if][one of][mdash]

[mdash]wrestling with the empty suit, desperately pushing it into the sleeping rack, wishing the lights hadn't gone off after the explosion, not sure why but knowing you have to get the damn thing inside[mdash]

For a moment you struggle with panic borrowed from a poorly-remembered past.[or].[stopping]". Understand "susan's" or "suze's" or "suzan/suze" or "harrison" or "suit" or "stencil" or "body" as the empty spacesuit.

Does the player mean taking off the empty spacesuit: it is very unlikely.

Instead of taking or pulling or pushing the empty spacesuit, say "It's too bulky for you to do anything with." Instead of inserting something into the empty spacesuit, say "There's no real need to put anything in the spacesuit." Instead of wearing the empty spacesuit, say "You're already wearing one spacesuit. You don't really get any extra protection for wearing two at once." Instead of opening the empty spacesuit, say "You can't really open Suze's empty spacesuit while you're wearing gloves."

The screwdriver is a clippable thing in the empty spacesuit. The description is "A low-torque powered screwdriver with a grip that's specially designed to be used while you're wearing these ham-hand gloves[if the screwdriver is in the empty spacesuit]. It's clipped to Suze's spacesuit[else if the screwdriver is carried]. It's clipped to your spacesuit[end if]."

After taking the screwdriver for the first time, say "You remove the screwdriver from the spacesuit and hold it in your gloved hand. You've spent countless hours on EVAs using screwdrivers just like this one, sweating in a spacesuit like the one you're wearing for up to eight hours. You had no idea those EVAs would end up being good practise for your current situation.

You clip the screwdriver to one of your suit's D-rings to make it easier to carry."

Before unlocking something with the screwdriver, instead try turning the noun with the screwdriver.

Section 6 - EVA

The EVA is a room. The description is "You cling carefully to the outside of Node 4. From here you can see that this is all there is: a small, ragged cylinder, spinning as it tumbles around the Earth. There is no sign of the rest of the station." The printed name of the EVA is "Outside Node 4". The EVA has a room called the return location.

Rule for gawking at EVA:
	say "For a moment you consider unclipping the chain, kicking off of Node 4 and tumbling peacefully away. You giggle before you can stop yourself.";
	the player hyperventilates from EVA in one turn from now.

Instead of going inside in EVA:
	say "Getting back inside is a little trickier than leaping outside, but it's nothing you and your fancy head full of kinematic equations can't handle.";
	move the player to the return location of EVA.

Instead of going a direction in EVA, say "You have a tether, but it's a short one, and you've no interest in playing Major Tom. The only place to go is back inside."

Instead of dropping something when the noun is held and in EVA, say "Anything you let go of is going to float out of reach in short order, so you'd better not."

Instead of pulling the chain in EVA, try going inside.

Instead of doing something other than examining to the chain in EVA, say "It's best to leave the chain alone if you've any hope of going back inside."

Earth is distant scenery in EVA. The description is "It moves around you and the station's remnants as Node 4 rotates."

The fakestation is scenery in EVA. The description is "Node 4 resembles the discarded end of a Christmas cracker[if the backup battery is in EVA]. One of the station's backup batteries is screwed into Node 4 next to you[end if]." Understand "station/spacestation" or "node 4/four" as the fakestation.

Instead of entering the fakestation, try going inside.

The backup battery is in EVA. The description is "It's not just a battery, it's a space battery. The battery module is slightly larger than a loaf of bread, and has two terminal slots where wires can be inserted[if the external screws are part of the backup battery]. It's screwed into the station's skin[end if][if a terminal-thing is hooked-up].[paragraph break][The list of battery-plugged wire-things] [is-are of the list of battery-plugged wire-things] plugged into the battery[end if]." Understand "space/module/slot/slots" or "terminal slot/slots" as the backup battery.

Some external screws are part of the backup battery. The description is "Several screws hold the battery in place." The external screws are not stickable.

To decide if the backup battery is undisturbed:
	if the external screws are on-stage, decide yes;
	decide no.

Before taking or turning the external screws, instead try taking the backup battery.

Before taking the backup battery when the backup battery is undisturbed:
	if the screwdriver is not carried, say "You'll need the screwdriver to take the battery." instead.

Instead of taking the backup battery when the backup battery is undisturbed:
	say "You carefully unclip the screwdriver and remove the screws from around the battery. You watch the screws float off into space and wonder if they'll eventually embed themselves in some random satellite. You then carefully lift the battery and tuck it under one arm.";
	remove the external screws from play;
	remove the external battery module from play;
	move the battery to the player;
	record 1 point for "getting the battery".

Instead of turning the backup battery when the backup battery is undisturbed, try taking the backup battery.

The first-terminal is a terminal-thing. It is part of the backup battery. The printed name of the first-terminal is "battery's terminal slot".

The second-terminal is a terminal-thing. It is part of the backup battery. The printed name of the second-terminal is "battery's terminal slot".

[Wires get plugged into the terminal-things, and we don't care which one it gets plugged into. And since the terminal-things have weird names that aren't likely to be referenced, all plugging and unplugging goes through the backup battery.]

Instead of pulling the backup battery, try unplugging the noun.

Instead of detaching the backup battery, try unplugging the noun.

Instead of detaching the backup battery from something, try unplugging the second noun from the noun.

Instead of detaching something from the backup battery, try unplugging the noun from the second noun.

Instead of plugging something into the backup battery:
	if the noun is the mass of wires or the noun is a wire-thing, continue the action;
	say "You really can only plug wires into the battery."
Instead of plugging the backup battery into something, try plugging the second noun into the backup battery.
Instead of inserting something into the backup battery, try plugging the noun into the backup battery.

Instead of tying the backup battery to a wire-thing, try plugging the second noun into the noun.

Instead of tying a wire-thing to the backup battery, try plugging the noun into the second noun.

Instead of inserting a wire-thing into the backup battery, try plugging the noun into the second noun.

Instead of unplugging the backup battery:
	if the number of hooked-up terminal-things is 0, instead say "The battery isn't hooked to anything.";
	say "You unplug [the list of battery-plugged wire-things] from the battery.";
	see if the screen turns off;
	repeat with w running through the list of battery-plugged wire-things:
		silently try unplugging the w;
	see if the screen turns on.

Instead of unplugging something from the backup battery:
	if the noun cross-connects a terminal-thing, try unplugging the noun;
	otherwise say "[The noun] isn't plugged into the battery."

Instead of unplugging the backup battery from something, try unplugging the second noun from the noun.

Before plugging the backup battery into something, instead try plugging the second noun into the backup battery.

Before plugging a wire-thing into the backup battery:
	if the number of hooked-up terminal-things is 2, instead say "The battery is already hooked up to [the list of battery-plugged wire-things]. You'll have to disconnect something first.";
	if the noun is battery-plugged, instead say "[The noun] is already plugged into the battery."

Instead of plugging a wire-thing into the backup battery:
	let r be a random not hooked-up terminal-thing;
	try plugging the noun into r.

Before going when the backup battery is carried and a terminal-thing is hooked-up:
	say "Since there are wires plugged into the battery, you leave the battery floating next to the panel.";
	silently try dropping the backup battery.

Section 7 - Predpriyatie

[Predpriyatie means "Enterprise" when very *very* loosely translated]

The Predpriyatie is port of the Escape Room. The description is "The converted Predpriyatie is boxy, held together by far too many bolts, and is one of the best things you've ever seen. You wish you could hug it[if the computer touch screen is not displaying diagnostics]. It's dark, though; no power is running to the pod[end if].

There is a large button labeled ESCAPE. You also wish you could hug the nameless engineer who made this so simple to operate. Next to the button is the pod's touch screen[if not power is available], which is dark[end if]." The printed name of the Predpriyatie is "Onboard the Predpriyatie".

The fake-pod is scenery in Predpriyatie. Understand "escape pod" or "pod/predpriyatie" as the fake-pod. The printed name of the fake-pod is "escape pod". Instead of examining the fake-pod, try looking.

The large escape button is scenery in Predpriyatie. The description is "You don't know if this button was due to a burst of humor on the part of some engineer, or (more likely) a commentary on how stupid that engineer thought astronauts were. Regardless, you're happy it's a one-press operation."

Instead of pushing the escape button when the computer touch screen is not displaying diagnostics:
	say "[one of]You press the ESCAPE button, ready to be on your way!

Nothing happens. Dammit, the computer must not have powered up the pod[or]Nothing happens[stopping]. You'll have to fiddle with the computer's touch screen to have the computer power up the pod."

Instead of pushing the escape button:
	if the chain is carried by the player and the number of chained-elsewhere things is not 0, say "You first unclip the chain from your suit and toss it through the open pod door. You then push the button. [run paragraph on]";
	say "The pod door closes and the entire craft shakes as it kicks off of the ruined station. The pod reorients, and for a moment you see what's left of Node 4, looking like the discarded end of a Christmas cracker, before it moves out of view. You strap into the seat and close your eyes. Is it okay to sleep with a concussion or should you stay awake? It's like the old debate about whether you feed a cold or a fever.

You must have been sleeping, because the warble of an alarm jolts you awake. The pod's picked up something moving towards you. You'd be more frantic, but you appear to have used up your daily supply of adrenaline already. Then the IFF module kicks in and identifies the craft as a friend. 'Simon? That had better be you in there.'

Suze. It's Suze. You're saved.";
	record 1 point for "escaping!";
	end the game saying "You have escaped Node 4".

The restraining seat is an enterable scenery container in Predpriyatie. The description is "The seat is there for your comfort, as long as you don't really want to be very comfortable, and is designed to be sat in even when you're wearing a spacesuit."

A rule for reaching outside the restraining seat when the noun is the escape button:
	allow access.

The bolts are scenery in Predpriyatie. The description is "The bolts hold the craft together." Instead of doing something with the bolts, say "The bolts aren't important." Understand "bolt" as the bolts.

The computer touch screen is scenery in the Predpriyatie. The description is "Normally the touch screen should be lit up like a, well, a lit screen, but it isn't. Even though the main power's out the screen should have switched over to auxiliary power." The computer touch screen can be password-locked or displaying diagnostics. The computer touch screen is password-locked. Understand "keyboard" as the computer touch screen.

Instead of switching on or switching off the computer touch screen, say "It doesn't have an on/off switch."

Before examining the computer touch screen when not power is available:
	instead follow the standard examining rule.

Rule for supplying a missing second noun while typing the topic understood on:
	if the player is in the location of the computer touch screen:
		say "(on the touch screen)";
		change the second noun to the computer touch screen.

Instead of examining the computer touch screen when the computer touch screen is password-locked:
	say "The screen is showing a password prompt and a keyboard. [one of]Password locked? The station computers are never password locked.

No, wait, Quintin had had to turn on password protection a few hours ago. He'd set it to the crew's initials, with the names in reverse rank order. It would make your security officer weep hot tears of anger if he knew.

Radio silence. Password protection. Oh, oh no, oh no no no, some idiot must have decided it was time for a shooting war.

And now you remember: the automated cargo supply shuttle that didn't respond to repeated hails. The orbital plot that showed the scow headed for the middle of the station. The realization that someone was worried about the UK holding the high ground and had decided to blow up the station. The desperate gamble that you could divert the supply shuttle away from the rest of the station.

You've got to get out of here soon, before there's no one left in orbit to pick you up.[or]Quintin set the password to the crew's initials, with the names in reverse rank order.[stopping]".

Instead of touching the computer touch screen when not power is available, say "Nothing happens."

Instead of touching the computer touch screen when the computer touch screen is password-locked:
	say "You'll have to type the password on the screen to unlock it."

Instead of touching the computer touch screen when the computer touch screen is displaying diagnostics:
	say "Nothing more happens[mdash]the computer is in a diagnostic loop until the escape pod launches."

Instead of typing the topic understood on the computer touch screen when the computer touch screen is password-locked:
	if the topic understood matches the text "pmqdsmsh":
		say "The screen clears and diagnostic messages start scrolling up the display. You scan them, watching as the computer learns what you already know about Node 4. It then decides to fully power up the escape pod.";
		now the computer touch screen is displaying diagnostics;
		record 1 point for "restoring power to the escape pod";
	otherwise:
		say "The screen flashes to let you know that you typed the wrong password."

Instead of typing on the computer touch screen, say "You'll have to say what word you want to type on the screen."

Instead of typing the topic understood on the computer touch screen when not power is available, say "The touch screen is off."

Instead of typing the topic understood on the computer touch screen when the computer touch screen is not password-locked, try touching the second noun.

Instead of examining the computer touch screen when the computer touch screen is displaying diagnostics:
	say "The screen is filled with diagnostic messages. From the messages you learn that the computer has powered up the escape pod."

Volume 4 - On Scenes and Atmospheric Messages

[Atmospheric message for the beginning of play]
At 9:00 AM: say "What happened? Other than someone [if in Dark Area]taking a cricket bat to[else]slamming the station against[end if] the back of your head[if Dark Area is visited or the player is in the Exercise Room] before starting on the station[end if][if the trapping struts are tested] and pinning you[end if]? You'd been...piloting? Moving the station? But why wasn't Suze doing that? You're the backup pilot, for Crippen's sake!"

At 9:02 AM: if the wrist readout is not seen and the flex spacesuit is not seen, say "Your suit's readout has been flashing for some time."

At 10:00 AM: if the score is less than 5, say "The enormity of the task in front of you, the unlikelihood of your escaping, nearly paralyzes you. You take a few deep breaths to steady yourself."

At 11:00 PM:
	if the display screen is not flashback-given and the escape pod door is not open, say "[mdash]the controls are terrible, but Node 4 was never meant to fly, and adding hydrazine thrusters to it resulted in a lash-up of terrifying proportions[mdash]

Flying Node 4? Might as well fly a brick! But you had to move it for some reason. If only you could remember."

[Atmospheric message for the first time the player moves somewhere.]
Describing-pushing-off is a one-time deal.

Report going when describing-pushing-off has not occurred (this is the describing pushing off rule):
	say "You gently push off from the wall and drift [noun].";

The describing pushing off rule is listed first in the report going rulebook.

[Atmospheric message for the first time entering one of the rooms that's open to space.]
Describing-open-end-of-station is a one-time deal.

To say whoa the end of the station is gone:
	say "You carefully bring yourself to a stop before you reach the open end of the station. For one vertiginous moment you feel as if the remains of the station are above you and you are falling inexorably to your death.";
	the player notices the Earth in three turns from now.

Rule for gawking at the Science Room when describing-open-end-of-station has not occurred:
	say whoa the end of the station is gone.

Rule for gawking at the Sleep Room when describing-open-end-of-station has not occurred:
	say whoa the end of the station is gone.

At the time when the player notices the Earth:
	if the location is not the Science Room and the location is not the Sleep Room:
		the player notices the Earth in two turns from now;
	otherwise:
		say "Through the open end of Node 4 you see the Earth roll into view, throwing the jagged edge of the station into stark relief[if the faraway external battery module is on-stage] and revealing an external battery on the outside of the station[end if]. While you watch the Earth vanish again the very expensive programs in your head start estimating orbits and trajectories. You're slowly spiraling away from Earth while the cylinder of Node 4 spins about its fore-aft axis."

At the time when the player hyperventilates from EVA:
	if the location is EVA, say "Your suit's readout flashes."

Volume 5 - On Directives That Make the Game More Pretty or Entertaining

[N.B. no American dialect here!]
Use the serial comma and full-length room descriptions.

Release along with cover art, [a solution, ]the source text, and a "FShells" website.

Chapter 1 - On Startup

[Don't describe the room to start with, and print intro text instead.] 
The initial room description rule is not listed in the startup rulebook.

The last startup rule:
	say "You don't know how long you've been hammering against the station's wall, but you stop as soon as you realize what you've been doing. You let your gloved hands fall by your sides and pause, confused."

Rule for printing the banner text (this is the new extended banner rule):
	say "[bold type][story title][roman type][line break][extended story headline] by [story author][line break]Copyright [unicode 169] [story copyright string] by [story author]. [story rights statement][line break]Type ABOUT for more information.[line break]Release [release number] / Serial number [story serial number] / Inform 7 build [I7 version number][line break]" instead.

Chapter 2 - Rewritten Standard Messages

[Since we're using non-standard directions, make the "you can't go that way" print the direction the game thinks you were wanting to go]

Instead of going nowhere: say "You can't go [noun] from here."

Chapter 3 - Screen Effects

To report bug (B - text):
	say "[bold type][unicode 91]BUG[unicode 93] [B][roman type]".

Chapter 4 - Scoring

The maximum score is 8.

Table of Achievements
Points	Citation
a number	text
with 8 blank rows;

To record (P - a number) point/points for (T - text):
	if the number of blank rows in the Table of Achievements is less than 1:
		report bug "There are not enough blank rows in the Table of Achievements.";
	otherwise if T is not a citation listed in the Table of Achievements:
		choose a blank row in the Table of Achievements;
		change the points entry to P;
		change the citation entry to T;
		award P points.

Requesting the full score is an action out of world. Understand "full" or "full score" or "fullscore" as requesting the full score.

Carry out requesting the full score: consider the print the full score rule.

This is the print the full score rule:
	say "You have [the score] points out of [maximum score]";
	if the score is greater than 0
	begin;
		say ". Here is how you got them:[paragraph break]";
		repeat through the Table of Achievements begin; 
			say "     [points entry] for [citation entry][line break]";
		end repeat;
	otherwise;
		say ".";
	end if;

The print the full score rule is listed instead of the print final score rule in the for printing the player's obituary rulebook.

[You can't throw in an "after requesting the score" rule because, for whatever reason, the requesting the score rulebook appears to stop the action after the carry out actions. So instead I replace that rule.]
The first carry out requesting the score rule: say "You have [the score] points out of [maximum score], in [turn count] turns.[run paragraph on]"

The announce the score rule is not listed in the carry out requesting the score rulebook.

[Another oddity: if I just have the first carry out rule above and the rule immediately following w/o running the paragraph on in both, I get an extra paragraph break when you request your score for the second time.]
Carry out requesting the score for the first time: say " (There's a complete list of your accomplishments so far which you can see by typing FULL SCORE.)[run paragraph on]"

The last carry out requesting the score rule: say line break.

Chapter 5 - Menu System / About Text

Include Basic Help Menu by Emily Short.

Understand the commands "credits" and "license" and "licence" and "menu" as "help".

To say bold story title: say "[bold type][story title][roman type]".

When play begins:
	choose row 1 in the Table of Basic Help Options;
	blank out the whole row;
	change the title entry to "About [bold story title]";
	change the description entry to "[about text]";
	choose row 2 in the Table of Basic Help Options;
	change title entry to "Instructions for Playing IF in General";
	choose row 4 in the Table of Instruction Options;
	change the description entry to "[movement text]";
	choose row 4 in the Table of IF Elements;
	blank out the whole row;
	[Parchment has a bug where ENTER doesn't work in help menus. Change the instructions to tell people to use SPACE instead.]
	choose row 4 in the Table of Deep Menu Status;
	change right entry to "SPACE = Select".

To say about text:
	say "[bold story title] is a short, puzzly game written for the JayIsGames Casual Gameplay Design Competition #7. The competition's theme was 'escape', and games were encouraged to be only one room. Hopefully Node 4 counts as one room.

My intent was to create a text version of the dreaded Escape the Room genre of casual games, only with far less illogic and far more backstory. So this one's for you, Riff Conner."

To say movement text:
	say "At any given time, you are in a specific location, or room. When you go into a room, the game will print a description of what you can see there. This description will contain two vital kinds of information: things in the room you can interact with or take, and a list of exits, or ways out. If you want to see the description again, you may just type LOOK. [paragraph break]When you want to leave a location and go to another one, you may communicate this to the game using shipboard directions such as GO AFT. For simplicity's sake, you are allowed to omit the word GO, and to abbreviate the directions. So you may use FORE, AFT, STARBOARD, and PORT, or in short form F, A, SB, and P."

Table of Basic Help Options (continued)
title	subtable	description	toggle
"If You Get Stuck"	Table of Stuckness Advice	a text	a rule
"Credits"		--	"[credits list]"	--
"Extensions"	--	"[list of extension credits]"	--
"License"	--	"[bold type]Copyright Information[roman type][line break]
[bold story title] is copyright [unicode 169] [story copyright string] by [story author]. [story rights statement]

[bold type]Licensing Information[roman type][line break]I place the following terms and conditions on copying and distributing [bold story title]: You may copy and distribute [bold story title] in whatever format you choose, as long as it (and especially its copyright information) is not altered. You may not distribute this game for a fee which is greater than the cost of distribution. Distribution of this game constitutes acceptance of this license.

[bold type]A Legal Dodge[roman type][line break]Because this game is offered free of charge, there is no warranty, express or implied, attached to it."	--
"About the Author"	--	"Stephen Granade is a physicist and occasional IF author. His best-known previous works are Losing Your Grip, Arrival, and Child's Play. He is also responsible for LOLTrek, which is either a plus or a minus depending on your feeling about lolcats. He apologizes profusely for the game AAS Masters. He can be reached at stephen@granades.com or at http://granades.com."	--

To say credits list:
	say "Big thanks to my beta testers: Admiral Jota, Mark Musante, Dan Shiovitz, Emily Short, and Lucian Smith.

After the game was released, a number of people suggested improvements: Jaycee27, richmcd, Jack Welch, Jenni Polodna, Mystify, Mike Sousa, Jason McIntosh, Ori Avtalion, and the people who played through the game as part of ClubFloyd. I am very thankful to all of them.

[story title] was made using Inform 7, which is a great language for this sort of thing. Thanks to the I7 team: Graham Nelson, Emily Short, Andrew Hunter, David Kinder, Adam Thornton, Philip Chimento, and Jesse McGrew.

The cover art uses NASA's public-domain picture of Mir from STS-71 in June of 1995. STS-71 was the first Shuttle mission that involved docking with Mir."

Table of Stuckness Advice (continued)
title	subtable	description	toggle
"Ask for a hint"	--	"[bold story title] has hints available. If you're absolutely stuck and need help, type HINT to get a nudge in the right direction."

Chapter 6 - In-Game Help for New-to-IF Players

Include Complex Listing by Emily Short.

[Be gentler when people are going in no direction]

To say exit list:
	let place be location;
	let count be 0;
	repeat with way running through nautical directions:
		let place be the room way from the location;
		if place is a room, change way to marked for special listing; 
	register things marked for listing;
	say "[a prepared list delimited in disjunctive style]".

The block vaguely going rule is not listed in any rulebook.

Rule for supplying a missing noun while going:
	if going, say "You will have to be more specific about which direction you want to go in. The directions you can go in from here are [exit list]."

[Help people who are flailing around]

Taking inventory is acting confused. Looking is acting confused. Examining an examined thing is acting confused.

After acting confused for the sixth turn, remind about assistance.

To remind about assistance: say "(If you're feeling lost, try typing HELP for general game instructions or HINT for help with the game's puzzles.)"

After waiting for more than three turns, say "There's nothing to be gained by waiting around."

After waiting for more than six turns, remind about assistance.

[Give a nicer response to a blank line]
Rule for printing a parser error when parser error is I beg your pardon:
	instead remind about assistance.

[TK Note that a lot of players evidently use the command >REMOVE <object> as a synonym for take, especially when the object is in something. I should handle that better.]

[Help people who aren't used to how commands are phrased]
Understand "what" or "when" or "where" or "why" or "how" or "what's" or "when's" or "where's" or "why's" or "how's" as "[query]".

After reading a command:
	if the player's command includes "[query]":
		say "[story title] understands commands, such as '[command prompt]examine [a random thing that can be seen by the player]', but not questions, other than WHO IS. You can get some information about the current game state with commands such as LOOK, EXAMINE, and INVENTORY; or, for more instructions, type HELP.";
		reject the player's command;
	if the player's command includes "please":
		say "(There is no need to say please.)";
		cut the matched text;

[Give alternate command phrasings that newcomers might use]
Understand "look [something]" as examining.

Understand the commands "see" and "view" as "look". Understand the commands "observe" and "inspect" as examine.

Understand the commands "wander" and "proceed" and "stroll" and "stride" and "strut" and "sneak" and "creep" and "rush" as "walk".

Understand the commands "hand" and "deliver" as "give".

Understand the command "depart" as "leave".

Understand the commands "grab" and "bring" and "fetch" and "steal" and "acquire" and "snatch" as "take".

Understand the commands "place" and "shove" and "stuff" as "put".

Understand the commands "strike" and  "smack" and "injure" as "hit". 

Understand the commands "scream" and "yodel" and "yell" and "holler" and "roar" as "shout".

Understand the command "board" as enter.

Understand the commands "toss" and "fling" and "hurl" as "throw".

Understand the commands "melt" and "ignite" and "incinerate" and "kindle" as "burn".

Understand "bite [something edible]" as eating. Understand "bite [something]" as attacking.

Understand "kick [something]" or "kick in/down/through [something]" as attacking.

Understand "start [something]" as switching on. Understand the command "activate" as "start". Understand "start over/again" as restarting the game.

Understand "stop [something]" as switching off. Understand the command "deactivate" as "stop".

Understand "reach for/towards/to [something]" as taking.

Understand "throw away [something]" as dropping.

Understand "jump on/onto [something]" as entering.

Understand "get down" as exiting.

Understand "around/about/away" as "[around]".

Understand "wait [around]" as waiting.

Understand "look [around]" as looking.

Understand "go [around]" as going.

Understand "show inventory/invent/i/inv" as taking inventory.

Understand "out of/from" or "from" as "[out of]". Understand "down on" or "on" as "[on]".

Understand "get [things inside] [out of] [something]" as removing it from.

Understand "set [things preferably held] down" as dropping. Understand "set [things preferably held] [on] [something]" as putting it on. Understand "set down [things preferably held]" as dropping.

Understand "end" as quitting the game.

Understand "finger/fingers/hand/hands/fist/fists/feet/foot/arm/arms/legs/leg/head/face/mouth/eyes/nose/ears/ear/eye" as "[body part]". Understand "my [body part]" or "[body part]" as "[specific anatomy]".

Understand "by/with/using" as "[means]".

After reading a command:
	if the player's command includes "head [a direction]":
		if the player's command includes "head", replace the matched text with "go";
	if the player's command includes "[means] [specific anatomy]":
		say "(It is usually not necessary to refer to specific body parts like that.)";
		cut the matched text;
		while the player's command includes "[means] [specific anatomy]":
			cut the matched text;

Before removing something worn by the player from the player:
	try taking off the noun instead.

Before removing something worn by the player from something (called the body-part):
	if the second noun is part of the player, try taking off the noun instead.

[Handle "go to <x>" more gracefully]

Understand "go to/around/near/by [something]" as walking toward. Walking toward is an action applying to one visible thing. Carry out walking toward: say "You don't need to specifically walk to anything near you like that." Understand "go on/through/across/around [a floor]" as walking toward.

Chapter 7 - Hints

Section 1 - Hinting Infrastructure

[Go through a hint menu and remove any conditional entries whose condition is no longer true. If a hint has been displayed for that row, and if the row is persistent, keep it around, though.]
To groom (hint booklet - table-name):
	repeat through the hint booklet:
		if there is a condition entry:
			consider the condition entry;
			if the rule failed:
				if there is a used entry:
					if there is a persistent entry and the persistent entry is not 0:
						delete the condition entry;
					otherwise:
						blank out the whole row;
				otherwise:
					blank out the whole row;

[I'll groom each table before displaying hints. What this means: if there is a condition entry, then that condition must be true, and you can stop displaying hints for a while.]

To say conditional known hints from (hint booklet - table-name):
	groom hint booklet;
	let __index be 0;
	clear only the main screen; 
	repeat through hint booklet:
		change __index to __index + 1;
		if there is a used entry:
			say "[__index]/[number of filled rows in hint booklet]: [hint entry][paragraph break]";
			if there is a condition entry:
				say "No more hints available at this time. Press SPACE to return to the menu.";
				make no decision;
		otherwise:
			if __index is 1:
				change used entry to turn count;
				say "[__index]/[number of filled rows in hint booklet]: [hint entry][paragraph break]";
			break;
	say "Press SPACE to return to the menu[if __index < number of filled rows in hint booklet] or H to reveal another hint[end if]."

To say conditional hints from (hint booklet - table-name): 
	groom hint booklet;
	let __index be 0;
	clear only the main screen; 
	repeat through hint booklet:
		change __index to __index + 1;
		say "[__index]/[number of filled rows in hint booklet]: [hint entry][paragraph break]"; 
		if there is a used entry:
			if there is a condition entry:
				say "No more hints available at this time. Press SPACE to return to the menu.";
				make no decision;
		otherwise:
			change used entry to turn count;
			if there is a condition entry:
				say "No more hints available at this time. Press SPACE to return to the menu.";
			otherwise:
				say "Press SPACE to return to the menu[if __index < number of filled rows in hint booklet] or H to reveal another hint[end if].";
			make no decision;
	say "Press SPACE to return to the menu[if __index < number of filled rows in hint booklet] or H to reveal another hint[end if]."

This is the conditional hint toggle rule:
	choose row current menu selection in the current menu;
	let the temporary title be the current menu title;
	change the current menu title to title entry;
	change the endnode flag to 1;
	redraw status line;
	change the endnode flag to 0;
	say conditional known hints from the subtable entry; 
	let __index be 0;
	while __index < 1:
		let __x be the chosen letter;
		if __x is 13 or __x is 31 or __x is 32, let __index be 1;
		if __x is 72 or __x is 104, say conditional hints from the subtable entry;
	change the current menu title to temporary title.

To erase (hint-booklet - table-name) from (hint-list - table-name):
	if hint-booklet is a subtable listed in hint-list, blank out the whole row.

To provide hints from (hint-booklet - table-name):
	if hint-booklet is a subtable listed in the Table of Available Hints:
		do nothing;
	otherwise if hint-booklet is a subtable listed in the Table of Potential Hints:
		let hint-title be the title entry;
		choose a blank row in the table of Available Hints;
		change title entry to hint-title;
		change subtable entry to hint-booklet;
		change toggle entry to the conditional hint toggle rule.

To populate hints:
	compact the Table of Available Hints;
	repeat through the Table of Potential Hints:
		change the __hint-booklet to the subtable entry;
		consider the hint availability rules;
		if the outcome of the rulebook is it is available outcome:
			provide hints from the subtable entry;
		otherwise:
			erase the subtable entry from the Table of Available Hints;
			if the outcome of the rulebook is it is never available again outcome:
				erase the subtable entry from the Table of Potential Hints;
	compact the Table of Available Hints;

[TK There is a weird table bug that manifests itself in 57Z1 where putting in and taking out rows a lot can lead to a P23 error (attempt to look up a non-existent entry). For some reason compacting tables like this fixed the problem. (Thanks to Eric Eve and his Adaptive Hints extension for the fix.)]
To compact (hints - table-name):
	if the number of blank rows in hints > 0 or the number of filled rows in hints > 0:
		let first blank be 0;
		let last filled be 0;
		repeat with N running from 1 to the number of rows in hints:
			choose row N in hints;
			if there is a title entry:
				change last filled to N;
			otherwise:
				if first blank is 0 then change first blank to N;
		if first blank < last filled:
			choose row last filled in hints;
			let t_title be the title entry;
			let t_subtable be the subtable entry;
			blank out the whole row;
			choose row first blank in hints;
			change the title entry to t_title;
			change the subtable entry to t_subtable;
			change the toggle entry to hint toggle rule;

The hint availability rules are a rulebook. The hint availability rules have outcomes it is available (success), it is unavailable (failure - default), it is never available again (failure).

[I want to pass a single table-name to the hint availability rules. However, you can't initialize a rulebook variable from outside the rules, so that's out (plus you can't use a table-name because I7 as of 5Z71 won't give it a default variable and there's no way to do so that I can see). And you can't create an "object-based" rulebook that's actually table-name based, so it's global variable time!]

The __hint-booklet is a table-name that varies. The __hint-booklet is the Table of Available Hints. [Since I have to give it an initial default value.]

Table of Available Hints
title	subtable	description	toggle
text	table-name	text	a rule
with 6 blank rows

Asking for hints is an action out of world.

Understand the command "hint" as something new.
Understand the command "hints" as something new.

Understand "hint" or "hints" as asking for hints.

This is the display hints rule:
	populate hints;
	if the Table of Available Hints is empty:
		say "Sorry, no hints are available at this time. If you'd like general help for playing the game, please type ABOUT and look at Instructions for Playing IF in General and If You Get Stuck.";
		rule fails;
	otherwise:
		change the current menu to the Table of Available Hints;
		change the current menu selection to 1;
		carry out the displaying activity.

Carry out asking for hints (this is the carry out displaying hints rule):
	abide by the display hints rule;
	clear the screen;
	say "[paragraph break][paragraph break]";
	try looking.

Check asking for hints for the first time (this is the first time hinting rule):
	say "If you find the temptation to use hints overwhelming, and you want to remove that temptation, you may disable hints for the rest of the game. If you do, though, you can't access the hints except by restarting. Do you want to disable hints (yes/no)? >>";
	if player consents then disallow hints instead;
	otherwise say "If you later change your mind, you can use the HINTS OFF command to disable hints."

Check asking for hints (this is the block disallowed hints rule):
	if hint access is disallowed then say "Hints have been disabled. The only way you can access hints now is by restarting." instead.

To disallow hints:
	change hint access to disallowed;
	say "[line break]Hints are now disabled for this game. The only way you can regain access to hints from now on is by restarting."

Disabling hints is an action out of world. Understand "hints off" or "hint off" as disabling hints.

Check disabling hints (this is the query disabling hints rule):
	say "If you disable hints now, you will not be able to access hints again unless you restart. Are you sure you wish to disable hints for the remainder of this game (yes/no)? >>";
	if player consents then do nothing;
	otherwise say "[line break]Okay, you can carry on using hints for now." instead.

Carry out disabling hints (this is the hint disabling rule):
	disallow hints.

A permission is a kind of value. The permissions are allowed and disallowed.
Hint access is a permission that varies. Hint access is allowed. 

Section 2 - Actual Hints

Table of Potential Hints
title	subtable
"What do I do first?"	Table of Strut-Freeing Hints
"How do I retrieve the chain?"	Table of Chain-Retrieval Hints
"I can't get that closed compartment open."	Table of Compartment-Opening Hints
"How can I open the escape pod door?"	Table of Door-Part-Opening Hints
"Argh, how do I get the escape pod door the rest of the way open?"	Table of Door-Full-Opening Hints
"How do I get the debris out of the way?"	Table of Debris-Moving Hints
"Can I go outside through the open end of the station?"	Table of Taking-an-EVA Hints
"I need to restore power to the escape pod!"	Table of Powering-the-Pod Hints

A hint availability rule when the __hint-booklet is Table of Strut-Freeing Hints:
	if the trapping struts are loose, it is never available again;
	it is available.

A hint availability rule when the __hint-booklet is Table of Chain-Retrieval Hints:
	if the chain is handled, it is never available again;
	if the large crack is examined or the chain is examined, it is available.

A hint availability rule when the __hint-booklet is Table of Compartment-Opening Hints:
	if the logbook is handled, it is never available again;
	if the embedded compartment is seen, it is available.

A hint availability rule when the __hint-booklet is Table of Door-Part-Opening Hints:
	if the escape pod door is part-opened or the escape pod door is open, it is never available again;
	if the Escape Room is visited, it is available.

A hint availability rule when the __hint-booklet is Table of Door-Full-Opening Hints:
	if the escape pod door is open, it is never available again;
	if the escape pod door is part-opened, it is available.

A hint availability rule when the __hint-booklet is Table of Debris-Moving Hints:
	if the column of debris is not in the Escape Room, it is never available again;
	if the column of debris is seen, it is available.

A hint availability rule when the __hint-booklet is Table of Taking-an-EVA Hints:
	if EVA is visited, it is never available again;
	if the Science Room is visited or the Sleep Room is visited, it is available.

A hint availability rule when the __hint-booklet is the Table of Powering-the-Pod Hints:
	if the computer touch screen is displaying diagnostics, it is never available again;
	if Predpriyatie is visited, it is available.

Table of Chain-Retrieval Hints
hint	condition	persistent	used
"Your arm just isn't long enough to reach the chain."	a rule	a number	a number
"Have you tried using the prise bar to reach it?"
"So you can reach it with the prise bar, but you still can't retrieve it."
"If only there were a way to make the chain stick to the prise bar."
"If only you had [if the stick pad is not carried]seen [end if]something sticky that could help[if the stick pad is carried]. Wait: you do![otherwise].[end if]"
"You need to investigate the control panel with the button on it next to the escape pod door."	stick-pad-not-seen rule	1
"Perhaps if you put the stick pad on the prise bar."
"PUT STICK PAD ON PRISE BAR. GET CHAIN WITH BAR."

This is the stick-pad-not-seen rule:
	if the stick pad is seen or the stick pad is examined or the stick pad is handled, rule fails;
	rule succeeds.

Table of Debris-Moving Hints
hint	condition	persistent	used
"Finding it hard to shift the debris out from in front of the escape pod door?"	a rule	a number	a number
"Have you tried pulling it?"
"You need a way to apply a lot more force to it than you alone can provide."
"You've seen something that might could do the job."
"A bicycle can apply a lot of force when you turn its pedals."
"So you need to link the bicycle to the debris somehow."
"Before getting more hints, go look at the crack in the floor near the science experiments."	chain-not-seen rule
"That chain you saw should do the trick."
"Work on getting the chain for now."	chain-not-gotten rule
"You need to tie the chain to the debris and to the bike."
"You can't just tie the chain to the bike and hope for the best."
"You need to open the bike."	bike-not-opened rule	1
"Try tying the chain to the small wheel inside the bike."
"TIE CHAIN TO DEBRIS. STARBOARD. TIE CHAIN TO SMALL WHEEL. TURN PEDALS"

This is the chain-not-seen rule:
	if the chain is seen, rule fails;
	rule succeeds.

This is the chain-not-gotten rule:
	if the chain is handled, rule fails;
	rule succeeds.

This is the bike-not-opened rule:
	if the bike is open, rule fails;
	rule succeeds.

Table of Compartment-Opening Hints
hint	condition	persistent	used
"The compartment has a button near the experiments that you press to open it."	a rule	a number	a number
"Why don't you try pressing that button?"	button-not-pressed rule	1
"You've undoubtedly noticed that you have to press and hold the button to keep the compartment open."
"Since you can't hold the button down and reach it at the same time, you'll need to have something else do it for you."
"Such as that gas line."
"Try turning the gas line on."	gas-line-not-turned-on rule	1
"The gas line by itself won't press hard enough on the button to depress it."
"Take a close look at the bicycle and its various parts."	nozzle-not-seen rule	1
"The nozzle you found will make the gas line press harder on the button."
"Unfortunately, then the gas line slides off the button."
"You need a way to stick the gas line to the button."
"Look into the control panel with the button on it next to the escape pod door."	stick-pad-not-seen rule	1
"The stick pad would hold the gas line to the button."
"PUT PAD ON BUTTON. PUT GAS LINE ON PAD. PUT NOZZLE ON GAS LINE. TURN ON GAS LINE."

This is the button-not-pressed rule:
	if the single button is clearly-seen, rule fails;
	rule succeeds.

This is the gas-line-not-turned-on rule:
	if the gas line is once-flowed, rule fails;
	rule succeeds.

This is the nozzle-not-seen rule:
	[Since the nozzle is only mentioned if the water line is examined]
	if the water line is examined, rule fails;
	if the nozzle is handled, rule fails;
	rule succeeds.

Table of Door-Part-Opening Hints
hint	condition	persistent	used
"As you've no doubt discovered, the button next to the door no longer works."	a rule	a number	a number
"Since the door didn't switch over to auxiliary power, you'll have to manually make the switch."
"To do that, you'll need to get the button's panel open."
"Look around the part of the station with the sleeping racks to find something to help you open the panel."	screwdriver-not-found rule	1
"You need to open the panel before reading more hints."	panel-not-open rule
"Man, there are a lot of wires behind the panel. If only you had a guide to know which ones to disconnect."
"Try getting the compartment open before reading more hints."	logbook-not-gotten rule
"The logbook from the compartment tells you what configuration the wires need to be in to open the door."
"UNPLUG GREEN WIRE. UNPLUG YELLOW WIRE. PLUG RED WIRE INTO STRIPED WIRE. PUSH BUTTON."

This is the screwdriver-not-found rule:
	if the screwdriver is handled, rule fails;
	rule succeeds.

This is the panel-not-open rule:
	if the control panel is open, rule fails;
	rule succeeds.

This is the logbook-not-gotten rule:
	if the logbook is handled, rule fails;
	rule succeeds.

Table of Door-Full-Opening Hints
hint	condition	persistent	used
"Have you tried pushing the door button again while power is on?"	screen-message-not-shown rule	1	a number
"According to the screen next to the door, there's insufficient power to the door to open it fully."
"You need a way to get more power to the door."
"The logbook gives you a hint."
"The red and the red-and-white striped wires normally run to a power source."
"If you had another power source, you could hook it up to those two wires."
"Go to the open end of the station and look at the ragged edges."
"You need to get to that battery, which means figuring out how to go for a spacewalk."
"Come back to the hints after you've gotten that battery."	battery-not-gotten rule
"You've got a new power source. You've got wires you can hook up."
"PLUG RED WIRE INTO BATTERY. PLUG STRIPED WIRE INTO BATTERY."

This is the screen-message-not-shown rule:
	if the control panel is message-seen, rule fails;
	rule succeeds.

This is the battery-not-gotten rule:
	if the backup battery is handled, rule fails;
	rule succeeds.

Table of Taking-an-EVA Hints
hint	condition	persistent	used
"You actually can go outside the station, although as you're warned, you'll need a tether of some kind."	a rule	a number	a number
"Have you seen something you could use as a tether?"
"Before getting more hints, go look at the crack in the floor near the science experiments."	chain-not-seen rule
"That chain you saw should do the trick."
"Work on getting the chain for now."	chain-not-gotten rule
"Did you notice what happened when you took the chain? You attached it to your suit."
"It's already halfway to being a tether. All you need to do is tie it to something that won't move."
"TIE CHAIN TO EXPERIMENTS. AFT."

Table of Powering-the-Pod Hints
hint	condition	persistent	used
"To power up the Predpriyatie, you'll need to type a password on the touch screen that's in the pod."	a rule	a number	a number
"If you touch the screen, you'll see that the password is the initials of the station's crew listed in reverse rank order."
"While you can figure out everyone's names and relative ranks on your own, the logbook can help you."
"The crew's names, in rank order, are Suzan Harrison, Simon Mahil, Quintin Davies, and Patricia Morrison."
"So their initials, when the names are listed in reverse order of rank, are PM, QD, SM, and SH."
"TYPE PMQDSMSH ON THE TOUCH SCREEN."

Table of Strut-Freeing Hints
hint	condition	persistent	used
"Start out by turning on the lights. TURN ON LIGHT should do the trick."	lights-arent-on rule	1	a number
"The next thing you need to take care of are the struts that have trapped your foot."
"Take a LOOK around."
"Do you see the prise bar?"
"I bet that could help free you from the struts that are trapping you."
"GET BAR. PRY STRUTS."

This is the lights-arent-on rule:
	if the player is not in the Dark Area, rule fails;
	rule succeeds.

Volume 6 - On Things That Are Not For General Consumption - Not for release

Include Object Response Tests by Juhana Leinonen.

Chapter 1 - Full Tests

Test me with "test full-intro / test part-one / test part-two / test part-three / test part-four / test part-five / test part-six / test part-seven / test part-eight / test part-nine".

Test full-intro with "l / x me / x suit / x readout / x pouch / open pouch/ x d-ring / n / x leg / pull leg / x wreckage / l / x switch / flip switch / flip switch / l / get crowbar / x it / hit wreckage / free leg with crowbar".

Test part-one with "l / x debris / x screen / touch screen / x bike / x water line / ride bike / push pedals / x survival backpack / take off backpack / get water line / x seat / x nozzle / unscrew nozzle / x suit / i  / fore / open hatch / hit hatch with crowbar / port".

Test part-two with "x control panel / open door / x screen / touch screen / x escape pod / enter pod / x debris / pull debris / move debris with bar / hit debris / open panel / get screws / x compartment / open compartment / take compartment / hit compartment / open compartment with bar / aft".

Test part-three with "x equipment / x floor / x head / x chain / get chain / get chain with bar / i / x edges / get battery / x stars / enter end / open equipment / x compartments / x bulkhead / push button / fore / aft / push button / x compartment / x button / x gas line / hit button / open valve / x nitrogen / put nozzle on line / turn on valve / put line on button / starboard".

Test part-four with "x booth / open door / x spacesuit / get spacesuit / enter sleeping rack / x screwdriver / get it / i / drop screwdriver / get it / nw".

Test part-five with "x button / open button / x stick pad / x wires / get stick pad / unplug wire / blue / x wires / l / push button / aft / put stick pad on bar / i / get chain with bar / x chain / remove carabiner".

Test part-six with "attach chain to experiments / out / x readout / x earth / x battery / get battery / e / go in / remove stick pad / put stick pad on button / put line on button / turn on line / fore / look in compartment / get logbook / read logbook / read logbook".

Test part-seven with "pull green wire / pull yellow / attach striped to red / x wires / plug blue / x screen / x screen / enter pod / open door / enter pod / push button / i / x wires / x battery / attach wires to battery / plug striped into battery / aft / fore / plug yellow into battery / plug green into battery / unplug yellow / plug red into battery".

Test part-eight with "enter pod / attach chain to debris / pull chain / aft / drop chain / aft / untie chain from equipment / fore / starboard / x bike / get screws / x bike / x small wheel / attach chain to wheel / turn pedals / port / enter pod / x seat / press escape".

Test part-nine with "touch screen / x screen / x screen / type mpdqmshs on screen / type pmqdsmsh on screen / push button".

Chapter 2 - Partial Tests

Test intro with "flip switch / free leg with bar".

Test pad with "test intro / purloin screwdriver / w / open panel / get pad".

Test battery with "test intro / purloin screwdriver and chain / sw / tie chain to equipment / out / get battery / in / untie chain".

Test screen with "test battery / n / open panel / pull green / pull yellow / tie red to striped".

Test door-opening with "test screen / plug red into battery / plug striped into battery".
