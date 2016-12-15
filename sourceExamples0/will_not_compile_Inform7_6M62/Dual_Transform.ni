"Dual Transform" by "Andrew Plotkin ('Nigel Smith')". 
The story headline is "A Metasemantic Construction". 
[IFID:62ba0e64-bac3-4d65-886a-8b59a077f668] 
[Developed with 5Z71] 
The release number is 5. 

[ 
Copyright 2010 Andrew Plotkin <erkyrath@eblong.com> 
<http://eblong.com/zarf/if.html> 

This source code is provided for personal, educational use only. The story and text of _Dual Transform_ belong to me; you may not use them or create derivative works which contain them. However, you have permission to use the programming techniques of this game in your own works, and you may use the source code excluding game text. 

If you want to *play* this game, you're in the wrong place. Go to my web site: <http://eblong.com/zarf/zweb/dual/> 

Obvious warning:  This code contains spoilers! If you haven't played _Dual Transform_, and you read this code, you'll certainly ruin the game for yourself. Play it first. I am releasing this code for the benefit of Inform programmers who are familiar with the game and want to know how I did it. 

This source code was written for Inform 7, build 5Z71. I have not tested it with later I7 releases. 
] 

Release along with cover art. 


[ get force. drop icon. get candle. drop icon. enter pressure. open box. enter heat. get knife. drop icon ] 

When play begins: 
	say "Time for a fresh start.[paragraph break]You've been slogging towards the goal -- true metasemanticity -- for months. Code-logic sparkles in your dreams and mutters in your ears. You've made great strides of progress, thrown them away, rewritten, rearranged, refactored -- but the contract deadline is crawling down your throat. No escaping that. You've got to pull this project together, and soon.[paragraph break]So forget all of the environment modelling, the texture cores, the interface splicing. You're going to build on basic physical forces. Like heat, light, maybe mass... Make it [italic type]feel[roman type] real, in the user's gut." 

Chapter - Infrastructure 

Use serial comma. 
Use American dialect. 
Use full-length room descriptions. 
Use no scoring. 

The verb to be equal-or-less than implies the numerically-less-than-or-equal-to relation. 

Rule for deciding whether all includes scenery: it does not. 

Does the player mean doing something with scenery: 
	it is unlikely. 
Does the player mean doing something with an icon: 
	it is unlikely. 

When play begins: 
	now the store-count is zero; 
	now the last-converted-force is void; 
	now the current-duel is non-duel; 
	now the right hand status line is "[if the location is ZRoom]all 7 forces[else if the location is Trapped]escape?[else if store-count is zero]a fresh start[else][store-count in words] force[s][end if]"; 
	now the left hand status line is "[location][if the location is ZRoom] (metasemantical)[else if the location is a force-room] ([force of the location])[end if]". 

Check preferring unabbreviated room descriptions: 
	say "[Story title] always gives long descriptions of your location."; 
	stop the action. 

Check preferring abbreviated room descriptions: 
	say "[Story title] always gives long descriptions of your location."; 
	stop the action. 

Check preferring sometimes abbreviated room descriptions: 
	say "[Story title] always gives long descriptions of your location."; 
	stop the action. 

The description of the player is "'T. Jant Ganzfeld is a notable contract researcher in virtual workspace design...' But you don't need to re-read your own Distribupedia article[if the location is not ZRoom]. If this project works out, it'll get a lot more impressive. If not -- goodbye to that 'notable'. And maybe that 'is', too[else]. It'll record your triumph soon enough[end if]." 

To say para -- running on: 
	(- DivideParagraphPoint(); new_line; -). 

To say openness of (C - container): 
	if C is open: 
		say "open"; 
	else: 
		say "closed". 

A cycler is a kind of thing. 
A stopping-cycler is a kind of cycler. 
A cycler has a number called the current-count. The current-count of a cycler is usually 1. 
A cycler has a number called the limit. The limit of a cycler is usually 2. 

To decide what number is peek at (C - cycler): 
	decide on the current-count of C. 

To decide what number is current (C - cycler): 
	let N be the current-count of C; 
	increase the current-count of C by one; 
	if the current-count of C is greater than the limit of C: 
		now the current-count of C is one; 
	decide on N. 

To decide what number is current (C - stopping-cycler): 
	let N be the current-count of C; 
	increase the current-count of C by one; 
	if the current-count of C is greater than the limit of C: 
		now the current-count of C is the limit of C; 
	decide on N. 

To decide whether verb-word-read: 
	(- (verb_word == 'read') -). 

To say recognize (T - thing): 
	now T is known. 

Chapter - Actions 

Understand "escape" as exiting. 
Understand "escape [direction]" as going. 
Understand the command "flee" as "escape". 

Understand the command "take" as something new. 
Understand "take [something]" as taking. 
Understand "take off [something]" as taking off. 
Understand "take [something] from [something]" as removing it from. 
Understand "take [something] off [something]" as removing it from. 
Understand "take inventory" as taking inventory. 
Understand the commands "carry" and "hold" as something new. 
Understand the commands "carry" and "hold" as "take". 

Understand "collect [something]" as taking. 
Understand "collect [something] from [something]" as removing it from. 
Understand the commands "catch", "grab", "capture" as "collect". 

Understand the command "get" as something new. 
Understand "get out/off/up" as exiting. 
Understand "get [something]" as taking. 
Understand "get in/into/on/onto [something]" as entering. 
Understand "get off [something]" as getting off. 
Understand "get [something] from [something]" as removing it from. 

Understand the command "pick" as something new. 
Understand "pick up [something]" or "pick [something] up" as taking. 

Understand the command "remove" as something new. 
Understand "remove [something preferably held]" as taking off. 
Understand "remove [something] from [something]" as removing it from. 

Understand the command "put" as something new. 
Understand "put [something] in/inside/into [something]" as inserting it into. 
Understand "put [something] on/onto [something]" as putting it on. 
Understand "put [something] out" as extinguishing. 
Understand "put on [something preferably held]" as wearing. 
Understand "put down [something preferably held]" or "put [something preferably held] down" as dropping. 
Understand "put out [something]" as extinguishing. 

Understand the command "insert" as something new. 
Understand "insert [something] in/into [something]" as inserting it into. 

Understand the command "drop" as something new. 
Understand "drop [something preferably held]" as dropping. 
Understand "drop [something] in/into/down [something]" as inserting it into. 
Understand "drop [something] on/onto [something]" as putting it on. 
Understand "drop [something preferably held] at/against/on/onto [something]" as throwing it at. 
Understand the commands "throw" and "discard" as something new. 
Understand the commands "throw" and "discard" as "drop". 
Understand the commands "release" as "drop". 

Understand the command "set" as something new. 
Understand "set [something] in/inside/into [something]" as inserting it into. 
Understand "set [something] on/onto [something]" as putting it on. 
Understand "set down [something preferably held]" or "set [something preferably held] down" as dropping. 

Understand "blow out/on/onto/in/into [something]" as extinguishing. 
Understand "blow [something] out" as extinguishing. 

Understand the command "inhale" as "smell". 
Understand "breathe" as smelling. 
Understand "breathe [something]" as smelling. 
Understand "breathe in [something]" as smelling. 

Understand the commands "kiss", "hug", "embrace" as something new. 
Understand "kiss [something]" as kissing. 
Understand the commands "hug", "embrace" as "kiss". 

Understand "drink from [something]" as drinking. 

Understand "jump up" as jumping. 
Understand the command "leap" as "jump". 

Understand "pray" as a mistake ("Not your thing, really[if the location is the Church]. And it's not like this is a real church[end if].") 

Understand "titrate", "titrate [something]" as a mistake ("[if the noun is the workspace]This isn't that kind of puzzle.[else]That's not a verb I recognize.[end if]") 

Understand the command "fix" as something new. 

Instead of waiting: 
	say "Time passes[one of]. Your deadline creeps closer[or][or][or][or][cycling]." 

Invoking is an action applying to one thing. 
Understand "invoke [something]" as invoking. 
Understand the command "compile", "hack" as "invoke". 
Check invoking something: 
	say "You can only invoke archetypes and compiled icons"; 
	if the noun is a morph-item: 
		say ". This [noun] is some kind of locale-specific tool, but it's not an archetype"; 
	instead say "." 

Solving is an action applying to one thing. 
Understand "solve [something]" as solving. 
Check solving something: 
	instead say "Not everything in life has a solution." 

Sharpening is an action applying to one thing. 
Understand "sharpen [something]" as sharpening. 
Check sharpening something: 
	instead say "That's [one of]pointless. (Pun intended.)[or]pointless.[stopping]". 
Understand the command "whet" as "sharpen". 

Following is an action applying to one thing. 
Understand "follow [something]" as following. 
Check following the player: 
	instead say "You're right here." 
Check following something: 
	instead say "[if the noun is singular-named]It's[else]They're[end if] right here." 

Digging is an action applying to one thing. 
Understand "dig [something]" as digging. 
Understand "dig in/into/through [something]" as digging. 
Check digging something: 
	instead say "[if the noun is singular-named]That[else]Those[end if] can't be dug." 

Filling is an action applying to one thing. 
Understand "fill [something]" as filling. 
Understand "fill [something] with [something]" as inserting it into (with nouns reversed). 
Understand the command "refill" as "fill". 
Check filling a container: 
	instead say "You'll have to say what to fill it with." 
Check filling something: 
	instead say "That doesn't make much sense." 

A thing can be irrigable or unirrigable. A thing is usually irrigable. 
Irrigating something is an activity. The irrigating activity has a truth state called cancel-irrigate. 
Rule for irrigating something (called O): 
	if O is irrigable: 
		say "You splash the water over [the O]."; 
	else: 
		now cancel-irrigate is true; 
		try touching O. 
After irrigating something when cancel-irrigate is false: 
	remove the water from play. 

Rule for irrigating the player: 
	say "You splash the water onto yourself[if the location is the Longhall]. It feels good[else]. On purpose[end if]." 

Emptying it out is an action applying to one thing. 
Emptying it on is an action applying to two things. 
Understand "empty [something]" as emptying it out. 
Understand "empty out [something]" as emptying it out. 
Understand "empty [something] out" as emptying it out. 
Understand "empty [something] on/onto/in/into [something]" as emptying it on. 
Understand "empty out [something] on/onto/in/into [something]" as emptying it on. 
Understand "empty [something] out on/onto/in/into [something]" as emptying it on. 
Understand the command "pour" as "empty". 

Check emptying a container out: 
	instead say "Just take what you want." 
Check emptying a container on something: 
	instead say "Just take what you want." 
Check emptying something out: 
	instead say "That can't be emptied." 
Check emptying something on something: 
	instead say "That can't be emptied." 

Instead of emptying the player out: 
	say "Eww." 
Instead of emptying the player on something: 
	say "Eww." 

Extinguishing is an action applying to one thing. 
Understand "extinguish [something]" as extinguishing. 
Check extinguishing something: 
	instead say "That's not on fire." 

Check burning something: 
	instead say "You wanted to start over, but setting the world on fire is excessive." 

Breaking it with is an action applying to two things. 
Understand "attack [something] with [something]" as breaking it with. 
Understand the command "cut" as something new. 
Understand the command "chop" as something new. 
Understand the command "slice" as something new. 
Understand the command "prune" as something new. 
Understand the commands "slice", "prune" as "attack". 
Understand "cut down [something]" as attacking. 
Understand "cut down [something] with [something]" as breaking it with. 
Understand "cut [something]" as attacking. 
Understand "cut [something] with [something]" as breaking it with. 
Understand the command "chop" as "cut". 

Check breaking the player with something: 
	instead say "Nothing can harm you in your virtual space -- least of all yourself." 
Check breaking something with an icon: 
	instead say "The [second noun] is a symbol, not a physical weapon." 
Check breaking something with something when the player is not the second noun and the player does not carry the second noun: 
	instead say "You're not holding [the second noun]." 
The last report breaking it with rule: 
	instead say "Violence can't help there." 

Instead of attacking something: 
	let O be the player; 
	if the player carries a morph-item (called M): 
		now O is M; 
	try breaking the noun with O. 

Check drinking something: 
	instead say "Unlikely." 

Instead of jumping when the current-duel is not non-duel: 
	say "You can't jump [if the location is the Longhall]far[else]high[end if] enough to catch [the current-duel]." 

Instead of going nowhere: 
	say "You could exit virtual space in a blink. But escaping your obligations is not so easy. You'd better stay and work." 
Instead of exiting: 
	try going north. 
Instead of going down (this is the no-going-down rule): 
	say "There is no way down." 
Instead of going up (this is the no-going-up rule): 
	say "There is no way up." 

To decide whether horizontally: 
	if the noun is up or the noun is down: 
		decide no; 
	else: 
		decide yes. 


Chapter - Plot and Icons 

A force is a kind of value. The forces are void, pressure, heat, light, charge, weight, form, and metasemantics. 
Understand "thermal" as heat. 
Understand "electricity", "magnetism", "magnetic" as charge. 
Understand "mass" as weight. 
Understand "meta", "semantics", "semantic" as metasemantics. 

A force-room is a kind of room. A force-room has a force. 

An icon is a kind of thing. 
The printed name of an icon is "[force] icon". The indefinite article of an icon is "the". 
The description of an icon is "[if the item described is stored]In the workspace is[else]It's[end if] a small symbol representing [italic type][force][roman type], in all its [aspects of force]." 
An icon has a force. 
An icon has a room called the domain. The domain is usually the StartRoom. 

To say aspects of (F - force): 
	if F is: 
		-- pressure: say "aspects and implications"; 
		-- heat: say "ramifications and aspects"; 
		-- light: say "details and ramifications"; 
		-- charge: say "implications and details"; 
		-- weight: say "ramifications and implications"; 
		-- form: say "details and aspects"; 
		-- otherwise: say "glory"; 

Understand "icon", "symbol", "small", "principle", "force" as an icon. 
Understand the force property as describing an icon. 

Definition: an icon is stored if it is in the workspace. 
Definition: an icon is unstored if it is not in the workspace. 

The store-count is a number that varies. 
The last-converted-force is a force that varies. 
The item-in-play is a truth state that varies. 
The env-counter is a number that varies. 
The env-squelch is a truth state that varies. 

Discover-return-shift is a truth state that varies. 

