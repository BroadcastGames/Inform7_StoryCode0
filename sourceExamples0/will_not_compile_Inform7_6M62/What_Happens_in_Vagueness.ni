"What Happens In Vagueness" by The IFW4 Team
[Using I7 build 5T18]

The story headline is "An Interactive Collaboration"

Use memory economy.

After printing the banner text, say "Type 'about' for more information."

Part 0 - Shared definitions

Use American dialect, the serial comma, and full-length room descriptions.

Use sequential action.  Include Locksmith by Emily Short.

Rule for deciding whether all includes people: it does not. 
Rule for deciding whether all includes scenery: it does not.

Colour is a kind of value.  The colours are red, orange, yellow, green, blue, indigo, and violet.

A gear is a kind of thing.  A gear has a colour.  A gear is usually violet.  Before printing the name of a gear: say "[colour] ".  Before printing the plural name of a gear: say "[colour] ".

The scene-manager is a thing.  It has a number called authnum.  The authnum of the scene-manager is 1.

When Whisper 2 begins:  Now the authnum of the scene-manager is 2.

When Whisper 3 begins:  Now the authnum of the scene-manager is 3.

When Whisper 4 begins:  Now the authnum of the scene-manager is 4.

When Whisper 5 begins:  Now the authnum of the scene-manager is 5.

When Whisper 6 begins:  Now the authnum of the scene-manager is 6.

When Whisper 7 begins:  Now the authnum of the scene-manager is 7.

When Whisper 8 begins:  Now the authnum of the scene-manager is 8.

When Whisper 9 begins:  Now the authnum of the scene-manager is 9.

When Whisper 10 begins:  Now the authnum of the scene-manager is 10.

Finding out about the game is an action out of world.  Understand "about" or "help" as finding out about the game.  Carry out finding out about the game:
	say "'IF Whispers 4' is the fourth IF Whispers game, written consecutively by ten people who only got to see the part before theirs. It follows in the glorious footsteps of 'The Corn Identity', 'An Escape to Remember' and 'House of Dream of Moon', but shares nothing but the format and a few authors with those games. Tom Blawgus was the moderator of this Whispers incarnation, and wrote the first section. To see who wrote any given section, type 'author' while playing that section. For a full list of credits, type 'credits'."

Discovering the culprits is an action out of world. Understand "credits" as discovering the culprits.
Carry out discovering the culprits:
	say "The IF Whispers 4 Team is, in alphabetical order: Sam Kabo Ashwell, Tom Blawgus, N.B. Horvath, Justin Larue, Jacqueline A Lott, Michael Martin, Carl Muckenhoupt, Marius Mueller, Mark Musante, and Brian Rapp. Tom Blawgus moderated the project. Dan Uznanski provided additional beta-testing. Graham Nelson developed the Inform 7 system used to generate the system. Emily Short wrote several extensions used in the model world."

Seeing the author is an action out of world. Understand "author" as seeing the author. Carry out seeing the author: 
	if there is an author corresponding to a num of the authnum of the scene-manager in the Table of Whispers begin;
		choose row with a num of the authnum of the scene-manager in the Table of Whispers;
		say "Scene [num entry], '[title entry]', was written by [author entry].";
	otherwise;
		say "Hmm, there seems to be no author set at this point. Well, maybe this part was written by monkeys.";
	end if.

Table of Whispers
Num	Author			Title
1	"Tom Blawgus"		"Breakdown"
2	"Sam Kabo Ashwell"	"Fiftymile Breakdown in E Flat Minor" 
3	"Justin Larue"		"Full of Sound and Fury and Signifying Nothing"
4	"Marius Mueller"		"Ghosts"
5	"Carl Muckenhoupt"	"Invisiclues"
6	"Michael Martin"		"The One-Armed Time Bandit"
7	"N.B. Horvath"		"TBA"
8	"Jacqueline A Lott"		"Heaven is Heart-Shaped Bed"
9	"Brian Rapp"		"Hell Hath No Fury"
10	"Mark J Musante"		"Endgame"



Chapter 0 - Useful playtesting verbs - Not for release

Skipping ahead is an action applying to nothing.  Understand "skip ahead" as skipping ahead.  The last carry out skipping ahead rule: say "Since we should always be in a scene, there's no reason to see this text, unless someone forgot to define an override for their scene."

Unrandomizing is an action out of world. Understand "unrandomize" as unrandomizing. Carry out unrandomizing: say "Bing, the world is now deterministic. Or as deterministic as it gets, anyway."; seed the random-number generator with 31337.


Test wh0 with "test wh1 / test wh2 / test wh3 / test wh4 / test wh5 / test wh6 / test wh7 / test wh8/  test wh9 / test wh10"


Part 1 - Breakdown by Tom Blawgus

Whisper 1 is a scene.

Chapter 0 - Useful playtesting verbs - Not for release

Carry out skipping ahead during Whisper 1:
say "Skipping Scene 1";
move the player to Front of Farmhouse;
Rule succeeds.

Test wh1 with e/e/n;

Chapter 1 - everything else

Whisper 1 begins when play begins.
Whisper 1 ends when the player is in Front of Farmhouse for the first time.

When Whisper 1 begins:
	say "Just your luck. You were on your way to your Aunt Mabel's 100th birthday party when your car finally gave up the ghost. Not like it hasn't been trying to do that for weeks, but on a student budget a newer car was out of reach. Nothing to do but walk to the nearest town and see about other transportation."

A road is a kind of room.  Definition: a room is offroad if it is not a road.
Instead of going up in the road, say "Unless you grow wings, there is no way that you can go that way."
Instead of going down in the road, say "Unfortunately, you left your jackhammer in your other car."
Instead of going nowhere from the road, say "Although the idea of traipsing over the endless waste may seem appealing, it won't get you to Aunt Mabel's faster."

the car_keys are carried by the player.  The car_keys unlocks the car.  The car_keys unlocks the trunk.  The description of the car_keys is "Your car keys, for all the good it does you since that hunk of junk will probably never start again."  The printed name of the car_keys is "car keys".  Understand "car keys" as the car_keys.  Understand "keys" as the car_keys.  The indefinite article of the car_keys is "your".

By Your Car is a road.  "You're standing on a stretch of road by your car. On the sides of the road is nothing but flat, dry ground and nothing to see at all to the horizon. The sign you passed a few miles back said it was about 10 miles to the nearest town, the name of which you've already forgotten. Seeing as it's even farther back to the previous town, the only way to go is forward to the east."
Instead of going west in By Your Car, say "There's no reason to go that way. The nearest town is to the east."
Instead of going east when the car is open, say "It might be a good idea to close the car first."
Instead of going east when the trunk is open, say "It might be a good idea to close the trunk first."

After going to Paved Highway:
	say "You silently trudge down the road toward the town, wherever it may be.";
	continue the action.

the player is in By Your Car.

The car is a vehicle in By Your Car.  It is lockable.  It is closed.  The description of the car is "This piece of junk has seen you through three years of school. You just needed it to last a little longer. Too bad it didn't. Other than that, it's got the usual things you'd find on a car... steering wheel, those little pedals that's supposed to make it go 'zoom,' oh, and there's also a trunk in back."  The indefinite article of the car is "your". Instead of going by the car, say "Your car is done for. It's not going to go anywhere."  Instead of switching on the car, say "Your car is done for. It's not going to go anywhere."

Rule for printing the name of the car while not inserting or removing: say "car"; omit contents in listing.

The steering wheel is part of the car.  The description of the steering wheel is "That's what you would use to steer the car, if it actually worked."

The pedals are part of the car.  The description of the pedals is "Gas pedal, brake pedal... very useful in a car that works."

The trunk is a closed lockable locked container.  It is part of the car.  The description of the trunk is "Yep. It's a trunk, and it's at the back of the car. You can't remember if you put anything useful in there before you left your house or not."  Understand "boot" as the trunk.  Before locking the trunk with the car_keys, try closing the trunk instead. Before locking keylessly the trunk, try closing the trunk instead. Before opening the trunk, try unlocking keylessly the the trunk instead.
After unlocking the trunk with the car_keys: 
	say "You insert your key in the trunk and it pops open.";
	now the trunk is open.

Instead of unlocking the trunk with the car_keys when the player is in the car, say "You can't reach the trunk from inside the car."
Instead of locking the trunk with the car_keys when the player is in the car, say "You can't reach the trunk from inside the car."
Instead of opening the trunk when the player is in the car, say "You can't reach the trunk from inside the car."
Instead of closing the trunk when the player is in the car, say "You can't reach the trunk from inside the car."

After closing the trunk:
	say "You slam down the trunk and it clicks shut.";
	now the trunk is locked.

Paved Highway is east of By Your Car.  Paved highway is a road.  "This lonely stretch of road seems to continue east toward the horizon. The sides of the road haven't changed much either. It's still flat, dry ground. You can see your car in the distance to the west."
Before going west from Paved Highway, say "You trudge back toward your car."
Before going east from Paved Highway, say "You continue to trudge down the road, you car falling away from sight behind you."

Junction is east of Paved Highway.  Junction is a road.  "As the highway continues to the east, you can see a rutted dirt path heading off to the north toward what looks like a small farmhouse."
Instead of going east from Junction:
	if the Root Cellar is visited:
		continue the action;
	otherwise:
		 say "You start to continue down the road, but you stop to wonder if maybe there's [if the Trading Post Main Room is visited]something you can use elsewhere in the trading post[else]a phone you can use at the farmhouse[end if]. You turn around and head back to the junction.";

Before going north from Junction, say "You head toward the small farmhouse."
Before going west from Junction, say "You silently head back in the direction of your car."

Part 2 - Fiftymile Breakdown in E Flat Minor by Sam Kabo Ashwell

Whisper 2 is a scene.  Whisper 2 begins when Whisper 1 ends. Whisper 2 ends when the player is in Root Cellar for the first time.

Chapter 2-Skip - Not for release

Carry out skipping ahead during Whisper 2:
say "Skipping Scene 2";
now the player is carrying the glow-jar;
now the player is carrying the panga;
now the player is wearing the stetson;
now the trunk is unlocked;
now the player is carrying the guitar;
move the player to Root Cellar;
now the Root Cellar is visited;
Rule succeeds.

Chapter 2-Main - continuing on

Front of Farmhouse is a room.  It is north of Junction.  "A wide porch of wood slats, with the obligatory animal skulls nailed up against the wall. South leads back to the road; north takes you inside."

Trading Post Main Room is a room. It is north of Front of Farmhouse. It is inside from Front of Farmhouse. The description of Trading Post Main Room is "Light spills through dust-caked windows and cracks in the log walls. It doesn't show up much. Some shelves, an old counter that may once have held a till, an uneven plank floor; must have been looted a dozen times over. Over in one corner there's a trapdoor."

After going north from Front of Farmhouse for the first time:
try looking;
 say "No phone, of course. Not that you were expecting one, at this point."

the dusty windows are scenery in Trading Post Main Room. The description of the dusty windows is "Tiny panes, so thick with dust that you can't make out if they're glass or grease-paper."

the shelves are scenery in Trading Post Main Room. The shelves are a supporter. The description of shelves is "There were probably more shelves at some point, but all that's left is a few age-distorted planks nailed onto the walls."

the counter is scenery in Trading Post Main Room. The description of the counter is "A horrible fibreboard whatever-mart faked-up thing. It's amazing how many of these things survive a century or so later, given how profoundly shitty and disposable they are."

a Twinkie is an edible thing on the shelves. The description of Twinkie is "One of the foulest creations of the Former Age, but they contain calories of some kind and they never rot. You don't blame the looters for leaving it, though."

Instead of eating the Twinkie, say "Gods above and beasts below, you're not [italic type]that[roman type] hungry. Nor ever likely to be."


a strip of bison jerky is an edible thing on the shelves. The description of bison jerky is "It's like beef jerky, but tougher."
Instead of eating the bison jerky, say "Nah, you don't gots no dental coverage."

a Son of Toil bar is an edible thing on the shelves. The description of the Son of Toil bar is "Son of Toil bars contain protein and suchlike for the man with work on his mind. You never had so much work on your mind that you could stand the taste. The packaging is attractively decorated with an image of some Bible feller in a generic act of honest labour."
Instead of eating the Son of Toil bar, say "You feel a strong personal disinclination against such a venture. Say what you will. Maybe it's on account of your weak non-toiling constitution or some such."

the trapdoor is down from Trading Post Main Room and up from Root Cellar. The trapdoor is a door. The trapdoor is scenery. The description of the trapdoor is "A crude wooden trapdoor." The trapdoor is open.

Instead of going down from Trading Post Main Room:
    if the player carries the glow-jar begin;
    say "Holding the glow-jar before you, panga at the ready, you cautiously descend into the cellar.";
    continue the action;
    otherwise;
    say "Abandoned house out in the badlands, cellar dug out under it... you start counting the number of objectionable things that might be denned up down there, and run out of fingers. If you're going down, you need some light at the very least.";
    end if.

The car is transparent.

The animal skulls are scenery in Front of Farmhouse. Understand "skull" as skulls. The description of animal skulls is "Mostly prairie dogs and cattle, but there's a few that you'd rather not think about too closely."

the porch slats are scenery in Front of Farmhouse. The description of porch slats is "They look to be old railroad sleepers, cut lengthwise into workable lengths. Nothing worth a second glance." Understand "railroad sleepers" or "sleepers" as porch slats.

The printed name of Front of Farmhouse is "Trading Post Porch".

The rocking chair is fixed in place in Front of Farmhouse. "Just outside the shadowed doorway, a parched corpse slumps in a rocking-chair[if the long gun is unbroken], a long gun across his knees[end if]." The description of rocking chair is "It's a crooked old thing, the cheap white paint scoured by sandstorms."

The dessicated corpse is scenery on the rocking chair. The description of dessicated corpse is "Tall guy. Thin, but that's most likely just how you get when you dry out. Old clothes; someone already took his hat and been through his pockets. Buzzards been at him, so you can't tell much else. Had a red beard. [if the long gun is unbroken]Gun still lying across his lap.[end if]"

corpse's beard is part of the dessicated corpse. The description of corpse's beard is "A deep red, and kind of straggly. Guess dead guys don't comb too often."

pockets are part of the dessicated corpse. Instead of doing something to the pockets, say "This is scavenger territory. In the time he took to dry out, he must of been robbed a half-dozen times, by people who know their corpse-robbing. You're strictly amateur. Leave the poor bastard be." The printed name of pockets are "corpse's pockets".

A long gun is part of the dessicated corpse. The description of the long gun is "Long enough barrel, but it's just a home-made matchlock. Badly made, too - the lock's blown wide open. Likely that's what got him. Certainly didn't help him any."
The long gun can be broken or unbroken. The long gun is unbroken.

Instead of taking long gun:
    say "With a sharp tug, you pull the gun from the corpse's stiff hands. As you do, the blasted lock falls apart entirely, leaving you with just the long musket-barrel.";
    remove the long gun from play;
    now the long gun is broken;
    now the player carries the musket barrel.
   
the musket barrel is a thing. Understand "gunbarrel" or "tube" as musket barrel. Understand "long" as musket barrel. The description of musket barrel is "A musket barrel about five and a half feet long. More suited to a drainpipe than a gun, but you're in no place to judge."

Instead of entering the rocking chair, say "You never sat on no dead guy's lap afore and you ain't starting now."

The road sign is fixed in place in By Your Car. The description of road sign is "At some juncture of the distant past it may, you surmise, have displayed information of some kind; the original content has been effaced, but it still tells you something; to wit, folks here have ammo to waste and don't mind shooting at trash."

A geesoofus is part of the trunk. The description of geesoofus is "The Blind Eye is affixed in its proper place on the bumper, warding off bad luck. It's a stylised eye with no iris or pupil, the evil eye blinded." Understand "eye" or "blind" or "stylised" as geesoofus.

After examining the trunk, say "Naturally, a protective geesoofus is prominently displayed. You wouldn't cross the badlands without one."

The distant billboard is fixed in place in Paved Highway. "A ways down the road you can make out a solitary billboard." The description of the distant billboard is "[bold type]FIFTYMILE[roman type][line break]Critter Museum & General Store[line break]* Water - Tobbaco - Erotica - Local Crafts *[paragraph break]The paint's faded and worn away in patches, and you can see no evidence of life; but that needn't mean anything, out here."

An alligator stetson is worn by the player. Alligator stetson is a container. The description of alligator stetson is "You never seen an alligator, but it's certain they make a fine hat." Understand "hat" as stetson.

A guitar is a container in the car. The description of guitar is "Your faithful rosewood six-string." The indefinite article of the guitar is "your".

The description of the player is "You're tall and thirsty. Too old to be drifting loose, too young to have done anything much to deserve confirmation - your tattoos show that much."

tattoos are part of the player. The indefinite article of tattoos is "your". The description of tattoos is "Your right arm, left hand and the left side of your face are partially covered with blocky, rounded glyphs precisely specifying your age, blood type, status (social, economic, marital) and affiliations (birth-clan, adopted clan, moiety, college). None of which are going to impress anybody, except for the adopted-clan part, perhaps; Aunt Mabel's reputation extends across the known world. But even so, the conspicuous hollow circles on the backs of both hands mark you as unconfirmed."
Understand "glyphs" or "tattoo" or "glyph" as tattoos.

