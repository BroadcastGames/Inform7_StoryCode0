"Gardening for Beginners" by Juhana Leinonen


The story genre is "Comedy". The story creation year is 2008. The release number is 2.
The story headline is "An Interactive Gardening Experience".
The story description is "When the snow melts it's time to make that garden of yours look better than ever."


[The original code has been compiled with Inform build 5J39 (www.inform-fiction.org). Due to changes in syntax, previous builds will probably not compile the code. Later builds will most likely complile it with minor changes.

Bug reports, typo corrections, better coding solutions, general comments, and anything else is most welcome anytime. See below for e-mail address.


----


Copyright (C) 2008 Juhana Leinonen <juhana [dot] if [at] nitku [dot] net>

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

4) You license the derivative work with this license or a license that is fully compatible with it, i.e. a license that does not contradict or omit any of the terms described here.

5) You credit the original author and all the authors that are credited in the software that your work is derivative of.
	
6) The extensions (as defined in the Inform 7 manual) used by the software do not need to be licensed by this license and they do not need to be compatible with this license, WITH THE EXCEPTION that for every extension used by the software, its source code must be either freely and easily available to anyone or distributed with the source code of this software.


You may re-use pieces of code and other programming solutions developed in this source code in other works ("sampling") without restrictions, providing that a third party does not claim copyright to those solutions.


THIS SOFTWARE IS PROVIDED 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.




RELEASE HISTORY
------------------------------

RELEASE 2 / 2008-04-12
The release fixes many bugs found in the April 6th play session in ClubFloyd.
- New/appropriate responses to KILL WEEDS, DRINK FROM POND/HYDRANT, LOOK IN POND
- Fixed a bug where the game would not advance if you assembled the scarecrow in the shed (the trigger was the player carrying the rake and the coverall in the garden)
- Moved the blocking rules from "instead of" to inside the action-processing rulebook when the player is blinded
- Changed a unicode character (Â§) in "F%#&!" to avoid compatibility issues
- Added more comments to the source
- Corrected minor typos


RELEASE 1 / 2008-04-06
- First release. Played in ClubFloyd in ifMUD as a part of the Spring Speed IF.

]




Volume I - Game settings