The pressure-icon is an icon. The force of the pressure-icon is pressure. The domain is the Church. 
The heat-icon is an icon. The force of heat-icon is heat. The domain is the Longhall. 
The light-icon is an icon. The force of light-icon is light. The domain is the Cave. 
The charge-icon is an icon. The force of charge-icon is charge. The domain is the Lab. 
The weight-icon is an icon. The force of weight-icon is weight. The domain is the Library. 
The form-icon is an icon. The force of form-icon is form. The domain is the Circle. 
The metasemantics-icon is an icon. The force of metasemantics-icon is metasemantics. The domain is the ZRoom. 

Instead of dropping an unstored icon: 
	try invoking the noun. 
Instead of entering a unstored icon: 
	say "You must put it into the workspace before you can make use of it." 
Instead of inserting an unstored icon into the workspace: 
	try invoking the noun. 
Instead of putting an unstored icon on the workspace: 
	try invoking the noun. 
Check inserting a stored icon into the workspace: 
	instead say "It's already there." 
Check putting an stored icon on the workspace: 
	instead say "It's already there." 

Instead of taking a stored icon: 
	say "(invoke [the noun])"; 
	try invoking the noun. 
Instead of entering a stored icon: 
	try invoking the noun. 

Rule for implicitly taking a stored icon: 
	instead try taking the noun. 

Instead of touching, rubbing, pushing an icon: 
	try invoking the noun. 

Instead of invoking an unstored icon: 
	now the noun is in the workspace; 
	now the last-converted-force is the force of the noun; 
	now the store-count is the number of stored icons; 
	if the store-count is greater than 1: 
		now the icon-group is part of the workspace; 
	if the noun is the light-icon: 
		now item-in-play is true; 
	now the buzz-counter is zero; 
	if store-count is: 
		-- 1: say "You raise [the noun], consider its intricacies, and release it into the workspace. It drifts away.[para]Smoothly, elegantly, the workspace turns inside out."; 
		-- 2: say "You hold [the noun] up towards the workspace and give it a gentle push. It slides neatly into place, and the world transforms around you."; 
		-- 3: say "You hold [the noun] up and give it a push towards the workspace. It slides neatly into place, and the world transforms around you."; 
		-- 4: say "You hold [the noun] up and push it towards the workspace. It resists for a moment, and then slides into place. The environment transforms."; 
		-- 5: say "You push [the noun] towards the workspace -- but it skids to the side. You tighten your grip to try again. With some careful pressure, the icon slides into place."; 
		-- 6: say "You raise [the noun], and feel the tangible resistance beating from the workspace. What a mess. You lean against it, and slowly shove the icon into its place."; 
		-- 7: say "[The noun] shudders in your grip. Pushing it into the workspace is like forcing it through gravel, but you lean into the force. After several moments of struggle, the icon is in place. The world changes..."; 
		-- otherwise: say "(Shift to new environment, stage [store-count].)"; 
	shift to the domain of the noun. 

Instead of invoking a stored icon: 
	if the location is the domain of the noun: 
		instead say "You poke [the noun], [one of]which flashes reprovingly, since[or]but[stopping] it is already active."; 
	if the location is the ZRoom: 
		instead say "Your collection is complete; you feel like you've done enough for the day's work."; 
	say "You invoke [the noun], and the environment [one of]shifts[or]changes[or]transforms[cycling] [one of]around you[or]into a new form[cycling]."; 
	now discover-return-shift is true; 
	shift to the domain of the noun; 
	check clumsiness. 

To shift to (R - room): 
	now the workspace is in R; 
	now the env-counter is zero; 
	now the env-squelch is false; 
	if item-in-play is true and the player does not carry a morph-item: 
		now all morph-items are in the morph-box; 
		[if R is the Cave and carried-any-morph is false: 
			do nothing; 
		else:] 
		if a morph-item (called M) is based in R: 
			now M is in R; 
	if current-duel is not non-duel: 
		now the current-duel is in R; 
	if R is: 
		-- Church: 
			if the Longhall is visited and the offer-box is not in the Church: 
				now the offer-box is in the Church; 
		-- Longhall: 
			if the offer-box is closed: 
				now the chest is closed; 
			else: 
				now the chest is open; 
		-- Cave: 
			if the mushroom is not converted: 
				if the player carries the torch and the torch is zlit: 
					now the mushroom is in the Cave; 
					now the mushroom is discovered; 
				else if the mushroom is discovered: 
					now the mushroom is in the Cave; 
				else: 
					remove the mushroom from play; 
		-- Library: 
			if the library is not known: 
				now the library is known; 
				now discovered-alt-morph is true; 
				now seen-foreign-morph is true; 
				now the window is in the Church; 
				now the up-tree is in the Longhall; 
		-- Circle: 
			if item-in-play is true: 
				now newly-confused is true; 
	now the player is in R. 

The clumsiness-level is a number that varies. 

To check clumsiness: 
	if understand-drop-switch is true: 
		stop; 
	if the player carries a morph-item (called M): 
		let do-it be false; 
		if the last-converted-force is light and M is not the torch: 
			now do-it is true; 
		if the last-converted-force is charge and M is not the chalice: 
			now do-it is true; 
		if do-it is true: 
			increase the clumsiness-level by 1; 
			if M is based in the location: 
				stop; 
			if clumsiness-level is greater than 4: 
				say "You are caught off-balance as the floor transforms underfoot. In the moment of flailing, your grip slips. [run paragraph on]"; 
				try dropping M. 

The icon-group is plural-named scenery. The printed name is "icons". 
Understand "icons", "symbols", "forces" as the icon-group. 

Instead of examining or searching the icon-group: 
	say "Within the workspace you see "; 
	list the contents of the workspace, as a sentence, using the definite article; 
	say icon-motion-gloss; 
	if the player carries an icon (called O): 
		say ". And then there is [the O] that you carry"; 
	say "."; 

Instead of doing anything except examining, searching the icon-group: 
	say "One at a time, please." 

Chapter - Archetypes and Workspace 

An archetype is a kind of thing. 
An archetype can be known or unknown. An archetype can be converted. 
An archetype has an icon called the attribute. 

Understand "archetype" as an archetype when the item described is known. 

Instead of taking an archetype (called A): 
	if A is the book and the book is locked: 
		instead say "You try to take the book. But the padlock chains it to the bookcase, and you can't compile it while it is fastened."; 
	let F be the force of the attribute of A; 
	now the player has the attribute of A; 
	remove A from play; 
	now A is converted; 
	if F is pressure: 
		say "You cup your hand around [the A] and compile. It shrinks obligingly into a small icon, which you take.[paragraph break]This is just what you were hoping for -- a simple principle, from which an entire immersive world can grow. Now to drop it in the workspace and see what you get."; 
	else: 
		if A is not known: 
			now A is known; 
			say "[one of]Upon closer examination, [or]It appears that [or]You look more closely and see that [cycling][the A] is an archetype: [italic type][F][roman type]. You reach out and compile; it shrinks obligingly into a small icon, which you take."; 
		else: 
			say "You take [the A] and compile. It shrinks obligingly into a small icon."; 
	set pronouns from the attribute of A. 

Instead of invoking an archetype: 
	try taking the noun. 

The workspace is in the StartRoom. 
The workspace is a container. The workspace is scenery. 
Understand "work", "space", "clear", "virtual", "cube" as the workspace. 

Instead of taking or entering or invoking the workspace: 
	say "You are already in your workspace. This is it. This is where you work."; 
	if the Longhall is visited and discover-return-shift is false: 
		say "[line break]However, you could use the icons [italic type]in[roman type] the workspace to manipulate it." 

The workspace-in-dark is a stopping-cycler. 

Instead of examining or searching the workspace: 
	if the location is the StartRoom: 
		say "You are alone in your workspace[if equation in StartRoom], except for the pressure equation[end if]."; 
	else: 
		say "The workspace is represented by a clear, waist-high cube. Within it "; 
		list the contents of the workspace, as a sentence, prefacing with is/are, using the definite article; 
		say icon-motion-gloss; 
		say "."; 
		if the Longhall is visited and discover-return-shift is false: 
			say "[line break]These icons will be useful. The transformations you have experienced can be controlled."; 
		if the location is the Cave and the current workspace-in-dark is 1: 
			say "[line break](Your workspace, of course, is not visually rendered. It would be visible even in total darkness.)" 

To say space icon summary: 
	if store-count is: 
		-- 1: say " is suspended the pressure icon"; 
		-- 2: say " hang your two icons"; 
		-- 3: say " drift three icons"; 
		-- 4: say " move four icons"; 
		-- 5: say " bounce five icons"; 
		-- 6: say " the six icons whirl"; 
		-- 7: say ", the seven icons vibrate wildly"; 
		-- otherwise: say " move [store-count in words] icons"; 

To say icon-motion-gloss: 
	if store-count is: 
		-- 4: say ", all moving jerkily"; 
		-- 5: say ", all bouncing around"; 
		-- 6: say ", all whirling rapidly"; 
		-- 7: say ", all vibrating wildly around"; 

Instead of touching, rubbing, squeezing the workspace: 
	if store-count is: 
		-- 4: say "You feel a slight vibration."; 
		-- 5: say "You feel a sharp vibration."; 
		-- 6: say "The workspace shakes silently under your fingers."; 
		-- 7: say "Violent tremors shudder across the workspace's surface."; 
		-- otherwise: say "You feel nothing." 

Instead of filling the workspace: 
	say "That is the problem, isn't it?" 

Instead of emptying the workspace out: 
	if something is in the workspace: 
		say "That's how you started this whole plan of attack. But now that you're filling it, you don't intend to start over."; 
	else: 
		say "You already have. That's how you started this whole plan of attack." 

Instead of emptying the workspace on something: 
	say "That makes no sense." 

Check inserting an archetype into the workspace: 
	instead say "You have not yet taken [the noun]." 
Check putting an archetype on the workspace: 
	instead say "You have not yet taken [the noun]." 
Check inserting something into the workspace: 
	instead say "You are collecting archetypes, not random scenery." 
Check putting something on the workspace: 
	instead say "You are collecting archetypes, not random scenery." 

The buzz-counter is a number that varies. 

First every turn when the location is a force-room: 
	if the location is the ZRoom: 
		continue the action; 
	let D be 8 minus the store-count; 
	increment the buzz-counter by 1; 
	if the buzz-counter is equal-or-less than D: 
		continue the action; 
	now env-squelch is true; 
	now the buzz-counter is a random number from 0 to 1; 
	if the store-count is: 
		-- 1: say "[one of]You notice the pressure icon rotating slowly in the workspace[or]The pressure icon rotates slowly[stopping]."; 
		-- 2: say "The icons shift slightly in the workspace."; 
		-- 3: say "The icons rebound gently off the sides of the workspace."; 
		-- 4: say "The workspace quivers[one of]. You glance at it, and notice the icons moving jerkily inside. Strange[or] as the icons move[stopping]."; 
		-- 5: say "The workspace vibrates to the icons[apostrophe] sharp movements."; 
		-- 6: say "The workspace is shaking."; 
		-- 7: say "The workspace [one of]shudders[or]shakes violently[cycling]."; 

Chapter - The Item 

A morph-item is a kind of thing. 
A morph-item can be known or unknown. 

Understand "tool" as a morph-item. 

The morph-box is a container. All morph-items are usually in the morph-box. 

Belonging relates one morph-item to one force-room. The verb to be based in implies the belonging relation. 

The chalice is a morph-item. The chalice is based in the Church. The printed name is "pewter chalice". 
The torch is a morph-item. The torch is based in the Longhall. The printed name is "[if zlit]flaming[else]wooden[end if] torch". 
The axe is a morph-item. The axe is based in the Cave. The printed name is "rusty axe". 
The compass is a morph-item. The compass is based in the Lab. The printed name is "brass compass". 
The key is a morph-item. The key is based in the Library. The printed name is "silver key". 
The moon is a morph-item. The moon is based in the Circle. The printed name is "moon". 

After printing the name of a morph-item (called M): 
	now M is known. 

To say para-morph (M - morph-item): 
	now M is known; 
	if the first-seen-morph is nothing: 
		now the first-seen-morph is M; 
		[say ". That's new";] 
	if the first-seen-morph is not M and discovered-alt-morph is false: 
		now discovered-alt-morph is true; 
		say ". [if understand-drop-switch is true]This[else]Ah -- this[end if] must be the parallel of [the first-seen-morph]" 

Understand-drop-switch is a truth state that varies. 
Carried-any-morph is a truth state that varies. 
Seen-foreign-morph is a truth state that varies. 
Discovered-alt-morph is a truth state that varies. 
First-seen-morph is an object that varies. First-seen-morph is nothing. 

After examining a morph-item when seen-foreign-morph is false: 
	if the location is not a force-room or the noun is not based in the location: 
		now seen-foreign-morph is true; 
		say "[The noun] did not transform along with the environment, when you switched to [the location]. Nice touch: a tool in hand must get priority over local themes." 

The dropping action has a morph-item called the drop-switch. 

Setting action variables for dropping: 
	now the drop-switch is nothing. 

After dropping a morph-item when the location is a force-room: 
	now carried-any-morph is true; 
	if the noun is not based in the location: 
		let M be a random morph-item based in the location; 
		now the drop-switch is M; 
		remove noun from play; 
		now M is in the location; 
	continue the action. 

Report dropping when the drop-switch is not nothing: 
	if the drop-switch is the moon: 
		now understand-drop-switch is true; 
		now seen-moon is true; 
		say "As you release [the noun], it shimmers... and fades into the sky. In moments, it has become a distant circle of light: the full moon"; 
	else: 
		if understand-drop-switch is false: 
			now understand-drop-switch is true; 
			say "As you release [the noun], it shimmers. You watch, fascinated, as its shape readjusts to its new environment. In moments, [the noun] has [if drop-switch is unknown]turned into[else]reverted to being[end if] [a drop-switch]"; 
		else: 
			say "As [the noun] leaves your grasp, it [if drop-switch is unknown]shimmers and transforms into[else]reverts to being[end if] [a drop-switch]"; 
	set pronouns from drop-switch; 
	if the location is the Cave and the noun is the torch and the torch is zlit: 
		say ". Your eyes slowly adjust to the near-complete darkness"; 
	instead say "." 

After taking a morph-item: 
	now carried-any-morph is true; 
	continue the action. 


Understand "pewter", "rough", "cup" as the chalice. 
The description of the chalice is "The chalice is dull metal -- roughly-hammered, and decorated only by scratches[if chalice-full]. The chalice is full of water[else]. It is empty[end if]." 

