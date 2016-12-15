"IF Progressive" by The IF Progessive Team

[using build 5U92]

Chapter 0 - Shared Definitions

Use American dialect.
Use no scoring.
Use full-length room descriptions.
Include Basic Screen Effects by Emily Short.

The story description is "IF Progressive, 2009."
The release number is 1.
The story creation year is 2009.

The scene-manager is a thing.  It has a number called authnum.  The authnum of the scene-manager is 1.

When Progressive 2 begins:  Now the authnum of the scene-manager is 2.

When Progressive 3 begins:  Now the authnum of the scene-manager is 3.

When Progressive 4 begins:  Now the authnum of the scene-manager is 4.

When Progressive 5 begins:  Now the authnum of the scene-manager is 5.

When Progressive 6 begins:  Now the authnum of the scene-manager is 6.

When Progressive 7 begins:  Now the authnum of the scene-manager is 7.

When Progressive 8 begins:  Now the authnum of the scene-manager is 8.

Seeing the author is an action out of world. Understand "author" as seeing the author. Carry out seeing the author: 
	if there is an author corresponding to a num of the authnum of the scene-manager in the Table of Whispers begin;
		choose row with a num of the authnum of the scene-manager in the Table of Whispers;
		say "Scene [num entry], '[title entry]', was written by [author entry].";
	otherwise;
		say "Hmm, there seems to be no author set at this point. Well, maybe this part was written by monkeys.";
	end if.

Table of Whispers
Num	Author	Title
1	"Sarah Morayati"	"True Colors"
2	"Rick Dague"	"Terrorist Wannabe"
3	"Dan Shiovitz"	"Job Fair"
4	"Carl Muckenhoupt"	"Telepyramids"
5	"Taleslinger"	"Jojo gets a cookie"	
6	"Mark J. Musante"	"Bureaucracy"
7	"Tom Blawgus"	"Orienting the Drones"
8	"Dan Shiovitz"	"A Suitably Apocalyptic Ending"

Test all with "test ch1/ test ch2/ test ch3/ test ch4/ test ch5/ test ch6/ test ch7/test ch8"

Understand the command "pop" as "attack".

Chapter 1 -"True Colors" by Sarah Morayati

Progressive 1 is a scene.  Progressive 1 begins when play begins.

Test ch1 with "z / z / get balloon / g / s / e"

Section 1 - The Player

Instead of examining the player:
	say "What's there to see? Short hair that the kids nevertheless keep fussing with, sensible clothes on a stocky frame. Arms, legs, hands, feet. Nothing to set you apart." Instead of touching the player, say "You've given yourself three pats on the back today. No more." Instead of rubbing the player, say "It's hardly worth it. One second in this place and you'd be dirtied up again. Better wait until you get home into your own tub." Instead of attacking the player, say "You don't hate your job that much yet." Instead of kissing the player, say "You don't love yourself that much."

Section 2 - Replacing Messages, Etc

Instead of swearing obscenely, say "One of your favorite pastimes, one you're deprived of all day. You let the word out with satisfying elan."

Instead of singing, say "Weeks of caterwauling along with off-key kids has made you loathe singing. Even in private - you hear them in your mind, like some sadistic Greek chorus."

Instead of jumping, say "Not after four p.m., no way. This is the time where you can act dignified again."

Instead of saying sorry, say "After four p.m. politeness goes out the window."

Instead of waving, say "You've done quite enough waving and flailing about for the day."

Instead of sleeping, say "You're hardly tired, and besides, bedtime is ten p.m. sharp. No earlier, no later. Your biological clock is a delicate thing."

Instead of waking up, say "You're not dreaming, although it sure seems it at times[if the voice-of-Roz is speaking]. Especially today[otherwise][end if]."

Instead of thinking, say "Can you think about thinking? Your mind twists up for a minute or so until you realize that all the crazy koans in the world, solved or not, won't get any work done."

Understand the command "read" as something new. Understand "read [something]" as reading. Reading is an action applying to one thing.

Instead of reading, say "Not much to read there."

Section 3 - Play Begins

When play begins: 
	the balloon appears in one turn from now;
	say "Four p.m. and they're all gone, every last one of them. Little brats made of spittle and claws. Paint-spilling, dirt-tracking, crayon-smearing babies in kindergarteners[apostrophe] clothing. The day you took your job was the day you lost your mind.[paragraph break]Not that you have other prospects, though. This is what you've got and it isn't all that safe. And besides, it gets better now. Now you make order from chaos. Now you spin gold from straw. You're going to wipe every last bit of color and clutter off the face of this room and get out by five-thirty sharp.";

Section 4 - The Classroom

Preschool is a region.

The Classroom is a room in Preschool. "[one of]Is there a national conspiracy to make young eyes pop out by age five from overstimulation? Must be. [or][stopping]Every last inch of wall space here, save for the window, is plastered with needless decor: nature caricatures, inspirational glurge, posters with cartoon letters and plus signs. The floor's no better; the brats didn't pick up when Miss Lauren told them to pick up and now it's cluttered with gaudy plastic. The books are tossed into the carpet square pile and someone's dripped tempera paint onto every table. [one of]You could go on[or]And there's more, it seems, every second. Leaves and dirt by the doorway. Shredded paper that's not in the waste bin[stopping]." South is Hallway.

Instead of going south from Classroom when the doorway is railroaded, say "There's too much cleaning to do first."

Before going south from Classroom when the doorway is free, move the voice-of-Roz to Hallway.

The doorway is scenery in Hallway. It can be railroaded or free. It is railroaded. The description of the doorway is "The door was removed long ago. Too much potential for accidents. Accidents involving injury, and accidents involving markers."

The leaves are scenery in Classroom. They are plural-named. Understand "leaf" and "dirt" as the leaves. The description of the leaves is "Whatever the kids track in. They track in, it seems, a lot." Instead of taking or rubbing the leaves, say "Not without your gloves, and you're not sure where you left those. Of course."

The paper is scenery in Classroom. 

The books are scenery in Classroom. They are plural-named. Understand "book" and "pile" and "carpet" and "square" and "squares" and "rug" and "rugs" as the books. The description of the books is "The kids sit on carpet squares when Miss Lauren reads to them. In a perfect world, they'd stack the books separately, but apparently they can't tell a book from a carpet. Of course." Instead of taking or searching or rubbing the books, say "You dig through the pile a bit, but it just collapses in on itself. Ugh." Instead of reading the books, say "You glance at the title of one of the visible books: [one of]The Mystery Of The Anchorhead House[or]Primo Varicella's Big Day[or]The Tale of the Tiny Blue Men[or]The Beautiful Goddesses Of Phobos[or]The Adventures Of Mr. Makane[purely at random]."

The tables are scenery in Classroom. They are plural-named. Understand "table" and "desk" and "desks" and "tempera" and "paint" as the tables. The description of the tables is "White, stubby tables that you have to squat down to use. No chairs, either. They'd be a lot nicer looking if they weren't smeared down with orange tempera paint from the pumpkin project." Instead of rubbing the tables, say "It's no use; the tables just become a light apricot."

The window is scenery in Classroom. The description of the window is "It's always open, rain or shine, wind or cold. It's high enough, mind you, that kids can't get through it no matter how hard they try, but weather is always more persistent. Today wasn't so bad - just mildly breezy - but you still feel wind whenever you walk past it." Instead of opening the window, say "Two opens don't make a closed." Instead of closing the window, say "You wish, but there's just no way. You tried every afternoon for a full week until Miss Lauren came back and caught you."

The posters are scenery in Classroom. They are plural-named. The description of the posters is "You look at one poster: [one of]The letter Q with a smiley face in the middle of the circle, which just destroys the structure of the letter[or]Autumn leaves and acorns arranged without any regard to symmetry or aesthetics[or]A dentally suspect goat grinning like something out of Revelations[or]You're guessing this used to be the D'Nealian alphabet but some kid ripped it up and beheaded the b[or]A crisp printout with bullet points and tight margins detailing the ten steps to proper hand washing. That one was yours, of course. Miss Lauren keeps moving it. If she does it one more time you're gonna [italic type]want[roman type]to get fired[or]A bunch of sunflowers count to five, using those loosey-goosey curlicue 2[apostrophe]s that you hate seeing in people's handwriting[purely at random]." Instead of taking the posters, say "You'd love to. It'd be nice to see the walls look crisp again. But yo
 u're forbidden to, and close enough to being fired as it is." Instead of attacking the posters, say "The kids do a fantastic job of that on their own." Instead of rubbing the posters, say "They're tacky as all hell but the brats haven't found a way to make them dirty yet." Understand "poster" as the posters.

The toys are scenery in Classroom. They are plural-named. The description of the toys is "The economic crisis hasn't hit the tacky toy industry, it seems, because these things keep multiplying: flimsy chunks of plastic in neon colors that really should disappear in the fall, like with fashion. In theory they'd disappear into the bin, but these people just do not understand theory." Instead of rubbing or taking the toys, say "You pick up a toy and stack it in the bin, but by the time you get back to the pile there just seem to be more. What fool decided to make toys reproduce?" Understand "plastic" and "toy" as the toys.

The bin is scenery in Classroom. The description of the bin is "The toy bin wasn't always bright red. When you started working you replaced it with a streamlined, sensible white plastic cube. An oasis of good design in this crapstorm. But then it got finger painted, and left out in the rain, and finally taken away altogether for this monstrosity. It isn't even designed well. The curving of the walls is all wrong. It won't let you stack more than a level or two." Instead of taking the bin, say "You're not really in good enough standing with Miss Lauren to try replacing it again." Instead of rubbing the bin, say "Miraculously, the bin itself is pretty clean."