After examining the car:
    if something is in the car begin;
    say "Thrown across the back seat you can see [the list of things in the car].";
    end if;

In the trunk is a glow-jar. The description of the glow-jar is "Some of the crazier hill-tribes sell this glowy liquid stuff. It's nasty stuff - you wouldn't want to get it on your skin - but you figure that if it's sealed in a Ball jar you should be just fine. Anyhow, it gives off a decent light that never goes out, which is why you paid fifty smokes for it." The glow-jar is lit. Understand "liquid" or "jar" or "Ball jar" or "glowy" as glow-jar.

In the trunk is an offering. The description of an offering is "One thousand packs of filterless Camels, your birthday gift to Aunt Mabel. Hopefully it'll be a sufficient offering for her to confirm you, but that's no sure thing." Understand "cigarettes" as the offering. Understand "cigarette" as the offering. Understand "smokes" as the offering. Understand "pack" or "packs" as the offering.
Instead of taking the offering, say "Not much you can do with these until you have some form of transport; you sure as hell ain't smoking them."

A panga is carried by the player. The description of panga is "Two feet of heavy, sharp iron with a single blade. Machete, some call it. It's not much, but you're stuck with it." The indefinite article of panga is "your".
Dropping the panga is taboo. Throwing the panga at something is taboo. Putting the panga on something is taboo. Inserting the panga into something is taboo. Giving the panga to something is taboo.

Instead of taboo, say "That would violate so many taboos you feel nauseous just thinking about it."

After examining the panga for the first time, say "When you was born, your folks were in a bad way; they'd just gotten run out of the Dakotas, were getting just whatever work they could find till a House turned up that was accepting indentured, and didn't have the money to get anything better. So you got bound to this overgrown sheath-knife.[paragraph break]It's a good tool and all, and your folks did all they could to get it, but - any road, you're bound to it now, so make the best of it."

Curb is a person in By Your Car. Curb is male. "Curb detracts from the scenic value of the vicinity." The description of Curb is "Now this here is a pedigree Chattanooga brindled mooch-hound. This noble breed, of which Curb forms paradigm and pinnacle, is eight kinds of crazy, twelve kinds of stupid and every kind of mean." Understand "pedigree" or "Chattanooga" or "brindled" or "mooch-hound" or "mooch hound" or "hound" or "dog" as Curb.

After examining Curb for the first time, say "You didn't exactly plan for a hound. A friend's bitch whelped, you were trying to act cute around a girl, and you were not at that time familiar with the quirks of the breed. The puppy got a home, you got a lifelong companion, the girl got eight stitches and the hell out of Dodge."

Instead of taking Curb, say "He's too heavy to carry about, and you'd get fleas."

Vitality is a kind of value. The vitalities are living and dead. Curb has a vitality. The vitality of Curb is living.

Slobbericity is a kind of value. The slobbericities are dry and slobbery. A thing has a slobbericity. The slobbericity of a thing is usually dry.

After examining a slobbery thing, say "It's covered in dog slobber and chew marks."
After taking a slobbery thing:
	say "You steel your courage. Dog slobber is no picnic.";
	continue the action.
After printing the name of a slobbery thing while taking inventory, say " (disgusting)".

A thing can be convenient or inconvenient. A thing is usually convenient. [Inconvenient things represent intangible things that Curb can not sensibly mess with.]

Every turn while Curb is living (this is the canine fidget rule):
    if Curb is in the location of the player begin;
        let X be a random number from 1 to 3;
        if X is 1 begin;
            choose a random row from the Table of Canine Insanity;
            say "[neurosis entry][line break]";
        end if;
        if X is 2 begin;
        if Curb carries something (called the wossname) begin;
        if the wossname is the car_keys begin;
        say "Curb attempts to swallow your car keys, chokes, and brings them back up. He doesn't drop them, though.";
        otherwise;
            let Y be a random number from 1 to 5;
            if Y is 1, say "Curb chews contentedly on [the wossname]";
            if Y is 2 begin;
            say "Curb has apparently grown bored with [the wossname]. If you want it, you'll have to brave a great deal of slobber.";
            move the wossname to the location of Curb;
            end if;
        end if;
        otherwise;       
        let wotsit be a random convenient thing which can be touched by Curb;
            if wotsit is the player begin;
                say "Curb tangles himself up in your feet.";
            rule succeeds;
            end if;
            if wotsit is Curb begin;
                say "Curb gnaws hungrily on his own forepaw.";
            rule succeeds;
            end if;
            if wotsit is a person begin;
            choose a random row from the Table of Canine Hostility;
            say "[psychosis entry][the wotsit][secondary entry][line break]";
            rule succeeds;
            end if;
            if wotsit is carried by the player or wotsit is worn by the player begin;
            say "Curb peers curiously at [the wotsit][if the wotsit is edible] and makes a famished whine[end if].";
            rule succeeds;
            otherwise;
                if wotsit is fixed in place or wotsit is scenery or wotsit is part of something begin;
                let Z be a random number from 1 to 3;
                if Z is 1 begin;
                    say "Curb sniffs at [the wotsit] like the horrible little pervert he is.";
                end if;
                if Z is 2 begin;
                    say "Curb tries to gnaw on [the wotsit]. You shoo him off before he does too much damage.";
                end if;
                if Z is 3 begin;
                    say "Curb stares at [the wotsit] with paranoid fascination.";
                end if;
                otherwise;
                if wotsit is the car_keys begin;
                say "Curb makes for the car keys again. You utter a blood-curdling profanity and he shrinks away in horror.";
                otherwise;
                say "Curb snatches up [the wotsit] in his mouth and gnaws noisily at it.";
                    if wotsit is edible begin;
                    say " Before you can do anything, he's wolfed it down.";
                    remove wotsit from play;
                    otherwise;
                    now wotsit is carried by Curb;
                    now wotsit is slobbery;
                    end if;
                end if;
                end if;
            end if;
            end if;
        end if;
    otherwise;
        if a random chance of 9 in 10 succeeds begin;
            move Curb to the location of the player;
            say "Curb scampers after you.";
        otherwise;
            say "Curb scampers after you. Whether you like it or not.";
        end if;
    end if;

Table of Canine Insanity
Neurosis
"Curb starts at nothing, and half falls over in a desperate attempt to escape it."
"Curb savagely gnaws at his genitals with slurpy snarls of contentment."
"Curb scratches his ear."
"Curb chases his tail, squealing frustration."
"Curb vomits from excitement, his ribcage convulsing. He laps up the result hurriedly, before you steal his prize."
"Curb attempts to howl, but it devolves into a whimper."
"Curb scratches at the ground with his forepaws."
"Curb skitters about."
"Curb tries to gnaw at your heels, but you kick him away."
"Eyes rolling nervously, Curb hunches over and humps thin air."
"Curb snaps at flies."
"Curb fixes you with a look of abject guilt and keens softly."
"Curb writhes about on his back, kicking his hind legs."
"Curb snaps viciously at you, then backs away with his tail between his legs."

Table of Canine Hostility
Psychosis	Secondary
"Curb thrusts his nose violently into "	"'s crotch. You have to give him three good kicks before he quits it."
"Curb barks furously at "	"."
"Curb regards "	" with a look of distrust and fear, and slinks around behind your legs."
"Curb nips at "	"'s hand, then scampers away."
"Curb makes for "	"'s leg with amorous intent, but you spot him coming and utter a dire threat that makes him crouch in apology."
"Curb whines pitifully, on the edge of panic. You suspect "	" is playing havoc with his nerves."

A thing is either precious or cheap. A thing is usually cheap. The alligator stetson is precious. The guitar is precious. The car keys are precious.

Before giving something precious to Curb:
     say "Like hell! That good-for-nothing hound destroys everything you own, but you've got to keep some things sacred."; stop the action.

A procedural rule: if giving something to Curb, ignore the block giving rule.

Instead of giving something (called the flooby) to Curb:
    if Curb carries something (called the chewtoy) begin;
        if the flooby is edible begin;
        say "You wave [the flooby] at Curb. His ears prick up, and he abandons [the chewtoy] immediately, almost taking your fingers off as he snatches the delicious treat away from you.";
        remove the flooby from play;
        move the chewtoy to the location of Curb;
        otherwise;
        say "Curb watches [the flooby] with a sceptical eye, considers its merits relative to [the chewtoy], decides that you're trying to manipulate him and scampers to a safe distance.";
        end if;
    otherwise;
        if the flooby is edible begin;
        say "Curb springs at your fingers with bestial greed, wolfs down [the flooby] in a single reptilian gulp, and pants eagerly for more.";
        remove the flooby from play;
        otherwise;   
        say "Curb looks nervously around as if he's expecting a cruel trick, but accepts [the flooby] anyway.";
        now Curb carries the flooby;
        end if;
    end if;
   
Report giving something to Curb: do nothing.

Instead of unlocking the trunk with the car_keys for the first time:
    say "Twenty hours on the road are starting to take its toll on your motor skills: on the first try, you fumble the keys and drop them onto the blacktop. ";
    if Curb is living begin;
        say "With a yelp of joy, Curb snaps them up and dodges out of reach. Well, fuck.";
        if Curb is carrying something (called the distraction) begin;
        move the distraction to the location of Curb;
        end if;
        now the car_keys are carried by Curb;
        now the car_keys are slobbery;
    otherwise;
    say "Sighing, you pick them back up and pop the trunk open again.";
    continue the action;
    end if.
   
Check an actor taking (this is the mad dog rule):
    if the noun is carried by Curb begin;
    say "That dog has a laudable attitude towards the defence of private property, and you have no desire to add a ragged, septic hand wound to your troubles.";
    stop the action;
    end if.
   
The mad dog rule is listed before the can't take people's possessions rule in the check taking rules.
   
Part 3 - Full of Sound and Fury and Signifying Nothing by Justin Larue

[Chapter, Section]

Chapter 0 - Game Support

Section 0 - Whisper stuff, skipping ahead, starting and ending

Whisper 3 is a scene.  Whisper 3 begins when Whisper 2 ends. Whisper 3 ends when the trapdoor is broken.

[The diary is a stub 'book'-type thing.  Books are nothing special, but feel free to implement.  Currently, the diary just describes a random room name, preferrably an unvisited room.]

Section 0-skip - not for release

Carry out skipping ahead during Whisper 3:
say "Skipping Scene 3 - and aren't you glad.";
now the player is carrying the glow-jar;
now the player is carrying the panga;
now the player is wearing the stetson;
now the player is carrying the guitar;
now the player is carrying the diary;
now the player is carrying the old bolt;
move the player to Trading Post Main Room;
move the rough hole to Root Cellar;
remove the dirt corner from play;
break the trapdoor;
now the diary is initially consulted;
Rule succeeds.

Section 0-main - continuing on

When Whisper 3 begins (this is the Whisper 3 Begins With A Slam rule):
	say "You hear an eager whine, and Curb barrels into the trap-door from above, which just misses your head as it slams shut.";
	now the trapdoor is closed;
	now the the Root Cellar is visited;
	
After opening the trapdoor for the first time (this is the portentous-moth rule):
	If the player is in the Trading Post Main Room:
		say "You open the trapdoor.[paragraph break]A pale moth flutters out of the cellar. You reflexively make a warding sign - though they don't help much with Curb, so their potency against curses and doom seems to be limited.";

Section 1 - Whispers 1 Repair

[These may not be needed based on Whispers 1, but this is to fix some grammatical and practical fooey from what I got in 2 - like Curb taking the trunk and slobbering all over it.  Feel free to remove as appropriate]

The indefinite article of the tattoos is "your".
The printed name of the tattoos is "your tattoos".

Section 2 - Additions to the world model

A book is a kind of thing. Understand "book" as a book.

Digging is an action applying to one visible thing and requiring light.

Digging it with is an action applying to one visible thing and one carried thing and requiring light.

Understand "dig [something]" and "dig in [something]" and "dig into [something]" as digging.

Understand "dig [something] with [something preferably held]" as digging it with.

Understand the commands "burrow" and "tunnel" and "excavate" as "dig".

Carry out digging something:
	say "You dig [the noun], daddy-O. But doing that went out of style long before running water did.";
	stop the action.

Carry out digging something with something:
	say "Either [the second noun] seems unfit for digging, or [the noun] seems unfit to be dug. At any rate, you haven't gone crazy enough to try. Yet.";
	stop the action.

Attacking it with is an action applying to one visible thing and one carried thing. Understand "attack [something] with [something preferably held]" as attacking it with.

Chapter 1 - Whispers 3, Here We Go

Root Cellar is a dark room. The description of Root Cellar is "Plenty of sweat went into digging this cellar out, and it smells like it. Wooden shelves are hammered into the dirt walls, [if a thing is on the cellar shelves]and sitting on the creaky wood [is-are a list of things which are on the cellar shelves][otherwise]covered in grime[end if]. Dirt steps are cut into one wall, leading up to a trap door[if the rough hole is in the root cellar]. A rough hole has been dug - or cut, really - into the corner[end if]."

Understand "door" and "trap-door" and "trap" and "cellar door" and "bolt" and "bolts" and "trapdoor bolt" and "trapdoor bolts" and "hinge" and "hinges" and "trapdoor hinge" and "trapdoor hinges" as the trapdoor.

The trapdoor can be budged.  The trapdoor can be broken.  The trapdoor can be breakable.

To break the trapdoor: 
	Now the trapdoor is open;
	now the trapdoor is broken;
	now the trapdoor is not openable;
	now the trapdoor is not breakable;
	now the description of the trapdoor is "The bolts holding the trapdoor to the frame have been broken, and the door itself hangs crazily into the cellar. It's really not a 'door' anymore, so much as a 'really ugly hanging ornament'.";
	
When play begins: 
	Now the trapdoor is closed; 
	now the description of the trapdoor is "A crude wooden trapdoor bolted into the floor with rustic iron hinges[if the trapdoor is breakable]. Now that you look closely, those bolts [italic type]do[roman type] look somewhat old and shabby. Certainly no match for, say, your panga[end if].";

Instead of trying opening the trapdoor while Cellar Trapped is happening:
	say "You try to open the trapdoor, but it seems to be stuck. Or Curb has set his mangy behind down on it, which seems just about as likely.";
	now the trapdoor is budged;

the cellar shelves is scenery in the Root Cellar.  The cellar shelves is a supporter. Understand "shelf" and "two-by-four" and "one-by-four" and "two-by-fours" and "one-by-fours" and "board" and "boards"  as the cellar shelves. The description of the cellar shelves is "Ain't much to one of these shelves. A couple of two-by-fours sunk into the wall, and some one-by-fours set across, and [if a thing is on the cellar shelves][a random thing on the cellar shelves][otherwise]some dirt[end if][if the number of things on the cellar shelves is greater than 1], among other things[end if]."

The packed dirt is scenery in the Root Cellar.  Understand "wall" and "walls" and "dirt" and "floor" as the packed dirt.  The description of the packed dirt is "A cellar dug out the old-fashioned way with a spade has a look about it. It looks like crap. There are root ends hanging down from the uneven walls, and the floor is nothing more than packed dirt[if the packed dirt is undug]. Well, except for a spot over in the corner, which looks somewhat less packed.[otherwise], except for a hole in the corner[end if]." The packed dirt can be dug or undug.  The packed dirt can be quiescent or questioning.  The packed dirt is undug.  The packed dirt is quiescent.

The dirt corner is scenery in the Root Cellar.  Understand "less packed dirt" and "corner" and "spot" and "spot in corner" and "spot in the corner" and "corner spot" as the dirt corner.  The description of the dirt corner is "The dirt over in the corner farthest from the stairs looks like it's been dug up recently. More recently than the rest of the cellar floor, anyway, which is approaching fruitcake levels of hardness."

The rough hole is a container.  The rough hole is scenery.  The rough hole is fixed in place.  Understand "hole" and "rough hole" and "hacked hole" and "cubby" and "cubbyhole" and "box" as the rough hole.  The description of the rough hole is "A rough hole has been hacked into the ground here, down to a little cubby made of wood[if a thing is in the rough hole]. Tucked into the cubby [is-are a list of things in the rough hole][end if]."

The diary is a book in the rough hole.  The diary can be initially consulted.

Instead of examining the diary in a dark room:
	say "A worn-out leather diary, written in a crabbed hand. Your letters were never all so good as that, and you wouldn't want to try reading this mess in anything but good light.";

After examining the diary:
	Now the diary is initially consulted.
	
To say random-preferrably-unvisited-room:
	let x be a random unvisited room;
	if x is nothing:
		let x be a random room;
	say "[the x]".
	
The description of the diary is "A worn-out leather diary, written in a crabbed hand. Your letters were never all so good as that, and it's hard to make out exactly what the owner was writing about, but it looks like he spent some time in [random-preferrably-unvisited-room]."

An old bolt is in the rough hole.  The description of the old bolt is "Actually, it's only part of an old bolt. It's rusty, stained, and the end is broken off, so it's only about an inch long."  The bolt can be a clue.