Rule for writing a paragraph about the chalice: 
	if carried-any-morph is false: 
		say "A rough pewter chalice is lying near the altar"; 
	else: 
		say "Nearby sits a pewter chalice[if chalice-full], full of water[end if]"; 
	say "[para-morph chalice]." 

After printing the name of the chalice while taking inventory or dropping: 
	if chalice-full: 
		say " full of water". 

To decide whether chalice-full: 
	if the water is part of the chalice: 
		decide yes; 
	else: 
		decide no. 

Instead of searching the chalice: 
	say "The chalice [if chalice-full]is full of water[else]is empty[end if]." 

Instead of inserting the water into the chalice: 
	say "It already is." 

Instead of inserting an icon into the chalice: 
	say "Putting icons in the chalice is useless, and possibly a type error." 

Instead of filling the chalice: 
	if chalice-full: 
		instead say "The chalice is already full."; 
	if the location is not the Cave: 
		instead say "You're not sure what to fill it with."; 
	try taking the stream. 

Instead of drinking the chalice when chalice-full: 
	try drinking the water. 
Instead of tasting the chalice when chalice-full: 
	try tasting the water. 

Instead of emptying the chalice out: 
	if not chalice-full: 
		instead say "The chalice is already empty."; 
	if the player does not carry the chalice: 
		instead say "You're not holding the chalice."; 
	try dropping the water. 

Instead of emptying the chalice on something: 
	if not chalice-full: 
		instead say "The chalice is already empty."; 
	if the player does not carry the chalice: 
		instead say "You're not holding the chalice."; 
	try putting the water on the second noun. 

The water is a thing. The printed name is "cupful of water". The description is "The chalice contains some water." 
Understand "cupful", "cupfull", "quantity", "of water", "cup of", "chalice of" as the water. 

Instead of taking the water: 
	if the player carries the chalice: 
		say "You already have it."; 
	else: 
		say "(take the chalice of water)"; 
		try taking the chalice. 

Instead of putting the water on something (this is the put-to-irrigate rule): 
	if the player does not carry the chalice: 
		instead say "You're not holding the chalice of water."; 
	carry out the irrigating activity with the second noun. 
Instead of inserting the water into something (this is the insert-to-irrigate rule): 
	if the player does not carry the chalice: 
		instead say "You're not holding the chalice of water."; 
	if the second noun is the player: 
		instead try drinking the water; 
	carry out the irrigating activity with the second noun. 

The put-to-irrigate rule is listed first in the instead rulebook. 
The insert-to-irrigate rule is listed first in the instead rulebook. 

Rule for irrigating the chalice: 
	now cancel-irrigate is true; 
	instead say "It already is." 

Rule for irrigating the water: 
	now cancel-irrigate is true; 
	instead say "The water is already wet." 

Instead of dropping the water: 
	if the player does not carry the chalice: 
		instead say "You're not holding the chalice of water."; 
	remove the water from play; 
	say "You pour out the chalice; the water splashes away on the ground." 

Instead of drinking the water: 
	if the player carries the chalice: 
		remove the water from play; 
		say "[one of]You raise the chalice and drain it[or]You drain the chalice again[stopping]. [if the location is the Longhall]In this heat, it tastes wonderful[else]It's a little bitter[end if]."; 
	else: 
		say "You're not holding the chalice of water." 

Instead of tasting the water: 
	if the player carries the chalice: 
		say "You sip the water. It's a bit metallic."; 
	else: 
		say "You're not holding the chalice of water." 

Instead of touching the water: 
	say "The water is [if the location is the Longhall]slightly warm[else]cool[end if]." 

Instead of emptying the water out: 
	try emptying the chalice out. 

Instead of emptying the water on something: 
	try putting the water on the second noun. 

Instead of breaking something with the water: 
	try putting the water on the noun. 


The torch can be zlit or unzlit. 
Understand "wooden", "stick", "pitch", "pitchy" as the torch. 
Understand "flaming", "burning" as the torch when the torch is zlit. 
Understand "flame", "fire" as the torch when the torch is zlit and the location is not the Longhall. 
Understand "black" as the torch when the location is not the Cave. 

Rule for writing a paragraph about the torch: 
	if the torch is not zlit: 
		if the torch is not known: 
			say "A short wooden stick is lying [torch-location]. One end is blackened; an unlit torch, you realize"; 
		else: 
			say "A wooden torch is lying [torch-location]. It is not lit"; 
	else: 
		say "A torch is lying [torch-location], burning unsteadily"; 
	say "[para-morph torch]." 

The description of the torch is "It's a short length of wood[if unzlit]. One end is coated with some black pitchy stuff[else][torch-flame-form][end if]." 

To say torch-location: 
	if carried-any-morph is false: 
		say "near the mound"; 
	else: 
		say "on the ground". 

To say torch-flame-form: 
	if the torch is carried by the player: 
		say "; one end is burning brightly"; 
	else: 
		say ". One end is burning, the flames guttering against the ground" 

Instead of touching, rubbing the torch when the torch is zlit: 
	say "The fire is convincingly hot." 

Instead of smelling the torch: 
	if the torch is unzlit: 
		say "The torch smells faintly of charred wood."; 
	else: 
		say "You smell sharp, dry smoke." 

Instead of extinguishing the torch: 
	if the torch is unzlit: 
		instead say "The torch isn't lit."; 
	now the torch is unzlit; 
	if the torch is carried by the player and the location is the Cave: 
		say "You carefully dip the torch into the stream. It goes out with a violent hiss"; 
	else if the torch is carried by the player: 
		say "You bend down, grind the end of the torch against the ground, and stomp it out"; 
	else: 
		say "You stomp on the torch until it goes out"; 
	if the location is the Cave: 
		say ", and you are left in near-complete darkness"; 
	instead say "." 

Instead of burning the torch: 
	if the torch is zlit: 
		instead say "The torch is already burning."; 
	if the location is not the Longhall: 
		instead say "You're not sure how to light the torch here."; 
	if the player does not carry the torch: 
		try silently taking the torch; 
		if the player does not carry the torch: 
			instead say "You're not holding the torch."; 
		say "You pick up the torch, and thrust it into the firepit. "; 
	now the torch is zlit; 
	say "[one of]The flame catches easily. The torch is now burning brightly[or]The torch catches fire[stopping]." 

Understand "rust", "rusty", "rusty-blade", "worn", "blade", "bladed", "haft", "ax" as the axe. The description of the axe is "It's an axe, perhaps an old spelunker's tool. [if carried-any-morph is false]It's stuck into a stalactite, which projects down out of the darkness above[else]The blade is rusty and the haft is short[end if]." 

Understand "stalactite" as the axe when carried-any-morph is false. 

Rule for writing a paragraph about the axe: 
	if carried-any-morph is false: 
		say "A worn axe is jammed into a stalactite, just to the south. Unfortunately, it's well above your head"; 
	else: 
		say "A worn, rusty-bladed axe lies nearby"; 
	say "[para-morph axe]." 

Check taking the axe when carried-any-morph is false: 
	instead say "The axe is stuck too high to reach." 

Instead of doing anything except examining to the axe when carried-any-morph is false: 
	say "The axe is stuck too high to reach." 

Instead of touching the axe: 
	say "It's not very sharp at all." 

Instead of rubbing, sharpening the axe: 
	say "If you got all the rust off this thing, you wouldn't have much axe left." 

Understand "brass", "instrument", "polished", "needle" as the compass. 

Rule for writing a paragraph about the compass: 
	say "You see a polished brass compass here"; 
	say "[para-morph compass]." 

The description of the compass is "The compass is a palm-sized instrument,[if the player carries the compass] heavy, and[end if] precisely engraved[if the location is the Lab]. The needle wavers uncertainly in this charged atmosphere[else]. The needle points north[end if]." 

Instead of examining the compass when the location is the Circle: 
	now all morph-items are in the morph-box; 
	now newly-confused is false; 
	now item-in-play is false; 
	now current-duel is the moth; 
	now the current-duel is in the Circle; 
	say "You bend over the compass. The needle turns slowly, as if seeking something more subtle than magnetic north. It gleams, catching the moonlight...[para]Wait. There is no moon. Something glows in your cupped hand -- no longer a brass compass -- and then it crawls between your fingers and flutters upward." 

Instead of turning the compass: 
	if the location is the Circle: 
		instead try examining the compass; 
	say "The needle [if the location is the Lab]spins[else]tracks north[end if] as you rotate the compass." 

Instead of searching the compass: 
	try examining the compass. 

Instead of sharpening the compass: 
	say "A compass needle is not the sort that needs sharpening." 

Instead of following the compass: 
	if the location is the Circle: 
		instead try examining the compass; 
	say "Which way?" 

Understand "silver" as the key. 

Rule for writing a paragraph about the key: 
	say "A silver key shines gently on the floor"; 
	say "[para-morph key]." 

The description of the key is "The key is cast in [if the location is the Cave and cave-dark][else]bright, [end if]flowing loops of silver." 

The moon is scenery. 

Understand "full" as the moon. 

The description of the moon is "The full moon seems nearly blinding in the starless sky[one of].[para]You recognize the moon as yet another parallel of your axe, torch, chalice... but a bit farther out of reach[or][stopping]." 

Instead of following the moon: 
	say "The moon is directly above you." 

Instead of smelling the moon: 
	say "A quarter-million miles of vacuum rule that out. But you've read that it smells like gunpowder." 

Instead of doing anything except examining, listening to to the moon: 
	say "You can't touch the moon." 

Chapter - The Duel 

A duel-item is a kind of thing. 
A duel-item can be known or unknown. 
A duel-item has a duel-item called the follower. 
A duel-item has a force-room called the weakness. 
The current-duel is a duel-item that varies. 
Seen-duel-static is a truth state that varies. 

The non-duel is a duel-item. The follower is the moth. 
The moth is a duel-item. The follower is the snowflake. The weakness is the Cave. The printed name is "glowing moth". 
The snowflake is a duel-item. The follower is the ring. The weakness is the Longhall. The printed name is "snowflake". 
The ring is a duel-item. The follower is the thread. The weakness is the Church. The printed name is "smoke ring". 
The thread is a duel-item. The follower is the kite. The weakness is the Library. The printed name is "silk thread". 
The kite is a duel-item. The follower is the gleam. The weakness is the Lab. The printed name is "silver kite". 
The gleam is a duel-item. The follower is the non-duel. The weakness is the Circle. The printed name is "gleam of light". 

To say duel-verb (D - duel-item): 
	if D is: 
		-- moth: say "fluttering"; 
		-- snowflake: say "drifting"; 
		-- ring: say "floating"; 
		-- thread: say "swirling"; 
		-- kite: say "dancing"; 
		-- otherwise: say "moving". 

Instead of doing anything except examining, listening, smelling, following a duel-item: 
	say "[one of]It's just out of reach[or]It escapes your grasp[cycling][if the noun is the gleam]. Besides, what could you do to a gleam of light?[else].[end if]" 

Instead of following a duel-item (called D): 
	say "It's not heading in any particular direction[if the location is the Circle], unfortunately[end if]. Just [duel-verb D] randomly." 


Every turn when the current-duel is not non-duel: 
	if the location is the weakness of the current-duel: 
		let D be the current-duel; 
		now the current-duel is the follower of D; 
		now all duel-items are in the morph-box; 
		if the current-duel is non-duel: 
			now the model is in the location; 
			now the stars are in the location; 
			say "There is no roof now, only the night sky... and the gleam of light shines upwards, unimpeded, into the darkness.[para]You can still see it there. And then, as your eyes adjust, you can see more. Sparks of light, infinitely distant. The stars are out.[para]...How did you miss it? The starlight illuminates a shape at your feet. It's a small, perfect model of a room: your workspace. Your usual, habitual workspace -- not this fluid environment."; 
		else: 
			now current-duel is in the location; 
			if D is: 
				-- moth: say "As the Cave forms around you, the glowing moth flutters up into its high, dark recesses. Its light shines softly on gleaming limestone.[para]And on the bats. One flutters by and nips the moth right out of the air. Whoops.[para]The moth shimmers, desperately seeking another form, one less vulnerable. It breaks up into pixels -- and reforms as a fat snowflake, drifting around the upper regions of the Cave. The bats, apparently uninterested in bits of ice, now ignore it."; 
				-- snowflake: say "The snowflake whirls in the fire-pit's smoky updrafts, as the Longhall shimmers into place. In moments the flake is losing its luster.[para]Again it shimmers away. This time it sublimates into a smoke-ring, which drifts above you in cheerful disregard of the heat."; 
				-- ring: say "The smoke ring is torn this way and that way in the Church's turbulent gusts of air. It begins to tatter... and then shimmers into a new form.[para]A long silk thread now rides the air currents. It swirls back and forth, curling and twisting, but never falling."; 
				-- thread: say "The silk thread slides among the hanging blades, or tries to. It tangles, is caught, and the many edges pull at it...[para]The thread dissolves into pixels, and becomes a miniature silver kite, which slides dextrously between the blades."; 
				-- kite: say "The silver kite bobs near the wires, and jerks as a spark leaps across to it. It tries to slide away; but a flash of lightning sears the sky, and the room's air grows prickly and electric. Sparks dance from the kite's tail, and the wires pull it closer --[para]The kite shimmers away... into a gleam of pure light that plays across the roof."; 
				-- otherwise: say "(Move [D] to [current-duel].)" 


Understand "something", "thing", "glow", "glowing", "flutter", "fluttering", "wing", "wings" as the moth. 

Rule for writing a paragraph about the moth: 
	if the location is the Cave: 
		now the moth is mentioned; 
		stop; 
	if the location is not the Circle and seen-duel-static is false: 
		now seen-duel-static is true; 
		now the moth is known; 
		instead say "Interesting -- the glowing moth has remained invariant, in the room's transformation. It is fluttering around [the location], unchanged."; 
	say  "[animate-moth]."; 
	now the moth is known. 

The description of the moth is "[animate-moth]. Its wings [if the location is the Circle]glow softly against the night sky[else]emit a soft glow[end if]." 

To say animate-moth: 
	if examining: 
		say "The moth"; 
	else: 
		say "[if unknown]A[else]The[end if] glowing moth"; 
	if location is: 
		-- Circle: say " is fluttering erratically back and forth around the Circle, above you"; 
		-- Church: say " is fluttering back and forth, buffeted by the air currents"; 
		-- Lab: say " is fluttering erratically back and forth under the glass roof"; 
		-- Library: say " is fluttering erratically back and forth among the hanging blades"; 
		-- otherwise: say " is fluttering erratically back and forth above you" 