At the time when the balloon appears:
	move the balloon to Classroom;
	the balloon explodes in 15 turns from now;
	say "You look up and then you see it. There's a balloon, floating through the window and stopping right in front of your face - no, not stopping exactly. Stopping would be too tidy. It's hovering. Balloons shouldn't [italic type]do[roman type] that. They should stay put on strings. You're sure this has to be some kind of fire hazard.";

Section 5 - The Balloon

There is a balloon. It can be explained or unexplained. It is unexplained. The description of the balloon is "[if unexplained]When did America decide balloon inflation, of all things, was too hard for them? It's got too much air and is liable to pop any minute. All the better to accentuate the sub-tie-dye coloring catastrophe. Oranges clashing with purples, reds superimposed on top of greens and blues turning them into bright but somehow murky muddle. You thought only Mylar could support this many godawful neons, but apparently you were wrong[otherwise]It's colored like a bad tie-dye, oranges clashing with purples, reds superimposed on top of greens and blues turning them into bright but somehow murky muddle. Beneath the balloon's skin, stretched altogether too much, there's a vague churning dust which you can only assume is that poison gas[end if]." The initial appearance of the balloon is "A balloon hovers around your face, insect-like."

Instead of attacking the balloon:
	say "You pop the balloon[if the balloon is explained], against your better judgement[otherwise][end if]. A burst of dust clouds the air, in every color imaginable, clogging your sight until it's gone. It doesn't take long before you faint.";
	end the game in death;

Instead of taking the balloon for the first time:
	now the voice-of-Roz is speaking;
	Roz appears in one turn from now;
	say "'Don't touch that!' someone almost shrieks. A kid? No, too old. A teacher? Too unfamiliar. You have no idea who this is."

Instead of taking the balloon when the voice-of-Roz is speaking:
	the balloon explodes in three turns from now;
	move the balloon to the player;
	say "Screw the voice. This is your classroom right now. You pick up the balloon, grimacing a bit at the noisy latex. It shifts in your arms worse than any of the kids ever did. [if the balloon is unexplained]Maybe the voice was right, you mutter, watching the balloon's skin go fainter[otherwise]Poison gas, you think, watching the balloon's skin go fainter[end if].";

After dropping the balloon:
	the balloon explodes in ten turns from now;
	say "You release the balloon, carefully. It bobs a bit, the latex puckering, then goes back to hovering."

At the time when the balloon explodes:
	if the balloon is in Classroom or the player carries the balloon:
		if the player is in Classroom:
			say "You notice that the balloon's looking a bit more stretched than usual. [if the balloon is unexplained]You see it puckering, see its sides collapse. You see it explode, a burst of blue dust spewing into the air and around your face, settling on the floor, the tables, clumping up against the walls. It's purple sometimes, then it's green. You'll have to clean it up. But later. Later. You can't think, you mumble, and then it must be a few minutes and you can't see, and then you lose track of time because you can't move a thing and everything is neon[otherwise]You see it pucker, then collapse, then explode, a burst of blue dust spewing into the air and around your face, over the floor, tables, and walls. You remember something about poison gas, then you can't remember. And then you can't think at all, or see, or move[end if].";
			end the game in death;
		otherwise:
			remove the balloon from play;
			rule succeeds;
	otherwise:
		remove the balloon from play;
		rule succeeds;

Instead of inserting the balloon into the window:
	remove the balloon from play;
	say "You carefully take the balloon up to the window and let it loose. In seconds, it no longer darkens (brightens?) your door[if the balloon is explained]. Hopefully this kind of poison gas dissipates OK[otherwise][end if].";

Instead of putting the balloon on the window, try inserting the balloon into the window.

Section 6 - Voice Of Roz

Before doing something to the voice-of-Roz:
	if asking someone about something:
		continue the action;
	otherwise: 
		say "You don't know where the voice is coming from.";
		stop the action;

The voice-of-Roz is a person in Classroom. It can be silent or speaking. It is silent. It is scenery. The printed name of the voice-of-Roz is "the voice". Understand "voice" and "man" and "woman" and "Roz" as the voice-of-Roz.

At the time when Roz appears:
	now the doorway is free;
	say "'Isn't it wonderful? Everything is better with balloons. Now listen to me. Today we're going to have some fun!' You're've never heard anyone talk this loudly, not even to kids. It's unnerving. 'Let's play a game. Let's go play outside! Just walk right on out of there. To the south.'"

Section 7 - Roz Conversation

Instead of asking the voice-of-Roz about "confetti", say "'It's great, isn't it? I love confetti.'"
Instead of asking the voice-of-Roz about "balloon":
	now the balloon is explained;
	say "'It got your attention, didn't it? Oh yeah, I should probably mention that I filled that one with poison gas. Pretty powerful stuff. Sticks around for a long time. I made it colorful too! Won't the classroom be fun?'"
Instead of asking the voice-of-Roz about "himself/herself/voice", say "'Just call me Roz for now.'"
Instead of asking the voice-of-Roz about "me", say "'All I care about is that you get out so things can happen!'"
Instead of asking the voice-of-Roz about "paint/books/leaves/dirt/paper/posters", say "'Forget the mess. It's not going anywhere, is it?' You bite back a speech about how clutter multiplies, and the work ethic, and the decline of Western civilization by garbage."
Instead of asking the voice-of-Roz about "children/child/kids/kid", say "'Oh, don't worry about them. It's the afternoon! They're gone! Now it's our turn!'"
Instead of asking the voice-of-Roz about "teacher/lauren/miss lauren", say "'Oh, how [italic type]conscientious[roman type] of you. Don't you worry, though. She'll be fine.'"

Section 8 - School Entrance

Hallway is a room in Preschool. "Really, this was just a glorified hallway. You used to like places like this. Tiles and cinderblocks. No-nonsense, nothing gaudy. They do just what they promise: take you from room to room without asserting themselves. But something's gone terrible wrong. The whole floor is lousy with confetti, thick as snow and almost painful to look at[one of].[paragraph break]'Looks a lot better now, doesn't it?' shouts the voice. You've never heard such a loud question. 'Now get out. Fast.' You notice the door to the east is ajar[or]. The door is ajar, swinging a bit in the breeze[stopping]."

The hall-decor is scenery in Hallway. It is plural-named. The description of the hall-decor is "The dull, whitewashed tiles and walls almost disappear against the confetti." Understand "tiles" and "cinders" and "cinderblocks" and "blocks" and "tile" and "cinder" and "cinderblock" and "block" as the hall-decor.

The confetti is scenery in Hallway. The description of the confetti is "Every kind you could possibly imagine and then some you couldn't: cut construction paper, punched plastic, tinsel hearts and music notes, squiggles, dots, like an explosion in a crayon factory." Instead of taking or rubbing the confetti, say "There's too much of it." Instead of searching the confetti, say "You sift through the confetti, but find nothing but more of it. What were you hoping for? Gold?"

Progressive 1 ends when the player is in Behind School for the first time. 

Chapter 2 - "Terrorist Wannabe" by Rick Dague

Test ch2 with "e / x hole / w / s / u / x leaves / w / put page in book / get slingshot / e / d / n / n / shoot crow with slingshot / z / z / z / abstract pink balloon to Outside School / shoot balloon with slingshot / get roll / clean mess / open door with key / open door / e"

Instead of attacking, say "You try a little shadow boxing in the direction of [the noun]."

Shooting it with is an action applying to two things. Understand "shoot [something] with [something preferably held]" as shooting it with. Carry out shooting it with: say "You look at [the noun] and [the second noun], puzzled."

Check shooting it with (this is the can't shoot with what's not held rule):
	if the second noun is not carried:
		say "You need to be holding [the second noun] first." instead.

The small marble is a kind of thing. "A kind of projectile." Instead of throwing a small marble at something, say "You can't get much arm speed going."

The Behind School is a room. "The students aren't usually allowed back here. You can go north, south, or east." Behind School is east of Hallway.

Progressive 2 is a scene.  Progressive 2 begins when Progressive 1 ends.

When Progressive 2 begins:
	if the balloon is carried:
		remove the balloon from play;
	now the pink balloon is in Muddy Area;
	the pink balloon moves in 2 turns from now.

The pink balloon is a thing. "A pink balloon floats here." It has description "It floats and flitters about in the breeze." Instead of taking the pink balloon, say "A waft of air blows the pink balloon out of your reach."

The wooden slingshot is a thing. It has description "It must have been seized from a grubby little terrorist wannabe." Instead of inserting a small marble into the wooden slingshot, say "Hmm, I take it you want to shoot something with this device?"

Before shooting something with the wooden slingshot:
	if a small marble is carried, continue the action;
	say "You need some ammo for the weapon, chum." instead.

Instead of shooting something with the wooden slingshot, say "[The noun] doesn't look like a good target."

At the time when the pink balloon moves:
	if the pink balloon is off-stage, continue the action;
	if pink balloon is in location, say "The pink balloon floats away.";
	let x be location;
	now location is the location of pink balloon;
	move pink balloon to a random adjacent;
	while pink balloon is in Hallway or pink balloon is in Dark Entryway:
		move pink balloon to a random adjacent;
	now location is x;
	if pink balloon is in location, say "Floating into the area is a pink balloon.";
	the pink balloon moves in 2 turns from now.

The toilet roll is a thing. It has description "Used to clean things, especially the backside."