A piece of paper is in the rough hole.  The description of the piece of paper is "An old, brittle, yellowing piece of paper, maybe once a shopping list, written in big, painful capital letters. Some of it has succumbed to time, but what you can read says:[paragraph break](smudge) RTS CREAM[line break]2 DOSEN EGG[line break]6 HINDGE BOLTS[line break]50# LEAD FOR SHOOTING[line break]HALF DOSEN LEMONS[line break]MEDECENE FO(smudge)MPA[paragraph break]The rest is all a blur."  The paper can be a clue.

After examining the paper for the first time:
	unless Cellar Trapped has ended:
		If the paper is a clue:
			say "Hmm. Broken, rusty bolts, needing changed. Might be too much to hope for...";
			now the trapdoor is breakable;
		otherwise:
			now the old bolt is a clue;

After examining the old bolt for the first time:
	unless Cellar Trapped has ended:
		if the old bolt is a clue:
			say "Hmm. Bolts needing changed, and this one's broken and rusty. Might be too much to hope for...";
			now the trapdoor is breakable;
		otherwise:
			now the piece of paper is a clue; 

Instead of attacking the trapdoor:
	If the trapdoor is breakable:
		say "You bruise your knuckles on the bolts. Maybe you should find something else to use.";
	otherwise:
		say "You bruise your knuckles on the trapdoor."
		
Instead of attacking the trapdoor with the panga:
	If the trapdoor is breakable:
		break the trapdoor;
		say "Armed with your newfound knowledge - and your trusty panga - you lay into the trapdoor's bolts. They shatter with a few sharp blows each.[paragraph break]As you are attacking the last bolt, there's a dangerous creaking sound, and suddenly the trapdoor collapses, spilling dust, rust, and your ever-faithful friend, Curb, down onto your head. But at least the trapdoor is open again!";
	otherwise:
		say "You hammer at the trapdoor with your panga, but it barely scratches the tough old wood. Sitting out for years in the dry will do that to a board."

Instead of attacking the old bolt with the panga:
	if the trapdoor is breakable:
		say "That bolt's already been busted. Try the ones in the trapdoor.";
	otherwise:
		continue the action;
		
Instead of attacking the old bolt:
	if the trapdoor is breakable:
		say "That bolt's already been busted. Try the ones in the trapdoor.";
	otherwise:
		continue the action;

Instead of digging something in the Root Cellar:
	if the noun is the dirt steps:
		say "Seeing as that's the only way out[if Cellar Trapped is happening and the trapdoor is budged] (even though the trapdoor is stuck)[end if], you probably shouldn't go ruining the steps.";
	else if the noun is the packed dirt or the noun is the dirt corner:
		if the packed dirt is dug:
			say "There's already a pretty good hole there.";
		otherwise:
			say "With what, your panga?";
			now the packed dirt is questioning;
	otherwise: 
		continue the action.

Instead of digging something with something:
	if the noun is the packed dirt or the noun is the dirt corner:
		if the packed dirt is dug:
			say "There's already a pretty good hole there.";
		if the second noun is edible:
			say "Despite the miracles of food science, that wouldn't work very well.";
		otherwise:
			if the second noun is:
				-- the musket barrel: say "It's really too long and unwieldy to dig effectively with.";
				-- the stetson: say "You might be able to carry water in this, but your plan doesn't [italic type]hold[roman type] water.";
				-- the glow-jar: say "Many hands make light work. But they do not make light work as a shovel.";
				-- the guitar: say "You've got to be kidding.";
				-- the car_keys: say "There are more futile actions you could take, but none come to mind at the moment.";
				-- the panga: 
					now the packed dirt is questioning; 
					try saying yes;
				-- otherwise: say "You know, that's probably a really good idea, and in a sane and just universe, it might work. Things haven't been so easy, though, not since the Breakdown.";
	otherwise:
		continue the action;
		

	
Before doing something while the packed dirt is questioning:
	unless the current action is saying yes or the current action is saying no:
		now the packed dirt is quiescent.

Instead of saying yes in the Root Cellar while the packed dirt is questioning:
	now the packed dirt is dug;
	now the packed dirt is quiescent;
	remove the dirt corner from play;
	now the rough hole is in the Root Cellar;
	say "Well, if you must, you must. It's a tool before all else, it's true. You start hacking away at the dirt.[paragraph break]It's a really crummy tool for this job, though.[paragraph break]After a while, you hear a 'thunk', and realize you've hit wood. A little more work, and you realize there's a sort of a cubby down there - a place to stash things where they won't be disturbed. Except by jerks with pangas, of course."

Instead of saying no in the Root Cellar while the packed dirt is questioning:
	now the packed dirt is quiescent;
	say "Well, that's a good choice. It's not like that's what it's made for or anything."
	
The dirt steps are scenery in the Root Cellar.  Understand "steps" and "step" and "stair" and "stairs"  as the dirt steps.  The description of the dirt steps is "Steps cut into the dirt wall, packed hard and made with more care than the rest of the cellar, that's for sure. Not that it's a particularly difficult feat."

Cellar Trapped is a scene.  Cellar Trapped begins when the player is in the Root Cellar for the first time.  Cellar Trapped ends in reunion when the trapdoor is broken.  Cellar Trapped ends quietly when Whisper 3 ends.

When Cellar Trapped ends in reunion: 
	say "And now Curb is back with you. How...wonderful.";
	move Curb to the location of the player;

Every turn during Cellar Trapped (this is the curb-wants-in rule):
	If the player is in Root Cellar begin;
		If a random chance of 1 in 3 succeeds begin;
	           	choose a random row from the Table of Canine Cellar Interest;
		           say "[provocation entry][line break]";
		end if;
	end if;

Table of Canine Cellar Interest
Provocation
"It sounds like Curb is gnawing on something above the trapdoor."
"A heavy sound suggests Curb might have been walking around, but just sat down again."
"Curb howls mournfully. Thank goodness the trapdoor muffles some sound."
"Curb scuffles at the trapdoor, as though trying to dig through it."
"You hear the familiar sounds of Curb eating his own vomit."
"A sadly familiar smell wafts down from above. Curb's digestion is...incredible."

A procedural rule: if Cellar Trapped is happening and the player is in the Root Cellar then ignore the canine fidget rule.

Chapter 2 - Debug stuff - Not for release

Test wh3 with "x dirt / x corner / dig corner / yes / get all / read diary / x paper / x bolt / x bolts / attack bolts / attack bolts with panga / u / read diary"

Floobling is an action applying to nothing.  Understand "flooble" as floobling.
Carry out floobling: 
	if the diary is initially consulted:
		say "yes";
	otherwise:
		say "no";

Part 4 - Ghosts by Marius Mueller

Section 1 Additons to the world model II

Slinging it at is an action applying to two things.

Understand "sling [something] at [something]" as slinging it at.

Report slinging it at:
if the noun is the eyepatch begin;
say "It's not a Klein-sling!"; 
otherwise If the noun is not aerodynamic; say "You need a projectile that fits into the sling - about an inch long, no longer, no shorter.";
otherwise If the second noun is not the chandelier;
say "You're not sure [the noun] will manage more than one shot. Better make it count.";
end if.

Check slinging:
If the map is not part of the chandelier begin;
say "No, the slinging is done."; stop the action;
otherwise;
continue the action;
end if.


Playing is an action applying to one thing.

Understand "play [something]" as playing.

Report playing something:
say "That ain't an instrument."

Instead of playing the guitar:
choose a random row in table of guitar;
say "You play a few notes of [music entry] Contrary to IF convention, you actually play quite well."

Table of guitar
music
"the Firefly theme."
"'Man of Constant Sorrow'."
"'Blowing in the Wind'."
[Feel free to contribute]

Whisper 4 is a scene.  Whisper 4 begins when Whisper 3 ends.  Whisper 4 ends when the treasure map is in the saloon_bar.

Rule for deciding whether all includes the shred of cloth: if the shred of cloth is not handled, it does not; otherwise make no decision.

Rule for deciding whether all includes the treasure map: if the treasure map is part of something, it does not; otherwise make no decision.

Chapter 1 Treasure hunt

Report going east from Junction:
say "You walk for a few sandy miles, out into the desert[if the sandstorm is raging], and night begins to fall, slowly, like a dead parachutist. In the distance, the whispering wind takes on a howl - looks like a sandstorm is on its way. By the time you realize this, however, you've gone to far to go back to your car. [paragraph break]And so, in the depths of nights, with the sandstorm building up its inhuman, demonic power around you, you find yourself on...[otherwise] and find yourself on...[end if]"

East of Junction is The Saloon porch. The description of Saloon porch is
"The building is in the state you've expected from a ghost town. Its upper floor is completely gone, but the front is still standing, and you can barely make out the words [italic type]Kissing Bandit Saloon[roman type] in sun-bleached red paint. One half of a swinging door leads north, inside."

The sandstorm is scenery in the saloon porch.
The sandstorm can be raging or still. The sandstorm is raging.
The description of the sandstorm is
"Wow! A raging sandstorm is quite a sight."

Carry out going from the saloon porch when the sandstorm is raging:
say "That'll be suicide! The sandstorm is only nearing its peak."; stop the action. 

Instead of going west from the saloon porch,
say "You shy away from those long, sandy miles."

Instead of going north from saloon porch when the sandstorm is raging:
say "You enter through the swing door, Curb on your heels."; now the player is in the saloon_bar; now Curb is in the saloon_bar.

North of the saloon porch is the saloon_bar. The printed name of the saloon_bar is "In the saloon".
The description of the saloon_bar is 
"This room is much smaller than what the movies tell you. A stairway leads up to a gallery, though most of the roof and the upper floor is missing. A few chairs and tables gather dust, accompanied by a lone piano in a corner.[line break]A counter is near the back wall.[line break]An impressive chandelier dangles from the remains of the ceiling."

Up from the saloon_bar is Stairs. The description of  Stairs is "You've climbed half-way up the stairs. To go any further would be foolishly risking your life."

A shred of cloth is in Stairs. The shred of cloth can be interesting or uninteresting. The shred of cloth is interesting. Understand "piece" and "cloth" as shred of cloth. The description of the shred of cloth is "An old piece of blue cloth. Could be ripped out from a pair of jeans or something."
The initial appearance is "An old piece of cloth sticks to the floorboards here."

Instead of smelling the shred of cloth, say "Hm, maybe someone with a keener nose could make something of this."

The piano is scenery in the saloon_bar. The description of the piano is "An old, dust covered piano. You can almost imagine it playing a lively tune to a bar brawl."

Instead of playing the piano, say "You play some notes from 'The Late Goodybe' by Poets of the Fall, but then realize that the piano is one of those automatons. It even features some screechy lyrics. You can make something about a guy called Tom, who was a slinger, but not slinging 'a gun'. Something about a more lyrical meaning. Thankfully, the record ends soon."

The bar_chairs are scenery in the saloon_bar. The printed name of the bar_chairs is "chairs."  Understand "chair" as chairs. The description is "Some old wooden chairs, gathering dust."

Instead of entering the chairs, say "No, you aren't tired."

Before doing something with the chandelier:
	Unless the current action is examining:
		say "It's high up on the ceiling, out of reach.";
		stop the action.

The chandelier is scenery in the saloon_bar. The chandelier is a supporter.
The description is "An old, cobwebbed chandelier.[if the treasure map is part of the chandelier] Looks like some sort of map is stuck in the chandelier.[otherwise][end if]"

Before doing something with the treasure map when the treasure map is part of the chandelier:
	Unless the current action is examining:
		say "You can't reach it up there.";
		stop the action.

Before someone trying doing something with the treasure map when the map is part of the chandelier: do nothing instead.