Understand "fat", "lacy", "crystal", "snow", "flake" as the snowflake. 

Rule for writing a paragraph about the snowflake: 
	if the location is the Longhall: 
		now the snowflake is mentioned; 
		stop; 
	say "[animate-snowflake]." 

The description of the snowflake is "The snowflake is a fat, lacy crystal. [animate-snowflake]." 

To say animate-snowflake: 
	if examining: 
		say "It"; 
	else: 
		say "The snowflake"; 
	if location is: 
		-- Church: say " is bouncing around in the air currents, never settling"; 
		-- Library: say " drifts around among the hanging blades, never settling"; 
		-- Lab: say " drifts around among the wires, never settling"; 
		-- Circle: say " drifts around the Circle above you, never settling"; 
		-- otherwise: say " is drifting around above you, never settling" 

Understand "smoke", "smokering", "smoke-ring" as the ring. 

Rule for writing a paragraph about the ring: 
	if the location is the Church: 
		now the ring is mentioned; 
		stop; 
	say "[animate-ring]." 

The description of the ring is "The smoke ring rotates gently without dissipating. [animate-ring]." 

To say animate-ring: 
	if examining: 
		say "It"; 
	else: 
		say "The smoke ring"; 
	if location is: 
		-- Lab: say " floats slowly around among the wires"; 
		-- Library: say " floats slowly among the hanging blades, which pass through it harmlessly"; 
		-- Longhall: say " floats slowly around the Longhall, half-lost in the smoky air"; 
		-- otherwise: say " floats slowly around above you" 

Understand "silk", "long" as the thread. 

Rule for writing a paragraph about the thread: 
	if the location is the Library: 
		now the thread is mentioned; 
		stop; 
	say "[animate-thread]." 

The description of the thread is "A long thread of silk swirls above you. [animate-thread]." 

To say animate-thread: 
	if examining: 
		say "It"; 
	else: 
		say "The silk thread"; 
	if location is: 
		-- Cave: say " ripples ceaselessly around in the still air"; 
		-- Longhall: say " ripples ceaselessly around in the rising air currents"; 
		-- otherwise: say " ripples ceaselessly around in the air" 

Understand "silver", "tail", "silvery", "diamond", "bright", "miniature" as the kite. 

Rule for writing a paragraph about the kite: 
	if the location is the Lab: 
		now the kite is mentioned; 
		stop; 
	say "[animate-kite]." 

The description of the kite is "The kite is a delicate silvery diamond of foil, trailing a bright tail. [animate-kite]." 

To say animate-kite: 
	if examining: 
		say "It"; 
	else: 
		say "The silver kite"; 
	if location is: 
		-- Library: say " dances around the hanging blades, somehow never touching them"; 
		-- Cave: say " dances gently in the still dark air"; 
		-- Church: say " dances merrily in the air currents"; 
		-- otherwise: say " dances around above you" 

Understand "single", "sourceless", "gleam of", "of light", "pure", "pure light" as the gleam. 

Rule for writing a paragraph about the gleam: 
	if the location is the Circle: 
		now the gleam is mentioned; 
		stop; 
	say "[animate-gleam]." 

The description of the gleam is "It's a single, sourceless gleam of light. [animate-gleam]." 

To say animate-gleam: 
	if examining: 
		say "It"; 
	else: 
		say "The gleam of light"; 
	if location is: 
		-- Cave: say " dances around the otherwise-invisible cave roof"; 
		-- Church: say " dances around the high marble vault"; 
		-- Longhall: say " dances around the low roof, merrily avoiding you"; 
		-- Library: say " dances around the ceiling, glancing off the sharp edges above"; 
		-- Lab: say " dances around the roof, glinting off the rain-streaked glass"; 
		-- otherwise: say " dances around the ceiling"; 
	if examining and the location is the Cave: 
		say ". Occasionally, a bat squeaks its irate disapproval" 

Chapter - Credits 

Displaying credits is an action out of world. 

Understand "about", "credits" as displaying credits. 

After printing the banner text: 
	say "(Type 'about' for credits and game information.)" 

Report displaying credits: 
	say "[Story title] is copyright 2010 by Andrew Plotkin [fixed letter spacing]<erkyrath@eblong.com>[variable letter spacing]. It may be distributed for free, but not sold or included in any for-profit collection without written permission from the author. For more of my games, see [fixed letter spacing]http://eblong.com/zarf/if.html[variable letter spacing].[para]"; 
	say "The game was written for the Seventh Casual Gameplay Design Competition at JayIsGames.com; it wound up in a three-way tie for second place.[para]"; 
	say "Thanks to the beta-testers: Marius Müller, Zhou Fang, Kevin Jackson-Mead, Sarah Morayati, Jake Eakle, and Emily Short. And to the People's Republic of IF gang, who gave me feedback on an early version. (It's not even alpha-testing when the game isn't finished yet.)" 

Chapter - Debugging - not for release 

The magic wand is a thing. 

Zap-forcing is an action applying to one value. 

Understand "zap [force]" as zap-forcing. 

Instead of zap-forcing: 
	now all icons are in the workspace; 
	[now the store-count is 7;] 
	if the force understood is not metasemantics: 
		now item-in-play is true; 
	if the force understood is form: 
		now the compass is carried by the player; 
	repeat with R running through force-rooms: 
		if the force of R is the force understood: 
			say "Zapping to [R]."; 
			shift to R; 
			stop the action. 

Zapping is an action applying to one object. 

Understand "zap [something]" as zapping. 

Instead of zapping the chest: 
	if the chest is open: 
		now the chest is closed; 
	else: 
		now the chest is open; 
	say "Zap -- chest is [if chest is open]open[else]closed[end if]." 

Instead of zapping the torch: 
	if the torch is unzlit: 
		now the torch is zlit; 
	else: 
		now the torch is unzlit; 
	say "Zap -- torch is [if torch is zlit]zlit[else]unzlit[end if]." 

Instead of zapping the chalice: 
	if chalice-full: 
		remove the water from play; 
	else: 
		now the water is part of the chalice; 
	say "Zap -- chalice is [if chalice-full]full[else]empty[end if]." 

Instead of zapping the flask: 
	if has-coolant: 
		remove the coolant from play; 
	else: 
		now the coolant is in the Lab; 
	say "Zap -- flask is [if has-coolant]full[else]empty[end if]." 

Instead of zapping the window: 
	if the window is unbroken: 
		now the window is broken; 
	else: 
		now the window is unbroken; 
	say "Zap -- window is [if window is broken]broken[else]unbroken[end if]." 

Instead of zapping the up-tree: 
	now the window is broken; 
	remove the up-tree from play; 
	now the down-tree is in the Longhall; 
	now the bookcase is open; 
	remove the tidy-books from play; 
	now the messy-books are in the bookcase; 
	say "Zap -- tree fallen." 

Instead of zapping the book: 
	if the book is unlocked: 
		now the book is locked; 
	else: 
		now the book is unlocked; 
	say "Zap -- book is [if book is locked]locked[else]unlocked[end if]." 

Instead of zapping the stones: 
	now the current-duel is the gleam; 
	say "Zap -- gleam time." 

Instead of zapping an icon: 
	try invoking the noun. 

Instead of zapping a duel-item: 
	let D be the follower of the current-duel; 
	if D is non-duel: 
		now D is the follower of D; 
	now all duel-items are in the morph-box; 
	now the current-duel is D; 
	move the current-duel to the location; 
	say "Zap -- transformed to [current-duel]." 

[Break up the text.] 

Chapter - Room 0 - Empty Space 

The StartRoom is a room. The printed name is "Workspace". The description is "Nothing surrounds you. The virtual space is unbounded and absolutely blank[one of]. Just the opposite of what you're aiming at, you think wryly[or][if equation in StartRoom], except for your new archetype[end if][stopping]." 

Instead of going down in the StartRoom: 
	try going north. 
Instead of going up in the StartRoom: 
	try going north. 

The equation is a known archetype in the StartRoom. "[one of]With a mental flick, you call up the archetype of a force. [italic type]Pressure,[roman type] you decide. Mathematically simple, but instinctual. The archetype forms before you: a simple equation hanging in the workspace[or]The pressure equation hangs before you, ready to be collected[stopping]." 
The attribute of the equation is the pressure-icon. 
The description is "[italic type]'PV=nRT.'[roman type] Of course the archetype encodes far more information than that -- it's a slice of your entire knowledge base. But the grade-school equation represents the idea of [italic type]pressure[roman type], so it's good enough for hacking." 

Understand "pressure", "force", "pvnrt", "pv=nrt", "nrt=pv", "pv", "nrt", "simple", "equations" as the equation. 

Instead of touching, rubbing, squeezing the equation: 
	say "The equation feels taut, like a balloon inflated near bursting. Perfect." 

Instead of pushing, pulling, turning the equation: 
	say "The equation hangs in a slightly different part of the workspace now." 

Instead of solving the equation: 
	say "It's just a symbol. You don't need to actually solve the thing." 

Instead of smelling the StartRoom: 
	say "You smell nothing whatsoever." 

Instead of listening to the StartRoom: 
	say "You hear nothing whatsoever." 

Chapter - Room 1 - Church 

The Church is a force-room. The force of the Church is pressure. 
The description is "[one of]White marble rises in smooth, heavy columns to an arching vault. The walls are worked in geometric traceries; one could as easily see this as a mosque, or a cloister. The symbolism is not important, only the weight of dome and the curve of arch, bearing down into the roots of the world.[para]The workspace has condensed into a simple cube which squats in the room's center.[para]A red carpet runs from an illuminated altar, at the south end, to the stand of brass pipes which dominates the north wall. Air throbs from their arrayed notches and thunders quietly across the chamber.[para][italic type]Magnificent,[roman type] you think.[or]White marble rises in smooth, heavy columns to an arching vault. The walls are worked in geometric traceries; a rich red carpet runs up the room's length, to the brass pipes which stand at its north end. Air throbs from the pipes and thunders quietly across the chamber.[para]To the south stands a graceful marble altar[if the candle is not converted], which supports a single lit candle[end if][if the offer-box is in the Church and the peek at church-box-cycler is not one], which supports a small [openness of offer-box] offering box[end if].[para]Your workspace is a squat cube in the center of the room. Inside it[space icon summary].[stopping]" 

Instead of going nowhere from the Church when horizontally: 
	say "[one of]This place, grand as it is, is still a virtual representation of your entire workspace. [or][stopping]There are no exits, because there is nowhere outside to go." 

The church-intro-cycler is a stopping-cycler. The limit is 3. 
The church-box-cycler is a stopping-cycler. 

Every turn when the location is the Church: 
	if the current church-intro-cycler is 2: 
		now the env-squelch is true; 
		say "This environment is a mere sketch, but you didn't sketch it. It's grown entirely from your subconscious symbolism. This is what you've been striving for. Now you just need to draw out more archetypes."; 
	if the offer-box is in the Church: 
		if the current church-box-cycler is 1: 
			now the env-squelch is true; 
			say "Something is different here... You glance around. A small offering-box now sits on top of the altar. You're sure it wasn't there before." 

Every turn when the location is the Church: 
	if the env-squelch is true: 
		now the env-squelch is false; 
		continue the action; 
	increment the env-counter by one; 
	if the env-counter is: 
		-- 2: say "A [one of]gust[or]puff[or]breath[cycling] of air brushes [one of]over[or]past[cycling] you."; 
		-- 5: say "Air [one of]moves[or]sighs[cycling] through the cathedral."; 
		-- 6: 
			if a random chance of 2 in 5 succeeds: 
				now the env-counter is zero; 
		-- 7: 
			if a random chance of 2 in 5 succeeds: 
				now the env-counter is zero; 
		-- 8: now the env-counter is zero; 

The altar is scenery in the Church. The description is "The altar is a simple block of smoky marble, at one end of the red carpet[if the candle is not converted]. Standing upon it is a tall candle, which is lit[end if][if the offer-box is in the Church]. Standing upon it is a small offering box, which is [openness of offer-box][end if]." 

Understand "marble", "block", "smoky", "simple", "graceful" as the altar. 
Understand "illuminated" as the altar when the candle is not converted. 

Instead of searching the altar: 
	try examining the altar. 

Instead of climbing, entering the altar: 
	say "Climbing onto the altar will not get you anywhere interesting." 

Instead of taking, pushing, pulling the altar: 
	say "The altar really isn't going to move." 

Instead of putting something on the altar: 
	say "That would be either sacreligious or unnecessary, depending on how you think of this place." 

Instead of removing the candle from the altar: 
	try taking the candle. 

The candle is an archetype in the Church. The candle is scenery. 
The attribute of the candle is the heat-icon. 
The description is "A tall golden candle burns on the altar. Its flame flickers and flickers in the room's unstill air[if not known]. You recognize the candle as an archetype -- [italic type]heat[roman type][recognize candle][end if]." 

Understand "wax", "beeswax", "flame", "fire", "tall", "gold", "golden", "fire" as the candle. 

Instead of touching, rubbing the candle: 
	say "Warmth radiates from the candle." 

Instead of pushing, pulling, turning the candle: 
	say "Nothing happens." 

Instead of smelling the candle: 
	say "You smell smoke and warm beeswax." 

Instead of extinguishing the candle: 
	say "You blow on the candle, but it doesn't go out[if known]. Archetypes tend to be invariant[end if]." 

Instead of burning the candle: 
	say "The candle is already lit." 

The temp-goal is part of the candle. The temp-goal is scenery. The printed name is "archetype". 
Understand "heat", "light", "mass", "equation" as the temp-goal. 
Understand "archetype" as the temp-goal when the candle is not known. 

Instead of doing anything to the temp-goal: 
	if the candle is not known: 
		say "You don't immediately see a second archetype[one of][or]. There's probably one integrated into this environment, though[stopping]."; 
	else: 
		say "The candle seems to be an archetype. Try working with that." 

The offer-box is a scenery openable closed container. The printed name is "offering box". The description is "A small chased-silver box, perhaps an offering-box, rests on the altar. The box is [if the offer-box is closed]closed[else]open, but empty[end if][if the knife is not converted].[one of][para]You glance around the room, comparing locations. Yes, a direct symbolic parallel:[or] You consider that[stopping] this tiny box occupies the same spot as the enormous wooden chest[end if]." 

Report opening the offer-box: 
	instead say "You lift the lid[one of]. Disappointingly, the box is empty[or][stopping]." 

Instead of inserting something into the offer-box when the offer-box is open: 
	say "You don't need to store anything here." 