Instead of shooting the pink balloon with the wooden slingshot:
	let x be a random small marble carried by the player;
	remove x from play;
	remove the pink balloon from play;
	move toilet roll to location;
	say "You take careful aim at [the noun] and ... THWACK!! A direct hit pops the balloon and something falls out."

The Muddy Area is a room. "You try to keep your shoes as clean as possible here. The only way is back west." It is east of Behind School.

The shallow hole is a fixed in place open container in Muddy Area. "A shallow hole has been dug by some small archaeologist." It has description "There's nothing else in the hole." Instead of inserting anything into the shallow hole, say "What are you trying to accomplish?"

In the shallow hole are two small marbles.

Instead of examining the shallow hole when something is in the shallow hole:
	say "You retrieve [contents of shallow hole] from it.";
	repeat with x running through the things in shallow hole:
		now x is carried.

The Outside School is a room. "You've never been to this area before. A brown door is east, and south is behind the school (technically south is also outside the school, but we have to tell them apart somehow)." It is north of Behind School.

The angry crow is an animal in Outside School. "An angry crow darts around." It can be shot-at. Understand "bird" as the angry crow.

Instead of doing anything to the angry crow, say "The crow obviously has a bad attitude. It caws noisily at you."

Instead of shooting the angry crow with the wooden slingshot:
	if the angry crow is shot-at, say "The animal is moving too fast, and you can't find your target." instead;
	now the angry crow is shot-at;
	the crow poops in 3 turns from now;
	let x be a random small marble carried by the player;
	remove x from play;
	say "You take careful aim at [the noun] and ... MISS!!"

Every turn when the angry crow is shot-at:
	move the angry crow to location;
	say "[one of]It looks ticked-off now, and starts circling the area![or]The crow is still flying around excitedly![or]You can see the crow lining up for a run at you! Watch out![or]The angry crow makes its move![stopping]"

The green mess is a thing. Understand "stinky bomb" or "bomb" as green mess. Instead of smelling the location when the green mess is carried, say "Try taking inventory." Instead of smelling the green mess, say "It's a really stinky bomb the crow dropped ... you have to get rid of this somehow!"

Instead of rubbing the green mess, say "Smearing it around with your hands probably won't help." Instead of dropping the green mess, try rubbing green mess. Instead of rubbing the player when the green mess is carried, try rubbing the green mess.

The bronze key is a thing.

Instead of rubbing the green mess when the toilet roll is carried:
	remove the green mess from play;
	move the bronze key to the player;
	say "You tear some paper off of the toilet roll and the mess cleans right up. Plus you find something in the goo!"

At the time when the crow poops:
	now the angry crow is not shot-at;
	remove the crow from play;
	now the green mess is carried;
	say "The bird dives at your head and dropping a 'bomb' -- DIRECT HIT!!"

Every turn when the green mess is carried:
	say "Something stinks!"

The Under Tree is a room. "It is peaceful under the tree. You can go north to behind the school." It is south of Behind School.

The lush tree is fixed in place in Under Tree. "A lush tree grows, reaching into the sky." Instead of climbing the lush tree, try going up.

The In Tree is a room. "You cling precariously up here among the green leaves, and can get to the roof to the west." It is above Under Tree.

The green leaves are scenery open container in In Tree. "The green leaves grow lushly." Understand "green leaf" or "leaf" as green leaves. Instead of inserting something into the green leaves, say "The green leaves are not a bowl."

The paper page is a thing. It has description "You shudder at the sight of triangles and equations -- MATH!"

Instead of examining the green leaves for the first time:
	say "You find a paper page among the leaves.";
	now the paper page is carried.

The Roof is a room. "A quiet albeit windy retreat." It is west of In Tree.

The metal machine is scenery in Roof. "It is too tall for you to reach its top." Instead of putting something on the metal machine, try examining the metal machine instead.

The math book is a thing in Roof. "A metal machine, taller than you are, is here with a math book wedged underneath it." It can be pages-replaced. It has description "Propping up a machine is as good a use for math as any, in your opinion.[if math book is not pages-replaced] It seems to have a page missing.[end if]". Instead of taking or pulling the math book, say "As you move the book, the metal machine rocks scarily. You instantly desist." Instead of inserting something into the math book, say "I don't think [the noun] is a missing page."

Instead of inserting a paper page into the math book:
	if the math book is pages-replaced:
		say "You already put the pages into it." instead;
	remove noun from play;
	move the wooden slingshot to location;
	say "You wedge all the pages back into the book. The metal machine shifts only slightly, but something falls off the top!"

The Dark Entryway is a room. "The light is dim, and exits are west and east."

The brown door is a locked scenery door. It is east of Outside School and west of Dark Entryway. It has matching key the bronze key.

Chapter 3 -"Job Fair" by Dan Shiovitz

Progressive 3 is a scene.  Progressive 3 begins when Progressive 2 ends.

Test ch3 with "e / stand / open hatch / search pile / take pieces / n / z / z / z / z / put khaki in unshredder / put ecru in unshredder / put cream in unshredder / push button / wait in line "

Section 1 - Going Down

Instead of going east in the Dark Entryway:
  say "You take a few steps before the floor collapses.";
  wait for any key;
  say "It seems like a good idea to scream, so you do so.";
  wait for any key;
  say "But that gets boring after a while, and you start wondering what's going to happen.";
  wait for any key;
  say "Maybe this is no ordinary fall, but some kind of trip through a magical portal into another world!";
  wait for any key;
  say "Hey, this is just like Alice in Wonderland!";
  wait for any key;
  say "You're practicing saying 'Yes, your majesty, I [italic type]would[roman type] care for another cup of tea, thank you kindly,' when your downward motion is suddenly arrested by a large pile of dead leaves.";
  move the player to Somewhere Rustly

Somewhere Rustly is a room. "At least, you assume this is leaves. It's dark enough that you can't really tell anything except it's a big pile and you're in the middle of it."

The big pile of rustly stuff is scenery in Somewhere Rustly. The description of the big pile of rustly stuff is "It's a big pile of .. stuff. That rustles. Good thing you don't have any cattle." Instead of doing anything except taking or examining to the big pile of rustly stuff, say "It's too dark to do anything with the pile, really." Instead of taking the big pile of rustly stuff, say "Since you're currently buried in it, you've got more than enough." Understand "leaf", "leaves", "paper", "papers" as the big pile of rustly stuff.

Instead of exiting or entering or getting off or going in Somewhere Rustly: say "You struggle to your feet, strewing rustly stuff everywhere. Somewhere in the process of doing so you bump against a light switch or something, and things become brighter."; move the player to Shredding Room; Roz falls in one turn from now

Shredding Room is a room. "This room is mostly occupied by a large pile of shredded paper. There aren't any obvious exits, but the north wall is entirely occupied by the backside of a large machine.[if the big pile of shredded paper is boxed][paragraph break]A faint mumbling is coming from the pile of paper.[end if]"

The big pile of shredded paper is scenery in Shredding Room. The big pile of shredded paper can be unexamined or examined. The big pile of shredded paper is unexamined. The big pile of shredded paper can be unlooted or looted. The big pile of shredded paper is unlooted. The big pile of shredded paper can be unboxed or boxed. The big pile of shredded paper is unboxed. The description of the big pile of shredded paper is "[if the big pile of shredded paper is unexamined]On closer inspection, it turns out to be .. resumes? [end if]Lots and lots of shredded bits of resumes, for everything from 'Apprentice Frotwangler' to 'Mixatonic Nihilist Second-Class'. [if the big pile of shredded paper is unlooted]Most of the resumes are reduced to fragments, but there are a few big pieces you could probably salvage.[else]You've taken out all the larger pieces; the only paper left is too small to be good for anything.[end if][if the big pile of shredded paper is boxed] A faint mumbling is coming from the pile of paper.[end if]". After examining the big pile of shredded paper, now the big pile of shredded paper is examined. Understand "piece" and "pieces" as the big pile of shredded paper when the big pile of shredded paper is unlooted.

Instead of listening to the boxed big pile of shredded paper, try searching the big pile of shredded paper.
Instead of listening to the unboxed big pile of shredded paper: say "It sounds rustly."

Instead of searching the unboxed big pile of shredded paper, try taking the big pile of shredded paper.
Instead of searching the boxed big pile of shredded paper:
  say "You'd think this would be like trying to find a, uh, small metal thing in a large pile of other stuff, but in fact it's not that bad, since this particular bit of metal talks. '--Come on come on I'm right over here this is totally obv--' it is saying as you pick it up. 'Finally! It's about time you found me!'";
  say "'Uh, what?' you say.";
  say "'It's me! Roz!' And you finally realize it's the same voice as earlier. 'You popped my balloon! It took me forever to get down here!'";
  move the Roz pyramid to the player;
  now the big pile of shredded paper is unboxed

Instead of taking the unlooted big pile of shredded paper:
  say "You pick up all the larger pieces you can find. There are four.";
  now every resume piece is in the player;
  now the big pile of shredded paper is looted

Instead of taking the looted big pile of shredded paper: say "You've already taken all the good bits."

The shredder is scenery in Shredding Room. The description of the shredder is "The machine takes up the entire north wall. Given the circumstances and the large label it is easy to identify this as an enormous shredder. There is a small hatch near floor level, and a large funnely sort of thing up top." Understand "large", "machine", "backside", "back", "side" as the shredder.

The funnel is scenery in Shredding Room. Understand "funnely" and "thing" as the funnel. The description of the funnel is "It's presumably for spewing paper fragments out of the shredder and into the room."