Include Written Inventory by Jon Ingold. [available at http://www.inform-fiction.org/I7/Download%20-%20Extensions.html]
Include Essential Supplements by Juhana Leinonen. [available at http://www.nitku.net/if/i7/extensions]

Use no scoring, American dialect, serial comma and full-length room descriptions.

Release along with source text and cover art. [the cover is available at http://www.nitku.net/if/gardening/cover.jpg and it has been released in Public Domain.]

Rule for deciding whether all includes scenery: it does not.

Use memory economy. [doesn't fit in .z5 without this.]


Book When play begins

When play begins:
	say "In April, three months after you bought the house, the snow finally melts and for the first time you see how your new garden really looks like. It's not that bad, actually; you probably don't need to do much to make it look really nice. Armed with a to-do list and an upbeat attitude you go to work."
	
After printing the banner text, say "This game is free software. See LICENSE for details.[paragraph break]";


Book Status line

When play begins:
	change right hand status line to "";
	change left hand status line to "[attitude toward gardening]".
	
To say attitude toward gardening:
	if the player is transcended
	begin;
		say "Gardening Might be Fun";
	otherwise;
	if the player is suicidal
	begin;
		say "GARDENING IS FROM THE NINTH CIRCLE OF INFERNO";
	otherwise;
		if the player is despaired
		begin;
			say "Gardening is Causing Me a Stroke";
		otherwise;
			if the player is angry
			begin;
				say "Gardening Makes Jack a Dull Boy";
			otherwise;
 				if the player is frustrated
				begin;
					say "Gardening is Frustrating";
				otherwise;
					if the player is annoyed
					begin;
						say "Gardening is Annoying";
					otherwise; 
						if the player is doubtful
						begin;
							say "Gardening is OK";
						otherwise;
							say "Gardening is Fun";
						end if;
					end if;
				end if;
			end if;
		end if;
	end if;
	end if.
	





Book Moving around

Before going up:
	try jumping instead.
	
Before going down when the molehill is in the Garden:
	try entering the molehill instead.


Part Disabling compass directions

[There's only one room (if you don't count the shed, and it's just inside/outside relation) so going to compass directions should be disabled.]

The list viable directions rule is not listed in any rulebook. [this is in the essential supplements extension but useless in a one-room game]

Going north is compass-going.
Going south is compass-going.
Going east is compass-going.
Going west is compass-going.
Going northwest is compass-going.
Going northeast is compass-going.
Going southwest is compass-going.
Going southeast is compass-going.

Instead of compass-going:
	say "Let's see, the sun rises from the east, and it's now about midday and the sun is... ah, never mind. You've never been that good with compass directions."


Book Rooms

[With these rules we get rid of all room name headings.]

Rule for printing the name of a room: do nothing.

The room description heading rule is not listed in the carry out looking rules.

[the following is to get rid of an extra line break]
The describe room gone into rule is not listed in any rulebook.

[...and of course, then we need to enable the action the previous rule fired.]
After going:
	try looking.
	 

Book Nouns

Understand "animal/creature" as an animal.

[The following disables the "X is turned on/off" messages.]
The examine described devices rule is not listed in any rulebook.


Chapter Player character

The description of the player is "You're a budding gardener, [if the player is despaired]just about ready to give it up[otherwise if the player is frustrated]even if a bit frustrated one[otherwise]ready to get your hands dirty."


Book Verbs

Part Old actions

Understand "scare [something]" as attacking.

Understand "dress [something] with [something]" as putting it on.
Understand "dress [something] on [something]" as putting it on.
Understand "clothe [something] with [something]" as putting it on.
Understand "clothe [something] on [something]" as putting it on.
Understand "wear [something] on [something]" as putting it on. [these are a "bit" ungrammatical but maybe someone tries them.]
Understand "stand [something] on [something]" as putting it on.
Understand "stand [something] in [something]" as putting it on.
Understand "stick [something] in [something]" as putting it on.
Understand "stick [something] on [something]" as putting it on.
Understand "stick [something] into [something]" as putting it on.

Understand the command "tuck" as "put". [for the molehill]
Understand the command "place" as "put".

Understand the command "grab" as "take".
Understand "pick [something]" as taking. [for PICK WEEDS]

[I don't like MOVE being synonymous to PUSH, and there's no need to "move" anything in this game so we'll just disable it]
Understand the command "move" as something new.

[the following are for the cat scene]
Understand "pull [something] away" as pulling.
Understand "pull [something] off" as pulling.
Understand "push [something] away" as pushing.
Understand "push [something] off" as pushing.

Understand the command "yank" as "pull".

Understand "drink from" as drinking. [drink from pond, mainly]

Understand the command "taste" as something new.
Understand the command "taste" as "eat".

Understand the command "burn" as something new.


Chapter Eating

[first we'll remove this idiotic rule]
Procedural rule while eating or taking off: 
	ignore the carrying requirements rule.


Part New actions

Chapter Weeding

Weeding is an action applying to one visible thing.

Understand "weed [something]" as weeding.
Understand "pull [something] out" as weeding.
Understand "pull out [something]" as weeding.

Check weeding:
	if the noun is not a weed, say "That doesn't need weeding." instead.
	
Carry out weeding:
	remove the noun from play;
	now the flower bed is weeded.
	

Chapter Sowing

Sowing it in is an action applying to two visible things.

Understand "sow [something] to [something]" as sowing it in.
Understand "sow [something] in [something]" as sowing it in.
Understand "sow [something] with [something]" as sowing it in (with nouns reversed).
Understand "sow [something]" as sowing it in.

Understand the command "plant" as "sow".
Understand the command "seed" as "sow".
	
Rule for supplying a missing second noun while sowing:
	change the second noun to vegetable patch.
	
Check sowing:
	if the noun is not the tomato seeds, say "You can't sow that." instead;
	if the second noun is not the vegetable patch, say "That's not an appropriate place to sow anything." instead.
	
Carry out sowing:
	remove the noun from play;
	now the vegetable patch is sown.
	

Chapter Watering

Watering it with is an action applying to two visible things.

Understand "water [other things] with [something]" as watering it with.
Understand "water [other things]" as watering it with.

Understand the command "hose" as "water".

Does the player mean watering the garden hose with something: it is very unlikely.

Rule for supplying a missing second noun while watering:
	if the garden hose is enclosed by the Garden,	change the second noun to the garden hose;
	otherwise say "You need a hose for that." instead.
	
Check watering:
	if the noun is not the lawn, say "It doesn't need watering." instead;
	if the lawn is watered, say "The grass has had quite enough for now." instead;
	if the garden hose is not attached to the hydrant, say "The hose is a good start, but without water running inside, it won't do much good." instead;
	if the vegetable patch is unsown or the flower bed is unweeded or the gold fish is not in the Garden, say "It would be wiser to water the lawn only after everything else is done. With only the sandals on your feet you don't like the idea of walking on moist grass." instead;

Carry out watering:
	now the lawn is watered.
	
Report watering:
	say "You carefully hose the entire lawn and turn the water off when you're done. In your eyes the grass is already looking much greener!" 
	

Chapter Talking

Talking to is an action applying to one visible thing.

Understand "talk to [something]" as talking to.
Understand the command "ask" and "tell" and "say" as something new.

Report talking to:
	say "[The noun] doesn't respond."



Chapter Taping

Taping it with is an action applying to two visible things.

Understand "tape [something] with [something]" as taping it with.
Understand "tape [something]" as taping it with.

Understand the command "repair" as "tape".
Understand the command "fix" as something new.
Understand the command "fix" as "tape".
Understand the command "mend" as "tape".
Understand the command "patch" as "tape".

Rule for supplying a missing second noun while taping:
	if the player has the duct tape, change the second noun to the duct tape;
	otherwise say "You need some tools for that." instead.
	
Report taping it with:
	say "That's not going to work."

 

Chapter Pouring

Pouring it on is an action applying to two visible things.

Understand "pour [something] on [something]" as pouring it on.
Understand "pour [something]" as pouring it on.
Understand the command "apply" as "pour".

Does the player mean pouring the weedkiller on something: it is very likely.
Does the player mean pouring something on the weedkiller: it is very unlikely.

Rule for supplying a missing second noun while pouring:
	if the player is in the Garden and the player has the weedkiller, change the second noun to the resurrected weeds.
	
Report pouring it on:
	if the noun is the weedkiller, say "That doesn't need weeding." instead;
	say "Pour what on what now?".
	

Chapter Smoking

[this is only to make a response to SMOKE WEEDS]

Smoking is an action applying to one visible thing.

Understand "smoke [something]" as smoking.

Check smoking:
	if the noun is not a weed, say "You can't smoke that!" instead.
	
Report smoking:
	say "It's not that kind of weed."



Book Player's mood

[this is the mood of the player that goes up and down when things happen during the game. The syntax to change it is a bit counterintuitive: "increase the mood of the player" actually makes it worse.

Checking the adjectives ("if the player is happy" etc) returns true if the player has AT LEAST that level of mood; for example, "the player is angry" is true also if the player is despaired or suicidal. This is also "wrong way around" since if you are angry, you are always suicidal (should be the other way around).]

The player has a number called mood. The mood of the player is 0.

To decide whether the player is happy:
	decide yes.
	
To decide whether the player is doubtful:
	if the mood of the player > 0, decide yes;
	decide no.

To decide whether the player is annoyed:
	if the mood of the player > 1, decide yes;
	decide no.

To decide whether the player is frustrated:
	if the mood of the player > 2, decide yes;
	decide no.
	
To decide whether the player is angry:
	if the mood of the player > 3, decide yes;
	decide no.
	
To decide whether the player is despaired:
	if the mood of the player > 4, decide yes;
	decide no.
	
To decide whether the player is suicidal:
	if the mood of the player > 5, decide yes;
	decide no.
	
[this is just for the status line in the end]
To decide whether the player is transcended:
	if the Entire Game has ended, decide yes;
	decide no.



Book Easter eggs

Understand "xyzzy" and "plugh" and "frotz" and "say xyzzy" and "say plugh" and "say frotz" as a mistake( "Maybe in some fantastic realm a garden would take care of itself with appropriately chosen magic words. Unfortunately this is not one of those realms." ).






Volume II - The World

Book Rooms

Part Garden

The Garden is a room. The description is "[garden-description][run paragraph on]".

To say garden-description:
	if the player is despaired
	begin;
		say "It's the garden of pain. The fish is hopefully still alive, the flowers most certainly are not. It's doubtful if there are any seeds left in the vegetable patch.
				
The old garden shed has a yard hydrant installed next to it[if the garden hose is attached to the hydrant]. The garden hose is attached to the hydrant[end if][if the garden hose is attached to the molehill] and it runs inside the molehill[end if].";
	otherwise;	
		if the player is frustrated
		begin; 
			say "It's your garden. The fish should be in the pond and the flower bed [if the Weed Resurrection has ended]is a charred memory of its former self[otherwise if the Weed Resurrection is happening]is being overrun by weeds[otherwise]has something resembling flowers in it[end if]. There's still some hope with the tomatoes.
				
The wretched old garden shack has a yard hydrant installed next to it[if the garden hose is attached to the hydrant]. The garden hose is attached to the hydrant[end if][if the garden hose is attached to the molehill] and the other end is tucked inside the molehill[end if].";
		otherwise;	
			if the player is doubtful
			begin; 
				say "The garden is a tiny patch of green where Wensleydale is splashing around in the pond and the flowers are in full bloom in the flower bed. The tomato seeds have been planted in the vegetable patch.
				
The old garden shed has a yard hydrant installed next to it[if the garden hose is attached to the hydrant]. The garden hose is attached to the hydrant[end if][if the garden hose is attached to the molehill] and the other end is tucked inside the molehill[end if].";
			otherwise;
				if the player is happy, say "The garden is such a nice little patch of green for a novice gardener like yourself. There's even a small fish pond[if the gold fish is in the Garden] where Wensleydale is splashing around[end if]. Flowers are already in full bloom in the flower bed [if the flower bed is weeded]- now without any weeds - [end if]and [if the vegetable patch is sown]the tomatoes are growing in the vegetable patch[otherwise]there's an empty patch ready for vegetables[end if][if the lawn is dry]. The grass looks a bit dry[end if].

There's also an old garden shed with a yard hydrant installed next to it[if the garden hose is attached to the hydrant]. The garden hose is attached to the hydrant[end if][if the garden hose is attached to the molehill] and the other end is tucked inside the molehill[end if].";
			end if;
		end if;
	end if;
	
After going outside:
	say "You [if the Panic at the Garden Shed is happening]sigh and [end if]return to the garden.";
	continue the action.
	


Part Garden Shed

Inside from the Garden is the Shed. The description of the Shed is "[if the player is despaired]The dark and rotting shed is just about as awful as you can imagine[otherwise if the player is angry]The shed can barely hold its own weight with its rotten planks[otherwise if the player is annoyed]The shed is in poor shape, but it's your own little shed[otherwise]It's a delightful little shed even though it has seen better days. Wear and tear just adds to the charm[end if]. The walls have been plastered with [if the wallpaper is newspaper]newspapers[otherwise]pages from books[end if] and there are several boxes full of miscellaneous junk.[if the Crow Attack is happening][one of][paragraph break]Let's see... Yes, there should be something useful here for this situation.[or][stopping][end if]"


The garden-shed is scenery in the Garden. The printed name is "garden shed". The description is "It's [if the player is angry]a rotten piece of crap on your property[otherwise if the player is annoyed]a very old shed, barely staying in one piece[otherwise]a delightfully retro little garden shed[end if]."

Understand "garden shed/shack" and "shed" and "shack" and "gardenshed" as the garden-shed.

Instead of entering the garden-shed, try going inside.

After going inside: [there's only one place that's "inside" so this sould be enough.]
	say "You go inside the garden shed[one of][or] again[stopping].";
	continue the action.
	
Instead of opening garden-shed,
	say "Let's not make things too hard, eh? Just GO INSIDE."
	

Book Things

Part Carried items

Chapter To-do list

The to-do list is a thing carried by the player. The description is "It's a list of things that are easy to do to get you started:[line break]

 - Remove weeds from the flower bed[if the flower bed is weeded] (done!)[end if][line break]
- Plant the tomatoes[if the vegetable patch is sown] (done!)[end if][line break]
- Put the fish in the pond[if the gold fish is in the Garden] (done!)[end if][line break]
- Water the lawn[if the lawn is watered] (done!)[end if][if the Basic Chores has ended][paragraph break]You should also [end if][if the King of the Mole Hill is happening][line break] - get rid of the molehill[end if][if the garden hose is broken][line break] - mend the hose[end if][if the Crow Attack is happening][line break] - build and set up a scarecrow[end if][if Splish Splash has ended and the Cat from Hell has not ended][line break] - rescue Wensleydale[end if][if the Weed Resurrection is happening][line break] - kill the weeds[end if][if the Panic at the Garden Shed is happening] - get rid of the crows[end if]".

Instead of reading the to-do list:
	try examining the to-do list. 

Understand "paper" as the to-do list.
Understand "todo" and "to do" as the to-do list.
Understand "checklist" as the to-do list.


Chapter Gold fish in a plastic bag

The plastic bag is a thing carried by the player. The printed name is "gold fish in a plastic bag". The description is "The fish is quite large for a goldfish. The saleswoman at the pet store said it would do well in an outdoor pond. It's swimming around in its temporary plastic home.".

Understand "gold" as the plastic bag.
Understand "fish" as the plastic bag.
Understand "goldfish" as the plastic bag.
Understand "fish/goldfish in/inside" as the plastic bag.
Understand "animal/creature" as the plastic bag.

Instead of eating the plastic bag:
	say "It's a decorative kind of fish, not the eating kind.".

Instead of entering the plastic bag:
	say "The bag is way too small for you.".

Instead of unlocking or locking the plastic bag with:
	say "It doesn't come as a surprise when you realize there is no lock in the plastic bag.".

Instead of switching on or switching off the plastic bag:
	say "It's not a mechanical fish.".

Instead of opening the plastic bag:
	say "The pet store saleswoman said you should open the bag only after you've put it in the pond first.".

Instead of closing the plastic bag:
	say "It's already closed.".

Instead of attacking or squeezing the plastic bag:
	say "You wouldn't want to harm the little fellow!".

After touching the plastic bag:
	say "The plastic bag feels... plastic.".

After turning the plastic bag:
	say "The fish stays still even if you rotate the bag. Isn't physics fun?".
	
Instead of listening to the plastic bag:
	say "It doesn't make much of a sound.".

Instead of drinking the plastic bag:
	say "No water, no thank you. No, fish make love in it.".
	
Report talking to the plastic bag:
	say "You must be confusing this to some other speedIF." instead.
	
Instead of inserting the plastic bag into the pond:
	say "The fish leaps from the plastic bag into the pond and starts to swim around in circles. In the spur of the moment you decide to name it 'Wensleydale'.";
	remove the plastic bag from play;
	now the gold fish is in the Garden.
	

After reading a command:
	if the player's command includes "fish" or the player's command includes "goldfish",
		replace the matched text with "gold".
[I really don't know what's going on here: if you type PUT FISH IN POND the game responds with "I didn't understand that sentence." Only the synonyms "fish" and "goldfish" do this.]


Chapter Tomato seeds

The tomato seeds is a thing carried by the player. It is plural-named. The description is "The tomato seeds are in a small bag. They are supposedly super easy - just throw them in the soil and let them grow.".

Understand "seed" as the tomato seeds.
Understand "small" as the tomato seeds.
Understand "bag" as the tomato seeds.
Understand "tomatoes/tomatos" as the tomato seeds.

Instead of eating the tomato seeds:
	say "You'll have to wait for them to grow first.".

Instead of throwing the tomato seeds at:
	say "They're supposed to be thrown in the vegetable patch.".

Instead of smelling the tomato seeds:
	say "They don't smell very tomatoish. They probably aren't supposed to, either.".
	
Report sowing tomato seeds in:
	say "You throw the tomato seeds evenly on the vegetable patch and spread some soil over them. That [italic type]was[roman type] easy."



Chapter Garden hose

The garden hose is a thing in the shed. The initial appearance is "An orange garden hose is hanging from a holder in the wall.". The description is "It's quite long and... orange.".

The garden hose can be attached to the hydrant. It is not attached to the hydrant. 
The garden hose can be attached to the molehill. It is not attached to the molehill.
The garden hose can be intact, broken or fixed. It is intact.

Understand "hosepipe" as the garden hose.
Understand "yard hose" as the garden hose.
Understand "orange" as the garden hose.

Instead of eating the garden hose:
	say "Kinky.".
	
Instead of switching on the garden hose when the garden hose is attached to the hydrant:
	try switching on the yard hydrant.
Instead of switching off the garden hose when the garden hose is attached to the hydrant:
	try switching off the yard hydrant.
	

[attaching the hose to the hydrant]
Instead of tying the garden hose to the yard hydrant:
	if the garden hose is attached to the hydrant
	begin;
		say "It's already attached.";
	otherwise;
		say "With some effort you screw the other end of the hose to the hydrant.";
		now the garden hose is attached to the hydrant;
		now the garden hose is in the Garden;
		now the garden hose is scenery;
	end if.
		
Instead of tying the yard hydrant to the garden hose:
	try tying the garden hose to the yard hydrant.
	

[attaching the hose to the molehill]
Instead of tying the garden hose to the molehill:
	if the garden hose is attached to the molehill
	begin;
		say "It's already in there.";
	otherwise;
		say "You tuck the end of the hose inside the mole hill.";
		now the garden hose is attached to the molehill;
	end if.

	
Instead of tying the molehill to the garden hose:
	try tying the garden hose to the molehill.
	
Instead of inserting the garden hose into the molehill:
	try tying the garden hose to the molehill.

The can't insert what's not held rule is not listed in any rulebook. [this is basically meant for the hose only.]


Instead of taking the garden hose when the garden hose is attached to the hydrant:
	if the Basic Chores is happening, say "But you haven't watered the lawn yet!";
	otherwise say "It should stay until the mole is thoroughly hosed out."
	
Instead of pulling the garden hose when the garden hose is attached to the hydrant or the garden hose is attached to the molehill:
	try taking the garden hose.



Chapter Duct tape

The duct tape is a thing. The initial appearance is "Now let's see... There, right on top of a box, is a roll of silvery duct tape.". The indefinite article is "a roll of". The description is "It's silvery and it can repair anything.".

Understand "roll" as the duct tape.
Understand "roll of" as the duct tape.
Understand "duck" as the duct tape. [common misspelling]

Carry out taping the garden hose with the duct tape:
	[we can assume that the hose is broken, because otherwise the player wouldn't have the tape]
	now the garden hose is fixed;
	remove the duct tape from play.

Report taping the garden hose with the duct tape:
	say "You roll a few layers of tape around the leaking spot. It looks like it could hold now." instead.
	

Chapter Rake

The rake is a thing. The description is "It's a rusty rake that's missing few teeth.".

Understand "tool" as the rake.

Instead of attacking the crows when the player has the rake:
	say "You charge the crows with the rake and they fly away, but return as soon as you step away. Looks like the rake itself isn't enough to scare them."



Chapter Coverall

The coverall is a thing. The description is "It's a smallish dark green coverall. It has seen a lot of use.".

Understand "cloth/clothing" as the coverall.
Understand "overall" as the coverall.

Instead of wearing the coverall:
	say "It's way too small for you.".


Instead of inserting the rake into the coverall:
	say "You put the rake inside the coverall to support it and you have yourself a makeshift scarecrow. Hopefully it works.";
	remove the rake from play;
	remove the coverall from play;
	now the player carries the scarecrow.
	
Instead of putting the coverall on rake:
	try inserting the rake into the coverall.
	
Instead of tying the coverall to the rake:
	try inserting the rake into the coverall.
	
Instead of tying the rake to the coverall:
	try inserting the rake into the coverall.


Instead of inserting the rake into the vegetable patch:
	say "You stick the rake in the middle of the vegetable patch. The crows aren't too impressed - maybe it needs something to make it more lifelike. You pull the rake back out."

Instead of putting the rake on the vegetable patch:
	try inserting the rake into the vegetable patch.
	
Instead of inserting the rake into the lawn:
	try inserting the rake into the vegetable patch.
	
Instead of putting the rake on the lawn:
	try inserting the rake into the vegetable patch.
	


Chapter Scarecrow

The scarecrow is a thing. The description is "Not particularly scary, but maybe it'll work.".

Definition: the scarecrow is functional if it is scenery.
Understand "scare" as the scarecrow.
Understand "scare crow" as the scarecrow.
Understand "rake" as the scarecrow.
Understand "coverall" as the scarecrow.
Understand "makeshift" as the scarecrow.

Instead of inserting the scarecrow into the vegetable patch when the scarecrow is not functional:
	say "You stick the scarecrow in the middle of the vegetable patch. The crows fly away and - they aren't returning! Hooray!";
	remove the crows from play;
	now the scarecrow is in the Garden;
	now the scarecrow is scenery.

Instead of putting the scarecrow on the vegetable patch when the scarecrow is not functional:
	try inserting the scarecrow into the vegetable patch.
	
Instead of inserting the scarecrow into the lawn:
	try inserting the scarecrow into the vegetable patch.
	
Instead of putting the scarecrow on the lawn:
	try inserting the scarecrow into the vegetable patch.

Instead of taking the functional scarecrow:
	say "There's no need to carry it around anymore."
	
Instead of attacking the functional scarecrow when the crows are in the Garden:
	say "You punch the scarecrow. Do your job, damnit!"

Instead of showing the scarecrow to the crows:
	say "The crows shun it. Maybe it'll actually work when you'll place it on the vegetable patch."

Instead of putting the scarecrow on the flower bed:
	say "The scarecrow wouldn't be of much use in the flower bed when the crows are in the vegetable patch."

Instead of inserting the scarecrow into the flower bed:
	try putting the scarecrow on the flower bed.


Chapter Weedkiller

weedkiller is a thing. The indefinite article is "a bottle of". The description is "There's a picture of a skull on the side. That means it must be efficient.". The printing is "'Do not consume. Extremely corrosive. Blah blah blah.'". The initial appearance is "There in the corner is a bright red bottle of herbicide with a skull printed on it. Excellent."

Understand "weed" as the weedkiller.
Understand "killer" as the weedkiller.
Understand "red" and "bottle" and "skull" as the weedkiller.
Understand "herbicide" as the weedkiller.
Understand "chemical" as the weedkiller.

Instead of unlocking the weedkiller with:
	say "There's only a child lock which you can open without a key.".

Instead of opening the weedkiller:
	say "Better open it only just before pouring it on the weeds.".

Instead of switching on the weedkiller:
	say "It's already closed.".

Instead of smelling the weedkiller:
	say "You don't want to open the cap to smell it. The instructions say even the fumes could make you pass out.".

Instead of drinking or eating the weedkiller:
	say "Yes, that would be a good way to get rid of unwanted intestines.".

Instead of pouring the weedkiller on the resurrected weeds:
	say "You pop the cap from the weedkiller which greets you with a gust of poisonous fumes. 'Ha! Ha! HA! HAHA! HA!' you scream as you pour the stuff on those demonic parasites. Let's see them come back to life now!
	
The weeds die spectacularly, whithering as soon as the herbicide hits them. War is not without casualities, as you soon find out - the flowers can't take the heat and they turn into shriveled mounds of organic mass.

You look at the flower bed and muse your Pyrrhic victory.";
	remove the resurrected weeds from play;
	remove the weedkiller from play.

Instead of pouring the weedkiller on the flower bed:
	try pouring the weedkiller on the resurrected weeds.
	
Instead of inserting the weedkiller into something:
	try pouring the weedkiller on the second noun.

Instead of putting the weedkiller on something:
	try pouring the weedkiller on the second noun.



Part Scenery



Chapter Flower bed

The flower bed is a thing in the garden. It is scenery. It can be weeded or unweeded. It is unweeded. The description is "The flowers [if the weed resurrection has ended]were[otherwise]are[end if] petunias and poppies, you guess[if weeds are in the garden]. At the moment there seem to be much more weeds than flowers in the flower bed[end if].".

Understand "flowers" as the flower bed.
Understand "poppy/poppies" as the flower bed.
Understand "petunia/petunias" as the flower bed.
Understand "plant/plants" as the flower bed.

Instead of taking the flower bed:
	say "They're much prettier in the garden. In a vase they would just wither and die in days.".

Instead of eating the flower bed:
	say "You don't know much about flowers (yet), but you know enough to know those are not the edible kind.".

Instead of smelling the flower bed:
	say "Ah, the sweet smell of spring!".

Instead of entering the flower bed:
	say "You're not a flower."
	
Instead of weeding the flower bed when the initial weeds are in the Garden:
	try weeding the initial weeds.

	

Chapter Weeds

A weed is a kind of thing.

Instead of eating weeds:
	say "You can probably dispose of them with some other method.".

Instead of smelling weeds:
	say "They don't look like or smell like flowers. That's why they have to go.".
	
Instead of attacking weeds:
	try weeding the noun instead.

Understand "weed" as a weed.
Understand "plant/plants" as a weed.


Chapter Initial weeds

The initial weeds is a weed in the Garden. It is scenery and plural-named. The printed name is "weeds". The description is "Weeds of all shapes and sizes have pretty much taken over the  flower bed.".

Instead of cutting the initial weeds:
	say "You don't have the tools for that. Just pull them up with their roots.".
	
Report weeding the initial weeds:
	say "You get on your knees and pull each weed carefully out around the flowers. It takes a good thirty minutes, but the result looks really nice. Never mind the aching fingers."

Instead of weeding the flower bed when the initial weeds are in the Garden:
	try weeding the initial weeds.
	
Instead of pulling or taking or taking off the initial weeds:
	try weeding the initial weeds.


To decide whether the garden is weeded:
	if the initial weeds are in the Garden, decide no;
	decide yes.


Chapter Resurrected weeds


The resurrected weeds is a weed. It is scenery and plural-named. The printed name is "weeds". The description is "The botanical bastards are back. Stupid weeds.".


Instead of cutting the resurrected weeds:
	say "No time for cutting. This calls for biological warfare.".
	
Instead of weeding the resurrected weeds:
	say "You pull one weed out and sigh. This is never going to work without heavier armament."

Instead of weeding the flower bed when the resurrected weeds are in the Garden:
	try weeding the resurrected weeds.
	
Instead of pulling or taking or taking off the resurrected weeds:
	try weeding the resurrected weeds.




Chapter Vegetable patch
	
The vegetable patch is a thing in the Garden. It is scenery. It can be sown or unsown. It is unsown. The description is "The vegetable patch is [if the vegetable patch is sown]hiding tomato seeds in its soil[otherwise]just waiting for seeds[end if].".

Understand "dirt" as the vegetable patch.
Understand "ground" as the vegetable patch.
Understand "soil" as the vegetable patch.
Understand "earth" as the vegetable patch.
Understand "empty" as the vegetable patch when the vegetable patch is unsown.


Chapter Wallpaper

The wallpaper is a thing in shed. It is scenery. It can be newspaper or book. It is newspaper. The description is "[one of]On closer inspection it's not newspaper after all but pages torn from books. From [italic type]Jack Mills[roman type] pocket books, to be precise.[or]The wallpaper seems to be made from pulp detective novels.[stopping]".
The printing of the wallpaper is "[italic type]'The slammer was a depressing mixture of displeasing white and uncaring gray. I walked past the empty cells listening to the steady click-clack of my steps echoing from the walls. In the last cell I found Professor Humphrey...'[roman type][paragraph break]No wonder someone wanted to plaster it on the walls."

Understand "wall/walls" as the wallpaper.
Understand "paper/papers" and "plastering" as the wallpaper.
Understand "newspaper/newspapers" and "news" as the wallpaper when the wallpaper is newspaper.
Understand "Jack" and "Mills" and "novel" and "pocket" and "book/books" and "pulp" and "page/pages" as the wallpaper when the wallpaper is book.

After examining the wallpaper for the first time:
	now the wallpaper is book.
	
Instead of reading the wallpaper when the wallpaper is newspaper:
	try examining the wallpaper.
Instead of taking the wallpaper:
	say "No time to redecorate now.".



Chapter Gold fish in the pond

The gold fish is an animal. It is proper-named and scenery. The printed name is "Wensleydale". The description is "[if the cat is in the Garden]Wensleydale is desperately trying to dodge the cat's paws.[otherwise]Wensleydale makes cheerful little circles in its new home."

Understand "Wensleydale" and "goldfish" as the gold fish.

Instead of eating the gold fish:
	say "It's a decorative kind of fish, not the eating kind.".

Instead of switching on or switching off the gold fish:
	say "It's not a mechanical fish.".

Instead of attacking or squeezing the gold fish:
	say "You wouldn't want to harm the little fellow!".

After touching the gold fish:
	say "It's too fast to touch, and there's no reason to scare it.".

Instead of listening to the gold fish:
	say "It makes a splashing sound every now and then.".
	
Report talking to the gold fish:
	say "You must be confusing this to some other speedIF." instead.
	
Instead of examining the gold fish when Splish Splash is happening:
	try examining the pond.
	

Chapter Pond

The pond is a thing in the Garden. It is scenery. The description is "[if the gold fish is in the garden]Wensleydale is swimming in little circles in the water.[otherwise]The pond is small but very beautiful.[end if]".

Understand "water" as the pond.
Understand "puddle" as the pond.
Understand "pool" as the pond.

Instead of entering the pond:
	say "It's not a swimming pool.".

Instead of touching the pond:
	say "The water feels cold to your fingers.".

Instead of drinking or eating the pond:
	say "No water, no thank you. No, fish make love in it.".
	
Instead of searching the pond:
	try examining the pond.

Instead of examining the pond when Splish Splash is happening:
	now the cat is in the Garden.
	


Chapter Yard hydrant

The yard hydrant is a device in the Garden. It is scenery. The description is "It's basically a pipe with a valve on it. The mouth part has a connection where a hose can be attached.".

Understand "hose hydrant" as the yard hydrant.
Understand "valve" as the yard hydrant.
Understand "pipe" as the yard hydrant.
Understand "mouth" as the yard hydrant.
Understand "connection" as the yard hydrant.
Understand "water" as the yard hydrant.
Understand "faucet" as the yard hydrant.

Does the player mean switching on the yard hydrant: it is very likely.
Does the player mean switching off the yard hydrant: it is very likely.

Instead of touching the yard hydrant:
	say "Hard and steely.".

Instead of drinking the yard hydrant:
	say "The water's likely to be clean enough but you're not especially thirsty.".
	
Instead of opening the yard hydrant:
	try switching on the yard hydrant.
	
Instead of closing the yard hydrant:
	try switching off the yard hydrant.
	
Instead of turning the yard hydrant:
	if the yard hydrant is switched on, try switching off the yard hydrant;
	otherwise try switching on the yard hydrant.
	
Instead of switching on the yard hydrant:
	if the garden hose is not attached to the hydrant, say "You turn the valve and let some water pour out before you turn it off again. Looks like it [one of][or]still [stopping]works." instead;
	if the Basic Chores is happening, try watering the lawn with the garden hose instead;
	[from now on we suppose Basic Chores has already happened]
	if the garden hose is not attached to the molehill, say "It'd be better to put the hose inside the molehill [italic type]before[roman type] turning the water on." instead;
	if the garden hose is intact
	begin;
		say "You approach the hydrant and see a little cuddly bunny by the shed. 'Oh, how delightful!' you exclaim. The bunny scurries away.
		
You turn the valve and a spray of water from the hose soaks you through. You cut the water quickly. The bunny must've had a taste of the hose.

Bother.";
		now the garden hose is broken;
		now the duct tape is in the Shed;
		increase the mood of the player by 1;
		stop the action; 
	end if;
	if the garden hose is broken, say "Not before you've found a way to mend the hose!" instead;
	if the garden hose is fixed and the yard hydrant is switched off
	begin;
		say "You turn the valve and water starts to flow underground. You decide to leave it on for a while, just to be sure.";
		now the yard hydrant is switched on;
		stop the action;
	end if;
	say "The water is already flowing."
	
Instead of switching off the yard hydrant:
	if the yard hydrant is switched off, say "It's already off." instead;
	if the yard hydrant is switched on, try taking the hose instead.	



Chapter Lawn

The lawn is scenery in the Garden. It can be watered or dry. It is dry. The lawn is a thing in the Garden. It is scenery. The description is "The grass [if the lawn is dry]looks a bit dry.[otherwise]is looking good.".

Understand "grass" as the lawn.
Understand "ground" as the lawn.
Understand "turf" as the lawn.
Understand "garden" and "yard" as the lawn.

Instead of eating the lawn:
	say "You're not a cow.".

Instead of smelling the lawn:
	say "Mmm... The smell of fresh grass. One of the best scents in the whole world.".

Does the player mean watering the lawn with the garden hose: it is very likely.
Does the player mean watering the garden hose with the garden hose: it is very unlikely.


Chapter Boxes

The boxes is a thing in the Shed. It is scenery and plural-named. The description is "The boxes are full of various junk, some related to gardening and some not. None of them are originally yours, the previous owner left them here for you to take care of.".

Understand "crate/crates" as the boxes.
Understand "box" as the boxes.
Understand "junk/crap/stuff/crud" as the boxes.

Instead of taking or searching the boxes:
	say "It's just junk you don't need, at least not at this very moment.".

Instead of entering the boxes:
	say "They are full of stuff, and even if they weren't, what would you do inside a box?".

Instead of opening the boxes:
	say "They are already open.".

Instead of closing the boxes:
	say "They don't have lids.".

Instead of pushing the boxes:
	say "You [italic type]should[roman type] clean them up, but not today.".


Chapter Molehill

The molehill is a thing. It is scenery. The description is "It's a small pile of dirt[if the garden hose is attached to the molehill]. The other end of the hose is tucked inside[end if].".

Understand "mole" as the molehill.
Understand "hill" as the molehill.
Understand "mound" as the molehill.

Instead of taking the molehill:
	say "That's not going to get rid of the critter.".

Instead of entering the molehill:
	say "You're not a mole!".

Instead of searching the molehill:
	say "There might be a mole inside, but finding it is not that important now.".
	
Report talking to the molehill:
	say "'Anybody there?'[paragraph break]No answer." instead;
	
Instead of watering the molehill with the garden hose:
	say "It wouldn't help just to wash the mound away. You need to flood the tunnels."


Chapter Crows

The crows is a neuter animal. It is plural-named. The initial appearance is "Some crows are eating away the tomato seeds you just planted.". The description is "The crows are b[if the crow attack has not ended]l[end if]ack and extremely annoying.".

Understand "crow" as the crows.
Understand "bird/birds" as the crows.

Instead of taking or attacking the crows:
	say "You approach the vegetable patch and the crows fly off. They return right after you've moved two paces away.".

Report talking to the crows:
	say "'Please get out of my tomato field,' you ask the crows politely. They don't seem to listen." instead.


Chapter Cat

The cat is a female animal. The description is "It's the neighbour's cat. You used to like it, before it started to prey on your fish.". The initial appearance is "The neighbour's cat is trying to catch Wensleydale to its paws."

The cat can be hunting or facehugging. The cat is hunting.

Understand "pussy/pus" as the cat.
Understand "feline" as the cat.

Instead of attacking or taking the cat:
	say "'Here, pus pus pus...'
	
You approach the cat, trying to grab it to carry it away from the pond. She sees you approaching, hisses, and makes a daring leap towards you.

She lands straight on your face and takes hold with all four legs. The beast drives its claws in the neck and the back of your head. 'Mmmph hmmh mph!' you swear.";
	now the cat is facehugging.
	
[more "cat code" is in the Cat from Hell scene]


Chapter Eyes

The eyes is a backdrop in everywhere. It is plural-named. The description is "You can't see them. Ironic, don't you think?".

The eyes can be wide or shut. The eyes are wide.
Understand "eye" as the eyes.
Understand "lid/lids" as the eyes.
Understand "my/your eyes" as the eyes.

Instead of taking the eyes:
	say "You already have them.".

Instead of eating the eyes:
	say "Your tongue isn't long enough.".

Instead of opening the eyes:
	say "They're already open.".

Instead of closing the eyes:
	say "Blink.".

Instead of touching the eyes:
	say "You poke your eye. Ouch.".

Instead of pushing the eyes:
	say "Ok, but don't push too hard.".

Instead of turning the eyes:
	say "You roll your eyes.".

Instead of closing the eyes when the eyes are shut:
	say "They are already closed."

Instead of opening the eyes when the eyes are shut:
	now the eyes are wide.



Book Scenes


Part Basic Chores

The Basic Chores is a scene. The Basic Chores begins when play begins. The Basic Chores ends when the vegetable patch is sown and the flower bed is weeded and the gold fish is in the Garden and the lawn is watered.

When the Basic Chores ends:
	say "Well, that was the last chore and everything is now done! Looks like you are better at this than you even imagined!
	
No, wait, what's that mound right in the middle of the garden? Ugh, it's a molehill. Better hose the bugger out while you're at it before the entire garden gets full of those.";
	now the molehill is in the garden;
	increase the mood of the player by 1.
	

Part King of the Mole Hill

The King of the Mole Hill is a scene. The King of the Mole Hill begins when the Basic Chores ends.
The King of the Mole Hill ends when the yard hydrant is switched on.

When the King of the Mole Hill ends:
	decrease the mood of the player by 1.
	

Part Crow Attack

The Crow Attack is a scene. The Crow Attack begins when the player has the duct tape and the location is the Garden.


When the Crow Attack begins:
	say "A lonely crow lands on the vegetable patch. It pecks around the soil for a bit, then two others arrive. They start digging and eating the tomato seeds.
	
'Hey! Get out of there, you little pests!' you scream but the birds ignore you.

Bother.";
	now the crows are in the Garden;
	now the rake is in the Shed;
	now the coverall is in the Shed;
	increase the mood of the player by 1.

Instead of going inside when the Crow Attack is happening and the Weed Resurrection is happening:
	say "You should scare the crows away first before the buggers eat all the seeds!"


The Crow Attack ends when the scarecrow is functional.

When the Crow Attack ends:
	decrease the mood of the player by 1.



Part Weed Resurrection

The Weed Resurrection is a scene. The Weed Resurrection begins when (the Garden encloses the rake and the Garden encloses the coverall) or the Garden encloses the scarecrow.

When the Weed Resurrection begins:
	say "What the... The weeds have resurrected themselves and fill the flower bed again!

Goddamnit.";
	now the resurrected weeds are in the Garden;
	now the weedkiller is in the Shed;
	increase the mood of the player by 1.
	
The Weed Resurrection ends when the resurrected weeds are not in the Garden.

When the Weed Resurrection ends:
	increase the mood of the player by 1.
	

Part Splish Splash

Splish Splash is a scene. Splish Splash begins when the location is the Garden and the weedkiller is handled and the yard hydrant is switched on.

When Splish Splash begins:
	say "You hear Wensleydale splash about in the pond."

Every turn when Splish Splash is happening:
	say "[one of][run paragraph on][or][run paragraph on][or]Wensleydale splashes the water again, a bit louder this time.[or][run paragraph on][or]Splish, splash![or][run paragraph on][or]Wensleydale splashes the water and meows. Wait, what?[or][run paragraph on][stopping]";
	
Splish Splash ends when the cat is in the Garden or the time since Splish Splash began is 7 minutes.

When Splish Splash ends:
	say "Hngaah! It's not Wensleydale that's splashing but the neighbour's cat who's trying to catch him! Shoo, cat, shoo!
	
F%#&!";
	now the cat is in the Garden;
	increase the mood of the player by 1.


Part Cat from Hell

The Cat from Hell is a scene. The Cat from Hell begins when the cat is facehugging.

[this rule blocks anything the player does when the scene is running. "Instead" or "before" rules aren't enough since other instead or before -rules might get priority and fire even if we wouldn't want that.]
This is the Can't do much with a cat stuck in your face rule:
	[the rule stops here without doing anything if the scene we want it to work in isn't happening.]
	if the Cat from Hell is not happening,
		continue the action;
	[if the action is one of the following, it is not blocked.]
	if the current action is jumping, continue the action;
	if the current action is taking or attacking or pushing or pulling or examining the cat, continue the action;
	[the following blocks the action with a randomized message.]
	say "[one of]You would, but mouse-breath is still facehugging you.[or]How? The feline abdomination has blindfolded you with her own furry body.[or]'Meow,' the cat says as you struggle to get free.[or]You stumble and nearly lose balance when the cat scratches you again.[or]'Mhbh!' you exclaim when your attempts are buggered by the blinding grasp of the beast.[or]'NO!' the cat yells and claws at your [one of]left[or]right[purely at random] ear. (It might've also been 'meow'.)[at random]";
	stop the action.
	
[the action processing rules are high enough in the hierarchy for this "block (almost) all" rule]
The Can't do much with a cat stuck in your face rule is listed first in the action-processing rules.


Instead of taking the cat while the Cat from Hell is happening:
	say "Technically, you already have her."
	
Report talking to the cat while the Cat from Hell is happening:
	say "You attempt to command the cat to disappear, just to get your mouth full of cat hair." instead.
	
Instead of attacking the cat while the Cat from Hell is happening:
	say "You wave your arms in the general direction of your face (where the cat is), but it just makes the furry assailant to grab a tighter hold."
	
Instead of pulling or pushing the cat while the Cat from Hell is happening:
	say "You take a good grip of the little bastard and yank her out of your face. Her final loot is a bunch of hair and a good amount of freshly scraped skin. The cat jumps on the ground and runs off. 

You glance at the vegetable patch where the crows are back, with a couple of friends of theirs. It looks as if some of them are actually laughing at the scarecrow. Laughing. At the scarecrow. Laughing.

You don't say anything. Your left eye twitches.";
	remove the cat from play;
	now the crows are in the Garden.

The Cat from Hell ends when the cat is not in the Garden.

When the Cat from Hell ends:
	increase the mood of the player by 1.


Part Panic at the Garden Shed

The Panic at the Garden Shed is a scene. The Panic at the Garden Shed begins when the location is the Shed and the Cat from Hell has ended.

When the Panic at the Garden Shed begins:
	say "There has to be something here yet that will save the day! Has to be something!"; 
	
The Panic at the Garden Shed ends when the player is in the Garden. 

Instead of searching or examining the boxes when the Panic at the Garden Shed is happening, say "[one of]You rummage through the boxes, trying to find some magic tool that will make all go better. [or][stopping]There is nothing there."

When the Panic at the Garden Shed ends:
	say "The ground erupts into four or five geysirs, spraying water from the underground mole tunnels.
	
The bunny returns and chews on the remaining flora.

The cat is back prowling about for Wensleydale by the pond.[paragraph break]     ***

You close your eyes."


Part Darkness will Save Us

The Darkness will Save Us is a scene. The Darkness will Save Us begins when the Panic at the Garden Shed ends.

When the Darkness will Save Us begins:
	increase the mood of the player by 1;
	now the eyes are shut.


[Having your eyes closed and most actions blocked is handled like the facehugging cat previously.]
This is the Can't do much with eyes closed rule:
	[the rule stops here without doing anything if the scene we want it to work in isn't happening.]
	if the Darkness will Save Us is not happening,
		continue the action;
	[if the action is one of the following, it is not blocked.]
	if (the current action is jumping or looking or waking up) or the noun is the eyes
	begin;
		continue the action;
	otherwise;
		[and the blocking + the message.]
		if the noun is nothing, say "That's very hard to do with eyes closed.";
			otherwise say "You can't see any such thing. Because your eyes are closed.";
		stop the action;
	end if.
	
The Can't do much with eyes closed rule is listed first in the action-processing rules.
	
Instead of looking when the Darkness will Save Us is happening:
	now the eyes are wide.

The Darkness will Save Us ends when the eyes are wide.

When the Darkness will Save Us ends:
	say "You open your eyes and behold! A paradise unfolds in front of your eyes! The flowers are blooming, the grass is a gleaming green carpet where butterflies chase each other and stop only to rest in sparkling waters of a beautiful yard pond. It is the perfect embodiment of a spring garden.
	
'You have a very beautiful garden, Mrs. Salines,' you tell your next door neighbour who is watering her petunias on the other side of the fence. 'WHY DOES MINE LOOK LIKE THE AFTERMATH OF A CARPET BOMBING?' You can feel your blood pressure throbbing a vein in your forehead.

Mrs. Salines laughs jovially. 'My dear, you just need a bit of patience! You can't expect perfect results right away,' she tells you. 'Come, I'll make us some tea and then we'll go have a look at your garden.'

You feel a bit better.";
	end the game saying "You are on the road to becoming a gardener".
	


Volume III - Documents


To say Juhana's email: say "[italic type]juhana[spamdot]if[spam-at]nitku[spamdot]net[roman type]". [to block spam]

To say spamdot:
	say ".[run paragraph on]".
	
To say spam-at:
	say "@[run paragraph on]".
	

Book About

Help-about is an action out of world.
Understand "about" as help-about.

Carry out help-about:
	say "[bold type]Gardening for Beginners[roman type] was written for the Spring Speed IF in March 2008. It was made in 3 afternoons: one afternoon was used for designing, the second for making the objects and the third for applying the game logic. During the second day there was the winter's biggest snow storm.[paragraph break]You can contact the author at [Juhana's email] or check out [italic type]www.nitku.net/if/gardening[roman type] where this game will probably be uploaded at some point." 


Book License

Help-license is an action out of world.
Understand "license" and "licence" and "lisense" and "lisence" and "copyright" as help-license.

Carry out help-license:
	say "[paragraph break]Copyright (C) 2008 Juhana Leinonen  <[Juhana's email]>

This game is free software: you can redistribute it and/or modify it under the terms described in this license."

say "[paragraph break]You may make and give away verbatim copies of the binary or source form of the software without restriction, provided that:

1) You duplicate all of the original copyright notices and associated disclaimers:
[line break]a) Redistributions of binary form of the software must retain the above copyright notice, this list of conditions and the following disclaimer in such way that it is easily accessible and readable within the software. Typically in works of interactive fiction, this means that typing LICENSE will print this license and the player is informed of this possibility within help files and/or immediately as the game begins.
[line break]b) Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
	 
2) AT LEAST ONE of the following conditions is met:
[line break]a) The source code of the software is distributed along with the binary form of the software.
[line break]b) The source code of the software is available free of charge from a public web site for at least three (3) years and the web site address is easily accessible and readable within the software.
[line break]c) The source code of the software is available in other unrestricted ways free of charge to all those who have access to the binary form of the software.[paragraph break]".
say "3) You may sell the software without restriction, by itself or as a part of a collection, provided that the source code of the software is available to those who have bought the software, free of charge, as described in condition 2. You may not restrict in any way the right of the buyers of the software to redistribute the software as described in this list of conditions.".
say "[paragraph break]You may modify and distribute binary or source form of software derived from this software without restriction, provided that:
[paragraph break]4) You license the derivative work with this license or a license that is fully compatible with it, i.e. a license that does not contradict any of the terms described here.
[paragraph break]5) You credit the original author and all the authors that are credited in the software that your work is derivative of.
[paragraph break]6) The extensions (as defined in the Inform 7 manual) used by the software do not need to be licensed by this license and they do not need to be compatible with this license, WITH THE EXCEPTION that for every extension used by the software, its source code must be either freely and easily available to anyone or distributed with the source code of this software.".
say "[paragraph break]You may re-use pieces of code and other programming solutions developed in this source code in other works ('sampling') without restrictions, providing that a third party does not claim copyright to those solutions.".
say "[paragraph break]THIS SOFTWARE IS PROVIDED 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.".




Volume IV - Tests - Not for release

Test chores with "in/get hose/out/weed flowers/plant tomatoes/put fish in pond/attach hose to hydrant/water lawn".

Test hose with "test chores/put hose in molehill/turn valve/in/get tape/out/repair hose/turn valve"

Test scarecrow with "test hose/in/get all/out/put rake in coverall/stick scarecrow in patch"

Test weedkiller with "test scarecrow/in/get all/out/pour weedkiller on weeds"

Test facehugger with "test weedkiller/x pond/get cat"

Test ending with "test weedkiller/x pond/get cat/pull cat off/in/out/open eyes"