Understand "box", "small", "offering", "offering-box", "silver", "chased", "chased-silver" as the offer-box. 

Instead of taking, pushing, pulling the offer-box: 
	say "[one of]Upon further inspection, the box is bolted down. Given that this is your own imagery, you wonder what your subconscious is saying about the rest of you[or]The silver box is bolted to the altar[stopping]." 

The carpet is scenery in the Church. The description is "A heavy red carpet runs the length of the room." 
Understand "red", "heavy", "rug", "rich" as the carpet. 

Instead of putting something on the carpet: 
	try dropping the noun. 

Instead of taking, pushing, pulling, turning the carpet: 
	say "The carpet is much too heavy to move[one of][or][or]. And there's nothing under it, honest[or][stopping]." 

Instead of smelling the carpet: 
	try smelling the church-air. 

Instead of entering the carpet: 
	say "Standing on the carpet is not very different from standing elsewhere." 

Instead of looking under the carpet: 
	try taking the carpet. 

Instead of following the carpet: 
	say "It's not [italic type]that[roman type] long." 

Rule for irrigating the carpet: 
	say "You pour the water onto the carpet, which soaks it up." 

The pipes are plural-named scenery in the Church. The description is "Brass organ pipes cover the north wall. Air rushes through them -- not loudly, but with a steady undertone of irregular chords." 
Understand "stand", "brass", "pipe", "pipes", "organ", "notch", "notches" as the pipes. 
Understand "music", "chord", "chords", "sound" as the pipes. 

Instead of climbing the pipes: 
	say "The pipes are unclimbable." 

Instead of touching, rubbing the pipes: 
	say "The pipes vibrate steadily." 

Instead of taking, pushing, pulling, turning the pipes: 
	say "The pipes are built into the wall; they don't move." 

Instead of searching the pipes: 
	say "You cannot see into the brass pipes." 

Instead of listening to the pipes: 
	say "The sound of the pipes is gentle and nearly unmelodic." 

Instead of listening to the Church: 
	try listening to the pipes. 

Instead of extinguishing the pipes: 
	say "You can't play organ pipes by blowing them." 

The vault is scenery in the Church. The description is "A marble vault arches high overhead." 
Understand "arch", "arching", "dome", "curve", "marble", "roof" as the vault. 

Instead of doing anything except examining the vault: 
	say "The vault is far above you." 

Rule for irrigating the vault: 
	now cancel-irrigate is true; 
	say "Pouring water on the ceiling is too awkward." 

The marble-walls are plural-named scenery in the Church. The printed name is "walls". The description is "Geometrically carved panels are flanked by weighty columns of white marble." 

Understand "marble", "wall", "walls", "geometric", "tracery", "traceries", "panel", "panels" as the marble-walls. 
Understand "smooth", "white", "heavy", "weighty", "column", "columns", "pillar", "pillars" as the marble-walls. 

Instead of touching, rubbing the marble-walls: 
	say "You run your finger across the smooth stone and the intricate carvings. A conventional virtuality would require hours of modelling to achieve this level of detail. This exists because your mind expects it." 

Instead of climbing the marble-walls: 
	say "They're geometric carvings, not a ladder." 

Instead of entering the marble-walls: 
	say "Unsurprisingly, walking through walls plays no part in this symbolism." 

The church-air is scenery in the Church. The printed name is "air". The description is "The air here shifts in unpredictable gusts and currents; the organ pipes blow gentle, unceasing turbulence throughout the room." 

Understand "breeze", "wind", "gust", "puff", "breath", "current", "currents", "unstill", "air" as the church-air. 

Instead of taking the church-air: 
	say "Air cannot be taken." 

Instead of inserting an icon into the church-air: 
	try dropping the noun. 

Instead of pushing, pulling, turning, rubbing, squeezing the church-air: 
	say "The air disregards this." 

Instead of touching the church-air: 
	say "The air moves unceasingly against your skin." 

Instead of listening to the church-air: 
	try listening to the pipes. 

Instead of smelling the church-air: 
	say "This place smells of disturbed dust, with a hint of rose." 

Instead of smelling the Church: 
	try smelling the church-air. 

Instead of following the church-air: 
	say "The air moves this way and that." 

Rule for irrigating the church-air: 
	say "You fling the water up into the air. It spatters down around you." 

The window is fixed in place. The printed name is "[if broken]broken[else]tree[end if] window". The description is "[window-desc]." 
The window can be broken or unbroken. 

To say window-desc: 
	if the window is unbroken: 
		say "The glass tiles are not set in lead; perhaps the mosaic is fused or cemented. However the window was made, it shines with thousands of tints of green"; 
	else: 
		say "[if leaves-present]Shards of broken green glass spill across the floor[else]The window is shattered, although most of the broken glass has vanished[end if]. Behind the window casing is only blank white marble" 

Rule for writing a paragraph about the window: 
	if the window is unbroken: 
		say "[one of]The west wall is now filled by an enormous stained-glass window, which certainly wasn't there before. The window[or]The west wall is filled by an enormous stained-glass window. It[stopping] depicts a tall green tree, standing in a field of lesser greenery."; 
	else: 
		say "The window [if leaves-present]has fallen across the west side of the Church in a cascade of broken green glass[else]is broken, but most of the glass is gone[end if]." 

Understand "stained", "glass", "stained-glass", "enormous", "green", "tree", "field", "greenery", "tile", "tiles" as the window. 

Understand "broken", "cascade", "cascade of", "shard", "shards", "hole", "jagged" as the window when the window is broken. 

Instead of touching, rubbing the window when the window is unbroken: 
	say "You run your fingers down the cool, irregular glass." 

Instead of searching the window when the window is unbroken: 
	say "You can't make anything out beyond the glass, except light." 

Instead of entering the window when the window is unbroken: 
	say "You can't walk through glass." 

Instead of pushing the window when the window is unbroken: 
	try breaking the window with the player. 

Instead of opening the window: 
	if the window is unbroken: 
		say "There's no way to open that."; 
	else: 
		say "It doesn't get opener than this." 

Instead of closing the window: 
	if the window is unbroken: 
		say "It's not that sort of window."; 
	else: 
		say "There's no way to close that." 

Report breaking the window with something when the window is unbroken: 
	now the window is broken; 
	remove the up-tree from play; 
	now the down-tree is in the Longhall; 
	now the bookcase is open; 
	remove the tidy-books from play; 
	now the messy-books are in the bookcase; 
	if the second noun is the axe: 
		say "You raise the axe, and chop down at the window. Glass splinters, and the window cracks alarmingly. Then, with "; 
	else if the second noun is the player: 
		say "You give the window a shove with your shoulder. It cracks alarmingly. You back away as fractures maze up through the glass -- and then, with "; 
	else: 
		say "You swing [the second noun] at the window, which cracks alarmingly. You back away as fractures maze up through the glass -- and then, with "; 
	instead say "a towering [italic type]crash[roman type], the entire window shatters into a cascade of broken green glass.[para]When the catastrophe ends, the window frame is a jagged hole, beyond which is a blank white marble wall." 

Instead of taking, touching, rubbing, pushing, pulling, searching, digging the window when the window is broken: 
	say "[one of]You reach for a shard of glass, and then yank your hand back, bleeding. [or][stopping]The shards are much too sharp to handle." 

Instead of entering the window when the window is broken: 
	say "There's nothing beyond the window except wall." 

Report breaking the window with something when the window is broken: 
	instead say "It's thoroughly broken." 

Chapter - Room 2 - Longhall 

The Longhall is a force-room. The force of the Longhall is heat. 
The description is "You stand in a long, low hall of smoke-darkened timbers. The floor is earth, benches line the walls, and you are washed by heat from the blazing fire-pit that runs the hall's entire length.[para]At the south end the hall rises, and an enormous wooden chest stands on an earthen mound. The chest [if the chest is closed]is closed[else]is open[chest contents][end if].[para]The cube that is your workspace rests nearby. Inside it[space icon summary]." 

Instead of going nowhere from the Longhall when horizontally: 
	say "There are no exits, because there is nowhere outside to go." 

Instead of going up in the Longhall: 
	try going south. 

Instead of jumping when the location is the Longhall: 
	say "That would be painful, given the low roof." 

The longhall-chest-cycler is a stopping-cycler. 
The longhall-hint-count is a number that varies. 

Every turn when the location is the Longhall: 
	if the chest is open: 
		if the current longhall-chest-cycler is 1: 
			now the env-squelch is true; 
			say "Wait, open? You jerk your gaze back to the chest, and yes -- it now stands open[chest contents]. A true isomorphic parallel to the silver offering-box, then."; 
	if the chest is not discovered: 
		if the longhall-hint-count is greater than 2: 
			now the longhall-hint-count is 0; 
			now the env-squelch is true; 
			say "The chest seems unresponsive[one of][or] in this environment. Perhaps you should return to the [italic type]pressure[roman type] environment[one of][or], via the workspace[stopping][stopping]." 

Every turn when the location is the Longhall: 
	if the env-squelch is true: 
		now the env-squelch is false; 
		continue the action; 
	increment the env-counter by one; 
	if the env-counter is: 
		-- 2: say "Sweat begins to drip from you."; 
		-- 5: say "The fire [one of]crackles[or]snaps[or]pops[or]hisses[cycling][one of] unexpectedly[or][or][cycling]."; 
		-- 7: 
			if a random chance of 3 in 5 succeeds: 
				say "You brush sweat from your eyes."; 
		-- 9: 
			if a random chance of 2 in 5 succeeds: 
				now the env-counter is 3; 
		-- 10: 
			if a random chance of 2 in 5 succeeds: 
				now the env-counter is 3; 
		-- 11: now the env-counter is 3; 


The chest is a closed openable scenery container in the Longhall. 
The description is "A heavy wooden trunk, at least a yard wide, stands at the south end of the hall. The trunk [if the chest is closed]is closed[else]is open[chest contents][end if]." 
The chest can be discovered. 

Understand "enormous", "heavy", "wood", "wooden", "trunk", "box" as the chest. 

To say chest contents: 
	now the chest is discovered; 
	if peek at the longhall-chest-cycler is 1: 
		stop; 
	if something is in the chest: 
		say ", revealing "; 
		list the contents of the chest, as a sentence; 
	else: 
		say " and empty". 

Instead of taking, pushing, pulling, looking under the chest: 
	increase the longhall-hint-count by 1; 
	say "The chest is too heavy to move." 

Instead of opening the chest when the chest is closed: 
	increase the longhall-hint-count by 2; 
	say "You grab the lid and yank, but it doesn't move[one of]. You crouch and shift your hold; but the chest is either locked, or jammed, or warped with age. It will not open[or][stopping]." 

Instead of closing the chest when the chest is open: 
	say "You grab the lid and yank, but it doesn't close." 

Instead of inserting something into the chest when the chest is open: 
	say "You don't need to store anything here." 

Instead of entering the chest: 
	if the chest is closed: 
		say "The chest is closed."; 
	else: 
		say "[one of]You clamber inside and crouch down. It's like being in a box. After you have experienced all the fun of being in a box, you get out again[or]It wasn't that much fun the first time[stopping]." 

Instead of climbing the chest: 
	if the chest is closed: 
		say "Standing on the chest wouldn't help."; 
	else: 
		try entering the chest. 

The knife is an archetype in the chest. 
The attribute of the knife is the light-icon. 
The description is "Lying in the chest is a knife, a plain black iron blade with a leather-wrapped hilt[if not known]. You see immediately that the knife is an archetype of [italic type]light[roman type][recognize knife][end if]." 

Understand "plain", "black", "iron", "blade", "hilt", "leather" as the knife. 

The firepit is scenery in the Longhall. The description is "A trench runs up the hall; bonfires are built along it in a blazing chain. You can feel the yellow heat pressing against your face, and your back is cool only in comparison. The air is nearly stifling." 

Understand "fire", "fires", "pit", "fire-pit", "flame", "blaze", "blazing", "trench", "bonfire", "bonfires", "firewood" as the firepit. 

Instead of listening to the firepit: 
	say "The fire crackles and pops continually." 

Instead of smelling the firepit: 
	say "The fire burns cleanly, but the smell of smoke still fills the hall." 

Instead of listening to the Longhall: 
	try listening to the firepit. 

Instead of smelling the Longhall: 
	try smelling the firepit. 

Instead of touching the firepit: 
	say "Hot, do you think?" 

Instead of searching the firepit: 
	say "It's full of, well, fire." 

Instead of entering the firepit: 
	say "A virtual fire cannot really burn you. But jumping into the firepit would break the illusion." 

Instead of inserting something into the firepit: 
	try burning the noun. 
Instead of putting something on the firepit: 
	try burning the noun. 

Instead of extinguishing the firepit: 
	say "[one of]You and what Herculean river?[or]That's way beyond you.[stopping]" 

Instead of burning the firepit: 
	say "The firepit is already on fire. It couldn't possibly be more on fire." 

Instead of following the firepit: 
	say "The firepit isn't [italic type]that[roman type] long." 

Instead of digging the firepit: 
	try searching the firepit. 

Rule for irrigating the firepit: 
	say "The water hisses into steam before it even touches the glowing firewood." 

The longhall-air is scenery in the Longhall. The printed name is "air". The description is "The air is hot, nearly stifling." 

Understand "smoke", "air" as the longhall-air. 

Instead of taking the longhall-air: 
	say "Air cannot be taken." 

Instead of inserting an icon into the longhall-air: 
	try dropping the noun. 

Instead of pushing, pulling, turning, rubbing, squeezing the longhall-air: 
	say "The air disregards this." 

Instead of touching the longhall-air: 
	try examining the longhall-air. 

Instead of listening to the longhall-air: 
	try listening to the firepit. 

Instead of smelling the longhall-air: 
	try smelling the firepit. 

Rule for irrigating the longhall-air: 
	say "You fling the water up into the air. It spatters down around you." 

The packed-earth is scenery in the Longhall. The printed name is "earthen floor". The description is "Hard-packed earth is underfoot." 

Understand "earth", "earthen", "mound", "floor", "packed", "dirt", "ground" as the packed-earth. 

Instead of entering the packed-earth: 
	say "You already are." 

Instead of putting something on the packed-earth: 
	try dropping the noun. 

Instead of searching, looking under the packed-earth: 
	say "It's just the floor." 

Instead of digging the packed-earth: 
	say "The ground is too hard for digging." 

The benches are plural-named unirrigable scenery in the Longhall. 