The hatch is a closed scenery door in Shredding Room. The hatch is north of the Shredding Room and south of the Conference Hall. The description of the hatch is "The hatch is labelled 'MAINTENANCE'. [if the hatch is open]It's open.[else]It's closed.[end if]". After going through the hatch: say "You squeeze your way through the hatch and eventually come out the other side.[line break]"; continue the action

At the time when Roz falls:
  say "You hear a noise from above your head, and look up just in time to see a small metal object falling from the sky. It bounces painfully off your head and disappears into the pile of shredded paper.";
  now the big pile of shredded paper is boxed

The Roz pyramid is a thing. The description of the Roz pyramid is "It's a pyramid-shaped piece of metal which, surprisingly, can talk. For instance, right now it says 'Quit starin[apostrophe] at me and get on with things!'"

Before dropping the Roz pyramid: say "'Hey, don't put me down!' it says. 'I'm important later!'"; continue the action

Before going when the Roz pyramid is in the location:
  say "'If I were a cube I bet you'd be glad to have me around!' the Roz pyramid says.";
  continue the action

Rule for writing a paragraph about the Roz pyramid:
  say "The Roz pyramid is sitting in the middle of the room, grumbling about having been left behind."

Section 2 - Conference Hall

The Conference Hall is a room. "This is a big open area. Hundreds of beings of all heights, colors, eyestalkitude and tentaclosity are wandering around, visiting little booths, and waving bits of paper, but mostly they're standing in line.[paragraph break]The room (and the crowd) stretches out in all directions except south, where the whole wall is taken up by the giant shredder.[if the empty booth is in the conference hall] Nearby you notice a small, unstaffed booth.[end if]"

The oshredder is scenery in the Conference Hall. Understand "shredder" and "tube" and "tubes" as the oshredder. The printed name of the oshredder is "shredder". The description of the oshredder is "On this side, the shredder has a number of tubes leading into it, and, of course, the maintenance hatch near the bottom."

The crowd of beings is scenery in the Conference Hall. The description of the crowd of beings is "Some have fur, some have claws, some have tails, some have ears, some have green skin, some have blue skin. But judging by the papers they're holding, what they all have is a determination to get a job." 
Instead of asking the crowd of beings about something, say "'No, you can't cut in line!' says one, impatiently. 'But I just wanted to --' you say. 'Ssh!' It swivels its eyestalk away pointedly and resumes talking to its companion about how many years of experience it has with snamfoozling and how many glumps per minute it is certified at.". Instead of telling the crowd of beings about something, try asking the crowd of beings about it.

Table of Conference Messages
text
"'What does he mean, overqualified?' says a furred lizard-thing, angrily, to its scaled bear-thing companion. 'I have a mere sixteen years of experience!'"
"'No, no, that won't do at all,' says an interviewer at one of the booths to a gelatinous blob. 'I'm afraid chuffling certification is an absolute requirement for any job here.' The blob jiggles unhappily and oozes away. The interviewer shrugs and shoves the blob's resume into a nearby tube, where it's immediately sucked out of sight." 
"A mime uses its tentacles to give an impromptu demonstration of being trapped in an invisible rocket ship and walking against a tractor beam. Its interviewer is unimpressed, however, and consigns the mime's resume to a shredder tube."
"'Only four years?' a green chimpanzee says to a blue chimpanzee. 'They'll never take anyone with that little.'"
"Two aliens get into an argument over who was next in line. The debate is resolved when the smaller one unhinges its jaw surprisingly far and eats the other."
"An armadillo-like alien has a conversation with a vendor in a nearby booth about their new line of metallic post-it notes."

The confcounter is a number that varies. The confcounter is 0. curconfcounter is a number that varies. curconfcounter is 1.

Every turn when the player is in the Conference Hall:
  if the confcounter is less than 1 begin;
    increase the confcounter by 1;
  otherwise;
    if curconfcounter is greater than the number of rows in the Table of Conference Messages begin;
       sort the Table of Conference Messages in random order;
       now curconfcounter is 1;
    end if;
    now the confcounter is 0;
    if curconfcounter is 2 and the empty booth is not in the Conference Hall begin;
      say "A nearby vendor suddenly leaps out of her booth. 'I hate this job!' she shouts. 'I'm finding a new one!' She disappears into the crowd, leaving the empty booth abandoned behind her. You look over at it, curiously.";
      move the empty booth to the Conference Hall;
      move the unshredder to the Conference Hall;
    otherwise;
      choose row curconfcounter in the Table of Conference Messages;
      say "[text entry][line break]";
      increase curconfcounter by 1;
    end if;
  end if

The empty booth is scenery. The description of the empty booth is "This display booth is empty, at least of people. A colorful sign on the booth says 'THE AMAZING UNSHRED-O-MATIC' and sitting on the booth is what you presume to be the unshred-o-matic in question."

The unshredder is scenery and a container. The printed name of the unshredder is "unshred-o-matic". Understand "unshred-o-matic", "unshred", "o", "matic", "unshredomatic", and "bin" as the unshredder. The description of the unshredder is "It seems to be composed mainly of a bin, some unblades, and a button. [if something is in the unshredder]In the unshredder you see [list of things in the unshredder].[end if]"

The unblades are part of the unshredder. The description of the unblades is "They seem quite anti-sharp. Careful you don't stitch your fingers!". Instead of rubbing the unblades, try examining the unblades.

The usbutton is part of the unshredder. Understand "button" as the usbutton. The printed name of the usbutton is "unshredder button". The description of the usbutton is "It's a big, friendly red button, labelled 'OG'." 

Instead of pushing the usbutton: 
  say "You push the unshredder button. ";
  if the number of things in the unshredder is zero begin;
    say "Nothing happens besides an angry buzz, probably because the unshredder has nothing in it to unshred.";
  otherwise; if something in the unshredder is not a resume piece begin;
    say "Nothing happens besides an angry buzz, probably because the unshredder has something in it that it doesn't know how to unshred.";
  otherwise;
    say "The unshredder hums in a pleased fashion, then sucks in all the scraps in its bin. There is a brief rrihw, and then a tan resume comes out the top of the unshredder. You pick it up[if all the resume pieces are in the unshredder].[otherwise] and discard the remaining resume pieces.[end if]";
    assemble the resume;
    move the tan resume to the player;
    repeat with p running through the resume pieces begin; remove p from play; end repeat;
  end if; end if

Section 3 - Your Resume

A resume piece is a kind of thing. Understand "pieces" as the plural of resume piece.

A cream-colored resume piece is a resume piece. Understand "cream" as a cream-colored resume piece. The description of a cream-colored resume piece is "This fragment of a resume is printed on cream-colored paper. Glancing over it, you make out a few phrases that seem relevant: '0 (approximate)', 'Scent glands: removed (references available on request)', 'Languages known: none.'"

A beige-colored resume piece is a resume piece. Understand "beige" as a beige-colored resume piece. The description of a beige-colored resume piece is "This fragment of a resume is printed on beige-colored paper. Glancing over it, you make out a few phrases that seem relevant: 'It is my fondest hope that as a Jark Inverter I will ..', 'Education: Yalneeple College of Higher Kurfting, 'D4', 'With my fifteen years of experience ..'"

An ecru-colored resume piece is a resume piece. Understand "ecru" as an ecru-colored resume piece. The description of a ecru-colored resume piece is "This fragment of a resume is printed on ecru-colored paper. Glancing over it, you make out a few phrases that seem relevant: 'Years of experience: 1', 'Ever since I was a mere pod, my ambition to be a Waffgasketeer has been ..', 'Hobbies: Trandozian bass, flapjacks'"

A khaki-colored resume piece is a resume piece. Understand "khaki" as a khaki-colored resume piece. The description of a khaki-colored resume piece is "This fragment of a resume is printed on khaki-colored paper. Glancing over it, you make out a few phrases that seem relevant: 'Certifications: Pommelation (Basic and Advanced), Chuffling, Black-Belt Lean Six Sigma', 'Blood type: O'"

A tan resume is a thing. The tan resume has a number called the experience. The tan resume can be certified or uncertified. The tan resume can be jark or unjark. The tan resume can be gasketeer or ungasketeer. Instead of reading the tan resume, try examining the tan resume.

resume count is a number that varies.
Instead of examining the tan resume:
  say "The resume lists a number of hobbies and qualifications you don't really understand, but you do manage to make out ";
  now the resume count is 0;
  if the experience of the tan resume is greater than 0 begin;
    say "a claim of [if the experience of the tan resume is 1]1 year[otherwise][the experience of the tan resume] years[end if] of experience";
    increase the resume count by 1;
  end if;
  if the tan resume is jark or the tan resume is gasketeer begin;
    if the resume count is 1 begin;
      if the tan resume is certified begin;
        say ", ";
      otherwise;
        say " and ";
      end if;
    end if;
    say "a request for a position as a ";
    if the tan resume is jark begin;
      say "Jark Inverter";
      if the tan resume is gasketeer, say " and a Waffgasketeer";
    otherwise;
      say "Waffgasketeer";
    end if;
    increase the resume count by 1;
  end if;
  if the tan resume is certified begin;
    if the resume count is greater than 0 begin;
      if the resume count is greater than 1, say ",";
      say " and ";
    end if;
    say "multiple certifications";
    increase the resume count by 1;
  end if;
  if the resume count is 0 begin;
    say "some comforting information about your glands";
  end if;
  say ".";

