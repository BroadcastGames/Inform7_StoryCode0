"Figaro" by Victor Gijsbers
[This game is copyrighted 2007 by Victor Gijsbers, who asserts the moral right to be recognised as the author. It is released under the GNU Public License 3.0. See http://www.gnu.org/copyleft/gpl.html for further details.]

[Basically, this means that you can change this source code and release the resulting game, as long as you also provide people with the source code and release it under the same GPL 3.0. It's not just that you can do this -- I encourage you to do this! If you wish, you can just call the new game "Figaro", as long as you increment the release number. (Check the IFDB at ifdb.tads.org to see what the number of the latest version is.) If I have time, I'll be delighted to beta-test the result, so be sure to send me an email at victorQQQlilith.cc, where you substitute the at-sign for those three Qs.]

[Ok, let's start with the game. First a little presentation and biographical data.]

The story headline is "A co-authored revenge".
The story genre is "Example".
The release number is 2.
Release along with cover art.

[For the multiple choice menu's, we'll use the Simple Chat extension of Mark Tilford. Get the newest version at the Inform 7 website, and check the Inform 7 documentation about installing extensions. (Just in case I put a current version in the zip-file with source code.)]

Include Simple Chat by Mark Tilford.

[We don't want the player to exit from conversation menu's without making a choice.]
Use Default Forbid Exiting Conversations.

[And this game has no score.]
Use no scoring.

[We now define what the player sees when the game starts.]
When play begins:
  say "You suspect your wife Susanna of adultery. So you have convinced everyone that you are gone on a trip to Córdoba, and have hidden yourself in the big trunk in your marital bedroom. Let's wait and see what happens.".

[And the licensing information. Please leave this in any derivative work!]
After printing the banner text, say "This work is licensed under the GNU Public License, version 3. [line break]Please type ABOUT for important information.".

[One final preliminary: we define a known/unknown property in order to have the player look at the mystery man twice. He starts out as unknown; when seen once, he is known; when seen again, we replace him with whomever he turns out to be.]
A person is either known or unknown. A person is usually unknown.


Section 1a - Stuff in the initial room

[We start with some standard stuff: describing the room.]
The Bedroom is a room. The description of the bedroom is "[if the player is in the trunk]You have hidden yourself in a trunk, which is currently closed. You can peek through the keyhole, if you so desire.[otherwise]You are not a rich man, and therefore your marital bedroom is not richly decorated. In fact, it only contains a huge bed (which you made yourself just before you wedded) and a trunk.[end if]". The trunk is in the bedroom. The description of the trunk is "A big trunk in which a man would just fit. He might even be able to peek through the keyhole." The trunk is a closed, openable, unlocked, transparent, enterable, scenery container. It is fixed in place. The keyhole is part of the trunk. Instead of examining the keyhole: try peeking.

[The player starts out in the trunk.]
The player is in the trunk. 

[And we define the bed.]
The bed is in the bedroom. The description of the bed is "You can sleep on it, or do other things entirely.". The bed is an enterable scenery supporter. It is fixed in place.

Section 1b - Default responses

[We replace the "As good-looking as ever." response.]
Instead of examining the player: say "You are Figaro, the smartest servant in the world.".

[And a game ripped straight from a famous opera MUST of course have a custom response to the "sing" command.]
Instead of singing:
	if susanna is not in the bedroom:
		say "'Se vuol ballare[line break]Signor Contino,[line break]il chitarrino[line break]le suonerò.'";
	otherwise:
		say "Not now!".



Section 2 - Taking inventory

[Here we define the conversation menu's that will appear when you take inventory for the first time. Check the documentation of Simple Chat if you want to know what all this means.]

Instead of taking inventory for the first time:
  run a conversation from sc_inv_1.

sc_inv_1, sc_inv_2, sc_inv_4, sc_inv_5, sc_inv_6, sc_inv_7, sc_inv_8 and sc_inv_3 are chat nodes.

Instead of giving text for sc_inv_1: say "[italic type]Maybe you are carrying an axe, to take bloody revenge?[roman type]".
Instead of finding responses to sc_inv_1: link to sc_inv_2; link to sc_inv_3.

Instead of giving link to sc_inv_2: say "Yes. ".
Instead of giving text for sc_inv_2: move the axe to the player; try taking inventory.

Instead of giving link to sc_inv_3: say "No, I'm not blood-thirsty."
Instead of giving text for sc_inv_3: say "[italic type]Ok. What about a cream pie, for comic revenge?[roman type]".
Instead of finding responses to sc_inv_3: link to sc_inv_4; link to sc_inv_5.

Instead of giving link to sc_inv_4: say "Yes. ".
Instead of giving text for sc_inv_4: move the cream pie to the player; try taking inventory.

Instead of giving link to sc_inv_5: say "No, I'm a bit more serious than that."
Instead of giving text for sc_inv_5: say "[italic type]Ok, my final offer: a photo camera, for blackmail.[roman type]".
Instead of finding responses to sc_inv_5: link to sc_inv_6; link to sc_inv_7; link to sc_inv_8.

Instead of giving link to sc_inv_6: say "Yes. ".
Instead of giving text for sc_inv_6: move the photo camera to the player; try taking inventory.

Instead of giving link to sc_inv_7: say "In that case, I'd rather have the axe. ".
Instead of giving text for sc_inv_7: move the axe to the player; try taking inventory.

Instead of giving link to sc_inv_8: say "In that case, I'd rather have the pie.".
Instead of giving text for sc_inv_8: move the cream pie to the player; try taking inventory.

[You get one of three things: axe, cream pie, camera. We must of course make them.]

The axe is a thing. The description of the axe is "Heavy, sharp; ideal for killing adulterers.".

The cream pie is a thing. The description of the cream pie is "A big cream pie, with lots of extra cream. Fun assured at parties, and ideal for pieing someone.". Instead of eating the pie, say "No, you have it for another purpose.".

The photo camera is a thing. The description of the photo camera is "Ideal for photographing people you'd like to blackmail.".

Instead of dropping something: say "No, you might need that.".


Section 3a - Peeking

[Peeking is the special action triggered when you peek through the keyhole.]
Peeking is an action applying to nothing.

Understand "peek" as peeking. Understand "look through keyhole" as peeking. Understand "spy" as peeking. Understand "peek through keyhole" as peeking.

Before peeking:
  if the player is not in the trunk, say "You are out of the trunk!" instead.

[Here we describe what the player sees.]
Instead of peeking:
	if susanna is not in the bedroom, say "You peek, but no, she isn't here yet. You'll have to wait a bit longer.";
	if cherubino is in the bedroom, say "Your wife and Cherubino are kissing like madmen!";
	if the count is in the bedroom, say "The count is having his way with your wife as if she were a common whore!";
	if barbarina is in the bedroom, say "Well, the two of them are just--well, talking.";
	if the mystery man is in the bedroom and the mystery man is known, try examining the mystery man;
	if the mystery man is in the bedroom and the mystery man is unknown:
		say "You peek through the keyhole of the large chest. The room outside is dimly lit, and it is hard to make out the features of the two people kissing in the corner. You can easily recognise the woman as Susanna (who couldn’t recognise his own wife?); but the man...";
		now the mystery man is known.

[This is the conversation menu in which you decide who Susanna enters the room with.]
sc_peek_1, sc_peek_2, sc_peek_4, sc_peek_5, sc_peek_6, sc_peek_7 and sc_peek_3 are chat nodes.

Instead of giving text for sc_peek_1: say "[italic type]Perhaps it is Cherubino, the effeminate servant boy?[roman type]".
Instead of finding responses to sc_peek_1: link to sc_peek_2; link to sc_peek_3.

Instead of giving link to sc_peek_2: say "Yes, that's the romantic type she'd fall for. ".
Instead of giving text for sc_peek_2: remove the mystery man from play; move cherubino to the bedroom; say "Your wife is kissing that pathetic boy, Cherubino!".

Instead of giving link to sc_peek_3: say "No, she wouldn't fall for him."
Instead of giving text for sc_peek_3: say "[italic type]Ok; maybe the count Almaviva himself?[roman type]".
Instead of finding responses to sc_peek_3: link to sc_peek_4; link to sc_peek_5.

Instead of giving link to sc_peek_4: say "Yes! The bastard! ".
Instead of giving text for sc_peek_4: remove the mystery man from play; move the count to the bedroom; say "Unbelievable! Your wife is kissing the horrid, slimy count Almaviva--and it appears as if she has a good time too!".

Instead of giving link to sc_peek_5: say "No, it's not the count either."
Instead of giving text for sc_peek_5: say "[italic type]Ok, what about the girl Barbarina? And they aren't really kissing either! It was all just a figment of your jealous imagination.[roman type]".
Instead of finding responses to sc_peek_5: link to sc_peek_6; link to sc_peek_7.

Instead of giving link to sc_peek_6: say "Great! Let's do that! ".
Instead of giving text for sc_peek_6: remove the mystery man from play; move barbarina to the bedroom; say "Now that you look closely, maybe it's not a man at all. And... uhm, well. Perhaps they aren't kissing. Not as such. More like talking to each other. Its just Susanna and her good friend Barbarina.".

Instead of giving link to sc_peek_7: say "No; in that case I'd rather have the lecherous count.".
Instead of giving text for sc_peek_7: remove the mystery man from play; move the count to the bedroom; say "Unbelievable! Your wife is kissing the horrid, slimy count Almaviva--and it appears as if she has a good time too!".


Section 3b - Using the axe

[If you have the axe, you will be able to end the game by killing someone.]
Understand "axe [someone]" as attacking.

Instead of attacking the count when the player has the axe:
	say "His brains splash all over the wall!";
	end the game saying "That's what happens to adulterers!".

Instead of attacking cherubino when the player has the axe:
	say "His brains splash all over the wall!";
	end the game saying "That's what happens to adulterers!".

Instead of attacking susanna when the player has the axe:
	say "Her brains splash all over the wall!";
	end the game saying "That will teach her a lesson she'll never forget!".


Section 3c - Using the pie

[If you have the pie, you will be able to end the game by pieing someone.]
Pieing is an action applying to one visible thing.

Understand "pie [someone]" as pieing.

Instead of throwing the pie at something, try pieing the second noun. Instead of attacking something when the player has the pie, try pieing the noun. Instead of putting the pie on something, try pieing the second noun.

["Throw" (but not "throw .. at") is usually a synonym of "drop". In this case, we do not want that, because the player might well type "throw pie". So we de-synonym it, and define a new throwing action.]
Understand the command "throw" as something new. Throwing is an action applying to one thing. Understand "throw [something]" as throwing.

Instead of throwing:
	if the noun is the axe:
		say "It's not a throwing axe. Try attacking someone.";
	otherwise:
		if the noun is the pie:
			if cherubino is in the bedroom:
				try pieing cherubino;
			if count almaviva is in the bedroom:
				try pieing count almaviva;
			if cherubino is not in the bedroom and almaviva is not in the bedroom:
				say "You'll have to be more specific about whom you want to pie.";
		otherwise:
			say "You'd throw away your reputation as the smartest servant in the world!".

[These rules govern the pieing action.]
Check pieing something:
	if the player does not have the pie, say "You don't have a pie!" instead;
	if the player is in the trunk, say "You have to get out of the trunk first." instead.

Carry out pieing something: say "It's no use pieing that.".

Carry out pieing cherubino:
	say "You push the pie right into his face. He starts screaming and crying.";
	end the game saying "That will teach him a lesson!".

Carry out pieing the count:
	say "You push the pie right into his face. The count doesn't seem amused.";
	end the game saying "Oh well, you've gotten away with worse indiscretions.".

Carry out pieing susanna:
	say "You push the pie right into her face and laugh.";
	end the game saying "That will teach her!".


Section 3d - Using the camera

[If you have a camera, you will be able to end the game by photographing someone.]
Photographing is an action applying to one visible thing and requiring light. 

Understand "photograph [someone]" as photographing. Understand "take a picture of [someone]" and "take picture of [someone]"  as photographing. Understand "make a photo of [someone]" and "make photo of [someone]" and "take photo of [someone]" and "take a photo of [someone]" as photographing.

[Because the player may well type "take photo" or something like that, without a noun, we should handle that gracefully. In order to do this, we define another action, noun-less photographing, which only prints an error message.]
Nounless-photographing is an action applying to nothing. Understand "make photo" and "take photo" and "photograph" and "press button" as nounless-photographing.

Instead of nounless-photographing: say "You'll have to specify whom you want to photograph.".

[And these are the rules that govern photographing.]
Before photographing:
	if the player does not have the camera, say "You don't have a camera!" instead;
	if the player is in the trunk, say "You can't take a photograph through the keyhole." instead.

Instead of photographing the count:
	say "Click!";
	end the game saying "First class blackmailing material!".

Instead of photographing cherubino:
	say "Click!";
	end the game saying "First class blackmailing material! A pity Cherubino is not rich.".

Instead of photographing susanna:
	say "Click!";
	end the game saying "Another one for in the family album!".

Instead of photographing the player, say "You're not here for a self-portrait.".




Section 4 - Opening the trunk

[The trunk is of course quite essential, since the player will spend most of the game inside it. We don't want him to open it before the identity of the mysterious man has been revealed.]

[First, we capture commands like "exit", "get out", "jump" and "up".]

Instead of exiting when the player is in the trunk: try opening the trunk.

Instead of jumping when the player is in the trunk: try opening the trunk.

Instead of going up when the player is in the trunk: try opening the trunk.

[Now we check whether we want the player to open the trunk.]

Before opening the trunk:
	if the trunk is locked:
		say "Try as you may, you can't get out. The trunk is locked.";
		if barbarina is in the bedroom, end the game saying "You got what you deserved!";
		if barbarina is not in the bedroom, end the game saying "All night, you are powerlessly locked up while your wife indulges in unspeakable acts of fornication not six feet away from you.";
	otherwise:
		if susanna is not in the bedroom, say "No; you should wait until Susanna enters the bedroom with her lover. Then you may reveal yourself." instead;
		if the count is not in the bedroom and cherubino is not in the bedroom and barbarina is not in the bedroom:
			if the mystery man is unknown:
				say "Better to peek through the keyhole first, and see if the time is right." instead;
			if the mystery man is known:
				say "Better look again first, so you see who is kissing your wife." instead.

[Finally, we describe what happens when the player exits the trunk.]

Instead of opening the trunk:
	say "[if barbarina is not in the bedroom]Brandishing[otherwise]Shamefully concealing[end if] [if the player has the axe]your axe[ otherwise if the player has the pie]your cream pie[otherwise if the player has the camera]your photo camera[otherwise]the unidentified object in your inventory[end if][if barbarina is in the bedroom] behind your back, you step out of the trunk[otherwise], you jump out of the trunk. 'Surprise!', you cry[end if].";
	now the trunk is open;
	move the player to the bedroom, without printing a room description;
	if barbarina is in the bedroom:
		say "Susanna looks at you with raised eyebrows. 'Were you looking for something in that trunk, my dear? Men! Always losing things.'";
		end the game saying "You are mocked endlessly for your jealous fantasies.";
	if count almaviva is in the bedroom:
		say "With Susanna's bare breasts still in his hands, count Almaviva looks up stupidly.";
	if cherubino is in the bedroom:
		say "Cherubino shrieks, and attempts to hide himself completely under Susanna's skirts.".

[We don't want the player entering the trunk again once he has gone out of it. This wouldn't fit with the story.]

Instead of entering the trunk:
	say "You're not going back in!".


Section 5 - People

[When someone is in the room, there must of course be an object corresponding to that person.]

Susanna is a woman. The description of Susanna is "Your beautiful, beloved, [if barbarina is in the room]faithful[otherwise]unfaithful[end if] wife." Understand "wife" as susanna.

Cherubino is a man. The description of Cherubino is "A foppish boy, no older than eighteen.".

Count Almaviva is a man. The description of the count is "Your employer is a lecherous old man.".

Barbarina is a woman. The description of barbarina is "A sweet little girl, utterly innocent.".

[Mystery man is the person we place in the room before it is determined whether it is the count, Cherubino, or Barbarina.]

Mystery man is a man. Instead of examining the mystery man, run a conversation from sc_peek_1.

[This rule makes Susanna and the mystery man enter the room after 7 turns.]

An every turn rule:
	if the player is in the trunk for exactly seven turns:
		move susanna to the bedroom;
		move mystery man to the bedroom;
		say "You hear the door open, and Susanna enters the room--with someone else!".

[If the player doesn't do anything useful, but just stays in the trunk, Susanna is going to lock it. After 14 turns, she announces this. One turn after, she actually locks it.]
An every turn rule:
	if the player is in the trunk for exactly 14 turns:
		say "Susanna's voice: 'Now who left that stupid trunk unlocked? Wait a moment, I'll just lock it.'".

An every turn rule:
	if the player is in the trunk for exactly 15 turns:
		say "The sound of the key in the lock.";
		now the trunk is not transparent;
		now the trunk is locked.


Section 5a - Kissing

[Instead of using the axe / pie / camera, you can also end the game by kissing one of the people involved.]

[The block kissing rule normally intercepts all attempts to kiss. We delist it.]

The block kissing rule is not listed in any rulebook.

[You cannot kiss in the trunk.]

Check kissing:
	if the player is in the trunk:
		say "Here, you can only press your lips to the hard wood of the trunk." instead.

[Kissing yourself -- well, someone might try.]

Carry out kissing the player:
	say "You turn into a frog! Just kidding.".

[This is where it really happens! Kissing Susanna ends the game. If Cherubino is the mystery man, we end it directly. If the count is in the room, we have the end depend on the object carried by the player. IF YOU ADD AN OBJECT TO THE GAME, YOU MUST EXTEND THIS RULE AS WELL!]

Carry out kissing susanna:
	if cherubino is in the room:
		say "You embrace Susanna, as you exclaim: 'How good that you have brought us a little love slave! This is going to be a long night for him.'";
		end the story saying "What happens next is for you to imagine.";
	if count almaviva is in the room:
		if the player carries an axe:
			say "You kiss Susanna, saying 'I know you are innocent -- but this animal must die!'[paragraph break]";
			try attacking count almaviva;
		if the player carries a cream pie:
			say "You kiss Susanna, saying 'I know you are innocent -- but this animal must die!'[paragraph break]";
			try pieing count almaviva;
		if the player carries a photo camera:
			say "You kiss Susanna, saying 'I know you are innocent -- but this animal must pay!'[paragraph break]";
			try photographing count almaviva;
		if the player carries nothing:
			say "Better check your inventory first.";
	if cherubino is not in the room and count almaviva is not in the room:
		say "You passionately kiss your wife.".

[You can also kiss either Cherubino or the Count.]

Carry out kissing cherubino:
	say "You pull him out from under Susanna's skirts. 'I and my wife share everything', you say, and kiss him full on the mouth.";
	end the story saying "What happens next is for you to imagine.".
	
Carry out kissing count almaviva:
	say "You kiss Almaviva full on the mouth, whispering: 'Oh county, that [italic type]really[roman type] turned me on!' He passionately kisses you back. The countess steps out of the wardrobe.";
	end the game saying "You soon establish a four-way polyamoric relationship.".


Section 6 - About

[People who type HELP or ABOUT get a brief explanation of the game.]

Abouting is an action out of world.

Understand "about" and "help" as abouting.

Report abouting: say "This game is an instructive example, not a real game. It is meant to illustrate some claims made by me in my essay [italic type]Co-authorship and Community[roman type], which I entered in the Innovation Comp. [paragraph break][italic type]Figaro[roman type] will be over in a few short moves, but before it is over it will have demonstrated the possibility--even within the current authoring systems--of allowing the player greater-than-normal control over the world and the story.[paragraph break]Release 2 solves bugs, adds synonyms, and includes some new possibilities. You can now, for instance, kiss your wife. It was tested by Kevin Colyer.[paragraph break]Annotated source code is available for the game, so you can extend it if you wish!".