Understand "bench" as the benches. 

Instead of doing anything to the benches: 
	say "The benches aren't important." 

The timbers are plural-named scenery in the Longhall. The description is "Heavy logs lean into each other overhead. They are untrimmed of bark and even small branches; thick sod packs the crevices." 

Understand "timber", "beam", "beams", "heavy", "thick", "log", "logs", "sod", "roof" as the timbers. 

Instead of taking, pushing, pulling the timbers: 
	say "You couldn't shift the smallest timber here, never mind the entire roof." 

Instead of touching, rubbing the timbers: 
	say "You reach up and let the bark scrape across your fingers." 

Instead of climbing the timbers: 
	say "You're not a spider." 

Rule for irrigating the timbers: 
	now cancel-irrigate is true; 
	say "Pouring water on the ceiling is too awkward." 

The up-tree is fixed in place. The printed name is "gnarled tree". The description is "You don't know trees, at least not the vegetal kind. This specimen is clearly healthy, if cramped; its limbs twist crazily against the roof. The tree is covered with dense greenery." 
The up-tree can be known or unknown. 

Rule for writing a paragraph about the up-tree: 
	now the up-tree is known; 
	say "[one of]Something new stands here, nearly filling the hall on the west side. It's a gnarled old tree, growing where certainly no tree grew before[or]A gnarled old tree grows on the west side of the hall[stopping]. Its branches are bent and twisted; it strains against the low roof. But it is thick with green leaves." 

Understand "tree", "old", "gnarled", "twisted", "limb", "limbs", "branches", "branch" as the up-tree. 

Instead of taking, pushing, pulling the up-tree: 
	say "The tree is rooted in the earth." 

Instead of climbing the up-tree: 
	say "The Longhall really isn't high enough to make it worthwhile." 

Instead of touching, rubbing the up-tree: 
	say "The bark is rough but warm." 

Instead of burning the up-tree: 
	say "Either the tree won't catch fire, in which case you shouldn't bother, or it will, in which case the roof will be next and you'll be in real trouble. Virtual trouble. In any case, it's a bad idea." 

Instead of kissing the up-tree: 
	say "Tree-hugger." 

Rule for irrigating the up-tree: 
	say "You pour the water over the tree, which no doubt appreciates it." 

Report breaking the up-tree with something: 
	if the second noun is the axe: 
		instead say "Axes may be traditional, but this axe is dull and this tree is stone-hard. You are barely scratching the bark."; 
	if the second noun is the torch and the torch is zlit: 
		instead say "You pound on the tree with [the second noun]. Then you realize what you're doing, and stop."; 
	if the second noun is not the player: 
		instead say "You pound on the tree with [the second noun], to little effect."; 
	instead say "Even the thinner branches are too tough to break." 

The green-leaves are plural-named part of the up-tree. The printed name is "leaves". The description is "Broad leaves sprout from every branch. You're not sure how they grow in this dim, smoky place, but they shine green and healthy." 

Understand "broad", "healthy", "green", "greenery", "dense", "foliage", "leaf", "leaves" as the green-leaves. 

Instead of taking, pulling the green-leaves: 
	say "[one of]The leaves are surprisingly firmly attached to the tree[or]You seize a leaf and yank hard. It snaps loose -- and crumbles away to nothing in your hand[stopping]." 

Report breaking the green-leaves with something: 
	if the second noun is the axe: 
		instead say "The axe blade is just decent enough to cut a leaf away from the tree. Unfortunately, the leaf immediately crumbles to dust."; 
	if the second noun is the torch and the torch is zlit: 
		say "(with [the second noun])"; 
		instead try burning the up-tree; 
	instead try taking the green-leaves. 

Instead of burning the green-leaves: 
	try burning the up-tree. 

Rule for irrigating the green-leaves: 
	say "You pour the water over the tree, which no doubt appreciates it." 

To decide whether leaves-present: 
	if the dead-leaves are part of the down-tree: 
		decide yes. 

The down-tree is fixed in place. The printed name is "fallen tree". The description is "The tree lies uprooted upon the earth. [if leaves-present]Its leaves lie heaped around it, yellow and crackling-dry[else]A single gold leaf remains, lying against the wood[end if]." 

Understand "tree", "old", "gnarled", "twisted", "limb", "limbs", "branches", "branch", "fallen", "dead", "uprooted", "root", "roots" as the down-tree. 

Rule for writing a paragraph about the down-tree: 
	if the up-tree is not known: 
		now the up-tree is known; 
		say "Something new lies here, on the west side of the hall. It's a dead, gnarled tree, lying uprooted where certainly you saw no tree before"; 
	else: 
		say "The old tree has been uprooted; it lies dead on the west side of the hall"; 
	say ". [if leaves-present]Its leaves have fallen into a yellow heap, drifted around the bare branches[else]Its limbs are bare, except for a single gold leaf lying against the wood[end if]." 

Instead of taking, pushing, pulling the down-tree: 
	say "The tree shifts slightly, but you're not going to be able to move it anywhere." 

Instead of climbing the down-tree: 
	say "The tree is no longer vertical." 

Instead of touching, rubbing the down-tree: 
	say "The bark is rough but warm. The heat of the fire, it must be." 

Instead of kissing the down-tree: 
	say "Tree-hugger." 

Rule for irrigating the down-tree: 
	say "You pour the water over the dead tree, but it can't make any difference now." 

Instead of burning the down-tree: 
	if not leaves-present: 
		instead say "The leaves are already gone."; 
	if the player carries the torch and the torch is zlit: 
		say "You thrust the torch into the dry leaves"; 
	else: 
		say "You kick a heap of the dry leaves into the firepit. They catch instantly, and the flame burns back towards the tree"; 
	say ". In moments, the tree is surrounded by a rising cloud of fire. You back away, but the fire subsides almost immediately -- and without setting either the tree branches or the roof alight. That was close, you think tardily"; 
	perform-leaf-search. 

Report breaking the down-tree with something: 
	if the second noun is the axe: 
		instead say "Axes may be traditional, but this axe is dull and this wood is stone-hard. You are barely scratching the bark."; 
	if the second noun is the torch and the torch is zlit: 
		instead try burning the down-tree; 
	if the second noun is not the player: 
		instead say "You pound on the tree with [the second noun], to little effect."; 
	instead say "Even the thinner branches are too tough to break." 

The dead-leaves are plural-named part of the down-tree. The printed name is "leaves". The description is "Broad leaves, now yellow and dry, lie around the tree's branches." 

Understand "broad", "dead", "yellow", "dry", "dense", "foliage", "leaf", "leaves", "heap" as the dead-leaves. 

Instead of taking, pulling the dead-leaves: 
	say "You pick up [one of]a[or]another[stopping] dead leaf. It crumbles to nothing in your hand." 

Instead of burning the dead-leaves: 
	try burning the down-tree. 

Instead of searching, digging, pushing, looking under the dead-leaves: 
	say "You grab a handful of leaves; they crumble away. Well, you think, and dig in with both hands. Leaves disintegrate in clumps and wafts, filling the air with dust. It doesn't take long before the entire heap is gone"; 
	perform-leaf-search. 

Report breaking the dead-leaves with something: 
	if the second noun is the torch and the torch is zlit: 
		say "(with [the second noun])"; 
		instead try burning the down-tree; 
	instead say "Whacking the dead leaves won't help." 

To perform-leaf-search: 
	remove the dead-leaves from play; 
	move the gold-leaf to the Longhall; 
	remove the messy-books from play; 
	move the book to the bookcase; 
	say ".[para]A single leaf remains, lying against the fallen tree. Unlike the others, this one gleams bright metallic gold." 

The gold-leaf is scenery. The printed name is "gold leaf". The description is "[if unknown][recognize gold-leaf]Upon closer examination, the[else]The[end if] gold leaf is painted on the side of the fallen tree." 
The gold-leaf can be known or unknown. 

Understand "gold", "leaf", "yellow", "metallic", "dead", "remaining" as the gold-leaf. 

Instead of taking, pushing, pulling, touching, rubbing the gold-leaf: 
	say "[if unknown][recognize gold-leaf]You realize that the[else]The[end if] gold leaf is not real; it is painted on the fallen tree." 

Instead of burning the gold-leaf: 
	say "It won't burn." 

Chapter - Room 3 - Cave 

The Cave is a force-room. The force of the Cave is light. 
The description is "[if cave-dark]You are underground, by the echoes and the irregular rock underfoot. But the space is lost in darkness. A chill stream trickles past, and the faintest phosphorescence trickles with it. Beyond arm's reach, however, you see only black[else]You stand in an echoing space; your torch picks glimmers of reflection from distant stone walls. A chill stream trickles past you and away into the darkness[end if][see-mushroom].[para]Your workspace stands beside you. Inside it[space icon summary]." 

To decide whether cave-dark: 
	if the torch is carried by the player and the torch is zlit: 
		decide no; 
	else: 
		decide yes. 

To say see-mushroom: 
	if the mushroom is in the Cave: 
		if cave-dark: 
			say ".[para]Knowing where the mushroom is, you can still make out its silhouette"; 
		else: 
			say ".[para][one of]The torchlight reveals[or]You can see[stopping] a pale fat mushroom squatting in a corner of the cave, a short distance away" 

[Kicked-axe is a truth state that varies. 
To say maybe-kick: 
	if carried-any-morph is false: 
		if kicked-axe is false: 
			now kicked-axe is true; 
			say "As you step forward, your foot hits something heavy. Ow. It skitters away into the darkness, whatever it was.[para]";] 

Instead of going nowhere from the Cave when horizontally: 
	say "You take a few steps away from the stream, but [if cave-dark]navigating the darkness is impractical[else]the cave has little else to offer you[end if]." 

Instead of jumping when the location is the Cave and the axe is in the Cave and carried-any-morph is false: 
	say "You can't jump quite high enough to reach the axe." 

Instead of listening to the Cave: 
	say "You hear the chatter of moving water; and an occasional fluttering overhead." 

Every turn when the location is the Cave: 
	if the env-squelch is true: 
		now the env-squelch is false; 
		continue the action; 
	increment the env-counter by one; 
	if the env-counter is: 
		-- 2: say "Air flutters, somewhere overhead."; 
		-- 5: say "You hear a few bats flutter by, off to snack on insects somewhere."; 
		-- 8: say "Bats rustle in the recesses of the cave."; 
		-- 10: 
			if a random chance of 2 in 5 succeeds: 
				now the env-counter is 4; 
		-- 11: 
			if a random chance of 2 in 5 succeeds: 
				now the env-counter is 4; 
		-- 12: now the env-counter is 4. 

The mushroom is an archetype. The mushroom is scenery. 
The attribute of the mushroom is the charge-icon. 
The mushroom can be discovered. 
The description is "A pale mushroom [if cave-dark]is barely visible[else]shines dimly[end if] in a nearby corner of the cave[if not known]. You recognize the mushroom as an archetype of [italic type]charge[roman type][recognize mushroom][end if]." 

Understand "pale", "fat", "fungus", "toadstool", "silhouette" as the mushroom. 

Instead of tasting the mushroom: 
	say "You don't have the mushroom." 

Instead of touching, rubbing, squeezing the mushroom: 
	say "The mushroom's flesh is dry and spongy." 

Instead of smelling the mushroom: 
	say "It has no odor." 

The stream is scenery in the Cave. The description is "A shallow stream of water flows nearby[if cave-dark]. Where it ripples, it sheds a slight phosphorescence -- the only illumination around you[else]. It reflects the torchlight in rippling sparks[end if]." 

Understand "chill", "water", "trickle", "moving", "shallow" as the stream. 

Understand "phosphorescence" as the stream when cave-dark. 

Instead of inserting something into the stream: 
	if the noun is the torch and the torch is zlit: 
		now the torch is unzlit; 
		say "The torch hisses into the water, leaving near-complete darkness. Your eyes slowly adjust."; 
	try dropping the noun. 

Instead of searching the stream: 
	say "There's nothing in the stream but water." 

Instead of entering the stream: 
	say "It's only a few inches deep." 

Instead of touching, rubbing the stream: 
	say "You dip your fingers in the icy water." 

Instead of pushing, pulling the stream: 
	say "You splash a little, to no effect." 

Instead of drinking, tasting the stream: 
	say "You scoop up a few drops and lick them from your fingers. The water tastes very clean, and very old." 

Instead of taking the stream: 
	if the player carries the chalice: 
		if chalice-full: 
			instead say "Your chalice is already full."; 
		now the water is part of the chalice; 
		instead say "You [one of]kneel and fill[or]refill[cycling] the chalice with stream water."; 
	say "You have no way to carry water." 

Instead of inserting the stream into the chalice: 
	try taking the stream. 

Instead of removing the stream from the stream: 
	try taking the stream. 

Instead of following the stream: 
	say "The stream meanders across the cave. Eventually you find yourself back where you started. Confusing." 

Rule for irrigating the stream: 
	say "You pour the water back into the stream." 

The cave-floor is scenery in the Cave. The printed name is "stone floor". The description is "It's water-worn... limestone? You're no expert." 

Understand "stone", "rock", "irregular", "floor", "underfoot", "ground" as the cave-floor. 

Instead of searching the cave-floor: 
	say "You peer around, but [if cave-dark]the darkness hides all[else]discover nothing new in sight[end if][if the mushroom is in the Cave], except for that mushroom[end if]." 

Instead of entering the cave-floor: 
	say "You already are." 

Instead of touching, rubbing the cave-floor: 
	say "Cool, damp stone." 

Instead of putting something on the cave-floor: 
	try dropping the noun. 

Instead of digging the cave-floor: 
	say "The ground is rock." 

The cave-walls are plural-named unirrigable scenery in the Cave. The printed name is "stone walls". The description is "You [if cave-dark]cannot[else]can barely[end if] see the cave walls." 

Understand "stone", "rock", "cave", "wall", "walls" as the cave-walls. 

Instead of searching the cave-walls: 
	try searching the cave-floor. 

Instead of listening to the cave-walls: 
	try listening to the Cave. 

Instead of doing anything except examining to the cave-walls: 
	say "The walls are off in the darkness somewhere." 

The bats are plural-named unirrigable scenery in the Cave. 

Understand "bat", "bats", "flutter", "fluttering", "rustle", "rustling" as the bats. 

Instead of listening to the bats: 
	say "The bats are evident only as a quiet fluttering, far above." 

Instead of smelling the bats: 
	say "A trace of mustiness in the air -- not too bad." 