The treasure map is part of the chandelier.
The description is
"[if the treasure map is part of the chandelier]You can't make it out up there.[otherwise][end if]."
[I'VE LEFT THIS AS AN OPENING TO YOU.] 

Instead of throwing something at the chandelier:
say "You can't quite throw that high."

Every turn when Curb can see the interesting shred of cloth:
If a random chance of 3 in 5 succeeds begin;
say "Curb eyes the piece of cloth with more than curiosity, something akin to keen interest. He sniffs it expectantly."; end if.

Instead of giving the interesting shred of cloth to Curb: now Curb is dead;now the shred of cloth is uninteresting;
say "Curb sniffs the shred of cloth. He then holds up his head, and just for a moment, you can see, even in this big, repulsive heap of fat meat and dirty fur, the wolf, scenting the deer."

Instead of showing the interesting shred of cloth to Curb, try giving the shred of cloth to Curb.

Every turn when dead Curb is in the saloon_bar:
say "Curb frantically digs a hole in a corner.";
now the depression is in the saloon_bar; now Curb is living.

Every turn when the remainder after dividing the turn count by 2 is 0 and Curb is dead:
	If the location of Curb is not the saloon_bar:
		let apport be the best route from the location of Curb to the saloon_bar, using doors;
		if apport is a direction, try Curb going apport.

The depression is a thing. The depression is fixed in place.The depression is a container. The printed name of the depression is "hole".  Understand "hole" as the depression.
The initial appearance of the depression is "Curb has dug a hole into the ground here."
The description of the depression is "A hole, not as artfully dug as what you did in the cellar, but what can you expect from Curb?
[line break]In it you can see [a list of things in the depression].".

In the depression is a skull. The description of the skull is "A human skull.[if the eyepatch is part of the skull] It's wearing an eyepatch that's in surprisingly good condition.[otherwise][end if]"

Before attacking the skull:
If the eyepatch is part of the skull begin;
say "(First removing the eyepatch)";
now the eyepatch is carried by the player;
otherwise;
do nothing;
end if.

Instead of attacking the skull:
say "Breaking the skull, most of it instantly turns to dust, while a small part, shaped like an old bolt, remains."; now the bone shard is carried by the player; remove the skull from play.

The bone shard is a thing. The description of the bone shard is "A bone fragment, shaped like an old bolt.It's about an inch long."

The eyepatch is part of the skull. The eyepatch is wearable. Understand "patch" and "sling" as eyepatch. The description is "A classic eyepatch. The strap is extra-long."

Instead of taking the eyepatch when the eyepatch is part of the skull: say "You slide the eyepatch off the skull."; now the eyepatch is carried by the player.

Every turn:
If the player has worn the eyepatch for four turns begin; say "Yuck, you begin to get a headache. Enough of playing pirates. You remove the patch."; now the eyepatch is carried by the player; end if.

A thing can be aerodynamic.
The old bolt is aerodynamic.
The bone shard is aerodynamic.


Carry out slinging something aerodynamic at the chandelier:
If the eyepatch is carried by the player begin;                                                                                                                                                                                                                                          
say "Taking good aim, and a few practice swings, you haul your missile at the treasure map- up and up it goes-[line break]
Hit![line break]The treasure map tumbles down. But so does a part of the chandelier, knocking you out. The last thing you hear is Curbs anxious growling. The last thing you feel, unfortunately, is Curbs wet tongue, licking your cheek. Then, thankfully, you pass out.[paragraph break]
*** You have knocked yourself out.***[paragraph break]
You wake up with a bad headache. Outside, the sun is shining again, the sandstorm is gone. Curb has rolled up at your side, and for all his faults, you love him for that."; remove the old bolt from play; remove the bone shard from play; now the treasure map is in the saloon_bar; now the sandstorm is still;
otherwise;
say "You need something to sling it with!";
end if.

Instead of slinging an aerodynamic thing (called the missile) at the treasure map: 
try slinging the missile at the chandelier.

Section Skip - not for release

Instead of skipping ahead during Whisper 4:
	say "Skipping Scene 4";
	remove old bolt from play;
	now the treasure map is in the saloon_bar;
	now the sandstorm is still; 
	now the player is in the saloon_bar.

Section 1 Debbuging - not for release

test wh4 with "s / s / e / n / up / take cloth / d / show cloth to curb / take skull / take eyepatch / sling old bolt at chandelier "

Part 5 - Invisiclues by Carl Muckenhoupt

Whisper 5 is a scene.  Whisper 5 begins when Whisper 4 ends.

Chapter 1 - Embellishments

Table of guitar (continued)
music
"'Fernando'."
"'Barrett's Privateers'."
"'Chobits ending theme 2'."
"that 'Stones' thing from the Ultima games."
"some Rick Astley song you can't remember the name of."

The bar_counter is scenery in the saloon_bar.  The printed name of the bar_counter is "counter".

The shelf is fixed in place in the saloon_bar.  "Behind the counter is a shelf lined with a row of casks."

Chapter 2 - Liquids, Liquids, Liquids

A liquid is a kind of thing.  A liquid has some text called odor.  The odor of a liquid is usually "It smells like [printed name]."  A liquid has some text called flavor.  The flavor of a liquid is usually "[if drinkable]You slam it back. Ahh, refreshing.[otherwise]You'd really rather not."  A liquid can be drinkable or undrinkable.  A liquid is usually drinkable.  A liquid can be clear or murky.  A liquid is usually clear.

A liquid-container is a kind of thing.
Liquid-containment relates various liquid-containers to one liquid (called the filler).  The verb to bear (he bears, they bear, he bore, it is borne, he is bearing) implies the liquid-containment relation.  Understand "[something related by liquid-containment]" as a liquid-container.  Understand "of [something related by liquid-containment]" as a liquid-container.  Understand "empty" as a liquid-container when the item described bears nothing.

Instead of smelling a liquid-container:  if the filler of the noun is nothing, continue the action;  say "[The odor of the filler]".

A liquid-source is a kind of liquid-container.

A liquid-holder is a kind of liquid-container.  The description of a liquid-holder is usually "[if the liquid-holder bears nothing]It's empty.[otherwise][the description of the filler]".  A liquid-holder has a some text called basename.  The printed name of a liquid holder is usually "[if the liquid-holder bears nothing]empty [basename][otherwise][basename] of [filler]".
A liquid-holder can be clear or murky.  A liquid-holder is usually murky.

Before drinking a liquid-holder:
	if the noun is not carried begin;
		say "(first taking [the noun])[command clarification break]";
		try taking the noun;
		if the noun is not carried, stop the action;
	end if.
	
Instead of drinking a liquid-holder:
  	if the noun bears nothing:
		say "There's nothing to drink.";
	otherwise:
		say "[flavor of the filler of the noun][line break]";
	if the filler of the noun is drinkable:
		now the filler of the noun is nothing.

Filling is an action applying to one carried thing and one thing.
Check filling:
	if the second noun is a liquid-source:
		if the noun is not a liquid-holder:
			say "You can't fill that." instead;
		if the noun bears something:
			say "The [basename] is already full." instead;
	if the second noun is a liquid-holder and the noun is a liquid-holder:
		say "Dividing quantities of liquids between containers is beyond the scope of this author's ambition." instead;
	if the second noun is not a liquid-source:
		say "There's nothing to fill it with." instead;
	if the second noun bears nothing:
		say "[The second noun] seems to be empty." instead.
Carry out filling: say "The [basename] is now full of [filler of the second noun]."; now the noun bears the filler of the second noun.
Understand "fill [something] from/with [something]" as filling.

Pouring is an action applying to one carried thing.
The pouring action has an object called the pouree (matched as "on").
Check pouring:
	if the noun is not a liquid-holder:
		say "There's nothing to pour out." instead;
	if the noun bears nothing:
		say "The [basename] is empty." instead.
Carry out pouring:
	say "[The filler of the noun] spills all over. Congratulations, you have just made the world a slightly messier place.";
	now the noun does not bear the filler of the noun.
Understand "pour [something]" or "pour out [something]" or "pour [something] out" as pouring.

Pouring it on is an action applying to one carried thing and one thing.
Check pouring it on:
	if the noun is not a liquid-holder:
		say "There's nothing to pour." instead;
	if the noun bears nothing:
		say "The [basename] is empty." instead.
Carry out pouring it on:
	say "You pour [the filler  of the noun] all over [the second noun], to no effect.";
	now the noun does not bear the filler of the noun.
Understand "pour [something] on/over/in/into [something]" as pouring it on.

Understand the command "empty" as "pour".


A cask is a kind of liquid-source. A cask is always fixed in place.  A cask is always scenery.  Understand "cask" or "barrel" as a cask. Understand "casks" or "barrels" as the plural of cask.

Instead of examining the shelf, say "The shelf holds [a list of casks in the saloon_bar]."

Chapter 3 - Liquids In Particular

The beer is a murky liquid.  The description is "It's obviously flat, but after spending so much time in the desert, you're not fussy."  The beer cask is a cask in the saloon_bar.  The beer cask bears beer.

The white wine vinegar is a liquid.  The description is "Yesterday's white wine, today's acetic acid."  The printed name is "vinegar". The white wine vinegar is undrinkable.  The wine cask is a cask in the saloon_bar.  "It's labelled 'House White'. There doesn't seem to be a house red. Maybe the patrons of this saloon preferred delicate, subtle flavors."  The wine cask bears white wine vinegar.

The moonshine is a liquid.  The description is "This stuff looks like water, but only from the side. Viewed from overhead, it doesn't look like anything because the fumes make your vision swim."  The moonshine cask is a cask in the saloon_bar.  "It has 'XXXXX' stencilled on the front. Wow, five X's? That must be strong stuff!"  The moonshine cask bears moonshine.  Understand "xxxxx" as the moonshine.

The rum is a murky liquid. The description is "The rum is a brilliant red color, but it smells like rum all the same."  The rum cask is a cask in the saloon_bar.  "It has the words 'RED RUM' scratched crudely into the wood. Funny, the R's are backward. Maybe it's cyrillic and it really says YAED YAUM."  The rum cask bears rum.

The flat sarsaparilla is a murky liquid.  The description is "Completely flat by now, of course."    The printed name is "sarsaparilla".  The sarsaparilla cask is a cask in the saloon_bar.  The sarsaparilla cask bears sarsaparilla.  Understand "sasparilla" or "sarsi" or "root beer" or "rootbeer" as the flat sarsaparilla.

The lemonade cask is a cask in the saloon_bar.

The pewter mug is a liquid-holder on the bar_counter.  The basename is "pewter mug".

The glass bottle is a clear liquid-holder in the saloon_bar.  The initial appearance is "An empty lemon juice bottle lies abandoned by the counter."  Understand "lemon/juice" as the glass bottle.
Instead of examining the bottle when the bottle bears nothing, say "It's a clear glass bottle with a jaunty picture of an anthropomorphized lemon on the label. However, it is bone dry inside."

Chapter 4 - The map

The treasure map can be developed or undeveloped.  The map is undeveloped.
Luxor-aware is a truth state that varies.  Luxor-aware is false.

Whisper 5 ends when Luxor-aware is true.

When Whisper 5 begins:
 Now the description of the treasure map is "[if the treasure map is undeveloped]Well, it's obviously a treasure map, because it has a big X on it to mark the spot. But it's a pretty strange map: it's completely blank, and has a light iridescent sheen to it, like a photographic plate. Also, it's strangely warm to the touch.[otherwise]The map shows an incomprehensible noisy pattern of red and blue pixels with a big black X in the middle."

Instead of touching the map, say "It's definitely hotter in some spots than others."

Instead of pouring something on the map:
	if the noun bears vinegar:
		now map is developed;
		say "Little wisps of vinegar-scented smoke curl upward as an image appears on the map.";
	otherwise:
		say "[The filler of the noun] just slides off it, leaving it unstained.";
	now the noun does not bear the filler of the noun.  
Examining it through is an action applying to one thing and one carried thing.
Report examining it through:  say "You can't see through [the second noun]."
Understand "examine [something] through [something]" as examining it through.
Understand "look at [something] through [something]" as examining it through.

Instead of examining something through a clear liquid-holder:
	if the second noun bears nothing:
		say "The curvature of the bottle distorts your view of [the noun] a little.";
	otherwise if the filler of the second noun is clear:
		say "[The filler of the second noun] acts as a lens, seriously warping your view of [the noun], but you don't learn anything new.";
	otherwise if the filler of the second noun is rum and the noun is the treasure map and the treasure map is developed:
		if Luxor-aware is false:
			now Luxor-aware is true;
			say "Aha! When you look through the red rum, you the pattern becomes clear. Instead of a map, all you see is the word 'LUXOR'.[paragraph break]What the heck? The treasure is in Egypt?";
		otherwise:
			say "Viewed through the red liquid, the map says 'LUXOR'.";
	otherwise:
		say "[The filler of the second noun] lends its color to everything you see through it."

Treasure Huntery Lesson 1 is a thing.  It is carried by the player.
The description is "[one of]'Treasure Huntery Lesson 1: Maps' is a slim pamphlet that gives just the basics. You've read it a thousand times, but it never hurts to have it on hand.[or]'The first thing any treasure hunter needs is a map. It's no good to just go looking for treasure with no idea of where to look! You may be skeptical about the existence of actual treasure maps, but in fact the people who hid treasure generally wanted to be able to find it again, or even to let their heirs or accomplices find it in the event that they could not. This doesn't mean they made it easy!'[or]'For one thing, the maps are often nearly as well-hidden as the treasures themselves. However, that doesn't mean you're left to search aimlessly. The purpose of the map is defeated if no one has access to it, so treasure maps can usually be found among the effects of the treasure-hiders, or in places they frequented. Look in residences, gathering-places, and vehicles.'[or]'Once you've found your map, the next step is deciphering it. Treasure maps are usually encrypted or obfuscated in some way. Edgar Allan Poe's short story [italic type]The Gold Bug[roman type] tells about a map that has instructions written in code... and also in invisible ink!'[or]'Invisible ink is actually surprisingly common in authentic treasure maps -- and one of the main reasons that there are still treasure maps that have gone undetected. The most popular form of invisible ink is ordinary lemon juice, although any weak acid works just as well. When heat is applied to the paper, the parts weakened by the lemon juice discolor more quickly. There are recorded attempts at developing an ink that would work the other way around, but to our knowledge this has never been done successfully.'[or]'Code-breaking can seem daunting, but the fact is, most encoded messages on treasure maps use simple substitution ciphers. The key to breaking these is to look for the most common letter in the text. That will almost invariably represent E, the most common letter in nearly every western language. Of course, if the message is very short, this approach can prove impossible.'[or]Hm. This thing doesn't seem as useful as you remember it. And what's up with using [italic type]The Gold Bug[roman type] as an example? Isn't that fictional?[cycling]".

Chapter 5 - Debugging - not for release

Test wh5 with "get map and mug and bottle / fill mug with vinegar / fill bottle with rum / pour vinegar on map / look at map through bottle"

Section Skip - not for release

Instead of skipping ahead during Whisper 5:
   say "Skipping Scene 5";
   now the map is developed;
   now Luxor-Aware is true.

Part 6 - The One-Armed Time Bandit by Michael Martin

Whisper 6 is a scene. Whisper 6 begins when Whisper 5 ends.

Chapter of Bugfixes and Additional Synonyms

[This chapter has a bunch of modifications to previous stuff. Some of it will need to be moved in as edits, others don't. Each is annotated.]

Section 1 - Modifications to Part 5

[There was an attempt to define the printed name of a liquid-holder, but my predecessor forgot a hyphen and the definition didn't quite work anyway. This definition plus assignment does the trick.]
Definition: a liquid-holder is liquid-free if it bears nothing.
The printed name of a liquid-holder is usually "[if liquid-free]empty [basename][otherwise][basename] of [filler]".

[Doing that reveals the glass bottle wasn't properly defined:]
The basename of the glass bottle is "glass bottle". 

[Quality-of-life synonyms. These don't have to be anywhere in particular, but it's probably best to not bother propagating these to my successor.]
Understand "look through [something] at [something]" as examining it through (with nouns reversed).
Understand "bar" or "counter" as the bar_counter. The bar_counter is privately-named.
Understand "sasparilla" or "sarsparilla" as the sarsaparilla cask.
Understand "sarsparilla" as the flat sarsaparilla.

Chapter 1 - Embellishments

[This extends a table of music to be played on a guitar. Perhaps we can keep it extending throughout the entire work! Please note that you need to have a period at the end since this comes at the end of a sentence when used.]
Table of guitar (continued)
music
"the Myst opening theme."
"the Tocatta and Fugue in D Minor."
"Pachelbel's Canon."
"'Puff, the Magic Dragon'."
"'Re: Your Brains'."

Chapter 2 - New Generic Stuff

Section 1 - Smoking

Smoking is an action applying to one thing. Understand "smoke [something]" or "toke [something]" as smoking. Check smoking (this is the block smoking rule): say "That's not something you can smoke." instead.

Section 2 - The Decoder Ring

The decoder ring is a wearable thing. The description is "This decoder ring has a wheel that matches letters to other letters. Surely, with this, the darkest secrets of the cosmos are yours.[paragraph break][bracket]To use the decoder ring, type the command DECODE (text), where (text) is the text you wish to decode.[close bracket]".

Decoding is an action applying to one topic. Understand "decode [text]" as decoding. The decoding action has an indexed text called the decoding result.

Setting action variables for decoding:
	now the decoding result is the topic understood in upper case.

Check decoding (this is the need a decoder rule): 
	if the player does not enclose the decoder ring, say "You need some kind of decoder to do any decoding." instead;
	if the player cannot touch the decoder ring, say "You can't reach your decoder ring at the moment." instead.

Carry out decoding (this is the standard decoding rule):
	let length be the number of characters in the decoding result;
	repeat with index running from 1 to length begin;
		let C be character number index in the decoding result;
		repeat through the Table of Cipher Specification begin;
			if the cyphertext entry exactly matches the text C begin;
				replace character number index in the decoding result with the plaintext entry;
				break;
			otherwise if the plaintext entry exactly matches the text C;
				replace character number index in the decoding result with the cyphertext entry;
				break;
			end if;
		end repeat;
	end repeat.

Report decoding (this is the standard report decoding rule):
	say "Using your mighty ancestral decoder ring, you decode [the topic understood in upper case] to [the decoding result]."

[Despite the column names, this is a mirror cypher, so decoding the message twice will give the original result.]
Table of Cipher Specification
cyphertext	plaintext
"O"		"A"
"Z"		"B"
"Y"		"C"
"W"		"D"
"U"		"E"
"T"		"F"
"X"		"G"
"Q"		"H"
"P"		"I"
"N"		"J"
"M"		"K"
"V"		"L"
"S"		"R"

Section 3 - Floyd Mode

[This is to disable weird input modes so as to make life easier on interpreters in which non-command input is hard. Named for Floyd, the IF-playing bot on ifMUD who is just such an interpreter.]

The Floyd state is a truth state that varies. The Floyd state is false.

Activating Floyd mode is an action out of world. Understand "floyd" or "floyd on" as activating Floyd mode.
Deactivating Floyd mode is an action out of world. Understand "floyd off" as deactivating Floyd mode.

Carry out activating Floyd mode: now the Floyd state is true.
Carry out deactivating Floyd mode: now the Floyd state is false.

Report activating Floyd mode: say "[bracket]Floyd mode is now active. Special input effects are disabled. Type FLOYD OFF to re-enable them.[close bracket][line break]".

Report deactivating Floyd mode: say "[bracket]Floyd mode is now inactive. Special input effects are enabled. Type FLOYD ON to disable them.[close bracket][line break]".

Section 4 - Forced Input

Include Basic Screen Effects by Emily Short.

To force the input (T - some indexed text):
	say "[line break][command prompt][bold type]";
	let len be the number of characters in T;
	repeat with index running from 1 to len:
		if the Floyd state is false, wait for any key;
		say character number index in T;
	if the Floyd state is false, wait for any key;
	say "[roman type][line break]".

Chapter 3 - Egypt

The Shisha Souk is a room. 

When Whisper 6 begins:
	say "Well, there's nothing for it. If you're going to get that treasure, you'll have to get to Egypt. One plane flight later, some checking with the remainder of the map, and you find your way to a worn-down souk by the Necropolis.";
	if Curb is living, move Curb to the Shisha Souk;
	move the player to the Shisha Souk.

Vegas-aware is a truth state that varies. Vegas-aware is false.

The description of Shisha Souk is "[if unvisited]You've followed your treasure map to this[otherwise]This remains a[end if] dingy little tobacco house on the eastern bank of the Nile. Sleepy old men gather around the hookahs and trade smoke. A cabinet full of curiosities lines the back wall."

Instead of going up in the Shisha Souk, say "Tobacco doesn't really get you high, and even if it did, it doesn't work that way."

Instead of going down in the Shisha Souk, say "The proprietor would not appreciate you digging up his floor. Maybe there are clues more readily accessible to you."

Instead of going west in the Shisha Souk, say "You have no need to visit the Necropolis."

Instead of going nowhere from the Shisha Souk, say "The map does seem to indicate that this is the place to be. You don't have any other clues yet about where to go."

Some sleepy old men are scenery men in the Shisha Souk. The description is "The clientele here doesn't seem to be paying attention to much. Even the nicotine isn't keeping them alert."  Understand "man" or "smoker" or "smokers" or "clientele" as the sleepy old men.

To reject smoker interaction:
	say "The smokers are too out of it to respond sensibly - and that's even assuming they knew English in the first place."

Instead of asking the sleepy old men about, reject smoker interaction.
Instead of telling the sleepy old men about, reject smoker interaction.
Instead of answering the sleepy old men that, reject smoker interaction.
Persuasion rule for asking the sleepy old men to try doing something:
	reject smoker interaction;
	persuasion fails.

Some tables are scenery supporters in the Shisha Souk. The description is "The tables here are stained with years of smoking." Understand "table" as the tables.

Some hookahs are scenery on the tables. The description is "These devices allow one to smoke tobacco through a water filter. Multiple hoses from the central section allow an entire group of people to share the experience." Understand "hookah" or "bong" or "bongs" or "shisha" or "shishas" or "nargilah" or "nargilahs" or "water" or "pipe" or "pipes" or "water-pipe" or "water-pipes" or "hose" or "hoses" as the hookahs.

Instead of smoking the hookahs, say "You never acquired the taste for tobacco."
Instead of taking the hookahs, try smoking the hookahs.

The curiosity_cabinet is a privately-named scenery container in the Shisha Souk. It is open and not openable. In the curiosity_cabinet are some artifacts. The printed name is "cabinet". Understand "cabinet" as the curiosity_cabinet.

The description of the artifacts is "These are relics and gewgaws from all over the world[if the heirloom box is off-stage or the heirloom box is in the curiosity_cabinet]. One in particular catches your eye - a softwood box with your family crest imprinted on it[end if]."

Understand "artifact" or "relic" or "relics" or "curiosity" or "curiosities" or "gewgaw" or "gewgaws" as the artifacts.

After examining the artifacts when the heirloom box is off-stage:
	now the heirloom box is in the curiosity_cabinet;
	continue the action.

The artifacts are fixed in place. Instead of taking the artifacts, say "You have no right to these."

Instead of searching the artifacts, try examining the artifacts.

The heirloom box is a closed openable container. The heirloom box is not lockable. The description is "This fine sandalwood box must be some lost heirloom of your family line; it's got your crest on the lid." Understand "fine" and "sandalwood" as the heirloom box.

The family crest is part of the heirloom box. The description is "It's the same symbol and motto that has been passed down through your family for generations: An extinguished lantern under the phrase SIC SEMPER RIMORIS."

The decoder ring is in the heirloom box. The slip of paper is in the heirloom box. The description is "This old slip of paper has the mysterious message DSAJX YPFC, XUJPER on it."[* WRONG CITY, GENIUS]

After decoding when Vegas-aware is false:
	[We can't refer to the action variable as part of the after condition, alas.]
	unless the decoding result exactly matches the text "VEGAS", continue the action;
	say "You ponder the map. 'LUXOR' alone really isn't much of a clue to finding the treasure on its own. Perhaps if you put your ancestral decoder ring to work, it will produce a new clue. Let's see. 'L' maps to 'V', 'U' to 'E'...[paragraph break]You feel a certain sinking feeling as you guess the rest. Yep. 'LUXOR' decodes to 'VEGAS'. You've been searching on the wrong continent all this time. At least you did get that it was in a desert, though.[paragraph break]Time to book another flight.";
	now Vegas-aware is true;
	if Curb is living, move Curb to Luxor Pit;
	now the player carries the gambling tokens;
	move the player to Luxor Pit.

[Note to successor: If you want to make getting the tokens harder, a rule like:
	After going to the Luxor pit for the first time: move the gambling tokens to the Cashier (or wherever); continue the action.
will suffice.]

Chapter 4 - Nevada

The Luxor Pit is a room. The printed name is "Gambling Pit at the Luxor". The description is "[if unvisited]It's dry as a bone out there, but at least in here the drinks flow freely. The map, suitably reinterpreted to this locale, lead you to this slot machine, right on the X in LUXOR[otherwise]You're here in front of a slot machine situated right on top of the X in the Luxor's logo[end if]. All around you, blinking, screaming electronics want to take your money, but your steely resolve remains undeterred[unless the room down from Luxor Pit is nothing]. A dark passage in front of the slot machine leads down[end if]."

Some gambling tokens are a thing. The description is "The bigger casinos don't take real coins in their machines any more. So it goes." Understand "token" as the tokens.

A slot machine is a scenery thing in the Luxor Pit. Understand "slots" as the slot machine. The description is "This slot machine looks much like the others here; video screens showing results, lots and lots of flashing lights and exciting sounds, and a slot with which you may insert all your money."

A lever is part of the slot machine. The description is "This lever controls the slot machine. To play the machine, you put a token in the slot and pull the lever."

Instead of inserting the tokens into the slot machine, try playing the slot machine.
Instead of pulling the lever, try playing the slot machine.

Instead of playing the slot machine for the first time:
	say "You stick a token in the machine and pull the lever. Lemon, Lemon, and... your family crest? This is no ordinary slot machine.[paragraph break]It's no ordinary payout mechanism, either. A chute opens up beneath you, and you slide into darkness.";
	change the down exit of the Luxor Pit to Central Broadcasting;
	if Curb is living, move Curb to Central Broadcasting;
	move the player to Central Broadcasting.
	
Instead of playing the slot machine:
	say "I [italic type]said[roman type], your steely resolve [italic type]remains undeterred[roman type]."
	
Instead of going south in the Luxor Pit, say "You have no need to visit Mandalay Bay."
Instead of going northeast in the Luxor Pit, say "You have no need to visit the Tropicana."

Chapter 5 - Underground Base

Section 1 - The Map

Central Broadcasting is a room.

Central Broadcasting is south of the Meme Broadcast Chamber, north of the Mime Broadcast Chamber, east of the MAME Broadcast Chamber, and west of the Mome Broadcast Chamber.

The plate glass window is north of the Meme Broadcast Chamber and south of the Back Office. The plate glass window is a closed scenery door. The plate glass window is not openable. The description of the plate glass window is "You see nothing special about the plate glass window."

The ladder is up from Central Broadcasting. The ladder is an open unopenable door. Through the ladder is the Luxor Pit. Instead of climbing the ladder, try entering the ladder. The description of the ladder is "This ladder leads back up to the casino floor."

[These descriptions are kind of minimal. Successors may feel free to redefine them or add exits or whatever.]

The description of Central Broadcasting is "[if unvisited]This is more like it! The chute took you into this awesome[otherwise]This is clearly some kind of[end if] command center. An important-looking door leads off to the north, while more unassuming ones lead in all other cardinal directions. Surely some hint to the treasure must be in this secret complex."

The description of the MAME Broadcast Chamber is "This room appears to be some sort of shrine to old arcade games. A passage leads back east."

The description of the Mome Broadcast Chamber is "This room looks set to receive important religious pronouncements. A passage leads back west."

The description of the Mime Broadcast Chamber is "This room is decorated in the severest of blacks and whites. Everything is dead silent. A passageway leads quietly back up to the north."

The description of the Meme Broadcast Chamber is "The acoustics in this room look carefully shaped, which is odd, because the centerpiece of this room is in fact a huge brass cannon[if the plate glass window is open]. Shards of glass litter the floor, opening a way to the north. The base's entrance chamber lies to the south[end if]."

The description of Back Office is "It's not as tidy as it was before you made your grand entrance through the window to the south, but this is still a perfectly functional office. An official-looking door leads west."

Section 2 - Scenery

The phantom wind machine is a fixed in place device in the Mime Broadcast Chamber. It is switched off. The description is "This is a small switch, painted in severe black and white. It is labeled 'PHANTOM WIND MACHINE'. Beneath that, in much smaller letters, is inscribed KUKURQPUVW." [* MEMESHIELD.] Understand "switch" as the phantom wind machine.

The invisible box is a fixed in place thing in the Mime Broadcast Chamber. "An invisible box squats against the south wall." The description is "You can't make much out about it, seeing as how it is invisible."

Before doing anything with the invisible box (this is the invisible box is invisible rule): 
	unless the current action is examining:
		say "You cannot see the invisible box. It is invisible.";
		stop the action.

The Mome statue is a fixed in place supporter in the Mome Broadcast Chamber. "A tall statue of a benevolent-looking mother figure dominates the room." Understand "tall" as the statue. The description is "[if the mome hat is on the Mome statue]She is wearing a truly impressive hat[otherwise]The Mome's hat has been stolen[end if]." After printing the name of the Mome statue: omit contents in listing.

The Mome hat is a wearable thing on the Mome statue. The description is "This enormous hat signifies that one is the Mome."

Check putting something on the Mome Statue:
	if the noun is not the Mome hat, say "That wouldn't look good on [the second noun]." instead.

After putting the Mome hat on the Mome Statue:
	say "You restore the Mome hat to its rightful position."

After taking the Mome hat for the first time:
	say "Though you realize that you risk the dreaded Mome Wrath for your defilement, you collect the Mome hat."

The brass cannon is an enterable scenery container in the Meme Broadcast Chamber. The description is "Just looking at it gives you flashbacks." Instead of entering the brass cannon, say "You have no real desire to relive your experience."

Section 3 - Death Cannon

Memetic Blast is a recurring scene. Memetic Blast begins when the location is the Meme Broadcast Chamber and the plate glass window is closed. Memetic Blast ends when the location is not the Meme Broadcast Chamber.

Mimestorm is a recurring scene. Mimestorm begins when the phantom wind machine is switched on. Mimestorm ends when the time since mimestorm began is five minutes or when the phantom wind machine is switched off.

After switching on the phantom wind machine, say "You switch on the device, and suddenly a powerful wind assaults your face. Oddly, your hair and possessions seem totally unaffected."

Before going to somewhere during Mimestorm, say "It's slow going fighting through the imaginary wind that's whipping your face."

When Mimestorm ends:
	say "The wind abruptly stops.";
	now the phantom wind machine is switched off.

When Memetic Blast begins:
	if Mimestorm is not happening begin;
		say "As you enter, a booming voice intones, 'STAND BY FOR MIND CONTROL.'";
		force the input "stand by for mind control";
		say "Time passes.[paragraph break]The booming voice continues, 'GO SOUTH.'";
		force the input "go south";
		try going south;
	otherwise;
		say "A booming voice intones a command at you. The winds surrounding you distort the voice. You think it said 'STAND BY FOR MIME CONTRAIL.'";
		force the input "stand by for mime contrail";
		say "You enter the cannon.[paragraph break]The booming voice continues with what sounds like 'NOW SHOOT.'";
		force the input "fire cannon";
		now the plate glass window is open;
		say "The cannon fires, rocketing you through the plate glass window and into the room beyond.";
		change the description of the plate glass window to "You see nothing special about the plate glass window, except for the fact that it's been smashed into a hojillion pieces, thus allowing you access to the room beyond.";
		move the player to the Back Office;
	end if.

Chapter 6 - Transitional Code

Whisper 6 ends when the location is the Back Office.

Section Skip - not for release

Instead of skipping ahead during Whisper 6:
	say "Skipping Scene 6";
	now Vegas-aware is true;
	now the heirloom box is carried;
	now the decoder ring is worn;
	now the plate glass window is open;
	move the player to the Back Office.

[Continuing on, you'd define some room as being west of the Back Office.]

Chapter 7 - Debugging - not for release

test wh6 with "floyd / search artifacts / get box / open box / get ring / wear ring / decode luxor / play slots / n / s / turn on machine / n / n / floyd off".

Part 7 - TBA by N B Horvath


Chapter 1 - Embellishments

[This extends a table of music to be played on a guitar. Perhaps we can keep it extending throughout the entire work! Please note that you need to have a period at the end since this comes at the end of a sentence when used.]
Table of guitar (continued)
music
"'Greensleeves.'"
"a few midtempo ska riffs."
"your song from Rome (sniff)."

Chapter 2 - The Vegas Givers

A Vegas giver is a kind of person. A Vegas giver has some text called flair.

Bruce K, Corinne Q, and Sammy Z-E are Vegas givers. Bruce K, Corinne Q, and Sammy Z-E are in the Giving Lounge. The description of a Vegas giver (called vg) is "[the printed name] is identified by an extremely generic 'HELLO MY NAME IS' name tag. [flair] [run paragraph on] [The noun] is carrying [a list of things carried by the noun].".

The flair of Bruce K is "He looks to be in his fifties. He stands a little over 6 feet tall, but he is stooped over slightly. He is wearing golf clothes and out-of-fashion glasses." The flair of Corinne Q is "She is thirtysomething, stylish and attractive but a little nervous-looking." The flair of Sammy Z-E is "He is probably in his early twenties but looks ten years younger than that."

Table of Giving Words
myword
"gives"
"donates"
"hands"
"presents"
"forks over"
"gifts"
"passes"
"transfers"

Table of Vegas Giver Stunts
stunt
"Bruce K grumbles about his rough luck in the slots."
"Corinne Q fusses with her hair."
"Corinne Q grumbles about how she wanted to be a doctor."
"Sammy Z-E ogles Corinne Q behind her back."
"Bruce K gives Sammy Z-E some fatherly advice about stopping to smell the roses and sow the wild oats."
"Sammy Z-E turns at you and says, 'Hey, nice family crest.' How did he know about that?"
"Corinne Q drops a casual reference to the Shisha Souk. You do a double-take."
"Bruce K, evidently possessed by a signal from the Mime Broadcast Chamber, acts like he's trapped in a cage for a moment."
"From an unseen source a hollow voice booms, LET ME SEE YOU MOVE. Bruce K starts dancing to the ensuing R'n'B music with surprising agility. Then silence returns to the Giving Lounge, and Bruce K returns to his job of silently giving away trinkets."
"Sammy Z-E tries to flirt with Corinne Q, awkwardly. Corinne Q says, 'Stick to the gift items, kid.'"
"Sammy Z-E pines for a joint. If only you had thought to bring one from the Souk."
"It strikes you that all these items being enthusiastically exchanged fall far short of what you would call treasure."
"You stare at these three individuals, engaged in furious mutual philanthropy. What is their deal? Have they been possessed by the Meme Chamber?"

Chapter 3 - The Vegas Items

A Vegas item is a kind of thing. 

[
["Printing the description" activity comes from the "Crusoe" example in Section 17.5 of the manual.]
The fancy examining rule is listed instead of the standard examining rule in the carry out examining rules. 
Printing the description of something is an activity. 
This is the fancy examining rule: 
    carry out the printing the description activity with the noun. 
Rule for printing the description of something (called item): 
    say "[description of item]". 
After printing the description of a Vegas item:
]

Instead of  examining a Vegas item which is carried by a Vegas giver (called the carrier):
	Say "[The noun] is carried by [the carrier]."

A souvenir clock, a souvenir basketball, a souvenir anchor, a plastic sword, a plastic shield, a plastic card, a bolt of cloth, a bolt of lightning, a bolt of inspiration, a small wooden fish, a small wooden woodchuck, and a small wooden house are Vegas items. 

Bruce K carries the souvenir basketball, the bolt of cloth, the small wooden fish, and the plastic shield. Corinne Q carries the souvenir anchor, the bolt of lightning, the plastic sword, and the small wooden woodchuck. Sammy Z-E carries the souvenir clock, the small wooden house, the bolt of inspiration, and the plastic card.

Definition: A person is souvenircarrying if the souvenir clock is carried by it and the souvenir basketball is carried by it and the souvenir anchor is carried by it.
Definition: A person is plasticcarrying if the plastic sword is carried by it and the plastic shield is carried by it and the plastic card is carried by it.
Definition: A person is boltcarrying if the bolt of cloth is carried by it and the bolt of lightning is carried by it and the bolt of inspiration is carried by it.
Definition: A person is woodcarrying if the wooden fish is carried by it and the wooden woodchuck is carried by it and the wooden house is carried by it.

Definition: A person is enlightened if it is souvenircarrying or it is plasticcarrying or it is boltcarrying or it is woodcarrying.
Definition: A person is unenlightened if it is not enlightened.

Chapter 4 - Curb your dog

A procedural rule: if in Giving Lounge then ignore the canine fidget rule.

Instead of examining Curb when in Giving Lounge, say "Curb looks unusually quiet in this room. A good thing too, given what he does to people[apostrophe]s stuff."

Every turn during Whisper 7:
	if Curb is not in the location of the player:
		move Curb to the location of the player;
		say "Curb scampers after you.";


Chapter 5 -  Oh, what a giveaway

Whisper 7 is a scene. Whisper 7 begins when Whisper 6 ends.

Giving Lounge is west of Back Office.  The description of Giving Lounge is "You are in a brightly-lit pillared underground chamber, with purple shag carpeting and a group of very generous people. A back office lies to the east, while the west end of the lounge gives off a gentle glow." A Cubist shape is in the Giving Lounge. The description of the Cubist shape is "It's pretty shapeless, actually. It must have arrived here by cannon from the MOMA Broadcast Center." A red square is in the Giving Lounge. The description of the red square is "This looks like another MOMA projectile."  A gray square is in the Giving Lounge. The description of the gray square is "This looks like another MOMA projectile."   A brown square is in the Giving Lounge. The description of the brown square is "This looks like another MOMA projectile." A black square is in the Giving Lounge. The description of the black square is "This looks like another MOMA projectile."


Every turn when in Giving Lounge:
	If a random chance of 1 in 6 succeeds:
		Choose a random row in the Table of Vegas Giver Stunts;
		say "[stunt entry][line break]".

Every turn during Whisper 7: 
	Repeat with vgiver running through unenlightened Vegas givers:
		If the number of things carried by vgiver is 0:
			If the player can see vgiver, say "[The printed name of vgiver], having nothing to give away, sits down and sobs.";
		Otherwise:
			Let the giveaway item be a random thing carried by vgiver;
			let the recipient be a random Vegas giver;
			if the recipient is not vgiver and a random chance of 1 in 3 succeeds:
				let the gift be a random thing carried by vgiver;
				silently try vgiver giving the gift to the recipient;
				if the player can see vgiver:
					choose  a random row in the Table of Giving Words;
					say "[The printed name of vgiver] [myword entry] [a gift] to [if the recipient is the player]you[otherwise][the recipient][end if]. [run paragraph on]";
				let exchange gift be a random thing carried by the recipient;
				silently try the recipient giving the exchange gift to vgiver;
				if the player can see vgiver:
					choose a random row in the Table of Giving Words;
					say "[The printed name of the recipient] [myword entry] [an exchange gift] to [vgiver]."

Every turn during Whisper 7:
	If player is enlightened, say "You glow with enlightenment.";
	repeat with vgiver running through enlightened Vegas givers:
		If the player can see vgiver, say "[The printed name of vgiver] glows with enlightenment."

A procedural rule: If the second noun is a Vegas giver, ignore the block giving rule.
A procedural rule: If the actor is a Vegas giver, ignore the block giving rule.

After giving something to someone when the second noun is a Vegas giver:
	Say "You give [the noun] to [the second noun]. [run paragraph on]";
	let the gift be a random thing carried by the second noun;
	silently try the second noun giving the gift to yourself;
	choose a random row in the Table of Giving Words;
	say "[The second noun] [myword entry] [a gift] to you.".

Chapter 6 - Pearly gates

Gateway is west of Giving Lounge. The description of Gateway is "This end of the Giving Lounge is bathed in gentle light. A set of (literally) pearly gates stands to the west.

You pause to reflect on this for a moment. The fact that the pearly gates are [italic type]underground[roman type] adds that extra touch of Vegas oddness to the scene."

A guardian angel is a person in the Gateway. The description of the guardian angel is "Actually he's dressed as a Roman centurion, but you can tell that he's a guardian angel from the 'HELLO MY NAME IS' name tag."

The set of pearly gates is west of the Gateway. The set of pearly gates is a door. Understand "gate" as the set of pearly gates when in the Gateway.

Instead of opening the pearly gates when location is Gateway:
	If the player is unenlightened:
		say "The angel gently blocks your way. 'Sorry my child. You are not enlightened. You do not match. Not yet.'";
	Otherwise:
		say "The angel opens the gates with a smile, and you pass beyond. Could the treasure you seek lie beyond?";
		now the pearly gates are open;
		move the player to Vegas Heaven.		

Before going west in Gateway: Try opening the pearly gates instead.

Vegas Heaven is west of the Pearly Gates. The description of Vegas Heaven is "The underground Las Vegas version of Heaven is as big as a major city railway terminal and brilliantly lit, with a high vault ceiling painted sky blue. Vapory, cottoney off-white structures flit about the room, blown by a pleasant breeze from discreetly placed and deeply muffled fans. It's all spectacularly fake, of course, but with superb production values."

Whisper 7 ends when the location is Vegas Heaven. 

Section Skip - not for release

Instead of skipping ahead during Whisper 7:
	say "Skipping Scene 7";
	now the player is in Vegas Heaven.

Part 8 - Heaven is Heart-Shaped Bed by Jacqueline A Lott

Whisper 8 is a scene. Whisper 8 begins when Whisper 7 ends.

Chapter 1 - Embellishments

[This extends a table of music to be played on a guitar. Perhaps we can keep it extending throughout the entire work! Please note that you need to have a period at the end since this comes at the end of a sentence when used.]
Table of guitar (Continued)
music 
"'Starry, Starry Night' by Don McLean. You always loved that tune."
"'Stairway to Heaven,' but just the first few opening chords because that's all anyone ever cares about."
"'Dueling Banjos,' but quickly realize that it just sounds wrong on a guitar."
[NOTE: The code, as I received it, does not require that you actually be holding the guitar to play it.  Not sure if that's the case overall, but if it is, that should be fixed.]

A thing can be examined or unexamined.  A thing is usually unexamined.  
	After examining a thing (called x): if x is unexamined begin;
	now x is examined;
	end if.

A thing can be affectionate or unaffectionate.  A thing is usually unaffectionate.  


Chapter 2 - Verbs

Petting is an action applying to one thing.
Understand "pet [something]" or "caress [something]" or "stroke [something]" or "pat [something]" or "scratch [something]" as petting.
Instead of petting Curb:
	say "You [one of]playfully[or]lovingly[or]friskily[or]actively[or]vigorously[or]briskly[or]energetically[at random] [one of]caress[or]pet[or]stroke[or]pat[or]rub[or]scratch[at random] Curb's [one of]head[or]haunches[or]scruff[or]ears[or]chin[at random] until he [one of]falls over[or]starts drooling[or]closes his eyes and nearly falls asleep[or]settles down a bit[at random]. The [one of]second[or]moment[or]instant[at random] you stop, though, he [one of]returns[or]reverts[or]goes right back[or]regresses[at random] to [one of]his same old self[or]what is - at least for him - normal[at random]."
Instead of petting the Goddess:
	try kissing the Goddess.
Instead of petting a person:
	say "I'm not sure that's entirely appropriate."
Instead of petting something:
	say "Must you try to caress everything?"
Instead of rubbing a person, try petting the noun.

Instead of entering the pearly gates when location is Gateway:
	If the player is unenlightened:
		say "The angel gently blocks your way. 'Sorry my child. You are not enlightened. You do not match. Not yet.'";
	Otherwise:
		say "The angel opens the gates with a smile, and you pass beyond. Could the treasure you seek lie beyond?";
		now the pearly gates are open;
		move the player to Vegas Heaven.

Understand "strum [something]" as playing.

Worshipping is an action applying to one thing.
Understand "worship [something]" or "revere [something]" or "glorify [something]" or "exalt [something]" or "sanctify [something]" or "venerate [something]"as worshipping.
Instead of worshipping the Goddess:
	say "You [one of]bow down[or]fall to your knees[or]prostrate yourself[at random] before the goddess.[paragraph break]She [one of]lowers her gaze[or]looks at you from beneath veiled lids[or]smiles seductively[or]raises an eyebrow[or]winks at you playfully[or]blows you a kiss[or]licks her lips[at random]. '[one of]That's what I like[or]That's right, bow down before me[or]Welcome to Vegas[or]Welcome to Heaven[or]Is that what you want to do[or]Is that how you want to play it[or]Is that your game[or]Is that why you're here[or]Oh yes[at random], [one of]my[or]you[at random] [one of]naughty[or]obedient[or]wicked[or]dirty[or]mischievous[or]fiendish[at random] [one of]little thing[or]thing[or]little love slave[or]love slave[or]little love machine[or]love machine[at random]. [one of]Well, then... come join me[or]Hm, maybe you should join me[or]I think you should come sit next to me[or]Come here, lover[at random].'";
	now the Goddess is affectionate.
Instead of worshipping something:
	say "Blasphemy!"

Blaspheming is an action applying to nothing.  Understand "blaspheme" or "curse" as blaspheming.  
	Instead of blaspheming while in Vegas Heaven: 
		try rejecting the Goddess.  
	Instead of blaspheming: say "Blasphemy!".

Blaspheming to is an action applying to one thing.  Understand "blaspheme [something]" or "curse [something]" as blaspheming to.  
	Instead of blaspheming to the Goddess:
		try rejecting the Goddess.  
	Instead of blaspheming to something:
		say "You curse [the noun]!".

Praying is an action applying to nothing.  Understand "pray" as praying.
Instead of praying while in Vegas Heaven: say "You [one of]bow down[or]fall to your knees[or]prostrate yourself[at random] before the goddess.[paragraph break]She [one of]lowers her gaze[or]looks at you from beneath veiled lids[or]smiles seductively[or]raises an eyebrow[or]winks at you playfully[or]blows you a kiss[or]licks her lips[at random]. '[one of]That's what I like[or]That's right, bow down before me[or]Welcome to Vegas[or]Welcome to Heaven[or]Is that what you want to do[or]Is that how you want to play it[or]Is that your game[or]Is that why you're here[or]Oh yes[at random], [one of]my[or]you[at random] [one of]naughty[or]obedient[or]wicked[or]dirty[or]mischievous[or]fiendish[at random] [one of]little thing[or]thing[or]little love slave[or]love slave[or]little love machine[or]love machine[at random]. [one of]Well, then... come join me[or]Hm, maybe you should join me[or]I think you should come sit next to me[or]Come here, lover[at random].'";
	now the Goddess is affectionate.
Instead of praying while in the Gateway: 
	If the player is unenlightened:
		say "I think there's a little bit more to this puzzle than that, sorry.";
	Otherwise:
		say "I don't know why you're praying. You're already glowing with enlightenment, after all."
Instead of praying: say "You mumble a prayer from your childhood:[paragraph break][italic type]I see the moon, and the moon sees me.[line break]God bless the moon and God bless me.[roman type][paragraph break]It's a pretty selfish prayer, when you think about it. I mean, the moon is covered, but I guess you really don't care about anything or anyone else, do you?[paragraph break]I swear... you belong in Vegas."

Praying to is an action applying to one thing.
Understand "pray to [something]" or "appeal to [something]" or "invoke [something]" as praying to.
Instead of praying to the Goddess:
	say "You [one of]bow down[or]fall to your knees[or]prostrate yourself[at random] before the goddess.[paragraph break]She [one of]lowers her gaze[or]looks at you from beneath veiled lids[or]smiles seductively[or]raises an eyebrow[or]winks at you playfully[or]blows you a kiss[or]licks her lips[at random]. '[one of]That's what I like[or]That's right, bow down before me[or]Welcome to Vegas[or]Welcome to Heaven[or]Is that what you want to do[or]Is that how you want to play it[or]Is that your game[or]Is that why you're here[or]Oh yes[at random], [one of]my[or]you[at random] [one of]naughty[or]obedient[or]wicked[or]dirty[or]mischievous[or]fiendish[at random] [one of]little thing[or]thing[or]little love slave[or]love slave[or]little love machine[or]love machine[at random]. [one of]Well, then... come join me[or]Hm, maybe you should join me[or]I think you should come sit next to me[or]Come here, lover[at random].'";
	now the Goddess is affectionate.
Instead of praying to something:
	say "Blasphemy!".

Rejecting is an action applying to one thing.
Understand "reject [something]" or "defy [something]" or "disavow [something]" or "disown [something]" or "forsake [something]" or "rebuff [something]" or "refuse [something]" or "renounce [something]" or "slight [something]" or "snub [something]"as rejecting.
Instead of rejecting the Goddess:
	say "'What do you think you are?' you ask. 'Some kind of hot and holy little sex muffin? I'll have you know that I possess strong moral fiber, and will not succumb to your feminine wiles!'[paragraph break]Her eyes open wide and fill with rage. 'Oh, you [italic type]won't,[roman type] will you?'[paragraph break]You catch a brief glimpse of her cleavage. 'Um...'  Must. Look. In. Her.  Eyes... 'No. No, I won't!'[paragraph break]'You're perfectly sure?'  She crawls toward you a little bit more. 'Absolutely certain?'[paragraph break]Gosh, I dunno. [italic type]Are[roman type] you sure?[paragraph break]>";
	If the player consents:
		say "[line break]You gather all of your strength and cry out, 'YES!'[paragraph break]'Hm. Very well, then. Goodbye!'  And with that, the floor opens up beneath you, and you faaaallll...";
		move Curb to Hell;
		move the player to Hell;
	Otherwise:
		 say "[line break]You give it some thought. Real thought, this time, not just impulse...[paragraph break]And you realize that maybe the Vegas lifestyle isn't so bad. Not really.[paragraph break]Looks like it might be fun, actually, to climb up onto the fuzzy white bed and...[paragraph break]...and what? Gosh. You're not sure. You think about that, too...[paragraph break]And you decide that you'll do pretty much whatever she [italic type]wants[roman type] you to do. 'What the hell?' you say. 'Why not?'  She smiles as you climb up into the big, white, furry couch and snuggle up beside her.[paragraph break]Just one kiss, and the world seems to dissolve around you...";
		move Curb to Bliss;
		move the player to Bliss.
Instead of rejecting Curb:
	say "Curb looks heartbroken for a moment, but quickly gets over it."
Instead of rejecting something:
	say "You'll never know what you missed out on."

Accepting is an action applying to one thing.
Understand "accept [something]" or "receive [something]" or "honor [something]" or "understand [something]" or "submit to[something]" as accepting.
Instead of accepting the Goddess:
	try praying to the Goddess.
Instead of accepting Curb:
	say "Curb wags his tail."
Instead of accepting something:
	say "What happens in Vegas stays in Vegas..."

Talking to is an action applying to one thing.
Understand "talk to [something]" as talking to.
Instead of talking to the Goddess:
	say "[one of]She just smiles at you seductively[or]She licks her lips, but says nothing[or]She giggles a little, but doesn't say a word[or]She raises an eyebrow, but remains silent[at random].".
Instead of talking to something:
	say "You really shouldn't talk to random objects.".

Chapter 3 - Place

TheHeaven is scenery in Vegas Heaven. Understand "heaven" or "underground" or "underground Las Vegas" or "Vegas Heaven" or "version of Heaven" as TheHeaven. The description of TheHeaven is "Well, it's not how you'd pictured it back in Sunday School, that's for sure.[paragraph break]The underground Las Vegas version of Heaven is as big as a major city railway terminal and brilliantly lit, with a high vault ceiling painted sky blue. Vapory, cottoney off-white structures flit about the room, blown by a pleasant breeze from discreetly placed and deeply muffled fans. It's all spectacularly fake, of course, but with superb production values."

Understand "pearl" and "pearls" as Pearly Gates.  The description of the Pearly Gates is "The gates are... very... what's the word? Oh, right.  Pearly.  Like, [italic type]seriously[roman type] pearly."  Instead of taking or touching the Pearly Gates: say "Best leave them alone.  Don't want the LVPD on your ass, do you?"

The lights are scenery in Vegas Heaven.  Understand "light" and "lighting" as the lights.  The description of the lights is "You look up, hoping to see the source of the light, but its too intense and you are forced to look away."  Instead of taking or touching the lights: say "You can't even see them, so how could you take them?"

The high vault ceiling is scenery in Vegas Heaven.  Understand "sky" and "heavens" as the high vault ceiling.  The description of the high vault ceiling is "It is painted sky blue.  Convincingly.  Like, there's clouds and birds and everything."  Instead of taking or touching the high vault ceiling: say "Um, it's way, way, [italic type]way[roman type] too high up to reach."

The clouds are scenery in Vegas Heaven.  Understand "cloud" as the clouds.  The description of the clouds is "White and fluffy and oh-so-realistic!"  Instead of taking or touching the clouds: say "Um, the clouds are way, way, [italic type]way[roman type] too high up to reach."

The birds are scenery in Vegas Heaven.  Understand "bird" as the birds.  The description of the birds is "On closer examination, the birds in the sky are not very realistic. Not as realistic as the clouds, certainly. They're sort of childlike. Some looks like the letter V and some look like a that } key that you never seem to use while typing. Except the } isn't on it's side, like it is on your keyboard, because that would just look weird.[paragraph break]But perhaps we should just get back to the story..."  Instead of taking or touching the birds: say "Um, the birds are way, way, [italic type]way[roman type] too high up to reach."

The vapory cottoney off-white flowy structures are scenery in Vegas Heaven. "Um, you guess they're supposed to represent clouds.[paragraph break]...except they're all flowy, so maybe they're supposed to be souls.[paragraph break]...but then again, they're [italic type]off[roman type]-white, so maybe they're supposed to be pollution.[paragraph break]Who knows what the hell they're supposed to be."  Instead of taking or touching the high vault ceiling: say "Um, those crazy things are way, way, [italic type]way[roman type] too high up to reach."

The discreetly placed deeply muffled fans are scenery in Vegas Heaven.  Understand "discreetly placed and deeply muffled fans" or "breeze" or "fan" as the discreetly placed deeply muffled fans.  The description of the discreetly placed deeply muffled fans is "You can't see them, but you know they're there, working their Vegas magic."  Instead of taking or touching the discreetly placed deeply muffled fans: say "You can't even see them, so how could you take them?"

The heart-shaped bed is a supporter in Vegas Heaven.  Understand "couch" or "white" or "fur" or "furry" or "big" or "heart shaped" as the heart-shaped bed.  The description of the heart-shaped bed is "The, um, goddess is lying down on a heart-shaped bed. Maybe it's more of a couch. It doesn't seem to have any sheets or anything... it seems to be upholstered in white fur. Looks soft, though.[paragraph break]The couch, I mean.[paragraph break]Well, the goddess too.[paragraph break]I mean, she's not fat or anything. Just soft. You know, her skin."  Instead of entering or taking the heart-shaped bed: try touching the Goddess.

Chapter 4 - The Goddess

God is a man in Vegas Heaven.  God is scenery.  The description of God is "God? Perhaps you should look again.  Try God[italic type]dess.[roman type]".
Instead of taking or touching or kissing or petting or attacking or worshipping or praying to or rejecting or accepting or talking to  God: 
	say "God? Perhaps you should look again. Try God[italic type]dess.[roman type][line break]".

Instead of asking God about something:
	say "God? Perhaps you should look again. Try God[italic type]dess.[roman type][line break]".

Instead of telling God about something:
	say "God? Perhaps you should look again. Try God[italic type]dess.[roman type][line break]".


After looking while in Vegas Heaven and the location of the Goddess is Vegas Heaven: say "And, more to the point, there's someone [italic type]on[roman type] the bed.[line break]"

The Goddess is a woman in Vegas Heaven.  Understand "person" or "someone" or "woman" or "chick" or "chyk" as the Goddess.  The Goddess is scenery. The description of Goddess is "[if unexamined]The woman on the bed is nothing short of a goddess. And it's not just the tacky Vegas version of Heaven that's making you think that way.[otherwise]She's a goddess... long flowing hair, amazing eyes, full lips, the shape of perfection."  
Instead of attacking the Goddess:
	try rejecting the Goddess.
Instead of kissing or touching or taking the goddess: 
	If the Goddess is affectionate:
		say "You [one of]move[or]advance[or]walk[or]stride[at random] toward her, and she welcomes you with open arms. She smiles as you climb up into the big, white, furry couch.[paragraph break]Just one kiss, and the world seems to dissolve around you...";
		move Curb to Bliss;
		move the player to Bliss;
	Otherwise:
		say "You [one of]move[or]advance[or]walk[or]stride[at random] toward her, but she [one of]raises a hand to stop you[or]shakes her head[at random]. '[one of]Sorry[or]I'm afraid not[or]Not so fast[or]I don't think so[at random], [one of]my darling[or]lover[or]slave[at random]. I'm not [italic type]quite[roman type] that easy... I'm a goddess, after all.'".

Instead of asking the Goddess about something:
	try talking to the Goddess.

Instead of telling the Goddess about something:
	try talking to the Goddess.

Whisper 8 ends in ecstasy when the location is Bliss. Whisper 8 ends in perdition when the location is Hell.

Section Skip - not for release

Instead of skipping ahead during Whisper 8:
	say "Skipping Scene 8";
	now the player is in hell.
	

Part 9 - Hell Hath No Fury by Brian Rapp

Whisper 9 is a scene.  Whisper 9 begins when Whisper 8 ends.  Whisper 9 ends when the player is in the Solid State Home for Lost Objects.

Bliss is a room.  The printed name is "Afterbliss".
The description is "Oh, now you've done it. Or at least, you presume that you've done it, since you don't really remember anything after that first kiss. You're all alone on your conjugal couch."
The couch is scenery in Bliss.  Understand "heart-shaped" or "bed" or "white" or "fur" or "furry" or "big" or "heart shaped" as the couch.
The description of the couch is "The couch's fur is now disheveled and matted. It no longer seems an appealing place to remain.".
Instead of exiting in Bliss:
	say "The floor opens up beneath you, and you fall for an exceedingly great distance...";
	damn the protagonist.

When Whisper 9 begins:
	if Whisper 8 ended in perdition, damn the protagonist.

To damn the protagonist:
	move Curb to Hell;
	if the location of the player is not Hell, move the player to Hell;
	now the description of the player is "Rather more charred than you'd prefer.";
	move the guitar to the Solid State Home for Lost Objects;
	move the accordion to the player.

Hell is a room.
The description is "Cut off from everything good in the universe, your sensations are limited to pain, frustration, and ennui. You are immersed in an endless sea of fire, which certainly doesn't help matters.";

The devil is a man in Hell.

Before examining the devil:
	say "The banality of evil is personified by this loathsome fellow, who doesn't project fear so much as an intense longing to be anywhere other than in his presence.";

Instead of doing something to the devil:
	remove Curb from play;
	remove the devil from play;
	move the helmet to hell;
	if Curb is living:
		say "The devil looks in your direction and says 'Cerberus! Where have you been?'  He then seizes Curb by the neck and drags him away, continuing to abuse the animal for abandoning his duty. You are unable to care about this turn of events, but notice that the devil has lost his helmet during the struggle.";
	if Curb is dead:
		say "The devil suddenly notices Curb's charred corpse, which is wrong in more ways than one. He cries 'Cerberus! No!' in an anguished tone and leaps on top of the animal, losing his helmet in the process. Both devil and dog are then immolated by a brief but intense burst of flame. You shrug.";
	now Curb is dead.

The helmet is a wearable thing.  Understand "horned" as the helmet.
The description is "Apparently the devil's horned head was really just a horned helmet. How strange. Was he an actual devil, then? Maybe he was a really old devil that needed prosthetics to cover his Hell Pattern Hornlessness.";

After taking the helmet:
	move the imp to the player;
	move the chesterton to the player;
	say "The imp on your left shoulder warns you: 'Thou shalt not steal.'  On your right shoulder, G. K. Chesterton replies: 'Thieves respect property. They merely wish the property to become their property that they may more perfectly respect it.'  You hadn't noticed either of these apparitions before this moment, but find yourself leaning in the direction of the latter. You pick up the horned helmet.";

The imp is a man.  Understand "apparition" or "apparitions" as the imp.
The printed name is "imp on your left shoulder";

The Chesterton is a man.  The printed name is "G. K. Chesterton on your right shoulder";

Instead of doing something to the imp, try examining the Chesterton;

Instead of doing something to the Chesterton:
	remove the imp from play;
	remove the Chesterton from play;
	say "As if suddenly embarrassed by your attention, both figments disappear without a sound. You straighten your shoulders with a certain sense of relief, and appreciate the opportunity to do so.";

The accordion is a thing.  The description is "Black as night, black as coal. You wouldn't mind at all the prospect of seeing it blotted out.";

Instead of playing the accordion:
	say "Your rendition of 'Chariots of Fire' is far more depressing than it has any right to be.";

Instead of dropping the accordion in Hell:
	say "The accordion is consumed by flames.  You cannot smile.";
	remove the accordion from play;

The helicopter is an enterable open container in hell.
Understand "heli" or "helo" or "copter" as the helicopter.
Instead of examining the helicopter:
	if the player is inside the helicopter:
		instead try searching the helicopter;
	say "This helicopter is a magical shade of black that casts neither reflections nor shadows. It is almost entirely featureless, inside and out.";

Instead of searching the helicopter:
	say "You search in vain for any kind of control mechanism.";

Concentrating is an action applying to one topic.
Understand "think about [text]" as concentrating.
Understand "concentrate on [text]" as concentrating.

Understand "concentrate" as thinking.
Instead of thinking:
	if the player is inside the helicopter and the player is wearing the helmet:
		instead say "The helicopter hovers amidst the flames and describes a very slow spiral in the air, as if it were searching for something.";
	if the player is wearing the helmet:
		 instead say "Unbearably hellish music overwhelms your thoughts. You struggle mightily to think about something else.";
	say "You keep thinking and thinking, but nothing happens!"

Instead of concentrating:
	if the player is not inside the helicopter and the player is not in Hell,
		instead try thinking;
	if the topic understood includes "god",
		instead say "No, that's not it. Your thoughts are of something harder, more full of worldly purpose.";
	if the topic understood includes "curb/cerb/dog",
		instead say "That won't do. You want to be thinking of something smaller, something you can take with you wherever you may go.";
	if the topic understood includes "accordion",
		instead say "No, not that. You grok a wrongness.";
	if the topic understood includes "music",
		instead say "That might be nearly the correct train of thought, but you feel that you need something less conceptual, more concrete.";
	if the topic understood includes "loss",
		instead say "Yes, loss... You've lost something of value, and you need to think on it more fully.";
	if the topic understood includes "hell",
		instead say "Hell has deprived you of everything good, but you sense the lack of one thing in particular.";
	if the topic understood includes "heli/helo/copter/helicopter",
		instead say "The helicopter thrums indecisively, as if awaiting some choicer thought.";
	if the topic understood includes "guitar",
		instead rhapsodise;
	instead say "Your thoughts instead turn to feelings of loss... Poignant loss... Loss of something tangible and true.";

To rhapsodise:
	if the player is not inside the helicopter:
		say "Aha! Your guitar! But how can you reach it now?";
		rule succeeds;
	if the player is not wearing the helmet:
		say "Yes! Your guitar! But your thoughts lack the puissance to become reality. Action is required to let thought take flight.";
		rule succeeds;
	say "The helicopter whirs with newfound energy, and whisks you away at what can only be described as the speed of thought. Flames and darkness and loss all evaporate in a hurricane of recovered emotion...";
	move the player to the Solid State Home for Lost Objects;

The Solid State Home for Lost Objects is a room.

Section Skip - not for release

Instead of skipping ahead during Whisper 9:
	say "Skipping Scene 9";
	move the nox box to the player;
	move a random red gear to the player;
	remove Curb from play;
	now Curb is dead;
	now the player is in solid state home for lost objects.

Part 10 - Endgame - or is it? - by Mark Musante

Whisper 10 is a scene.  Whisper 10 begins when Whisper 9 ends.  Whisper 10 ends when the game is over.

Chapter K - kinds

Understand the colour property as describing a gear.

A distant item is a kind of thing.  A distant item is scenery.

Before doing something with a distant item:
	unless the current action is examining:
		say "It's far too far away.";
		stop the action.

Chapter P - Places

Off Limits To Teleportation is a region.

Section 1 - Blinding White Background

The Solid State Home for Lost Objects has printed name "Blinding White Background".  It has description "A nothingness full of whiteness surrounds you. The only way out is not to leave. [if the player encloses the nox box]Disconcertingly, one of your possessions is making a faint buzzing sound.[otherwise]You get the feeling you missed something. Time to retrace your steps, perhaps?[end if]"

Section 2 - Basement

Basement is a room. "This would be pitch-black if it weren't for [if the Basement encloses the glow-jar]your glow-jar and [end if]a bit of light coming in via the window. A rickety staircase leads upwards."

Instead of going up when the player is in Basement, go somewhere else.

Section 3 - Grassy Field

Grassy Field is a room. "A wide open field with a blue sky above. Far off in the distance, towards the setting sun, you can see a large, lone tree. Closer by, like nearly on top of you, is an enormous trebuchet."

Before doing something with the giant silver sphere:
	if the player is in Grassy Field and the current action is not examining:
		say "The sphere is securly in the sling, and the sling is way up on the trebuchet, and you're down on the ground, and you're not going to reach that sphere no matter how much you will your arms longer.";
		stop the action.

Instead of going nowhere when the player is in Grassy field, go somewhere else.

Section 4 - Under a Tree

Under a Tree is a room. "A tree stands majestically in the middle of a great open field. The sun, just rising over the horizon, makes the tree's shadow stretch off over the grass into the distance. The field continues in all directions."

Instead of going nowhere with the giant silver sphere when the player is in Under a Tree, process the sphere.
Instead of going nowhere when the player is in Under a Tree, go somewhere else.

Section 5 - Plane Cabin

Plane Cabin is a room. "Hunched over in a cramped, lurching, noisy cabin makes your back hurt and endangers your hearing. Wires and cables are strung neatly nearly everywhere, and pipes prove useful when you need to grab onto something. A hatch in the ceiling leads to the deck above you, and a door is set into the hull of the plane."

Instead of going up when the player is in Plane Cabin:
	if the hatch is not open:
		say "You spin the wheel on the hatch, swing it open, and start to climb through...";
	go somewhere else.

Instead of exiting when the player is in Plane Cabin:
	say "You leap to your death. And your death takes a while to hit you, mostly because it comes in the form of the ground, which was far far below the plane.";
	end the game in death.

Section 6 - Beach

Beach is a room.  It has description  "A picturesque beach at sunset. Clich[e accent], but extremely pleasant. The sun glints over the waters as the waves crash gently on the shore. The beach is secluded, with cliffs all around you. [if beach is not visited]At last, you can relax. It seems like forever ago when you started in [printed name of retracing point] and your odd and surreal journey began. But now it's over, and you've found a place to rest.[end if] All it needs is a bit of music to be complete."

[This is supposed to be typable into the source text, but the web site we were using kept messing up the encoding of it. This lets us keep the source text 7-bit clean while letting the binary not require unicode support.]
To say e accent:
	(- print "@'e"; -)

Instead of going nowhere when the player is in Beach, go somewhere else.

Section Last - Region Definitions

Bliss, Hell, Basement, Grassy Field, Under a Tree, Plane Cabin, and Beach are in Off Limits To Teleportation.

Chapter T - tables

Table 1 - Puzzle Locations
Num	Sense			Location
1	"a house"		Basement
2	"a field"			Grassy Field
3	"a tree"			Under a Tree
4	"an enclosed space"	Plane Cabin
5	"a beach"		A Beach

Chapter V - verbs

Shaking is an action applying to one thing.  Understand "shake [something]" as shaking.

Check shaking:
	if the noun is not held, say "You must be holding [the noun] to shake it." instead.

Carry out shaking:
	say "Violence is not the answer."

Retracing steps is an action applying to nothing.  Understand "retrace" or "retrace steps" as retracing steps.

Check retracing steps:
	if the player is thoroughly prepared, say "No need - you've got everything." instead;
	if the location of the player is in Off Limits To Teleportation, say "No need - you're soaking in it." instead.

Carry out retracing steps:
	say "You trudge through the game, looking carefully for where you could have left that damned nox box.  	Stupid game.  Shouldn't have let you drop it to begin with for crissakes.  A-ha, here it is.  After picking
	it up, you look around and see you've arrived in ...";
	now the player is in retracing point;
	now the nox box is in the player.

To decide if the player is thoroughly prepared:
	unless the player encloses the Nox box, decide no;
	unless the player encloses the guitar, decide no;
	if the number of gears enclosed by the Nox box is greater than zero, decide yes;
	if the number of gears enclosed by the player is greater than zero, decide yes;
	decide no.

Chapter O - objects

Section 1 - Basement

A cupboard is a closed openable container in Basement.  In the cupboard is a yellow gear and a blue gear.  The cupboard has description "Just an ordinary wooden cupboard.[if the cupboard is open] Inside, you see [contents of cupboard]."

A rickety staircase is scenery in Basement.  It has description "Rotting wood and rusty nails are the only things making this collection of planks and boards map to the term 'staircase' in your mind.  It looks dangerous to climb, but it's the only way out."

Instead of climbing the rickety staircase, try going up.

Section 2 - Plane Cabin

The hatch is a door. It is above Plane Cabin [and below Plane Interior]. It has description "This leads up and to the rest of the plane."

A hull door is a door.  It is east of Plane Cabin and west of Open Air.  It has description "A simple door that allows access from the outside. [if hull door is open]Typically these doors are not open during flight, but here it is. Open.[otherwise]It's closed tightly shut, as is proper during flight."

The giant silver sphere is a thing in Plane Cabin. It has description "Although the sphere appears to be silver, you can't be certain exactly what metal it's made of. The surface of it dances and swirls before your eyes, and when you lean close to it, your reflection distorts amusingly. At least, you assume your nose isn't that big. [if the giant silver sphere is landed]Despite the fact that it took quite a journey since you saw it last, it appears completely unharmed, with not a scratch to be seen."  Understand "reflection" as the giant silver sphere.  The giant silver sphere is pushable between rooms.

Understand "glint" as the giant silver sphere.

The giant silver sphere can be reset, dumped, or landed.  The giant silver sphere is reset.

Section 3 - The Plane (ext)

A distant item called the plane is in Grassy Field.  It has description "[plane desc]."

The plane has a number called position.  The position of plane is 0.

To say plane desc:
	if position of the plane is:
		-- 1: say "You can definitely hear it, but you can't quite see it";
		-- 2: say "A-ha! There's a little speck of light reflecting off of something far overhead";
		-- 3: say "The plane is so far away, it appears as no more than a dot of light gleaming off the sun";
		-- 4: say "The plane is nearly out of visual range";
		-- 5: say "You can't really see it any more";
		-- otherwise: say "You can't see any such thing"

Section 4 - The Nox Box

The Nox box is a closed openable container. It has description "The box is square, solid black, and inlaid with strands of silver that makes an unusual and almost hypnotic pattern on all six sides. It's just about the size of the old Christmas presents you used to shake as a kid to guess their contents."

The nox box has a number called destination.  The destination of the nox box is 0.

When whisper 9 begins: the nox box drops in three turns from now.
The retracing point is a room that varies.
When play begins: change the retracing point to the location of the player.

At the time when the nox box drops:
	say "Goodness gracious me. What sort of thing just appeared in your hands? Some sort of box?";
	move the nox box to the player.

Instead of listening to the box, say "The Nox Box makes a [if the nox box is buzzing]noticable buzzing sound[otherwise]slight humming noise[end if]."

Instead of listening to the location when the location encloses the nox box and the nox box is buzzing, try listening to the nox box.

To decide if the Nox box is buzzing:
	unless the location encloses the Nox Box, decide no;
	if the location is the Solid State Home for Lost Objects, decide yes;
	unless the Nox Box is closed, decide no;
	if the destination of the Nox Box is zero, decide no;
	decide yes.

After taking the nox box for the first time:
	say "As you pick it up, you hear it start to hum slightly, but the humming subsides once [the nox box] stops moving."

Instead of pushing the nox box:
	say "As it moves, it makes a faint hum through the air, but the humming subsides once you stop."

The pattern is part of the nox box. It has description "[if the destination of the nox box is 0]Your eyes can't make any sense of the pattern, but you get the feeling you've seen it before. Somewhere.[otherwise]The pattern, although still confusingly complex, gives you the vague impression of [sense corresponding to a num of the destination of the nox box in Table 1]."

Instead of smelling the pattern, say "You get a faint impression of ozone but, when you breathe in more deeply, it doesn't get any stronger. Strange."
Instead of pushing the pattern, say "It's firmly embedded in the box's surface."
Instead of pulling the pattern, say "Try as you might, the silver pattern remains in place."
Instead of listening to the pattern, try listening to the nox box.

Before touching the pattern:
	if the player is in Off Limits to Teleportation:
		say "A faint spark of static jumps from the pattern to your fingers, but nothing else happens.";
		stop the action.

Instead of touching the pattern:
	if the destination of the nox box is 0:
		say "It feels very smooth -- almost frictionless.";
	otherwise:
		say "A snap of static jumps from the pattern to your fingers, and the world collapses around you!";
		now the nox box is in the location of the player;
		let dest be the location corresponding to a num of the destination of the nox box in Table 1;
		now the trebuchet is not loaded;
		now the trigger lever is not pulled;
		now the player is in dest.

Instead of rubbing the pattern, try touching the pattern.

The gear slot is a fixed in place open container in the Nox box.  It has description "[if the gear slot contains something]You peer into the gear slot, and can just make out [contents of the gear slot] in there[otherwise]You call it a gear slot only because there's a small icon of a 6-toothed gear embossed in it. Inside is only an inky darkness[end if]."

Instead of removing something from the gear slot:
	say "Your fingers are too large to reach inside the slot to get that out.";
	stop the action.
Instead of taking something which is in the gear slot:
	say "Your fingers are too large to reach inside the slot to get that out.";
	stop the action.
Instead of inserting something which is not a gear (called the bad item) into the gear slot:
	say "No matter how you angle [the bad item], it can't fit into the slot.";
	stop the action.

Instead of shaking the nox box when the nox box is open:
	if the gear slot contains something:
		say "An alarming rattling sound comes from within the gear slot.";
	otherwise:
		say "[The nox box] starts to hum a bit louder, but nothing happens. As soon as you stop shaking it, the hum subsides."

Instead of shaking the nox box when the nox box is closed:
	if the gear slot contains something:
		let n be the number of things in the gear slot;
		let d be the destination of the nox box;
		increase d by 1;
		if d is greater than n:
			change d to 1;
		change the destination of the nox box to d;
		say "As the box shakes, you get a vague impression of [sense corresponding to a num of d in Table 1].";
	otherwise:
		say "[The nox box] starts to hum a bit louder, but nothing happens. As soon as you stop shaking it, the hum subsides."

In Hell is a red gear.  In Grassy Field is an orange gear.

Section 5 - The Trebuchet

The trebuchet is scenery in Grassy Field.  It has description "The enormity of this enormous trebuchet is enor... is staggering. The wheels themselves are easily forty feet in diameter, if not more. The top reaches too high to even estimate. The rope is thicker than a tree trunk. A really thick tree trunk. The sling is [sling state], and an amusingly small lever built into the side looks like it'll set it off." Understand "wheel", "wheels", "top", and "rope" as the trebuchet.

The trebuchet can be loaded.  The trebuchet is not loaded.

In Tmploc is an indigo gear.

The sling is an open container.  The sling is part of the trebuchet.  It has description "A giant sling to go along with a giant trebuchet. The sling currently contains [contents of sling]."

Before inserting something into the trebuchet:
	say "It's too high up to reach.";
	stop the action.

To say sling state:
	if the trebuchet is loaded:
		say "loaded and ready for release";
	otherwise:
		say "currently empty".

A trigger lever is scenery in Grassy Field.  It has description "[lever state]."  The trigger lever can be pulled.  The trigger lever is not pulled.

To say lever state:
	if the trigger lever is pulled:
		say "It's already been pulled, and the trebuchet cannot be reset";
	otherwise:
		say "It looks ready to be pulled. Almost too ready"

Instead of pulling the trigger lever when the trigger lever is not pulled:
	now the trigger lever is pulled;
	if the trebuchet is loaded:
		say "Slowly at first, and then with increasing speed, the trebuchet pulls the loaded sling underneath and then the sling swings free. It flies far out into the distance and curves upwards in an arc that seems slow only because of the distance involved. At the top of the swing, almost up into the clouds, you see a flash of light as the sphere is thrown clear of the sling. It flies high into the air and you wait and wait as it comes down almost at the horizon. And right into the large lone tree in the distance. The tree shudders once and is still.";
		now the trebuchet is not loaded;
		now the tree is smashed;
		remove the gear of some hue or other from play;
		let n be a random indigo gear; [what's the right way to say this?]
		move n to Under a Tree;
		now the giant silver sphere is landed;
		move the giant silver sphere to Under a Tree;
	otherwise:
		say "Slowly at first, and then with increasing speed, the trebuchet pulls the empty sling underneath and then the sling swings free. It flies far out into the distance and curves upwards in an arc that seems slow only because of the distance involved. When it reaches the top of the arc, it seems to lose all of its energy, and the swing falls to the ground, with tons and tons of rope falling on top of it."

Instead of pulling the trigger lever when the trigger lever is pulled:
	say "It's already been pulled."

The large lone tree is a distant item in Grassy Field.  It has description "Far off in the distance, you can just make out a tree poking up over the tall grass."

Grass is scenery in Grassy Field.  It has description "Tall grass surrounds you, and a sea of it spreads outwards as far as you can see."

Glint of light is a distant item.  It has description "Although it reflects the light of the sun nicely, you can't really make out what it is."

Section 6 - The Tree

A gear of some hue or other is a distant item in Under a Tree. It has description "Far above, in the branches of the tree, you can just barely make out a gear. You're not quite sure what color it is, though."

A nearby tree is scenery in Under a Tree.  It has description "You're not exactly sure what kind of tree this is as you're not a botanist. However, it is tall and sturdy and makes a nice amount of shade, [if the tree is smashed]although many of the branches are splintered and broken[otherwise]and high up in the branches you can just make out a gear of some hue or other[end if].".

The tree can be smashed.  The tree is not smashed.

Instead of climbing the tree, go somewhere else.

Chapter S - Scenes

Plane Overfly is a recurring scene.  Plane Overfly begins when the player is in Grassy Field for the third turn.  Plane Overfly ends when the player encloses the nox box.

When Plane Overfly begins:
	change position of the plane to 0.
	
Every turn during Plane Overfly:
	increase position of the plane by 1;
	if position of the plane is:
		-- 1: say "Far overhead, you hear the buzzing of a plane.";
		       move the plane to Grassy Field;
		-- 2: say "The buzzing becomes louder.";
		-- 3: say "The plane is almost directly overhead.";
			if the giant silver sphere is dumped:
				say "A glint of light shines briefly below the plane. You squint but can't make it out.";
				move the glint of light to Grassy Field;
		-- 4: say "The plane continues on its way across the sky.";
			if the giant silver sphere is dumped:
				say "The glint of light becomes brighter, and a rushing, crackly, whooshing sound is coming from it.";
		-- 5: say "The buzzing becomes very faint as the plane flies out of view.";
			if the giant silver sphere is dumped:
				say "The glint of light rushes towards the ground at a fantastic rate. It thuds into the earth, throwing up rocks and dirt in an amazing display. Still more amazingly, it bounces up into the air and with a neat 'plop', lands gently onto the trebuchet.";
				now the trebuchet is loaded;
				now the trigger lever is not pulled;
				remove the glint of light from play;
				move the giant silver sphere to the sling;
		-- 6: remove the plane from play;
		-- otherwise: change the position of the plane to 7.

When Plane Overfly ends:
	change position of the plane to 0;
	remove the plane from play;
	remove the glint of light from play.

Chapter P - Puzzles

To go somewhere else:
	now the player is carrying the nox box;
	let r be a random visited room not in Off Limits To Teleportation;
	say "With a blink and a flash, you're suddenly somewhere a bit more familiar...";
	now the player is in r.

Instead of taking the giant silver sphere, say "It's far too heavy to lift."

Instead of pushing the giant silver sphere, process the sphere.
Instead of pushing the giant sphere to outside, process the sphere.
Instead of pushing the giant sphere in a direction, prevent pushing the sphere.

To prevent pushing the sphere:
	if the giant silver sphere is not reset:
		say "It's not going anywhere.";
		stop the action;

To process the sphere:
	if the player is in Plane Cabin:
		if the hull door is closed:
			say "You push the sphere about a bit, but soon tire of this diversion.";
		otherwise:
			remove the giant silver sphere from play;
			now the giant silver sphere is dumped;
			say "You roll the sphere out the door!";
	otherwise:
		say "The sphere is stuck firmly in the ground.";
		stop the action.

Before playing something on the guitar when the player is in Beach, win the game.
Before playing the guitar when the player is in Beach, win the game.

Before playing something on the accordion when the player is in Beach:
	say "You'd need to practice that tune first before you can actually play it."

Before playing the accordion when the player is in Beach:
	say "And ruin such a lovely setting?";
	stop the action.

To win the game:
	say "You sit down in a comfortable spot, expertly tune your guitar, and play music to match the peaceful beauty of your surroundings. Your fingers fly over the guitar strings with the effortless ease of one who has mastered the instrument, and you close your eyes, breathing a sigh of completion.";
	award 10 points;
	end the game in victory.
	
Section Skip - not for release

Instead of skipping ahead during Whisper 10:
	say "There's nothing left to skip ahead to!".
	
Part 11 - Later additions

Chapter 1 - Bugfixes

The helicopter is fixed in place. The cupboard is fixed in place.

Instead of inserting something into the open Nox Box, try inserting the noun into the gear slot.
Instead of inserting something into the trebuchet, try inserting the noun into the sling.

Before doing something with the sling:
	if the current action is not examining, say "The sling is too far away." instead.
	
Does the player mean doing something with the Nox Box: it is likely.
Does the player mean inserting into the Nox Box: it is likely.

Rule for printing the name of the guitar while not inserting or removing: say "guitar"; omit contents in listing.

Rule for printing the name of the helicopter while not inserting or removing: say "helicopter"; omit contents in listing.

Instead of going north in the Luxor Pit, say "You have no need to visit Excalibur."

Rule for deciding whether all includes the gear slot: it does not.

When Whisper 10 begins, remove the Goddess from play.

Understand "G" or "K" as the Chesterton.

Check retracing steps:
	If the Solid State Home for Lost Objects is unvisited, say "Your journeys have not granted you that option." instead.

Carry out retracing steps:
	if the number of gears enclosed by the nox box is zero, now the player carries a random red gear;
	now the player carries the guitar.

The counter is a supporter. The rocking chair is an enterable supporter. The shelf is a supporter.

Understand "cottony" as the vapory flowy structures.

Instead of searching the corpse, try searching the pockets.

Joining is an action applying to one thing. Understand "join [something]" as joining.

Report joining (this is the default joining rule):
	say "You're already with [the noun]."
	
Instead of joining or entering the Goddess, try kissing the goddess.

Rule for deciding whether all includes something carried by a person who is not the player: it does not.

Before playing the guitar:
	if the guitar is not carried:
		say "(first taking the guitar)[command clarification break]";
		silently try taking the guitar;
		if the guitar is not carried, stop the action.
		
After reading a command:
	if the player's command includes "machete/knife/blade":
		say "Panga. It's a [italic type]panga[roman type]. You're not a heathen.";
		reject the player's command.

East of Vegas Heaven is nowhere.

Instead of going east from By Your Car when the guitar is enclosed by By Your Car and the guitar is not enclosed by the player, refuse to abandon the guitar in the holder of the guitar.
Instead of dropping the guitar, refuse to abandon the guitar in the location.
Check inserting the guitar into something (this is the guitar hiding container refusal rule): refuse to abandon the guitar in the second noun instead. The guitar hiding container refusal rule is listed last in the check inserting it into rules.
Check putting the guitar on something (this is the guitar hiding supporter refusal rule): refuse to abandon the guitar in the second noun instead. The guitar hiding supporter refusal rule is listed last in the check inserting it into rules.
Instead of touching the pattern when the guitar is not enclosed by the player, refuse to abandon the guitar in the holder of the guitar.[* This should only fire in the Solid State room for lost objects.]

To refuse to abandon the guitar in (resting place - an object):
	say "You have no intention of leaving your guitar ";
	if the resting place is Solid State Home for Lost Objects:
		say "now that you've finally recovered it";
	otherwise if the resting place is a room:
		say "lying around for the scavengers";
	otherwise if the resting place is a supporter:
		say "on [the resting place]";
	otherwise:
		say "in [the resting place]";
	say ". It's been your friend and companion through more troubles than you care to name."

Understand "rosewood" and "six string" and "six-string" as the guitar.

After wearing the helmet, say "It suddenly becomes difficult to think."

Understand "softwood" as the heirloom box.

Instead of going when the location is Bliss, try exiting.

Instead of taking the helicopter, say "This isn't one of those man-portable helicopters you've read so much about."

Understand "rocking-chair" as the rocking chair.

Understand "stairs" as the rickety staircase.

Understand "image" as the treasure map when the treasure map is developed.

Shooting is an action applying to one thing. Understand "fire [something]" or "shoot [something]" as shooting.
Check shooting (this is the block shooting rule): say "That isn't something you can fire." instead.

Instead of shooting the cannon, say "Once was enough."
Instead of shooting the trebuchet, try pulling the trigger lever.

Instead of closing the trunk when the trunk encloses the car_keys:
	say "The sun is hot, but it hasn't addled you enough to lock your keys in your trunk."
	
Instead of entering the hatch, try going up.

Open Air is in Off Limits to Teleportation.  Before going to Open Air, try exiting instead.

Understand "glow" or "glowjar" as the glow-jar.

Inside from The Saloon Porch is the saloon_bar.

[So that FEED SLOT MACHINE works.]
Understand "feed [something preferably held] to [something]" as giving it to.
Understand "feed [something] [something preferably held]" as giving it to (with nouns reversed).
Instead of giving something to the slot machine, try inserting the noun into the second noun.

Feeding is an action applying to one thing. Understand "feed [something]" as feeding.
Instead of feeding Curb:
	if the number of edible things enclosed by the player is greater than zero:
		try giving a random edible thing enclosed by the player to Curb;
	otherwise:
		say "You don't have anything to feed him."

Instead of feeding the slot machine, try playing the slot machine.

Vegas Heaven is in Off Limits to Teleportation.

The distant billboard is inconvenient. The sandstorm is inconvenient. The TheHeaven is inconvenient. The chandelier is inconvenient. A distant item is always inconvenient.

After examining the Nox box, try listening to the Nox box.

[I can't believe this works.]
The Nox box can be vanishy. The Nox box is not vanishy.
Every turn when the player is not holding the Nox box and the player was holding the Nox box:
	say "The Nox Box [if the Nox box is vanishy]has vanished again[else]seems to have vanished from your possessions[end if].";
	now the Nox box is vanishy.

[It's important that this rule is processed after the 'at the time the Nox Box drops' event. Since, at present, this is forced by the turn sequence rules, we should be OK.]
Every turn when the player is holding the Nox box and the player was not holding the Nox box:
	say "Your possessions shift slightly. The Nox Box seems to have returned."
	
Rule for deciding whether all includes the cupboard: it does not.

Understand "go to Vegas/Luxor" as a mistake ("You've done enough wild traveling that you don't want to do anything hasty. You're sure there are still some clues left to find.") when in the Shisha Souk.

Understand "fly" or "fly [text]" as a mistake ("That's a trick you haven't picked up yet.").
Understand "fly" or "fly [text]" as a mistake ("The helicopter has no obvious controls.") when in the helicopter.

The helicopter is a vehicle. Instead of going nowhere by the helicopter, say "The helicopter has no obvious controls."
Instead of switching on or switching off the helicopter, say "The helicopter has no obvious controls."

Understand "strands" or "silver" or "strands of silver" as the pattern.

A distant item called the farmhouse is in the Junction. The description is "[if Front of Farmhouse is unvisited]It's seen better days[else]It probably hasn't grown anything in 10 years. No wonder the owner turned it into a trading post[end if]." Understand "trading" or "post" or "farm" or "house" as the farmhouse.

Instead of inserting something into the eyepatch: say "The eyepatch won't keep anything in it for long. If you want to sling [the noun] at something, you should just sling [the noun] at it directly."

Check attacking it with (this is the redirect to attacking rule): try attacking the noun instead.

Understand "insert [things]" or "put [things]" as inserting it into. Understand "token" or "coin" or "coins" as the gambling tokens.

Rule for supplying a missing second noun when inserting:
	if the slot machine is in the location, change the second noun to the slot machine;
	otherwise say "You must specify what you want to insert it into."

Chapter 2 - Scoring

The maximum score is 100.

When Whisper 1 ends: award 10 points.
When Whisper 2 ends: award 10 points.
When Whisper 3 ends: award 10 points.
When Whisper 4 ends: award 10 points.
When Whisper 5 ends: award 10 points.
When Whisper 6 ends: award 10 points.
When Whisper 7 ends: award 10 points.
When Whisper 8 ends: award 10 points.
When Whisper 9 ends: award 10 points.