To assemble the resume:
  now the experience of the tan resume is 0;
  now the tan resume is uncertified;
  now the tan resume is unjark;
  now the tan resume is ungasketeer;
  if the beige-colored resume piece is in the unshredder begin;
    increase the experience of the tan resume by 15;
  end if;
  if the ecru-colored resume piece is in the unshredder begin;
    if the cream-colored resume piece is in the unshredder and the beige-colored resume piece is not in the unshredder begin;
      increase the experience of the tan resume by 10;
    otherwise;
      increase the experience of the tan resume by 1;
    end if;
  end if;
  if the beige-colored resume is in the unshredder, now the tan resume is jark;
  if the ecru-colored resume is in the unshredder, now the tan resume is gasketeer;
  if the khaki-colored resume is in the unshredder, now the tan resume is certified

Section 4 - The Interview

Understand "wait in [something]" and "stand in [something]" as entering.

The interview line is scenery in the Conference Hall. Understand "lines" as the interview line. The description of the interview line is "The line of interviewees snakes (literally, for some of them) through the conference hall. You suppose you could wait in it if you really wanted to. It must be better than substitute teaching."

Instead of entering the interview line:
  say "You get into the line, and wait. And wait, and wait. Eventually you reach the front, where you are scrutinized by a sort of mutant crab-zebra thing. ";
  if the tan resume is not carried by the player begin;
    say "'WHERE'S YOUR RESUME?' it roars. 'GET OUT OF HERE!' To the accompaniment of menacing pincer snaps and glares from the other interviewees, you slink out of the line.";
  otherwise;
    say "'GIVE ME THAT RESUME!' it roars, snatching it from you. Then it produces a pair of surprisingly small spectacles and settles them on its eyestalks as it reads over your resume. 'Good .. good .. nice genetic structure .. excellent center of mass ..' ";
    if the experience of the tan resume is less than 5 begin;
      fail the resume with "YOU'RE TOO INEXPERIENCED!";
    otherwise;
      if the experience of the tan resume is greater than 15 begin;
        fail the resume with "YOU'RE OVERQUALIFIED!";
      otherwise;
        if the tan resume is jark and the tan resume is gasketeer begin;
          fail the resume with "MAKE UP YOUR MIND, WHICH POSITION DO YOU WANT?";
        otherwise;
          if the tan resume is unjark and the tan resume is ungasketeer begin;
            fail the resume with "THIS DOESN'T EVEN SAY WHICH POSITION YOU WANT!";
          otherwise;
            if the tan resume is uncertified begin;
              fail the resume with "YOU DON'T HAVE THE CERTIFICATION FOR THIS JOB";
            otherwise;
              get the job;
            end if;
          end if;
        end if;
      end if;
    end if;
  end if;

To fail the resume with (str - text):
  say "Suddenly it stops and looks up at you. '";
  say str;
  say "'. With one enormous claw, it shoves your resume into a nearby tube which, you fear, leads directly to the shredder. 'GET OUT OF HERE!' To the accompaniment of menacing pincer snaps and glares from the other interviewees, you slink out of the line.";
  remove the tan resume from play;
  now the big pile of shredded paper is unlooted;

To get the job:
  say "Suddenly it stops and looks up at you. 'YOU'LL DO.' Before you can react, it has grabbed you and shoved you through the door behind it. 'HR WILL BE IN TOUCH' is the last thing you hear as the door closes again.";
  remove the tan resume from play;
  move the player to Metal Box Room

Metal Box Room is a room. "Metal Box Room."

The metalboxcounter is a number that varies. The metalboxcounter is 0.

Every turn when the player is enclosed by Metal Box Room:
  if the metalboxcounter is less than ten begin;
    if Roz is not enclosed by Metal Box Room begin;
      if the metalboxcounter is one begin;
        say "Yep, that's a metal box, alrighty.";
      end if;
      if the metalboxcounter is two begin;
        say "I guess, you know, exits would be too much to ask for.";
      end if;
      if the metalboxcounter is three begin;
        say "Yeah, pretty much seems like this is where you're going to spend the rest of your life until you -- hey, what's that? Something just appeared in the room!";
        now Roz is in Metal Box Room;
      end if;
    otherwise;
      if the metalboxcounter is less than three, now the metalboxcounter is three;
      if the metalboxcounter is three begin;
        say "'Thank goodness I'm here!,' Roz says.";
      end if;
      if the metalboxcounter is four begin;
        say "'Yessir, if it weren't for me, you wouldn't have any way of getting out,' Roz says.";
      end if;
      if the metalboxcounter is five begin;
        say "'If you want help getting out of here, just ask,' Roz says.";
      end if;
      if the metalboxcounter is six begin;
        say "'Ask me, that is,' Roz says. 'If you weren't sure.'";
      end if;
      if the metalboxcounter is seven begin;
        say "'And if you wanted to know, say, what subject to ask me about,' Roz says. 'I'd suggest, oh, Roz.'";
      end if;
      if the metalboxcounter is eight begin;
        say "'Ok, well, I don't want to be pushy,' says Roz. 'Nothing worse than a pushy talking pyramid.'";
      end if;
      if the metalboxcounter is nine begin;
        say "'Yep, gonna shut up now. Not gonna say a thing more unless you ask.'";
      end if;
    end if;
    increment the metalboxcounter by one;
  end if

Before teleporting to in Metal Box Room:
  now the metalboxcounter is 100;
  continue the action
     
Chapter 4 - "Telepyramids" by Carl Muckenhoupt