Instead of following the bats: 
	say "You would need sonar [italic type]and[roman type] wings." 

Instead of doing anything except smelling, following, listening to to the bats: 
	say "You cannot see the bats." 

The darkness is scenery in the Cave. 

Understand "dark", "darkness", "black", "blackness", "thing", "something" as the darkness. 

Instead of inserting an icon into the darkness: 
	try dropping the noun. 

Instead of listening to the darkness: 
	try listening to the Cave. 

Instead of searching the darkness: 
	try searching the cave-floor. 

Instead of attacking the darkness: 
	say "What, you fear that a gazebo is lurking here?" 
Instead of breaking the darkness with something: 
	say "What, you fear that a gazebo is lurking here?" 

Instead of doing anything except listening, searching to the darkness: 
	say "The darkness does not care." 

Rule for irrigating the darkness: 
	say "The darkness accepts your libation." 

Chapter - Room 4 - Lab 

The Lab is a force-room. The printed name is "Laboratory". The force of the Lab is charge. 
The description is "This square tower is built of granite blocks braced by high iron beams. The roof is a broad sweep of lead-framed glass[one of]; it creaks and flexes under the assault of the hammering rain outside[or], hammered by the roaring rain outside[stopping].[para]A complex apparatus dominates the room: a heavy brass tank, surmounted by copper and [if has-coolant]bubbling [end if]glass tubing. Wires drape from the roof down to the apparatus, hanging every which way[if crystal in Lab].[check-final-stage]A large red crystal balances on top of the apparatus[end if].[para]Your workspace sits in the center of the lab. Inside it[space icon summary]." 

Instead of going nowhere from the Lab when horizontally: 
	say "The Laboratory has no exits." 

Instead of going down in the Lab: 
	try going south. 

Instead of going up in the Lab: 
	try climbing the lab-walls. 

The crystal-stage is a number that varies. 
Saw-final-stage is a truth state that varies. 

Every turn when the crystal is unmade and has-coolant: 
	increase the crystal-stage by 1; 
	if the crystal-stage is: 
		-- 2: 
			now the crysflake is in the Lab; 
		-- 5: 
			remove the crysflake from play; 
			remove the vapor from play; 
			now the crystal is in the Lab; 
			now the crystal is made; 
	if the location is not the Lab: 
		stop; 
	now env-squelch is true; 
	if the crystal-stage is: 
		-- 1: 
			say "The water immediately begins to bubble in the flask. Inside the tank, the sparkling vapor begins to rise, as if being drawn up the pipe."; 
		-- 2: 
			say "Hair-fine red crystals, like frost, are beginning to form at the top of the pipe."; 
		-- 3: 
			say "[one of]A red crystalline snowflake is condensing[or]The crystalline snowflake begins recondensing[stopping] on the copper spike."; 
		-- 4: 
			say "The red crystal continues to solidify."; 
		-- 5: 
			set pronouns from the crystal; 
			now saw-final-stage is true; 
			say "The last of the vapor is drawn from the tank, as the red crystal finishes filling out; it is now a solid polyhedral mass." 

To say check-final-stage: 
	if saw-final-stage is false: 
		now saw-final-stage is true; 
		say "[para]You notice that the synthesis has run to completion. "; 
	else: 
		say " ". 

Every turn when the location is the Lab: 
	if the env-squelch is true: 
		now the env-squelch is false; 
		continue the action; 
	increment the env-counter by one; 
	if the env-counter is: 
		-- 2: say "Lightning illuminates the storm overhead, followed instantly by a deafening [italic type]crack[roman type] of thunder[lightning-material]."; 
		-- 5: say "Lightning flashes somewhere [one of]in the distance[or]nearby[at random][lightning-material]."; 
		-- 6: say "Thunder rumbles."; 
		-- 7: 
			if a random chance of 2 in 7 succeeds: 
				now the env-counter is 4; 
		-- 8: say "Lightning burns across the roof once again[lightning-material]."; 
		-- 11: 
			if a random chance of 2 in 5 succeeds: 
				now the env-counter is 7; 
		-- 12: now the env-counter is 4. 

The material-attended is a truth state that varies. 

To say attend-material: 
	now material-attended is true. 

To say lightning-material: 
	if material-attended is true and the vapor is in the Lab: 
		now material-attended is false; 
		say ". At the same moment, you notice the vapor in the tank suddenly whirl and dance". 

The tank is scenery in the Lab. The printed name is "brass tank". The description is "A fat brass vessel, a riveted cauldron of a thing, squats before you. A narrow copper pipe curves from the tank's top; the pipe spirals up inside of a wider glass flask[if has-coolant] of water[end if].[para][attend-material]Through a small porthole you can see the contents of the tank: a heap of rusty brown flakes[if vapor in Lab] lying in a cloud of sparkling vapor[end if]." 

Understand "fat", "brass", "vessel", "big", "rivets", "riveted", "cauldron", "porthole", "apparatus" as the tank. 

Instead of opening, closing, entering the tank: 
	say "The tank has no hatch or lid to open." 

Instead of touching, rubbing the tank: 
	say "The tank is quite warm, and vibrates faintly." 

Instead of climbing the tank: 
	say "No climbing the lab equipment." 

Instead of searching the tank: 
	try examining the tank. 

Instead of inserting something into the tank: 
	try opening the tank. 

Rule for irrigating the tank: 
	say "The water dribbles down the side of the brass tank." 

The copper-pipe is scenery in the Lab. The printed name is "copper pipe". The description is "A narrow copper pipe rises from the top of the tank. It curves up to a wider glass flask, spirals up the inside of the flask, and then ends in a sharp spike. [if has-coolant]The flask contains some water, which partially submerges the pipe; the water bubbles furiously[else]You notice the inside of the flask, and the pipe within it, show a dry white crust[flask-crust][end if][if the crystal is in the Lab].[para]At the top of the pipe, balanced on the spike, is a large red crystal[end if]." 

Understand "narrow", "copper", "pipe", "tube", "tubing", "spiral", "sharp", "spike" as the copper-pipe. 

To say flask-crust: 
	say "[one of] -- as if the flask had boiled dry[or][stopping]". 

Instead of touching, rubbing the copper-pipe: 
	say "The copper pipe is very warm." 

Instead of taking, pushing, pulling, turning the copper-pipe: 
	say "The copper pipe is anchored firmly to the tank." 

Instead of climbing the copper-pipe: 
	say "No climbing the lab equipment." 

Instead of sharpening the copper-pipe: 
	say "The end of the pipe is already sharp." 

Rule for irrigating the copper-pipe: 
	now cancel-irrigate is whether or not irrigate-flask-result. 

The flask is scenery in the Lab. The printed name is "glass flask". The description is "A wide glass flask is suspended above the tank. The copper pipe runs up to it, and then spirals up the flask's interior. [if has-coolant]The flask contains some water, which partially submerges the pipe; the water bubbles furiously[else]You notice the inside of the flask, and the pipe within it, show a dry white crust[flask-crust][end if]." 

Understand "wide", "wider", "glass", "dry", "white", "crust" as the flask. 

Instead of touching, rubbing the flask: 
	say "The glass is [if has-coolant]very[else]somewhat[end if] warm." 

Instead of taking, pushing, pulling, turning the flask: 
	say "The glass flask is anchored firmly in place." 

Instead of searching the flask: 
	try examining the flask. 

Instead of filling the flask: 
	if has-coolant: 
		instead say "You've already filled the flask."; 
	if the player carries the chalice and chalice-full: 
		try inserting the water into the flask; 
	else: 
		say "You're not sure what to fill it with." 

Instead of inserting something into the flask when the noun is not the water: 
	if the noun is the chalice: 
		try emptying the chalice on the flask; 
	else: 
		say "The way the pipe is arranged, putting solid objects into the flask will be difficult." 

Rule for irrigating the flask: 
	now cancel-irrigate is whether or not irrigate-flask-result. 

The coolant is unirrigable scenery. The printed name is "bubbling water". The description is "The flask contains a quantity of water, which partially submerges the pipe; the water bubbles furiously." 

Understand "bubbling", "water",  "quantity", "of water", "flask of" as the coolant. 

To decide whether has-coolant: 
	if the coolant is in the Lab: 
		decide yes; 
	else: 
		decide no. 

Instead of listening to the coolant: 
	say "The water in the flask bubbles merrily." 

Instead of doing anything except examining, listening to the coolant: 
	say "You can't easily reach inside the flask[one of], so the water is out of reach[or][stopping]." 

Rule for irrigating the coolant: 
	now cancel-irrigate is whether or not irrigate-flask-result. 

To decide whether irrigate-flask-result: 
	if has-coolant: 
		say "You've already filled the flask."; 
		decide yes; 
	now the coolant is in the Lab; 
	say "You carefully pour the water around the pipe, filling the glass flask." 

The crysflake is unirrigable scenery. The printed name is "snowflake". The description is "A delicate snowflake of red crystal is forming at the top of the copper pipe, above the flask. It grows before your eyes." 

Instead of doing anything except examining or smelling or listening to the crysflake: 
	now the crystal-stage is 2; 
	say "The crystalline frost shatters at your touch[one of]. You yank your hand back in dismay[or][stopping]." 

Understand "red", "ruby", "crystal", "crystals", "crystalline", "gem", "jewel", "frost", "delicate", "snowflake", "flake" as the crysflake. 

The crystal is an archetype. The crystal is scenery. 
The attribute of the crystal is the weight-icon. 
The crystal can be made or unmade. 
The description is "A ruby crystal balances on the copper spike, above the tank[if not known]. You recognize the crystal as an archetype of [italic type]weight[roman type][recognize crystal][end if]." 

Understand "red", "ruby", "crystal", "crystalline", "gem", "jewel", "frost", "snowflake", "mass", "polyhedral" as the crystal. 

The material is unirrigable scenery in the Lab. The printed name is "rusty brown material". 

Understand "heap", "heap of", "rusty", "brown", "rusty-brown", "flake", "flakes", "flaky", "fleck", "flecks", "mineral", "substance", "gold" as the material. The description is "[attend-material]In the brass tank is a small heap of some flaky mineral; the substance is rusty brown with faint flecks of gold[if vapor in Lab]. Sparkling vapor rises from the material and swirls within the tank[end if]." 

Instead of doing anything except examining the material: 
	say "The rusty brown material is sealed within the tank, and you cannot reach it." 

The vapor is unirrigable scenery in the Lab. The printed name is "sparkling vapor". The description is "[attend-material][if has-coolant]The vapor is thinning as it is drawn from the tank[else]A cloud of sparkling vapor swirls within the tank[end if]." 

Understand "cloud", "cloud of", "sparkling" as the vapor. 

Instead of following the vapor: 
	if has-coolant: 
		say "The vapor is being drawn up the pipe, through the flask, and -- presumably -- [if the crysflake is in the Lab]into the crystal[else]into the spike[end if]."; 
	else: 
		try touching the vapor. 

Instead of doing anything except examining, following the vapor: 
	say "The sparkling vapor is sealed within the tank, and you cannot reach it." 

The lab-walls are plural-named scenery in the Lab. The printed name is "walls". The description is "The walls are enormous blocks of dressed stone, braced with iron." 

Understand "wall", "walls", "granite", "stone", "block", "blocks", "high", "iron", "beam", "beams" as the lab-walls. 

Instead of touching, rubbing, pushing, pulling the lab-walls: 
	say "The walls are exceptionally solid." 

Instead of climbing the lab-walls: 
	say "The walls don't offer enough purchase to climb." 

The lab-roof is unirrigable scenery in the Lab. The printed name is "glass roof". The description is "Broad panes of glass, set in a heavy lead frame, angle down across the top of the tower. Rain washes down the glass, obscuring your view, but you can see iron antennas projecting haphazardly up into the storm." 

Understand "lead", "glass", "lead-glass", "lead-framed", "frame", "framed", "broad", "sweep", "roof", "ceiling" as the lab-roof. 

Instead of doing anything except examining to the lab-roof: 
	say "The roof is far above." 

The wires are plural-named scenery in the Lab. The description is "Wires run from the tank up to the roof, or from the roof down to the tank, as you like. They are connected above to antennas which thrust from the roof, up into the storm."

Understand "wire" as the wires. 

Instead of doing anything except examining, smelling the wires: 
	say "The wires snap with electricity. You don't want to come too close to them." 

Instead of smelling the wires: 
	say "Sharp ozone drifts from the wires." 

Rule for irrigating the wires: 
	now cancel-irrigate is true; 
	say "The wires snap with electricity. You don't want to come too close to them. Especially not with water." 

The antennas are unirrigable plural-named scenery in the Lab. The description is "You can make out heavy iron antennas above you, thrusting up into the storm." 

Understand "iron", "antenna", "antennae" as the antennas. 

Instead of doing anything except examining the antennas: 
	say "The antennas are on top of the roof." 

The rain is unirrigable scenery in the Lab. The description is "The rain outside is relentless; it washes down the glass above in endless sheets. Fortunately the roof is well-made enough to keep it all out." 

Understand "hammering", "storm", "rainstorm", "lightning", "thunder" as the rain. 

Instead of listening to the rain: 
	say "The rain outside is a steady roar, punctuated by grumbles of thunder." 

Instead of listening to the Lab: 
	try listening to the rain. 

Instead of doing anything except examining, listening to to the rain: 
	say "Happily, the rain is all outside." 

Chapter - Room 5 - Library 

The Library is a force-room. The force of the Library is weight. 
The description is "Shelves loom here in rank and file[one of]. It is only at a second glance that you realize they are not stacked with books. Instead,[or]. On them,[stopping] arms are arrayed in tidy rows: swords, knives, spears, and weapons of every other description. More blades hang overhead, point-down and silently menacing.[para][bookcase-para].[para]Your workspace rests by one wall. Inside it[space icon summary]." 

The library can be known or unknown. 

Instead of going nowhere from the Library when horizontally: 
	say "You wander down the aisles a short distance, but discover nothing more useful." 

Instead of going up in the Library: 
	try climbing the shelves. 

Every turn when the location is the Library: 
	if the env-squelch is true: 
		now the env-squelch is false; 
		continue the action; 
	increment the env-counter by one; 
	if the env-counter is: 
		-- 2: say "The blades overhead clink gently."; 
		-- 3: 
			if a random chance of 1 in 5 succeeds: 
				now the env-counter is 1; 
		-- 4: 
			if a random chance of 1 in 5 succeeds: 
				now the env-counter is 1; 
		-- 5: 
			if a random chance of 1 in 5 succeeds: 
				now the env-counter is 1; 
		-- 6: 
			if a random chance of 1 in 5 succeeds: 
				now the env-counter is 1; 
		-- 7: 
			if a random chance of 1 in 5 succeeds: 
				now the env-counter is 1; 
		-- 8: now the env-counter is 1. 

The weapons are plural-named scenery in the Library. The description is "You see [weapon-desc] weapons, [weapon-desc] weapons, [weapon-desc] weapons... unfortunately, they're all strapped tightly to the shelves. Except for the blades that are hanging from chains from the roof." 

To say weapon-desc: 
	say "[one of]long[or]short[or]spiked[or]knobby[or]curved[or]long[or]edged[or]heavy[or]straight[or]pointy[cycling]". 

Understand "weapon", "sword", "swords", "spear", "spears", "knife", "knives", "metal", "arms" as the weapons. 

Instead of taking, pushing, pulling, turning the weapons: 
	say "Unfortunately, they're all strapped tightly to the shelves. Except for the blades that are hanging from chains from the roof, and you can't reach those[one of]. Apparently this is not a lending library[or][stopping]." 

Instead of touching, rubbing the weapons: 
	say "Are they sharp? Yes. Ow." 

Instead of sharpening the weapons: 
	say "You could not possibly improve on them." 

Instead of listening to the weapons: 
	say "The hanging blades clink as they sway, very slightly." 

Instead of listening to the Library: 
	try listening to the weapons. 

The blades are unirrigable plural-named scenery in the Library. The printed name is "hanging blades". The description is "An inverse forest of blades hang from the ceiling. They hang in every length and style; they sway gently on their chains." 

Understand "blade", "blades", "hanging", "chain", "chains", "zone", "hanging swords", "hanging weapons", "roof", "ceiling" as the blades. 

Instead of listening to the blades: 
	try listening to the weapons. 

Instead of doing anything except examining, listening to to the blades: 
	say "The hanging blades are out of reach, and if you climbed to their level you'd only dice yourself." 

The shelves are plural-named scenery in the Library. The description is "The weapon shelves are institutional metal racks, floor to ceiling and heavily loaded." 

Understand "weapon shelves", "shelf", "rack", "racks", "rank", "file", "stack", "stacks" as the shelves. 

Instead of climbing the shelves: 
	say "You could, but you'd only be putting your head in the zone of hanging death." 

Instead of searching the shelves: 
	try examining the weapons. 

The bookcase is transparent closed scenery container in the Library. The description is "[bookcase-desc]." 

Understand "bookshelf", "book shelf", "case", "book case", "wood", "wooden", "branch", "branches", "mesh", "steel-mesh", "steel", "screen", "door", "doors", "pattern" as the bookcase. 

To say bookcase-para: 
	if the bookcase is closed: 
		say "A single bookcase stands to the west -- that is, one case which is full of books, as opposed to metal. It is fitted with doors, however, and they are closed"; 
	else: 
		say "The bookcase still stands, but its doors have been torn open; they hang in pieces"; 
		if leaves-present: 
			say ". The books have tumbled out in a heap at your feet"; 
		if the book is in the bookcase: 
			say ". A single book remains, a small golden volume[if the book is locked]. It is chained to the bookcase with a gold padlock[end if]" 

To say bookcase-desc: 
	if the bookcase is closed: 
		say "The bookcase is a tall wooden affair, finely built; the wood is inlaid with an abstract pattern of tree branches. Behind the steel-mesh doors are rows of books, bound in old green and brown leather"; 
	else: 
		say "The bookcase is a tall wooden affair; the wood is inlaid with an abstract pattern of tree branches. But the doors hang open and the shelves within have broken away"; 
		if leaves-present: 
			say ". The books lie in a disordered heap at the bottom of the bookcase, and spilling out around it"; 
		if the book is in the bookcase: 
			say ". A single book remains, a small golden volume[if the book is locked], which is chained to the bookcase with a gold padlock[end if]" 

Instead of taking, pushing, pulling the bookcase: 
	say "[if closed]Books are heavy, and this[else]This[end if] bookcase is not moving." 

Instead of climbing the bookcase: 
	say "The bookcase isn't climbable." 

Instead of searching the bookcase: 
	if the tidy-books are in the bookcase: 
		instead try examining the tidy-books; 
	if the messy-books are in the bookcase: 
		instead try searching the messy-books; 
	if the book is in the bookcase: 
		instead try examining the book; 
	say "The bookcase is empty." 

Instead of closing the bookcase: 
	if the bookcase is closed: 
		say "The bookcase is already closed."; 
	else: 
		say "No hope of that." 

Instead of opening the bookcase: 
	if the bookcase is closed: 
		say "The bookcase's doors are closed and locked. You see no keyhole."; 
	else: 
		say "It's already open." 

Instead of unlocking the bookcase with the key: 
	if the bookcase is closed: 
		say "You prod at the doors, but you see no way to insert a key at all."; 
	else: 
		say "It's already open." 

Report breaking the bookcase with: 
	if the second noun is the axe: 
		instead say "You whack the bookcase with the axe, but it is solid. And the axe isn't that sharp."; 
	if the second noun is the player: 
		instead say "You thump on the bookcase, but it is solid."; 
	instead say "You pound on the bookcase with [the second noun], but it is solid." 

The tidy-books are unirrigable plural-named scenery in the bookcase. The printed name is "books". The description is "The books, like the weapons, vary wildly in size and heft. No titles are evident, but they are bound in all shades of green and brown. And since they are locked away behind a steel screen, you have no idea what they contain." 

Understand "book", "books", "rows", "rows of", "leather", "green", "brown", "volume", "volumes" as the tidy-books. 

Instead of doing anything except examining, searching the tidy-books: 
	say "The books are locked up, and you cannot touch them." 

Instead of searching the tidy-books: 
	try examining the tidy-books. 

Instead of burning the tidy-books: 
	say "The books are locked up, and you are not a barbarian." 

The messy-books are plural-named scenery. The printed name is "books". The description is "[one of]You pick up a book and open it. The pages are all blank[or]You open another book; this one, too, is blank[or]Still blank[stopping]." 

Understand "book", "books", "heap", "heap of", "pile", "pile of", "leather", "green", "brown", "volume", "volumes", "disordered" as the messy-books. 

Instead of searching, digging, pushing, pulling, looking under the messy-books: 
	say "You dig into the pile of books, but there are many of them, and none stand out." 

Instead of taking the messy-books: 
	try examining the messy-books. 

Instead of touching, rubbing the messy-books: 
	say "You take a moment to run your fingers over the old leather." 

Instead of smelling the messy-books: 
	say "Yes, old books smell wonderful." 

Instead of burning the messy-books: 
	say "That's a horrible idea, even for blank books." 

Rule for irrigating the messy-books: 
	now cancel-irrigate is true; 
	say "That might damage them." 

The book is an archetype. 
The attribute of the book is the form-icon. 
The book can be locked or unlocked. The book is locked. 
The description is "The remaining book is a small volume, the size of your palm, but its leather cover is leafed in gold[if locked]. It is chained to the bottom shelf with a gold chain and padlock[else]. It lies free at the bottom of the bookcase[end if][if not known]. You see immediately that the book is an archetype of [italic type]form[roman type][recognize book][end if]." 

Understand "book of", "gold", "golden", "chain", "lock", "padlock", "small", "volume", "leather", "cover" as the book. 

Instead of smelling the book: 
	say "Yes, old books smell wonderful." 

Instead of examining the book when verb-word-read: 
	try opening the book. 

Instead of opening, searching the book: 
	if the book is locked: 
		instead say "The chain locks the book shut."; 
	try taking the book. 

Instead of pulling, pushing the book when the book is locked: 
	try taking the book. 

Instead of unlocking the book with something: 
	if the book is unlocked: 
		instead say "You've already unlocked the padlock."; 
	if the second noun is the key: 
		if the player carries the key: 
			now the book is unlocked; 
			instead say "The silver key unlocks the padlock with a tiny [italic type]snick[roman type]."; 
		else: 
			instead say "You're not holding the silver key."; 
	say "You can't unlock the padlock with [a second noun]." 

Instead of locking the book with something: 
	if the book is locked: 
		say "The padlock is already locked."; 
	else: 
		say "But you just unlocked it." 

Chapter - Room 6 - Circle 

The Circle is a force-room. The force of the Circle is form. The printed name is "Stone Circle". 
The description is "You stand on mossy earth, surrounded by the silhouettes of dark and massive standing stones. It is night[if moon is in Circle], and the moon is high[end if][if the stars are in the Circle], and multitudes of stars shine down[else]. But the sky shows no stars at all[end if].[para]Your workspace sits in the center of the circle. Inside it[space icon summary][moon-change-check]." 

Seen-moon is a truth state that varies. Seen-moonless is a truth state that varies. 

To say moon-change-check: 
	if the moon is in the Circle: 
		if seen-moon is false and seen-moonless is true: 
			say ".[para]The moon has risen, you notice"; 
		now seen-moon is true; 
	if the moon is not in the Circle: 
		if seen-moonless is false and seen-moon is true: 
			say ".[para]The moon has gone, you notice"; 
		now seen-moonless is true. 

Newly-confused is a truth state that varies. 
To say unset-newly-confused: 
	now newly-confused is false. 

Instead of going nowhere from the Circle when horizontally: 
	if the noun is inside: 
		instead try entering the stones; 
	say "You are [if newly-confused is true]abruptly [end if]unsure which way is [noun][one of][or]. It's a frightening sensation[or][stopping]."; 
	now newly-confused is false. 

The stones are plural-named scenery in the Circle. 

Understand "standing", "stone circle", "circle", "silhouette", "massive", "menhir circle", "menhirs" as the stones. The description is "The stones are massive, worn, and very old. You can make out little else[if not cave-dark], even with the torchlight[else if moon is in Circle], even with the moonlight[else if stars is in Circle], even with the starlight[end if].[para]You count eight stones around you. Seven of them are of similar height; one is much taller." 

Instead of taking, pushing, pulling the stones: 
	say "Each one of the stones must weigh tons." 

Instead of touching, rubbing the stones: 
	say "The stones are rough and cool." 

Instead of entering the stones: 
	say "You are already inside the circle." 

Instead of climbing the stones: 
	say "They're rough, but they don't offer enough footholds for that." 

Instead of following the stones: 
	say "Which way?" 

The tall-stone is scenery in the Circle. The description is "The taller stone is to [if newly-confused is true][unset-newly-confused]the... the...[para]Hang on. You're not sure which direction that is. How bizarre[else]the... but you're not sure which direction is which[end if]." 

Instead of taking, pushing, pulling the tall-stone: 
	try taking the stones. 

Instead of touching, rubbing the tall-stone: 
	try touching the stones. 

Instead of entering the tall-stone: 
	try entering the stones. 

Instead of climbing the tall-stone: 
	try climbing the stones. 

Instead of following the tall-stone: 
	try following the stones. 

Understand "tall", "taller", "tallest", "large", "larger", "largest", "big", "bigger", "biggest", "stone", "menhir" as the tall-stone. 

The moss is scenery in the Circle. The description is "The ground is moss-covered earth." 

Understand "mossy", "ground", "earth" as the moss. 

Instead of entering the moss: 
	say "You already are." 

Instead of putting something on the moss: 
	try dropping the noun. 

Instead of searching, looking under the moss: 
	say "It's just the ground." 

Instead of digging the moss: 
	say "The ground is too hard for digging." 

The stars are unirrigable plural-named scenery. The description is "The stars are bright now." 

Understand "star", "starlight", "multitude" as the stars. 

Instead of following the stars: 
	say "You do not know these stars." 

Instead of doing anything except examining to the stars: 
	say "You cannot reach them." 

The model is an archetype. The printed name is "model room". 
The attribute of the model is the metasemantics-icon. 
The description is "It's a small glass model of an office workspace. Every detail within is perfect[if not known]. You see immediately that the model room is an archetype of [italic type]metasemantics[roman type][recognize model][end if]." 

Understand "room", "workspace", "small", "glass", "office", "shape", "meta", "semantics", "semantic", "metasemantics" as the model. 

Rule for writing a paragraph about the model: 
	say "A small glass model of your workspace rests on the moss at your feet." 

Chapter - The End 

The ZRoom is a force-room. The printed name is "Room". The force of the ZRoom is metasemantics. 

The description is "This is your workspace. All your furniture and things are set up just as you like them. The exit is to the south.[para]The cube representing your workspace sits on a desk. Inside it[space icon summary]." 

Instead of exiting in the ZRoom: 
	try going south. 

Instead of going nowhere from the ZRoom when horizontally: 
	if the noun is not south and the noun is not outside: 
		instead say "The exit is to the south."; 
	say "You turn, and reach for the exit of your virtual environment.[para]There is a wild [italic type]crash[roman type] behind you. You spin. The workspace cube lies in splinters, sprayed across your desk, tinkling to the floor. Above it are whirling seven -- [italic type]forces[roman type] -- that grow, and become more potent --[para]Then the walls are splintering, too.[para][para]"; 
	now the player is in Trapped; 
	end the game saying "To be continued". 

Every turn when the location is the ZRoom: 
	if the env-squelch is true: 
		now the env-squelch is false; 
		continue the action; 
	increment the env-counter by one; 
	if the env-counter is: 
		-- 1: say "You look around. This, too, is magnificent -- in a quiet way. The program has condensed your style of interaction into a tangible metaphor... a perfect rendition of the way you work."; 
		-- 2: say "The workspace cube buzzes angrily. Really, what is going on with that? It must be some kind of physical simulation fault. You'll sort it out tomorrow."; 
		-- 3: say "This is a good stopping point, however. You should leave and report in to your client."; 
		-- 4: say "The workspace [one of]vibrates[or]shudders[or]shakes[or]rattles[cycling] [one of]violently[or]irately[or]dangerously[cycling]."; 
		-- 5: now the env-counter is 3. 

The furniture is scenery in the ZRoom. The description is "Your stuff is all just as you expect." 

Understand "stuff", "thing", "things", "desk", "table", "chair", "monitor", "metaphor", "room" as the furniture. 

Instead of doing anything except examining to the furniture: 
	say "You have no time to fiddle with it. You need to leave virtual space and report your progress." 

The Trapped is a room. The description is "Nothing surrounds you. The virtual space is absolutely blank... but no longer unbounded. You are unable to move, or to escape.[para]You wonder if someone will come looking." 

[Last line.] 