Progressive 4 is a scene.  Progressive 4 begins when Progressive 3 ends.
[Not sure what to do with about this scene. The stuff I implemented isn't really sequential with Progressive 3.]

Progressive 2 ends when the player is in The Dark Entryway for the first time.

Progressive 3 ends when the player is in Metal Box Room for the first time.

Before going east in the Dark Entryway:
  If the Shredding Room is visited, try going down instead;
  Now the Shredding Room is mapped below the Dark Entryway.
Before going down from the Dark Entryway:
  say "[one of]Well, the floor to the east is basically an open pit now, but you know the fall is survivable. So after a brief hesitation, you fling yourself in.[or]Knowing there's a cushy landing, you leap down into the pit.[or]You leap into the pit.[stopping]"

When Progressive 3 begins:
  remove the voice-of-roz from play;
  if the Roz pyramid is enclosed by the player, say "The Roz pyramid says, 'Yes! New job! Hooray! Now you don't have to go back to that school where they make you do terrible things like wipe up beautiful fingerpaint any more. Time to move ahead!'"

Test ch4 with "ask roz about roz / ask roz about sally / ask roz about teleportation / sally / open hatch / read diary / g / g / g / g "

Section 1 - General pyramid stuff

A telepyramid is a kind of thing.  A telepyramid can be known or unknown. A telepyramid is usually unknown.
Understand "telepyramid" and "pyramid" and "teleportation" and "unit" and "small" and "metal" as a telepyramid.

Rule for printing the name of a telepyramid (called p):
  if p is known, say "[the printed name of p]";
  otherwise say "small metal pyramid".

[For convenience in making pyramids known during text output]
To say makeknown (p - a telepyramid):
  now p is known.

Teleporting to is an action applying to one thing.
Check teleporting to:  
  if the Roz pyramid is not enclosed by the player and the player cannot see the Roz pyramid then say "You have no means of teleporting." instead.
A procedural rule: if teleporting to, ignore the basic accessibility rule.

Carry out teleporting to:
  if the Roz pyramid is not enclosed by the player begin;
    say "'Not until you pick me up. I don't want to be left behind.'";
  otherwise if the location of the noun is nothing;
    say "'Hm, I can't seem to contact that unit.'";
  otherwise;
    say "The Roz pyramid brightly says [one of]'Gotcha, boss!'[or]'Roger that!'[or]'Aye-aye!'[or]'Teleport activating now!'[at random]You have a moment of vertigo, ";
    if the location of the player is the location of the noun begin;
       say " but nothing else seems to happen.";
    otherwise;
      say "and suddenly you're elsewhere.";
      move the player to the location of the noun;
    end if;
  end if.

Understand "[any known telepyramid]" as teleporting to.

[Finding this is optional.]
The Brenda pyramid is a telepyramid in the toys.  Brenda has description "It has the word '[makeknown Brenda]BRENDA' embossed on it."
Instead of searching the toys when a telepyramid (called p) is in the toys:
  say "You notice a small metal pyramid that doesn't look like a toy.";
  move p to the Classroom.

[A couple of pyramids mentioned in this chapter whose locations are not yet established.]
The Tarquin pyramid is a telepyramid.
The Jojo pyramid is a telepyramid.

Section 2 - Inside the Machine

Guts of the Machine is a room. "This is a cramped hollow inside some kind of mechanism.  Cogwheels poke your ribs as the smell of machine oil assaults your nostrils. A rusty hatch [if the rusty hatch is open]leads out into the fresh air.[otherwise]is latched shut."

The cogwheels are scenery in Guts of the Machine. Some planks are scenery in Guts of the Machine.  Planks are a supporter.

The rusty hatch is a closed door. It is scenery.  The rusty hatch is outside from Guts of the Machine and inside from The Roof.  It is openable.  Instead of opening the rusty hatch in The Roof, say "It won't open from this side."

Instead of smelling in Guts of the Machine, say "It smells nasty in here.  The sooner you get back out into the fresh air, the happier you'll be."

The small cot is a portable supporter in Guts of the Machine.  The initial appearance of the cot is "And yet, someone must be spending a lot of time in here, because there's a small cot resting on a couple of planks."

The Sally pyramid is a telepyramid on the cot. 

The sallycounter is a number that varies. The sallycounter is 0.

Every turn when the Sally pyramid is not enclosed by Guts of the Machine:
  if the sallycounter is greater than 3 begin;
    if the player can see the Sally pyramid begin;
      say "Bamf! The Sally pyramid disappears!";
    end if;
    if the cot is enclosed by Guts of the Machine begin;
      now the Sally pyramid is on the cot;
    otherwise;
      now the Sally pyramid is in Guts of the machine;
    end if;
    if the player can see the Sally pyramid begin;
      say "Bamf! The Sally pyramid reappears!";
    end if;
    now the sallycounter is 0;
  otherwise;
    increase the sallycounter by 1;
  end if;


The dream diary is on the cot. "It's a cheap spiral-bound notebook with the words 'DREAM DIARY' written on the cover in ballpoint."

Before reading the diary:
  If the player is not carrying the diary, try taking the diary.

Instead of reading the dream diary, say "[one of]'I've been having really weird dreams since I started sleeping in the machine on top of the old abandoned school, so I thought I should try to write them down and figure out what they mean. I'll start with the dream I had las night: I was in some kind of lab or military complex or something in a dystopian future, and they were doing something with corn. The corn was very sinister, very menacing. I think it represented death. In the end I escaped the whole thing in a rocketship, which is a blatant phallic symbol. So I guess that's about sex as a bid for immortality or something? I dunno, my subconscious has weird ideas sometimes.'[or]'Day 2. Last night's dream was one of those shifting ones than never really settles on a theme. At first I was a spy or something, and I was trying to escape from enemies in a hotel which was also a lab which was also a sultan's palace, or something like that. And I escaped them by rail through some kind of fantasy kingdom accompanied by a weasel. I'm having trouble finding symbols here. I guess the sense of running away from things was strong, but only in the beginning.'[or]'Day 3. I was back in my old house, the one from before I moved to the machine, but it was empty, and the world was ruled by insectoid aliens, but I just accepted that as good, because they had mind-control powers or something. I escaped by riding a missile (another blatant phallic symbol), and wound up on the moon, in another of those strange laboratories which seem to be the most common feature of my dreams these days. Maybe this is has something to do with those four days I can't remember? I was guided some of the time by a disembodied voice, which is traditionally supposed to be a manifestation of the divine or something. I hope I don't start hearing it in real life.'[or]'Day 4. I was in the desert, which shifted between being a post-apocalyptic wasteland and the outskirts of Las Vegas and I think Egypt at one point. I was looking for a treasure, which turned out to be a goddess, and a blatantly erotic one too. Putting her at the end of a search in the desert is probably a sorry commentary on my sex life. The only other thing I remember was a disgusting dog who kept showing up and hindered me at every turn. I think he represented my father.'[or]'Day 5. I don't remember a lot about this dream, but I have a feeling it was more coherent than the others. I was back in the old school, cleaning up after the children, and there was a disembodied voice that wanted me to stop working there. But then the voice turned out to be coming from a small metal pyramid, just like the one I use as a pillow. There were lots of pyramids like that, and they had names like [makeknown Sally]Sally and [makeknown Jojo]Jojo. That's all I remember.'[or]The rest of the pages are blank.[cycling]"

Section 3 - All About Roz

[Can't have more than one Roz at once!]
When Progressive 2 begins, remove the voice-of-roz from play.

[Necessary nonsense to produce a portable conversationalist]
The Roz pyramid is a neuter person.
A procedural rule: if the noun is the Roz pyramid, ignore the can't take other people rule.

Understand "control/unit" as the Roz pyramid.

Table of Roz Replies
topic	reply
"itself/herself/pyramid/roz/control" or "control unit" or "roz pyramid"	"'I'm Roz! I'm a control unit! I can talk to [makeknown Sally]Sally and Leon and all the other units and they have to do what I say.'"
"unit/units"	"'There's a bunch of different kinds. There's teleportation units and supply units and there's control units like me!'"
"sally" or "sally pyramid"	"[if the Sally pyramid is known]'Sally's a teleportation unit. If you want to go visit her, just say her name and I'll tell her to bring us in.'[otherwise]You don't know about any Sally."
"teleportation/teleporting/teleport" or "teleportation unit"	"'There's [makeknown Sally]Sally and there's [makeknown Tarquin]Tarquin and there are some other ones but I forget their names. But I can get any of them to pull us in if you give me a name.'"
"leon/supply" or "leon pyramid" or "supply unit"	"'Leon's a supply unit. He helps me all the time by giving me things for playing games with, like confetti and poison gas and marbles and explosives and balloons and razor blades.'"
"confetti"	"'Confetti is so pretty. I like all the colors mixed together.'"
"poison/gas/balloon/balloons" or "poison gas"	"[if the balloon is explained]'I hope you didn't mind that. I wanted us to have fun together.'[otherwise]'I don't think you noticed what was in that balloon back in the classroom.'"
"marble/marbles"	"'You're a wicked shot with those things! I'll have to tell Leon to get us some more.'"
"explosive/explosives/bomb"	"'I wouldn't want to give the game away.'"
"razor/blade/blades" or "razor blade/blades"	"'Those things are so useful!'"
"paint/fingerpaint"	"'You're so lucky to have fingers you can paint with.'"
"play/playing/game/games/fun" or "play/playing games" or "having fun"	"'I like to play! It's not what I was designed for, but I have a lot of free time. My favorite game is the one where you find someone who's unhappy and you threaten their life in a way that forces them to choose between changing what they're unhappy about or dying, and you see which they choose. It's great because either way their unhappiness is over.'"
"unshredder"	"'I wonder what would happen if we put confetti into it?'"
"school/classroom/job/resume"	"[if Progressive 3 has ended]'Aren't you so much happier now that you're out of that crummy old job cleaning that school and into an exciting new career working in a metal box for freaky aliens?'[otherwise]'Why don't you apply for a new job? I know you hate the one you've got. Go for it! This is so exciting!'"
"machine"	"'I don't know what it's for either.'"
"brenda" or "brenda pyramid"	"[if the Brenda pyramid is known]'I left Brenda playing with toys. If you want to go visit her, just say the word.'[otherwise]You don't know about any Brenda."

Instead of telling the Roz pyramid about something, try asking the Roz pyramid about it.
Instead of asking the Roz pyramid about something:
  repeat through the Table of Roz Replies begin;
    if the topic understood includes the topic entry begin;
      say "[reply entry][paragraph break]";
      rule succeeds;
    end if;
  end repeat;
  say "[one of]'That's boring.'[or]'I don't want to talk about that.'[or]'Sorry, what? I was thinking about what I'm going to do for my next game.'[or]'Stop talking and do something interesting!'[at random]".  

[Unfortunately, commands of the form ROZ, SALLY are interpreted as "answer", and I don't have time right now to come up with a good solution to this.]
Instead of answering the Roz pyramid that something, say "(If you're trying to give Roz the name a pyramid, just type the name at the command prompt.)"

Chapter 5 "Jojo gets a cookie" by Taleslinger

Section 1 Basics

test ch5 with " jojo / take paper / s / hiss / take egg / e / invert jark / take jark / w / w /  take rock / gonear oshredder / put rock in shredder / s / take flour / gonear oven / open oven / put jark in bowl / put egg in bowl / put flour in bowl / take bowl / put bowl in oven / press button / open oven / take cookie / give cookie to robot "

Progressive 4 ends when the player is in the hut for the first time.

Progressive 5 is a scene.
Progressive 5 begins when progressive 4 ends.

[Workaround I used in The Day I shot to keep the NPC silent.]

Asking someone about something is speech. Telling someone about something is speech. Answering someone that something is speech. Asking someone for something is speech. 

Hissing is an action applying to nothing.

Understand "hiss" as hissing.

Report hissing: say "You hiss."

Inverting is an action applying to one thing.

Understand "invert [something]" as inverting.

Report inverting: say "You can only do that to Jarks!"


Table of roz replies (continued)
topic	reply
"Jojo"	"'Jojo, she left us. Wanted a solitary life, on one of those empty backwater planets. Guess you could visit her, if you need a vacation.[If the player has been in the hut] I think I should've mentioned her oath of silence. Sorry.[end if]'"
"Tarquin"	"'Good old Tarquin.He's the smart one. Well, not as smart as me. Anyway,  he tried to investigate the machine, but I can't reach him anymore.'"
"cookie"	"'As I said, Jojo went a little flaky in exile.'"
"Cukrovinca/Cukrovinca flour"	"'Oh, it's made from rocks. Not healthy for humans, I've heard. But neither is poison gas, eh?'"
"hr"	"Famous Jark inverter. Helped some dude escape somewhere."
"Jark"	"Curious things, aren't they?"


Section 2 The Hut and its interior

The Hut is a room.
The description of the Hut is "This hut, wherever it may be, is made of thick glass, distorting the outside to something like a watercolor painting. A foam rubber mattress and a wardrobe seem to be the only bits of furniture. The doorway outside is south. 

In the middle of the hut sits an old-fashioned oven. It is connected by loose wires, through a hole in the ceiling, to some sort of dish on top of the hut."

The wardrobe is scenery in the hut.
The description is "It's a blue, wooden wardrobe. It looks too small to store all of the stuff one may need, but maybe it's bigger on the inside."

Instead of opening the wardrobe, say
"It's locked."

The mattress is scenery in the Hut. The mattress is a supporter. The description is "It's a comfy looking mattress.'"

Report entering the mattress:
say "You lie down on the mattress. Roz says, 'So, since when do you feel yourself drawn to talking pyramids?'"

An oven is in the Hut. It is an openable container. It is scenery. It is closed. It is opaque. 

The wires are scenery in the hut. The description is "These loose wires, judging by their color, seem to stem from all kind of sources, varying in thickness and level of insulation."

The dish is scenery in the hut. The description is "The hut, judging from the random sparks, draws enegry from the air somehow."

The description of the oven is "It is old, spotted with rust, but surprisingly clean. It has a single button. In it you see [a list of things in the oven]."

Before inserting something into the oven:
If the noun is the bowl and the bowl encloses the dough begin;
continue the action;
otherwise;
 say "You don't feel like toying around with the oven.";stop the action;
end if.

The button is part of the oven. The description is "It's big and."


Check pushing the button:
If the oven is open  begin;
say "The oven door suddenly swings shut.";
now the oven is closed;
continue the action;
end if.

Report pushing the button:
If the bowl is in the oven begin;
say "The oven starts to hum. Hidden speakers play a nice little melody, and 20 uneventful minutes later, there's a *bing*.";
remove the dough from play;
now the cookie is in the bowl;
stop the action;
otherwise if nothing is in the oven;
say "'I'm sorry' - why do all computer voices have to be female - 'It looks like you forgot to insert something into the oven.'";stop the action;
end if.

A bowl is in the hut. The description is "A small bowl, perhaps for mixing dough in it?"
The bowl is a container.

Section 2 Jojo

The Jojo pyramid is part of the robot.
The robot is a neuter person in the hut.

Understand "her" and "jojo" and "pyramid" as robot.

The initial appearance of the robot is "In a corner sits a robot. It looks like an old TV-set with metal tentacles attached. Inside, through a glass window, you can see one of the pyramids.[If the scrap is part of the robot][line break]It holds a scrap of green, continous paper in one of the tentacles."

Instead of speech when the noun is the robot:
say "The robot seems to ignore you purposefully."


The scrap is part of the robot.
Understand "paper" as scrap.


The description of the scrap is "[If the scrap is part of the robot]You can't make it out as long as it's in the robots claw.[otherwise]I WANT COOKIE - CAN GIVE YOU SOMETHING- RECIPE - CUKROVINCA FLOUR - AN EGG - A JARK-[line break]'Wow' says Roz, 'she off the hook.'"

Instead of taking the scrap when the scrap is part of the robot:
say "You carefully remove the paper from the claw. The robot doesn't seem to mind.";
now the scrap is carried by the player.


Report going south from the Hut for the first time:
say "You step outside and find yourself under a clear, disturbingly puple sky, where yellow lightning flashes silently in dark, grey clouds. The air is humid and humming with life. Almost invisible, transparent insects swirl round your head, and in the distance, some unseen birds chirp and flutter.The hut and it's surroundings seem to be inside some sort of transparent energy dome."

Section 3 The Lizard Pen 

South of the Hut is The Pen.
The description of the pen is "Short, green grass extends to the foot of the protective dome. In the middle of this meadow sits a pen. Mountains  border on the dome to the east, and there seems to be a small pond to the west."

The lizard is a female animal in the pen. The initial appearance is "A stout, plump lizard sits in the middle of pen, eyeing you warily."

Every turn when in the pen:
If a random chance of 1 in 3 succeeds begin;
choose a random row in the Table of lizard responses;
say "[response entry]";
end if.

Table of Lizard responses
response
"The lizard looks at you longingly and starts to hiss."
"The lizard backs away suddenly, as if scared by your movements, and starts to hiss."
"The lizard snaps at its own tail."
"The lizard blinks."

Instead of hissing in the pen for the first time:
say "You hiss. The lizard suddenly gives you bedroom eyes and lays an egg.";
now the egg is in the Pen.

Instead of hissing in the pen:
say "You hiss - but alas! -it's already routine, and the lizard is unimpressed."

The egg is a thing. The description is "It's a tasty looking lizard egg."

Instead of eating the egg:
say "Not only are raw eggs unhealthy, you also need it for the recipe."

Section 4 The Mountains

West of the Pen is the Rocky Area.
The description of the Rocky Area is "Some rocks have fallen from the Mountains outside the dome, building one of those rocky landscapes where climbing children hopefully fall and break their little necks. Stupid brats."

The rockslide is scenery. The description of the rockslide is "The rocks are big and white and powdery."

Understand "rocks" and "rock" as rockslide.

Instead of taking the rockslide:
say "Those are to big and heavy to carry around."

The rock is in Rocky Area.
The initial appearance is "A smaller rock lies a few feet apart from the others."

The description of the rock is "It's a rock the size of a fist, powdery, but hard."

Instead of inserting the rock into the oshredder:
 say "You squeeze the rock into one of the tubes, ignoring the looks from the surrounding beings. The shredder makes some horrible gnashing noises, but  you think you heair a faint sputtering from the Shredder room.";
remove the rock from play;
now the cukrovinca flour is in the shredding room.

Instead of eating the Cukrovinca flour, say "Bah. Not your taste."

Cukrovinca flour is a thing. The initial appearance is "A neat heap of Cukrovinca flour is on top of the other heap."

Report taking the Cukrovinca flour:
say "You easily scoop it into your hand."

The description of the Cukrovinca flour is "It doesn't look that different from normal flour."

Section  5 The Jark

East of the Pen is The Lair of the Jark.
The description of the lair of the jark is "You are near a pond of yellowish water."

HR is in the Lair of the Jark. The initial appearance is "Dead at your feet lies some sort of black creature." 

Understand "creature" and "monster" and "guy" as hr.

The description of hr is "The creature is small, shorter than you, and pitch black. It has an oblong head, no ears, tiny black eyes, and sharp, black teeth clearly visible behind a lipless mouth. It has a name tag saying hr. Ah, the guy they told you about at the job center. He's clearly dead, though, and therefore somewhat unhelpful."

The realJark is in Lair of the Jark.
The printed name of the realjark is "Jark".
Understand "Jark" as realJark.

The initial appearance of the realJark is
"And there it sits, in the middle of the pond - the Jark."

The description of the realJark is "A jark is a jark is a jark.[if inverted] It's quite harmless now."

Instead of smelling the realjark, say "A, that jarkish odour."

Instead of touching or taking the uninverted realjark: say "You touch the Jark, and die a  jarkingly, horrible death, additionally discgracing your whole field of work."; end the game in death.

A realJark is a thing. 
The realJark can be inverted and uninverted. The realjark is uninverted.

Instead of inverting the uninverted realJark: say "You skillfully invert the Jark, rendering it harmless."; now the realjark is inverted.

Instead of inverting the inverted realJark: say "You skillfully uninvert the Jark, rendering it deadly. Erm, you know, that means to you as well.";
end the game in death.

Section  6 Cooking

An ingredient is a kind of thing.
The realjark is an ingredient.
The egg is an ingredient.
The Cukrovinca flour is an ingredient.

Before inserting something into the bowl:
If the noun is not an ingredient begin;
say "You only want stuff from the recipe in there."; 
otherwise;
continue the action;
say "You put [the noun] into the bowl.";
end if.

After inserting something into the bowl when the number of ingredients in the bowl is three:
say "You insert the last ingredient and shake the bowl a bit. Wow, thanks to the astonishing qualities of the jark, you now have some delicious dough.";
remove the realjark from play;
remove the egg from play;
remove the Cukrovinca flour from play;
now dough is in the bowl

Dough is a thing. The indefinite article of the dough is "some"

The description of the dough is "It's some dough, greenish in color."

Instead of taking the dough, say "No. You'll get your fingers sticky."

Instead of eating the dough, say "No. You're not into raw dough."

The cookie is a thing. The description is "Hm, it looks delicious beyond words. So there you go then."

Instead of eating the cookie:
say "You nibble a bit on it - it tastes horrible! Appearances really can be deceiving."

Instead of giving the cookie to the robot:
say "One of the tentacles graps the cookie eagerly. Something inside the machines starts to rattle and click, and then an unseen opening spits out more green continous paper. It reads [line break]THANKS - NOW CAN FEED LIZARD - DUCK.[line break]As you try to bring the image of the lizard together with a duck, the wardrobe behind you squeaks and something hits you quit hard in the back of the head.[line break]
'Tarquin!' shouts Roz in your hand.";
remove the cookie from play;
now the Tarquin pyramid is in the location.

Chapter 6 by Mark J Musante

test ch6 with "get tarquin/n/ne/sit in chair/sw/w"

Include Locksmith by Emily Short.

Progressive 5 ends when the Tarquin pyramid is held for the first time.
Progressive 6 is a scene.
Progressive 6 begins when Progressive 5 ends.

When Progressive 6 begins:
	say "Suddenly a swirl of energy engulfs you, and an HR-tinged voice beckons your very being.";
	remove the tarquin pyramid from play;
	move the player to Entrance.

Entrance is a room. It has description "Bare white painted walls make up three sides of this room.  The fourth, which happens to be the northern wall, is taken up by a large pair of glass doors."

The bare white wall is scenery in Entrance.

The large pair of glass doors is a door.  It is north of Entrance and south of HR Central.

The large pair of glass doors has description "Although they're glass, they're frosted over so you can't see through them.  There is a giant letter H on the left door, and a giant letter R on the right."

HR Central has description "This is the nerve center of the Human Resources operation.  The room's vastness is matched only by the amount of noise being generated.  People are walking everywhere and you're constantly ducking and weaving to avoid being bumped into.  You think you can see a disused cubicle off to the northeast."

Instead of going nowhere when the player is in HR Central:
	say "As you try to make your way through the maze of cubicles, you finally do bump into someone.[paragraph break]'Oi, mind where you're going!'[paragraph break]You are unceremoniously dragged out of HR.";
	move the player to Entrance.
	
Cubicle is northeast of HR Central.  It has description "This cubicle has seen better days, but at least it's out of the way of all the madness outside.  A desk and a couple of chairs are here."

An office chair is a vehicle in cubicle.  It has description "Just an ordinary office chair, with a worn cushion and five wheels splayed out from a central column."  The central column is part of the office chair.  The wheels are part of the office chair.

Instead of pushing the office chair, say "Wouldn't it be more fun to ride on it?"

Instead of pushing the office chair to a direction, say "Wouldn't it be more fun to ride on it?"

Understand "ride [something]" as entering.  Understand "ride on [something]" as entering.

A desk is a supporter in cubicle.  It is scenery.  It has description "A large green metal desk.  [if the number of things enclosed by the desk is 0]There's nothing on it[otherwise]On it, you see [contents of the desk][end if]."

Understand "green" and "metal" as the desk.

Instead of going nowhere when the player is in the office chair and the office chair is in HR Central:
	say "You push off into the throng of passers-by, and skilfully guide your new hot-rod through the vast HR cubicle maze.  Or, y'know, maybe the workers here are just avoiding the maniac on the chair.  Eventually you make a wrong turn and the wheels catch on the threshold of an office doorway.  The chair tips over and you're dumped onto the floor.[paragraph break]As you slowly get up, you hear the door swing shut behind you.";
	remove the office chair from play;
	now the player is in HR Office.
	
HR Office is a room.  It has description "Unlike the cubicles outside, this office has a real door and a real window.  The noise of the HR worker bees outside is almost completely shut out. [if HR Office is not visited]You look around in wonder, and see[otherwise]Nothing really stands out - just the usual office stuff, like[end if] a desk, a chair, some paintings on the wall, and a fake potted plant."

The fancy chair is scenery in HR Office. The fancy desk is scenery in HR Office.  The fake potted plant is scenery in HR Office.  The paintings are scenery in HR Office.

Mr Hokensox is a man in HR Office.  "[if HR Office is not visited]Before you can react, a question is shot at you like an arrow that's, um, question-mark shaped.[paragraph break]'Who the hell are you?' asks the questioner in a booming voice.[paragraph break]You spin around to see a large and imposing man turn towards you, a sweaty hand clicking the door carefully shut. You stammer out an introduction and the man relaxes (just a little).[paragraph break]'Ah,' he says.  'I am Mr Hokensox.  Your resume was sent along by one of our lobster-horses.'[paragraph break]'Oh, I thought it was a crab-zebra,' you venture.[paragraph break]'Ah, no, although they do like to get stripe tattoos, don't they?  Have a seat and we'll get your forms sorted and set up your orientation schedule.'[otherwise]Mr Hokensox is here, attempting to assess you.[end if]".
Mr Hockensox has description "A large and imposing man, he's glaring at you despite your best efforts to become invisible."

Progressive 6 ends when the player is in the HR Office for the first time.

Chapter 7 "Orienting the Drones" by Tom Blawgus

test ch7 with "sit on chair / se / sw / n"

Progressive 7 is a scene.  Progressive 7 begins when Progressive 6 ends.

A form is a kind of thing.  
Form XY11 is a form.  It has the description "It's a blank sheet of paper with XY11 at the top scribbled in crayon."
Form UT18 is a form.  It has the description "It's a blank sheet of paper with UT18 at the top scribbled in magic marker."
Form TB06 is a form. It has the description "It's a blank sheet of paper with TB06 at the top scribbled in finger paint."

Instead of going anywhere when the player is in HR Office: say "Mr Hockensox says, 'We are not done here yet.  We still need to get through your forms."

A small wooden chair is a enterable supporter in HR Office.  It has description "The chair is wooden and looks very uncomfortable to sit on."

Instead of taking the small wooden chair: say "Mr Hockensox clears his throat in such a way that implies it would not be a good idea to touch the chair, except to sit in it."

After entering the small wooden chair for the first time:
	say "You sit uncomfortably down in the wooden chair and look up at Mr. Hokensox.[paragraph break]  He peers more at the papers in his hand and says, 'I see that you used to be a teacher.  You should fit in quite well here.  We have numerous people who act like kids.  Ha ha.'[paragraph break]You smile weakly, thinking that you have landed somwhere very much like where you left.[paragraph break]'Hmm... Okay, please have these forms filled out by your orientation, which starts in one hour.'[paragraph break] Mr. Hockensox hands you forms XY11, UT18 and TB06.";
	move Form XY11 to the player;
	move Form UT18 to the player;
	move Form TB06 to the player;
	say "'Now,' says Mr Hokensox, 'let me show you to your new workplace.'[paragraph break]Mr Hokensox puffs around the desk and unlocks the door.  He leads you out into the main office again, and then through a maze of cubicles.  You try to concentrate on the path you take, but soon you're hopelessly lost.  He stops abruptly in front of a cubicle that looks like every other one.  'Here you are, cubicle number 78-33183.  I'll leave you to get settled in and fill out those forms.  If you have any questions, don't hesitate to ask.'[paragraph break]Before you can draw in a breath, Mr Hokensox turns and leaves with such a speed that defies his size, leaving you alone clutching your forms.";
	move the player to Cubicle 78-33183.

Cubicle 78-33183 is a room.  It has the description "Four grey walls.  At least the school had some more color than this.  They haven't even had time to put a desk in here yet, nor a chair.  The corridor leads out to the southeast."

Nondescript Corridor is a room.  It is southeast of Cubicle 78-33183.  It has the description "There is nothing but cubicles as far as you can see to the north and southwest.  Your cubicle lies to the northwest."

Instead of going southwest in Nondescript Corridor: say "You wander down the maze of cubicle before getting yourself completely turned around.  Somehow you manage to wind up back outside your cubicle."

Break Room is a room. It has the description "At least this room has a bit more color than your cubicle, but that's only due to the food stains on the walls.  The way back to your cubicle lies to the northwest."

After going to the Break Room for the first time:
	say "As you take in the filth and splendor that is the break room, you hear from behind you, 'Oh hi!  You must be the new person!'[paragraph break]You spin around to see someone (something?) walking toward you.  It's hard to tell behind the pile of papers this person is carrying.[paragraph break]'I'm Ferd.  I've been assigned as your orientation guide!' ";
	now Ferd is following.

Break Room is north of Nondescript Corridor.
Nondescript Corridor is northwest of Break Room.

After going north from Nondescript Corridor: say "You head north through the maze and find yourself at a wall, which you follow.  A little farther down the wall, you find an opening, which you duck into.";  Continue the action.

After going northwest from Break Room: say "Taking a deep breath, you walk back out into the maze.  Surprisingly, you find yourself back outside your cubicle."; Continue the action.


Ferd is a man in the Break Room.  He has the description "Almost as wide as he is tall, Ferd looks at you with a very wide grin that seems to take up most of his face.  It's hard to see the rest of him because of the pile of paper he's carrying."  Ferd can be following or unfollowing.  Ferd is unfollowing.

Progressive 7 ends when the player is in the Break Room for the first time.

Chapter 8 "A Suitably Apocalyptic Ending" by Dan Shiovitz

[test ch7 with "sit on chair / se / sw / n"]

Progressive 8 is a scene.  Progressive 8 begins when Progressive 7 ends.

The ferdcounter is a number that varies. The ferdcounter is 0.

The George pyramid is a telepyramid.  George has description "It has the word '[makeknown George]GEORGE' embossed on it."
Carry out teleporting to the George pyramid:
    say "The Roz pyramid says 'Here goes nothin[apostrophe]!' You have a moment of vertigo.";
    wait for any key;
    say "An enormous metal pyramid suddenly appears in mid-air and falls on Ferd, squashing him flat. There is a muffled explosion but it barely takes out any walls and, at least in some sense, ";
    end the game in victory;

Every turn when Ferd is following:
	if the location of Ferd is not the location of the player begin;
		move Ferd to the location of the player;
		if ferdcounter is less than three begin;
			say "Ferd puffs after you. [no line break]";
		otherwise;
			if ferdcounter is less than eight begin;
				say "Ferd waddles after you. 'Wait! Come back!' he says. [no line break]";
			otherwise;
				say "Ferd staggers after you, somehow managing to keep up. [no line break]";
			end if;
		end if;
		if the current action is teleporting to, say "It's not clear how he manages it, but he does. [no line break]";
	end if;
	if the ferdcounter is three begin;
		say "Ferd suddenly belches in an uncomfortable-looking way, then taps his chest (or so you assume, behind the pile of papers). 'Guess my ticker's acting up again,' he says.";
	otherwise;
		if the ferdcounter is six begin;
			say "'I hope it doesn't explode again,' Ferd says. 'Destroyed most of the planet I was on. They had to clean up for years!'";
			if Roz is enclosed by the location of Ferd begin;
				say "'Oh no!' Roz says. 'This is a job for George!'";
				now the George pyramid is known;
			end if;
		otherwise;
			if the ferdcounter is nine begin;
				say "'Under the circumstances, it's unfortunate I have to keep following you,' says Ferd. 'But rules are rules.'";
				if Roz is enclosed by the location of Ferd begin;
					say "'Shouldn't I contact George?' Roz asks.";
					now the George pyramid is known;
				end if;
			otherwise;
				if the ferdcounter is twelve begin;
					say "'Oops, I guess I--' Ferd starts to say, and then explodes. Weird.";
					end the game in death;
				otherwise;
					say "[line break]";
				end if;
			end if;
		end if;
	end if;
	increase the ferdcounter by 1;
