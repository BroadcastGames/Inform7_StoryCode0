"Sand-dancer" by Aaron Reed and Alexei Othenin-Girard

[This source text represents the final, author-prefered version of Sand-dancer, the example game for "Creating Interactive Fiction with Inform 7." If browsing online, the "Complete Text" link to the left leads to a text file you can copy and paste into a blank Inform project.]

[Several additional changes have been made to this version: these are commented as they appear.] 

The release number is 8. 

Release along with a website and the source text.

[This version is too large to fit in the z-machine formats, so you'll need to change the format in the Settings tab to "Glulx." To export a playable webpage for this story, you'll also need to install the Quixe template (instructions are here: http://eblong.com/zarf/glulx/quixe/ (under "Put Quixe on your own web site"). Or, comment out the following line:]

Release along with the "Quixe" interpreter.

The story headline is "A Desert Fable". 

Use no scoring.
Use American dialect.  
 
Include Conversation Framework for Sand-dancer by Aaron Reed. 

The story description is "It figures that your pickup would die on a night like this and leave you stranded in the dark New Mexico desert. But nothing else figures about this night, man. Nothing at all."
The story genre is "Fiction".  
The story creation year is 2010.
 
Release along with cover art.[Make sure you download both Cover.jpg and Small Cover.jpg and place them in the Materials folder for your project if you want to use this line.]

Release along with an introductory booklet, a website, an interpreter, and the source text.   

[Exercise 6.3]
Include Extended Grammar by Aaron Reed. 
Include Smarter Parser by Aaron Reed. 
Include Poor Man's Mistype by Aaron Reed. 
Include Modified Exit by Emily Short.
Include Small Kindnesses by Aaron Reed.  


Part - Mechanics

Chapter - Customizations

Understand the command "rub" as something new.   

[Exercise 5.2][Instead of singing: say "You try to sing some classic rock, but it just makes the silence around you even creepier."]

Before showing something (called the item) to someone (called the viewer): try giving the item to the viewer instead.

Before listing contents while taking inventory: group talents together.

Before listing contents while taking inventory: group things required by a plan together. Before grouping together things required by a plan: say "useful stuff: ". 

Include Default Messages by David Fisher. 

To say bro: say "[one of]bro[or]man[or]dude[or]amigo[or]brohim[as decreasingly likely outcomes]".

When play begins:
	set LibMsg <block swearing obscenely> to "Mos def, [bro].[/n]";
	set LibMsg <empty line> to "Say what?[/n]";
	set LibMsg <unknown object> to "[one of]Uh, not sure about the noun there, [bro].[or]Try a different noun with that command.[stopping][/n]";
	set LibMsg <Inventory initial text> to "You've got";
	set LibMsg <cannot take yourself> to "Yeah, you do need to get a hold of yourself.[/n]"; 
	set LibMsg <cannot take other people> to "What is this, [bro], weight training?[/n]";
	set LibMsg <cannot take something already taken> to "You already got that shit, [bro].[/n]";
	set LibMsg <report player taking> to "[one of]Snagged[or]Got [if noun acts plural][']em[otherwise]it[end if][or]Sure thing, [bro][at random].[/n]";
	set LibMsg <examine undescribed things> to "[one of]About what you'd expect.[or]Looks normal.[or]Yeah, it's [a noun].[as decreasingly likely outcomes][/n]";
	set LibMsg <look under> to "[one of]Nada[or]El zilcho[or]Nothin[at random].[/n]"; 
	set LibMsg <cannot eat unless edible> to "You ain't that hungry, [bro].[/n]";
	set LibMsg <report player touching things> to "No surprises.[/n]";
	set LibMsg <report player touching other people> to "He's real.[/n]";
	set LibMsg <block climbing> to "Uh, [bro], probably not a good plan.[/n]";
	set LibMsg <block attacking> to "Come on [bro], they already think you have anger management issues.[/n]";
	set LibMsg <block burning> to "Heh heh... fire... fire.[/n]";
	set LibMsg <block throwing at> to "Hey, let's not just piss people off for no reason.[/n]";
	set LibMsg <block sleeping> to "For whatever reason you've never felt more awake.[/n]";
	set LibMsg <block waking up> to "Good call, [bro], but you can't seem to snap yourself out of whatever this is. Doesn't feel like a dream, anyway.[/n]"
	
Every turn when a dramatic scene is not happening and Coyote's Offer has not ended and a random chance of 1 in 40 succeeds: say "[one of]You shiver in the cold air[or]The cold night air swirls around you, and you pull your jacket closer[or]The air is frigid, and turns your breath into clouds[at random]."

Before saying hello to when noun is not a spirit animal and noun is not voice: instead say "You can't really get into a good conversation right now."

Section - Undo Prevention

[For the final release, we compromise and only prevent undo just after smoking.]

Include Conditional Undo by Jesse McGrew.

Carry out smoking: prevent undo.

Rule for deciding whether to allow undo: if undo is prevented, say "Yeah, you wish you could unsmoke all the cigs you've inhaled. Life doesn't work like that." 
		



Chapter - Beginning the Story

Rule for printing the banner text while turn count is 1: say "[paragraph break]         S A N D - D A N C E R[paragraph break][paragraph break]".

After printing the banner text while turn count is not 1: say "Beta testing courtesy of Duncan Bowsman, Jacqueline A. Lott, Juhana Leinonen, Sharon R., and Stephanie Camus."

The player is a man called Knock. The description of Knock is "You don't really want to think about what you look like right now, especially when there's a totally legit likeness on the driver's license in your wallet."

The player carries a lighter. A pack of cigarettes is in the glove box. The description of pack of cigarettes is "You're kind of trying to quit, but man, [if count of pack of cigarettes is at least 1]you could really go for one right now. It looks like you've only got [count of pack of cigarettes in words] left[otherwise]you're totally out[end if]."

Understand "cigarette/cig/cigs/smokes" as pack of cigarettes. The player wears a denim jacket.

When play begins: say "but it's too late, you're crashing, you're crashing, you crash..."

The player is in the pickup truck.


Chapter - Ending the Story

Instead of going when player holds freedom: say "You go, with a strange, kinda tingly feeling in the backs of your hands and inside your eyes. You feel powerful[if player holds strength], stronger than wind now[otherwise if player holds courage], braver than the sun now[end if] and free, most of all free. You walk backwards across the sand to your truck, sucking up your footprints as you go, and slip behind the wheel. There's this crazy wrenching bang and you jerk backwards as the engine starts, uncrashing your pickup off the cactus and juddering back onto the highway, and you smile. You're going back, back to a second chance, back to make it all right.

You speed up, drive backwards at a thousand miles an hour to work, and unfix junkers and repack parts in a flash, faster and faster. The days rewind like videotape, unwork, unsleep, giving back kisses from Ocean one by one[if player holds scent], and the smell of the past unfurling is like wine and ozone[end if]. And then it's that night, the night you made the Big Mistake[if player holds luck] before your luck started turning around, yeah, cause[otherwise], but[end if] this time you unmake love. And the moment unpasses and your future is safe and uncomplicated, no kid, no nightmares, no arguments, no lectures, and you just have to get this thing out of reverse now and do it right this time (or mebbe not at all, it's too hot anyway ya know babe?) and this time you'll make everything perfecto. 

But you don't turn around. You try, but it's kinda like trying to stop falling, and you suddenly get that you [italic type]are[roman type] falling, plummeting back faster and faster like you got pushed off the cliff of now. You're unmeeting Ocean and unditching school and unsmoking for the first time behind the dumpsters, faster and faster, stomach in your throat, memories blowing back your hair as they rocket past. You're a kid again unskateboarding and unlearning video game combos, screaming backwards faster and faster and you get it now, you get the lizard's joke. He's making you free by unmaking you, fixing the burden by erasing the guy who's bearing it, and you're unlearning to read and unlearning to walk and uncrawling and uncrying and then some brilliant moment of light and noise and chaos comes shrieking towards you hella fast, fast, faster than anything and it's too late, you're crashing, you're crashing, you crash..."; end the story.

Instead of going when player holds honor: say "You go, and the clouds are gone and the stars are so bright you squint. You patch the fuel line and refill the tank and she starts like a beauty, and then you're back on the highway again, headed for Ocean, [if player holds luck]and you've never felt luckier[otherwise if player holds scent]and the urge to breathe the same air as her leads you on like a bloodhound[end if].

You shut off the headlights as you pull up to the trailer, and climb in through her window for old times sake[if player holds courage], crazy courage her sister at least appreciated if not her old man[otherwise if player holds strength] even though you think you're finally strong enough to take her old man[end if]. She's awake of course, always no matter how quiet you are, and she holds out a hand from somewhere under the blankets. And as she's doing it you're suddenly exhausted, beyond exhausted but also safe, warm even before you slip under the covers. She half turns to kiss you as you fumble with the blankets but you're so tired all you can do is push your face against her neck and slip an arm around her warm skin, and she starts to ask you something but it's too late, you're crashing, you're crashing, you crash..."; end the story.

Instead of going when player holds spirit: say "You go, and the night collapses in on you so hard you barely remember curling up in a corner with the blanket[if player holds courage], not afraid any more[otherwise if player holds strength], strong enough now to wait out the night[end if].

In the morning some highway patrol dude shakes you awake with a lecture and a ride back to town. Oro Oeste? he asks but you tell him no, take a left instead, and you end up on a street corner in Pobre Vista and keep going. Seven Sticks and then Gallup and then Flagstaff, hitching west. The cash in your wallet runs out but a trucker buys you a value meal and [if player holds luck]with a little more luck you keep from being hungry[otherwise if player holds scent]you seem to have a knack for sniffing out enough to stay fed[end if] and your blanket keeps you warm and you keep going.

When you hit the Pacific you roll up your jeans and wade into the surf for the first time in your life. And it's warm on the top and cool underneath and this is all you want, this moment, this here and now. You'll find work and you'll find love but you'll never find home and that's okay. It's okay. You wade deeper and the waves lap higher and then a big one rolls in, blue and white, and you feel [if player holds strength] strong, strong[otherwise]crazy brave[end if] as it crests and smashes into you with the force of all the water in the world, and you laugh and try to stay on your feet but it's too late, you're crashing, you're crashing, you crash..."; end the story.


[Exercise 8.1]
[When play ends:
	say "Are you unhappy with this ending? ";
	if the player consents:
		now player is in Roof;
		resume the story.]
		


Chapter - Memories

A memory is a kind of thing. A memory can be retrieved or buried. A memory is usually buried.
 
Suggestion relates various things to one memory (called the suggested memory). 

The verb to suggest (he suggests, they suggest, he suggested, it is suggested, he is suggesting) implies the suggestion relation.

Understand "memory/memories" as a memory.

Does the player mean doing something to a memory: it is unlikely.

Rule for deciding whether all includes memories: it does not.

The subconscious is a container. When play begins: now every memory is in the subconscious.

Definition: a thing is charged if it suggests a memory which is in the subconscious.

Every turn when a charged thing (called the item) is visible: move the suggested memory of the item to emotional baggage; say "Something about [the item] makes you want to brood about [the suggested memory of item]."

The player carries an open transparent unopenable container called emotional baggage. The description of emotional baggage is "Your guidance counselor used to say you're always carrying it with you. You imagine it's kind of ugly, lumpy, and green, and definitely has a stuck zipper."

Instead of doing anything other than examining when noun is emotional baggage or second noun is emotional baggage: say "It's not real, bro."

Instead of waiting: let selection be a random thing in emotional baggage; if nothing is in emotional baggage, now selection is a random memory; say "Nah, man, better keep busy or else it's back to brooding about [the selection]."

To decide whether insufficient memories found:
	if Pursuit is happening and the number of memories in emotional baggage is less than the price of the rabbit, decide yes;
	if Temptation is happening and the number of memories in emotional baggage is less than the price of Coyote, decide yes;
	if time for arrival and the number of memories in emotional baggage is less than the price of Sand-dancer, decide yes;
	decide no.

Section - Brooding

Brooding is an action applying to one thing. Understand "brood about/on/over [something]" or "brood [something]" or "think about [something]" as brooding. 

Check brooding when noun is not a memory: instead say "Eh. You couldn't really get into a good brood about that when it's this damn cold."

Carry out brooding: say "[description of noun][line break]"; now the noun is retrieved. [We defined earlier that memories can be either buried (not yet brooded about) or retrieved.]

Instead of doing anything other than brooding or trading to a memory, say "As if. All you can really do is BROOD ABOUT it."

Instead of thinking: say "Most of the thinking you do nowadays comes from either smoking or brooding." [Thinking is a standard action which we'll use to hint the player towards better options.]

Instead of brooding when noun suggests a memory: say "It's not [the noun] you want to brood about, it's [a random memory suggested by the noun]."


Section - Memory Collection

The last day of high school is a memory with indefinite article "the". It is suggested by the weather-worn guidebook. The description is "You didn't expect it was going to be your last day. But that morning you got called in to the principal's office and fat bald Mr. Cox and pissy old Mrs. Burke were there, and they looked kind of like strong animals stalking weak animals, and you knew something bad was up.

Cox said I have here, Mr. Morales (a bad start since you hate that name) a test you took last week in Mrs. Burke's sophomore English class. Questions have been raised (he looked up at Mrs. Burke like he was trying to pass the buck) questions have been raised about the quality of your essay, and whether a student with your academic and behavioral record (he scratched his bloated nose meaningfully) could have plausibly produced such an essay, and you get the idea. They thought you cheated.

No. They knew you cheated, deep in their smug empty hearts. They wanted you to admit it, say you were a cheater and a liar. But you weren't. You wrote that essay, every god damn word, because you really really liked the book for once and wanted to show Mrs. Burke that maybe if they gave people better books to read kids would actually learn something. But they wanted a confession. They wanted a thieving example they could parade in front of the school. Someone of your academic and behavioral and economic and racial background and yeah, screw this shit. So you got up and left and never came back. Drop out, hell. You walked out and you'd do it again."

The player carries a wallet. The wallet is closed and openable. In the wallet is a driver's license and a receipt from Big Jimmy's. The receipt suggests your shit job. The description of driver's license is "When the highway patrol pulls you over they see your kind of crazy uncombed hair (morning), your brown name (Nakaibito Morales) and brown skin (actually more kinda tan), your D.O.B. (eighteen years ago just barely) and tribal affiliation card (expired) and assume you're either some kind of native eco-terrorist, illegal drug-running border jumper, or delinquent high school dropout (all lies except for kinda maybe the last one a little). Unless it's Jimmy Kay who pulled you over since he usually just wants to buy you a beer and talk about your dad, which is weird but better than getting a ticket."

Your shit job is a memory with description "Juza straddles the 371 like a drunk at last call, smelly and without a plan for the future. Shiny cars whiz by at ninety once in a while, only stopping for gas or directions (hint: not this way). No one ever stops for the stalls selling food and jewelry and blankets and cheap t-shirts that cluster around the dirt turn-off onto the rez. At least, no one buying anything.

Big Jimmy shook his head when he heard you lived in Oro Oeste. Hell of a drive, kid, he said, popping up his Lumberjacks cap to scratch the straw pate underneath. You should get a place in Hoo-zuh. Little Jimmy'll set you up in that trailer cross the road for almost nothin['].

Almost nothing. Yeah, exactly what you'd turn into on the cold day in hell you move to Juza. But on the other hand, that was before you met Ocean. Now the road back to Oro Oeste seems longer and longer every night."

A piece of jade is in pickup truck. A memory called grandma's stories is suggested by the piece of jade. The description of the jade is "Grandma said it will bring you luck, which hasn't really been working out. You can't remember now how it ended up in your pickup truck. Maybe someday you'll see someone lucky and you can throw it at him." 

The description of grandma's stories is "There are dark spirits who roam the earth, little Knock. Grandma used to say that, holding you tight and stroking your hair. There are dark spirits who roam the earth, but you're not alone. Oh, no. I'm here. (She'd kiss your head and you'd squeeze her back.) But others are watching out for you too. You have three animal guardians, hmm? Spirits who are always watching over you. Oh, you can't always trust them to know what's best. Remember that, Knock. But when you need help, they'll come, and protect you from the worser things in the world.

Mom would yell at Grandma a lot for filling your head with that new-age bullshit. Grandma grew up white and midwestern and Baptist, but had started wearing things with feathers and playing the pan flute by the time you were born. She seemed to really like having a son-in-law who was Native American or American Indian or Indigenous Peoples or whatever she'd decided the term was that week, and she was pretty pissed when mom left him. Anyway. Her stories were mostly BS, you guess, but some of them stuck with you. When it's dark you still wonder if your spirit animals are out there somewhere, and what the hell is taking them so long to find you."

The rusted key suggests a memory called meeting Ocean. The description of meeting Ocean is "She was buying a Fresca at Big Jimmy's when you got off your shift, shoving work keys in your pocket, and you stood behind her waiting to get some cigs, almost too tired to notice how cute she was but still noticing, yeah, still noticing.

She turned around and caught you noticing and you were pretty embarrassed and covered in sweat and grease from the garage, so you stepped up and bought some Camels and were pretty surprised she was still there when you turned around.

She told you her name was Ocean Running Deer and she lived on the rez and you told her your name was Nakaibito Morales and you lived in Oro Oeste. She said isn't Nakaibito the name of a town way off west and you told her your mom had picked it off a map because it sounded like a good Indian name. You never tell anyone that story but for some reason you told her. She laughed, sweetly though, and said maybe the two of you should go there sometime and see what it was like. Somehow two weeks later you were dating although you never ended up going to Nakaibito.

And now... no, you can't think about that yet."

The bunny's bow tie suggests a memory called her graduation night. Understand "Ocean's/Oceans" as her graduation night. Instead of doing anything to the bunny's bow tie: say "It's just a few lines on a silhouette." The description of her graduation night is "She grinned when you picked her up, and you drove on in to Mike's and the lot was filled with trucks and Mike's was filled with Indian guys and Indian girls and she was still the most beautiful, and you danced a lot and drank some and left early to go lie down under the stars and count the shooting ones.

And that was maybe you think the first time she said she loved you, and you said it back cause it felt all right and shit, but you didn't really know if you meant it, or if she did, or what it even really means. I mean you like Ocean a lot, really a lot, but then you also aren't really sure you even know her, anything about her that's important or real or meaningful. She could be anyone, really, on the inside. So could you."

[Exercise 6.4]A lingering smell of orange is an undescribed thing. It suggests Ocean's perfume. Before taking cans of food when player holds can opener and player holds luck: move lingering smell of orange to location.

Ocean's perfume is a memory with description "You used to like it. The perfume. But you like how Ocean smells without it better, but she doesn't believe you. She says girls are supposed to smell sweet, like oranges and rose petals. But you've always liked bitter fruits. Tamarind and lemon. 

And sometimes, maybe after a fight or something, you'll drive off and that's all you can smell is her orange perfume. And even after smoking three cigarettes with the windows of your pickup rolled down you can still smell it, and it's still too sweet, and you wonder if this is working out. Because it's such a little pointless thing but it drives you crazy. And if a little thing like perfume is driving you this crazy maybe the whole thing is doomed. Maybe Ocean would be better off with some guy who likes orange perfume. 

You don't know what's going to happen now."

The gas can suggests a memory called road trips through the desert. Understand "trip" as road trips through the desert. The description of road trips through the desert is "Always a faint whiff of gas in your truck, even on the highway at midnight with the windows cranked and scorching summer air sending Ocean's hair twisting and curling behind the passenger seat. The two of you driving through the night to visit her aunt in Santa Rosa, about a week before it happened, talking and laughing and sometimes her hand on your leg and sometimes your hand on hers, nothing alive but you and her and the truck and the road and the blackness beyond.

Then all quick she leans forward at a green phantom roadsign and goes hey look, it's the road to Nakaibito! And you have no idea what she's talking about till you remember the story (and that you told her the story) and she says come on, let's go, let's find out what's there. And you're like what, now? And she laughs and says when else? And it's crazy and you tell her it's crazy, it'd be like a four hour drive there and four hours back, totally out of your way and probably for nothing, a couple trailers and broken glass, and you pass the exit and drive on and tease her a little but inside you're thinking, this is why I love her (if I do), that crazy, that what-the-hell let's do something wild and go with it spark, that's Ocean. That's your girl. And maybe you should have done it because now maybe your days of crazy gambling road trips are over, and maybe you'll never find out what's in Nakaibito or anywhere else." [In the book, we wrote a memory that only appears for players choosing the path of leaving ocean (the scent of oranges); it seems only fair to make one only for players on the other path.] 

The ultrasound of Ocean's baby [note: the book text is incorrect, the full name of this item needs to be used: "ultrasound of Ocean's baby," since this is the first time this item appears in the source] suggests a memory called when you heard the news. Understand "i/baby/ocean's" as when you heard the news. The description of when you heard the news is "Four weeks ago now, a little colder and a little darker. On a night just like this one except you didn't drive off the road and crash into a cactus, you got off work and drove the state highway in the dark and crossed over the edge of the res to Ocean's dad's trailer, and she told you that night while you were dead exhausted, Knock, I'm pregnant.

And all you could think was how totally not real it seemed, after an hour of blackness and New Mexican night streaming by, bugs exploding in tiny tragedies on your windshield, you just felt like driving on, like this thing was some podunk town you could breeze by, no services, ranch exit only. And you thought of every movie they ever made you watch in school and every lecture and every living example, the drunken uncles and snaggle-toothed coworkers who knocked up their high school sweethearts and started families on minimum wage and no prospects and never went anywhere and never did anything and what did you do? How could this happen? Why were you both so stupid?

Ocean's aunt is paying for the baby but it's been made clear the money stops when the baby's born. Ocean wants to keep it, she's always wanted to be a mommy. But you never thought you'd be a daddy. And when she pushed this into your hand last night she told you, Knock, it's time to decide. If you aren't with me on this, if you don't want this as much as I do, then this can't go on anymore and you should go. Fly. Head west. Find Nakaibito. She smiled just a little and traced your ear.

But decide soon, Knock. Decide soon."

The sage suggests a memory called watching Family Guy. The printed name of watching Family Guy is "watching Family Guy with Karl". Understand "with Karl" as watching Family Guy. The description of watching Family Guy is "Whatcha watchin, Knock? he asked, lurching out of mom's room smelling of sage incense and holding a beer and crashing into the lazyboy, and you said Nothing Mr Morales (and god damn it kid, can't you at least call me Karl if you won't call me dad? but that conversation's been buried a year now at least out loud) and he squinted and said is this that Family Guy crap? I thought your mother said she didn't want you watching this crap (because it's always mother who wants you to do things or be things or say things, never Mr Morales) I thought your mother said you ought to start learning about your culture. 

So while Peter is trying to start a rock band or something Karl starts spouting some story about Mexican myths with eagles and feathered serpent gods, and he must be so into the stepdad thing he's forgotten that's his culture, not yours (well, sort of). Not that your real dad or Peter Griffin ever helped you figure out what your culture's supposed to be either. It hits you that your culture must be somewhere in the middle, between Family Guy and Quetzalcoatl, and you start laughing and get grounded because you can't even imagine what the middle between those two could possibly look like.". [Here's an added memory triggered by the smell of sage after the rainstorm, to build up Knock's collection a little more.]


Chapter - Lights

Definition: a room is within range of headlights if it is Middle of Nowhere or it is Backtracking or it is Crumbling Concrete or it is Base of the Tower.

Definition: a room is lit brightly if it is regionally in Tower Vicinity and emergency lights are switched on.

Definition: a room is lit by headlights if it is not lit brightly and it is within range of headlights and headlights are switched on.

Definition: a room is lit by flashlight if it is not lit brightly and it is not lit by headlights and flashlight is enclosed by it and flashlight is switched on.

A room is usually dark. Middle of Nowhere, Backtracking, Crumbling Concrete, Staging Area, and Base of the Tower are lighted.

The flashlight is a portable device. The description of flashlight is "[if flashlight is switched on]Emitting a good, strong beam: thank god it works.[otherwise]Cold blue metal, and hefty."

Carry out switching on flashlight: now flashlight is lit. Carry out switching off flashlight: now flashlight is unlit.

Instead of dropping flashlight: say "Better keep it with you. It's hella dark out."

Section - Lighter

Instead of burning the lighter:
	if it's effectively dark, say "You flick the lighter, but the light seems grey and tiny in the face of the dark. All you can really see is[if location is Staging Area] [a desk] by your feet, and[end if][if there is at least one brighter direction] a slightly brighter place to [the list of brighter directions][otherwise] your shivering hand[end if]. As your thumb starts to burn you let the puny light go out.";
	otherwise say "You flick it open and shut a few times, an old habit."
	
Understand the command "flick" as "light". Understand "use [lighter]" or "flick on [lighter]" as burning.

To decide whether it's effectively dark: if location is Staging Area and Staging Area is dim, decide yes; if in darkness, decide yes; decide no.

Definition: a direction (called thataway) is brighter if it is viable and the room thataway from the location is lighted.

Instead of switching on or switching off lighter: try burning lighter.

Chapter - Plans

A plan is a kind of thing. 

Requirement relates one plan (called the objective) to various things. The verb to require (he requires, they require, he required, it is required, he is requiring) implies the requirement relation.

Definition: a plan is in progress if a handled thing is required by it. Definition: a plan is complete if two handled things are required by it.

A thing can be noted as useful. Every turn when noun is a thing and noun is required by a plan and noun is not noted as useful: note noun as useful. 

To note (item - a thing) as useful: now item is noted as useful; say "Hey, that [item] might be useful if you decide on [objective of item]."

Staying the night is a plan. Staying the night requires the emergency blanket and some canned oranges.

The roll of duct tape and the gas can are required by a plan called Fixing the truck.

The printed name of fixing the truck is "fixing your truck and getting out of here". The printed name of staying the night is "spending the night here".

Every turn when doing something to smell of gasoline and gas can is not noted as useful: note gas can as useful. Every turn when doing something to cans of food and canned oranges are not noted as useful: note canned oranges as useful.

For printing the name of canned oranges while canned oranges are off-stage: say "food". For printing the name of gas can while gas can is off-stage: say "gas".

[Exercise 4.6/4.7]
[Chapter - Recognized and Familiar

Definition: a room is recognized if it is adjacent to location and it is visited. Definition: a room is unfamiliar if it is adjacent to location and it is not visited.

The description of lighter is "[if the number of unfamiliar rooms is at least 1]You'll want a smoke before long, but for now you're itching to see what else is around.[otherwise]Now that you've got your bearings a little, a smoke does sound nice.[end if]".]

Chapter - Talents

A talent is a kind of thing. strength, courage, luck, scent, honor, spirit, and freedom are talents. [Note the uncapitalized "strength": we don't want the talents to have articles, but we also don't want them to be capitalized like proper nouns.]

[Exercise 10.4]Before printing the name of cobwebs when player holds courage: say "hardly noticeable ". Before printing the name of cage when player holds strength: say "flimsy-looking ". Before printing the name of piece of jade when player holds luck: say "lucky ". After printing the name of pickup when player holds scent: say ", still smelling liked spilled gas".

Instead of dropping a talent: say "You can't imagine being without it, now." Instead of inserting a talent into something: try dropping noun.

The description of a talent is usually "[if held]It's just kind of part of you now.[otherwise]It glimmers and sparkles."

Chapter - Smoking

Smoking is an action applying to one thing.

Understand "smoke [something]" as smoking. Understand "light up [something]" as smoking. Understand "have [pack of cigarettes]" as smoking.

Understand "smoke" as smoking. Rule for supplying a missing noun while smoking: if pack of cigarettes is visible, now the noun is the pack of cigarettes; otherwise say "You slip your hand into your pocket and remember you don't have your smokes on you."

Instead of burning the pack of cigarettes: try smoking the pack of cigarettes.

Original cigarette count is a number variable. Original cigarette count is 6. The pack of cigarettes has a number called count. The count of pack of cigarettes is 6.

Check smoking when count of pack of cigarettes is 0: instead say "You're out of cigarettes."

Carry out smoking: decrease count of pack of cigarettes by 1.

Check smoking when noun is not pack of cigarettes: instead say "Sounds like something your high school buddies would try."

Check smoking when lighter is not held: instead say "You pat your pockets, but can't seem to find your lighter."

Before smoking when lighter is not held and lighter is visible: say "(first taking the lighter)"; try silently taking lighter. Before smoking when pack of cigarettes is not held and pack of cigarettes is visible: say "(first taking the cigarettes)"; try silently taking pack of cigarettes.

First report smoking: say "You pull out a cigarette and flick it into life. Thoughts tumble through your head."

Report smoking: say "Well, you're still stuck here. [run paragraph on]".

Report smoking: say "[if location is lit brightly]You've finally lit the place up a little[otherwise if location is lit by headlights]It's dark outside the beam of your headlights[otherwise if location is lit by flashlight]It's pitch black outside the beam of your flashlight[otherwise]It's darker than you can remember it ever being[end if]. [run paragraph on]".

Report smoking: if the player holds a talent, say "Some weird shit went down in the desert, but you do feel like you have more [list of talents held by player]. [run paragraph on]".

Report smoking: if there is an in progress plan, say "You've found [the list of handled things which are required by a plan], but [if the number of in progress plans is 2]you can't see how they're going to be helpful together[otherwise]you still need something else if you plan on [a random in progress plan][end if]. [run paragraph on]".

Report smoking:
	let hint be best course of action;
	if best course of action is not "", say "Maybe [hint]. [run paragraph on]".

Last report smoking: say "[paragraph break]And you still haven't quit smoking. [if count of pack of cigarettes is 0]That was your last cigarette, too[otherwise]You've got [count of pack of cigarettes in words] cig[s] left[end if]."

To decide which text is best course of action:
	if player is in truck:
		decide on "you could start by getting out of this truck";
	otherwise if Crumbling Concrete is unvisited:
		decide on "you could start by looking around the area, seeing if maybe there's a phone or something";
	otherwise if pane of cracked glass is closed:
		decide on "you could break open a window to get inside that building";
	otherwise if flashlight is not handled:
		decide on "you could try exploring the building by feel, even though it's so dark";
	otherwise if Storage Room is unvisited:
		decide on "you should poke around the building more, see what else there is to find";
	otherwise if emergency lights are switched off:
		decide on "you should switch on those emergency lights in the storage room so you can get a better look at things";
	otherwise if voice has not been visible:
		decide on "you maybe should see if you can call for help with that emergency radio in the break room";
	otherwise if Open Desert is unvisited:
		decide on "you should see if the open desert has anything to offer";
	otherwise if Burrow is unvisited:
		decide on "you should try to catch up with that weird shadow";
	otherwise if strength is held and emergency blanket is not handled:
		decide on "you're strong enough now to bust open that mesh cage with the blanket inside";
	otherwise if courage is held and duct tape is not handled:
		decide on "you're brave enough to reach for that duct tape in the hole in the floor now";
	otherwise if duct tape is not handled:
		decide on "you should investigate that hole in the floor of the staging area";
	otherwise if there is an in progress plan and Temptation has not happened:
		decide on "you ought to head back to the desert and see if you can find that rabbit dude again";
	otherwise if luck is held and canned oranges are not handled:
		decide on "you're lucky enough now to find something to eat in the Storage room";
	otherwise if scent is held and Control Center is unvisited:
		decide on "you should try to get up that ladder above the roof";
	otherwise if scent is held and gas can is not handled:
		decide on "you should try to sniff out that gas now";
	otherwise:
		decide on "". 

[Exercise 8.2][Instead of smoking for at least two turns: say "Hey, go easy on those." Report smoking at least three times: say "You're smoking like a chimney. [run paragraph on]".]

[Exercise 8.3][Craving is a scene. Craving begins when the count of pack of cigarettes is less than 4. Every turn when a random chance of 1 in 30 succeeds during Craving: if a dramatic scene is not happening, say "Damn, you could really go for a cigarette right now."]

After printing the name of the pack of cigarettes while taking inventory: say " you should have given up months ago".


Chapter - The Photo

The player holds a photo. Understand "photograph/pic/picture/folded/unfolded" as photo.

The photo can be open. The photo can be openable. The photo is closed and openable. The printed name of photo is "[if closed]folded [end if]photo". The description is "[if closed]You just can't deal with that right now. Maybe after you've spent more time brooding.[otherwise]It's [an ultrasound of Ocean's baby]." Inside the photo is an ultrasound of Ocean's baby. The description of ultrasound is "Your baby too."

Instead of opening photo when the number of retrieved memories is less than 4: try examining photo. Understand the command "unfold" as "open". Understand the command "fold" as "close".

Rule for reaching inside photo: say "Just a photo."; rule fails. Instead of inserting anything into photo: say "Just a photo."



Part - Setting



Chapter - Around the Tower

[Exercise 3.3][A plant is a kind of thing. A plant is always fixed in place. A plant can be living or dead. A plant is usually living. Some yellowing weeds are an undescribed plant in Weed-strewn Rust. The tumbleweed is a dead plant.]

[Exercise 6.2 -- requires Exercise 3.3][Understand "plant" as a plant. Understand the dead property as describing a plant.]

Around the Tower is a region. Middle of Nowhere, Backtracking, Crumbling Concrete, Base of the Tower, and Weed-strewn Rust are in Around the Tower. Roof is regionally in Around the Tower.

Some tire tracks are a backdrop. They are in Middle of Nowhere and Backtracking. The desert sand, some sagebrush, and the concrete building are backdrops. The desert sand is in Around the Tower. The sagebrush is in Around the Tower. The concrete building is in Around the Tower.

Instead of taking the desert sand: say "[if Rainstorm is happening]More like mud right now.[otherwise]You kneel down and let some run through your fingers, vague memories of better times slipping through your fingers. But the ground is freezing and you get back to your feet." 

Base of the Tower is north of Crumbling Concrete. A room called Weed-strewn Rust is east of Crumbling Concrete and southeast of Base of the Tower. Backtracking is south of Middle of Nowhere.

Section - Middle of Nowhere

Middle of Nowhere is a room. The description of Middle of Nowhere is "[if player is in pickup truck]You've smashed up against a [tall saguaro], which is all you can see out [the windshield] except a few feet of [desert sand], then blackness[first time]. Hell, you must have driven off the road and crashed. Ocean keeps telling you this night commute on this lonely highway's gonna kill you; maybe you should start listening[only].[otherwise]The [tire tracks] from the south stop abruptly here, but where the hell are you? [explain lighting conditions]." The windshield is part of the pickup truck.

To say explain lighting conditions: say "The [desert sand] and clumps of pale [sagebrush] are all [if lit by headlights]your dimming [headlights] pick out before barely reaching[otherwise if lit by flashlight]your flashlight picks out, other than[otherwise]you can see in the glow of[end if] [the concrete building] to the north".

The pickup truck is an enterable openable transparent closed fixed in place container in Middle of Nowhere. Understand "car/door/poor/old/dash" as pickup truck.

Instead of attacking pickup truck: say "You smack [if player is in truck]the wheel[otherwise]the hood[end if] in exasperation. How did you get into this mess?"

The glove box is a closed openable container. Understand "glovebox/compartment" as glove box. It is fixed in place in the pickup truck. [This was changed from being "part of" the pickup truck to make it appear in the room description: otherwise there was no way for the player to know it existed or get the pack of cigarettes. ]

Understand "drive" or "drive [pickup]" or "start [pickup]" or "turn on [pickup]" or "turn key" or "shift" or "steer" or "brake" as a mistake ("Your truck's not going anywhere in this condition.").

Some headlights are part of the pickup truck. The headlights are a device. They are switched on. Understand "head lights" or "head light" or "high beams" or "headlight/lights/light/beams" as the headlights.

The initial appearance of the truck is "Your poor old [pickup truck] ticks and groans, smashed gracelessly against [a tall Saguaro]; [whiffs of evaporating gasoline] linger in the chill air."

After opening the pickup truck: say "The door creaks open with difficulty, rusted joints straining." After closing the truck: say "You slam the door shut."

Before entering truck when truck is closed: try opening the truck. Before exiting when player is in truck and truck is closed: try opening the truck.

The description of the pickup truck is "[if player is in truck]You can't tell what the damage is from in here[otherwise][first time]Getting down on your knees in the cold sand, you look underneath. Sure enough; you ripped up the [fuel line] and all your gas has drained away, sucked dry by the thirsty desert sand. [only]You'll need to find some way to patch up the line, plus some fuel, to have any hope of fixing her[end if]." The fuel line is part of the pickup truck.

Understand "fix" or "repair" or "patch" as "[fix]". Understand "[fix] [pickup]" or "[fix] [pickup] with [something]" or "[fix] [fuel line]" or "[fix] [fuel line] with [something]" or "use [duct tape]" or "use [duct tape] on/with [something]" or "tape [pickup]" or "fill [pickup]" or "put [gas can] in [pickup]" or "use [gas can]" as a mistake ("You should wait until you've got everything you need before you start making repairs."). [Extended this to cover some additional syntaxes. Note the trick wherein we understand several synonyms for repairing as a text substitution, [fix], and then use that substitution to stand in for multiple verbs in several lines that follow.]

Instead of switching on or switching off pickup truck: say "The engine just turns over. It won't start."

After switching on the headlights: now every within range of headlights room is lighted; say "The desert springs into existence around you."

After switching off the headlights: if emergency lights are switched off, now every within range of headlights room is dark; say "You click the headlights off[if emergency lights are switched off and flashlight is switched off] and blackness swallows you up[otherwise if emergency lights are switched off and flashlight is switched on and flashlight is visible], leaving only the ghostly beam of your flashlight[end if]." 

Some whiffs of evaporating gasoline are scenery in Middle of Nowhere. Understand "fumes/fume/whiff" as whiffs of evaporating gasoline.

Instead of doing anything to whiffs of evaporating gasoline: say "Fading away in the chill night air, but enough to tell you something on your truck's busted bad."

A tall Saguaro is in Middle of Nowhere. It is fixed in place. Understand "cactus" as Saguaro. The description of the tall Saguaro is "The cactus seems totally undamaged. Go figure."

Instead of touching the Saguaro: say "Yeah, you did that once as a kid, on accident. Not happening again." Instead of taking the Saguaro: try touching the Saguaro.

Section - Backtracking

The description of Backtracking is "It's quieter and darker over here, the black desert night bleeding in. Your [tire tracks] are hardly visible in the [desert sand], and you can barely make out the way north back to your truck."

Before going south in Backtracking: say "[first time]You stare back down the pickup's path uneasily. The tracks are swallowed by blackness, quickly melding, blending, and vanishing into a maze of ATV tracks, coyote trails, rocky outcrops, and shadows. You squint at the horizon. There's no distant sweep of headlights, no sound of trucks shifting through lonely gears. Nothing. Nothing at all. [only]You're way off the road, and there's no chance at all of finding it again in this demon dark." instead.

Section - Crumbling Concrete

Crumbling Concrete is north of Middle of Nowhere. The description of Crumbling Concrete is "This [building] must've been some sort of utility structure for [the huge electrical tower] to the north, now abandoned[if lit by headlights]: [a pane of cracked glass] sparkles faintly in the beam of your headlights[otherwise if lit by flashlight]: it seems dead and alone in the dusty beam of your flashlight[end if]. Tendrils of [sand] drift against [a boarded-up door] to the northeast leading inside; you could also walk around to the east or head south back to your truck." 

Instead of opening, entering, or attacking boarded-up door: say "The door won't budge. You slam your hands against the boards in frustration[if pane of cracked glass is closed], causing a nearby window to quiver in the reflected light[end if]." Understand "board/boards/boarded" as boarded-up door. Understand "quiver" as pane of cracked glass.

Instead of entering concrete building when location is Backtracking or location is Middle of Nowhere: say "You aren't close enough to the building." Instead of entering concrete building: try going inside. 

Instead of going inside from Crumbling Concrete when pane of cracked glass is closed: try going northeast.

Section - Base of the Tower

The description of Base of the Tower is "Behind [the concrete building], featureless except for [a dust-covered window], [a steel girder] rises from [the sand][if lit by flashlight]; you shine your flashlight up towards the tower looming above you[otherwise if lit by headlights], one of three legs of [the huge electrical tower] looming like some gargantuan spider into blackness above you[otherwise]; far above you [a red warning light] blinks on and off[end if]. [A tumbleweed] drifts lazily against the rusted metal among [scrawny weeds] and [trash]. The desert stretches in all directions except back south or southeast towards the [if lit brightly]glow of the [end if]building." A red warning light is scenery in Base of the Tower.

A steel girder, some scrawny weeds, and some bits of trash are scenery in Base of the Tower.

The description of bits of trash is "Worthless and forgotten, drifting against snags like non-biodegradable snow."

A tumbleweed and a rusty tin can are in Base of the Tower. The tumbleweed is scenery.

Instead of taking the tumbleweed: say "Let it blow on. Wherever it's going is bound to be better than here."

The huge electrical tower is a backdrop. It is in Around the Tower. Understand "rusted/metal" as electrical tower. The description of huge electrical tower is "You can barely see it in the gloom but it's huge, like a metal spider web weaving into space. Way above, a red light blinks on, off, on, off."

[Exercise 4.3]The initial appearance of rusty tin can is "Someone left a tin can here years ago: ridged ripples run down its rusty side."

[Exercise 4.1]
[Section - Against the Fence

Against the Fence is north of Base of the Tower. "You've come right up against the [barbed-wire fence] running around the tower. [A dessicated cow skull] is the only sign that anything here was ever alive." It is in Around the Tower. A barbed-wire fence and a dessicated cow skull are fixed in place scenery in Against the Fence.]


Section - Weed-strewn Rust

Some yellowing weeds are fixed in place and undescribed in Weed-strewn Rust. Understand "weed" as yellowing weeds.

The description of Weed-strewn Rust is "Behind the rather small [building] and its [tiny frosted window] is nothing but a scraggly patch of [yellowing weeds] and dirt near [a leaking pipe], littered by [a collection of rusted barrels] and some [scattered newspapers]. Desert stretches in all directions; back west is the front of the building."

The scattered newspapers are scenery in Weed-strewn Rust. [You might have already created these in Exercise 3.1.] A collection of rusted barrels and a leaking pipe are scenery in Weed-strewn Rust. 

[Exercise 4.2]The description of scattered newspapers is "Garbage, even if they weren't smeared and streaked illegible."

An overturned barrel is a fixed in place supporter in Weed-strewn Rust. A weather-worn guidebook is on barrel. Understand "book/pages/page/guide" as guidebook. The initial appearance of barrel is "[if the number of things on barrel is at least 1]Atop one [overturned barrel] [is-are a list of things on barrel].[otherwise]The top of the [overturned barrel] is stained with rust.[end if]".

The description of guidebook is "Most of the pages are faded or worn away, but flipping through, it looks like a guide to local animal life. You could try looking up various animals in it."

[Exercise 9.3]Instead of consulting the guidebook about "sand-dancer/sand/dancer/lizard/lizards/brown": say "You look up the brown-colored lizard in the guidebook and quickly identify it: those eyes are a dead giveaway. The entry says it's a 'rare subspecies of the common desert lizard found only in the deep desert near Oro Oeste, and known to native peoples as a [italic type]sand-dancer[roman type]. In legends, the sand-dancer was a clever trickster and twister of words, who created night by tricking the sun into spending half the day underground.' Huh."

Instead of consulting the guidebook about "hare/rabbit": say "You look up the hare in the guidebook. 'Common desert rabbit,' it says, 'frequently mistaken for a hare. Lives in underground burrows which it uses to keep warm through chill desert nights. Trusted by native peoples as a guide and symbol of rebirth.'"

Instead of consulting the guidebook about "coyote": say "Weird, it looks like somebody's ripped out the page."

[Exercise 11.4]Understand "guide/book/page/pages" as the guidebook. Understand the command "read about" as "consult".

[Exercise 3.1]Some scattered newspapers are in Weed-strewn Rust. A withered cactus is fixed in place in Backtracking. 




Chapter - Office Interior

Office Interior is a region. Staging Area, Foreman's Office, Break Room, and Storage Room are in Office Interior.

Foreman's Office is north of Staging Area. Break Room is east of Staging Area and south of Storage Room. Roof is above Storage Room.

A boarded-up door is a closed undescribed door. It is northeast of Crumbling Concrete and southwest of Staging Area.

Some layers of sand are a backdrop. They are in Office Interior.

Section - Radio

An emergency radio is a fixed in place device in Break Room. 

A frequency is a kind of value. 100.9kHz specifies a frequency. 100.9 kHz specifies a frequency. 100.9 specifies a frequency with parts integer and decimal.

The radio has a frequency called the frequency tuned to. The frequency tuned to of the radio is 77.2kHz. The radio has a frequency called the maximum frequency. The maximum frequency of the radio is 109.9kHz. The radio has a frequency called the minimum frequency. The minimum frequency of the radio is 67.0kHz.

The description of the emergency radio is "Vintage, man. A chrome switch on the side to turn it on and off, and a big fifties dial on the front. It looks like it's tuned to [the frequency tuned to of emergency radio] right now." Understand "dial/big/fifties/knob/switch" as emergency radio. Instead of turning or pushing or pulling emergency radio, say "It looks like you can TUNE it to a frequency.".

Tuning it to is an action applying to one thing and one frequency. Understand "tune [thing] to [frequency]" as tuning it to.  Understand "turn [thing] to [frequency]" as tuning it to.

Understand "tune [thing] to [number]" as coarse tuning. Coarse tuning is an action applying to one thing and one number. Carry out coarse tuning: try tuning the noun to the frequency with integer part number understood decimal part 0. [This is necessary to understand a command like TUNE RADIO TO 100. Inform recognizes 100 as a number, not a frequency, which means we need a whole different action to understand.]

Understand the command "set" as something new. Understand the command "set" as "tune". 

Check tuning when the noun does not provide a frequency tuned to: instead say "You can't tune that."

Check tuning when the frequency understood is less than the minimum frequency of the noun: instead say "[The noun] doesn't go any lower than [the minimum frequency of the noun]."

Check tuning when the frequency understood is greater than the maximum frequency of the noun: instead say "[The noun] doesn't go any higher than [the maximum frequency of the noun]."

Check tuning when the frequency understood is the frequency tuned to of the noun: instead say "[The noun] is already tuned to that frequency."

Check tuning when the radio is switched off: instead say "Not much point when it's not turned on."

The emergency frequency is a frequency variable. The emergency frequency is 102.3kHz.

Carry out tuning: now the frequency tuned to of the noun is the frequency understood.

Report tuning: say "You tune [the radio] to [the frequency tuned to of the radio][if the frequency tuned to of the radio is the emergency frequency], and the static resolves into a clear signal[otherwise if the frequency tuned to of the radio was the emergency frequency], and the voice dissolves into static[end if]."

Check switching on radio when emergency lights are switched off: instead say "You flip the switch back and forth, but there doesn't seem to be any power. Damn."

After switching on radio: say "You flip a bulky switch on the radio's side. A hiss of static pours from the speakers[one of], like tons of sand sliding over metal[or][stopping][if frequency tuned to of radio is emergency frequency], then quickly resolves into nothing more than a quiet hum[end if]."



Section - Windows

A window is a kind of door. A window is usually closed, unopenable and undescribed. Understand "window" as a window. The description of a window is usually "[if noun is open]Just an empty frame.[otherwise]Dusty glass panes."

Understand the open property as describing a window.

Instead of opening or closing a window: say "[if noun is open]It's already busted open.[otherwise]It looks like these windows have been rusted shut for years."

[Exercise 5.2][Instead of attacking a window: say "Looks like a lot of other people beat you to it."]

Understand "break [something] with [something preferably held]" as throwing it at (with nouns reversed). 

A thing can be hefty. A thing is usually hefty. The driver's license, receipt, pack of cigarettes, and photo are not hefty. Instead of throwing something not hefty at a closed window: say "Like that's going to break anything." Instead of inserting something hefty into the wallet: say "Not gonna fit." 

Instead of throwing something (called the missile) at a closed window (called the targeted window):
	now missile is in the other side of the targeted window;
	if other side of targeted window is Staging Area:
		now missile is undescribed;
	now the targeted window is open;
	say "[The missile] smashes through [the targeted window], shattering it."

Instead of throwing something at an open window (called the broken window):
	say "[The broken window] is already broken."

Instead of attacking a window: say "Nice thought, but the last thing you need is a sliced open hand. Maybe you could use something less likely to bleed."

Instead of attacking an open window: say "You've already busted it open."

Understand "climb in/into/through [a door]" as entering. Understand "look through/in/inside/into [a closed window]" as a mistake ("The glass is too filthy for you to see anything on the other side."). 

The can't go through undescribed doors rule is not listed in the check going rulebook.

Report going through a window: say "You [first time]brush away remnants of broken glass and [only]wriggle through the window."

Instead of going through tiny frosted window: say "It's too small for you to wriggle through." Instead of going through dust-covered window: say "It's too high up for you to pull yourself through."






Section - Staging Area

The description of Staging Area is "[if location is not lit by flashlight and location is not lit brightly]Faint [shafts of light] from your dimming headlights seep through the empty window frame, but you can barely make out anything of the interior[otherwise]It's obvious this place has been abandoned for years. Cold night air breathes through [holes in the roof] and everything is strewn with [sand] and [patches of mold]. [The boarded-up door] is southwest, alongside the empty window frame; other rooms lie north and east[end if]." Understand "empty/frame" as the pane of cracked glass when pane of cracked glass is open.

A pane of cracked glass is a window. It is outside of Staging Area and inside from Crumbling Concrete. 

Some shafts of light, some holes in the roof, and some patches of mold are scenery in Staging Area. 

[Exercise 4.5][The initial appearance of pane of cracked glass is "In a pane of cracked glass you catch a momentary reflection of [the random portable thing in location]."]

[Exercise 3.2][An overturned bookcase is a fixed in place enterable supporter in Staging Area.]

A hole in the floor is a fixed in place open unopenable container in Staging Area. "The floor has half-collapsed near one corner[if duct tape is in the hole], revealing a hole criss-crossed with [cobwebs][end if]." The hole in the floor is undescribed.

Some cobwebs are in the hole. Understand "spiderweb/spiderwebs/cobweb/spider/spiders/web/webs" as cobwebs. 

Instead of touching or rubbing or attacking or pulling the cobwebs when player holds courage: try taking cobwebs. Instead of touching or rubbing or attacking or pulling the cobwebs: try taking the duct tape. [Since we already have a nice response for the duct tape about being too afraid to reach in the hole.]

A roll of duct tape is in the hole.

Instead of taking something enclosed by the hole when player does not hold courage: say "[one of]You reach your hand towards the hole, then pull back with a start as you brush cobwebs. Nightmare visions of fat black spiders shudder through your brain. No way are you reaching in there.[or]Yeah, sorry, but you're not putting your hand in there.[stopping]".

After taking the duct tape: say "[one of]You reach down into the hole[if cobwebs are on-stage], brushing the cobwebs away impatiently,[end if] and pull out the duct tape.[or]Taken.[stopping]"; now cobwebs are off-stage.

Instead of taking cobwebs when player holds courage: say "You impatiently brush the cobwebs away."; now cobwebs are off-stage.

Instead of inserting anything into the hole: say "Sounds like a good way to lose something forever."

A metal desk is a fixed in place undescribed supporter in Staging Area. A drawer is an openable closed container. It is part of metal desk. The flashlight is in drawer.

Understand "beam/cold/blue/metal/hefty/large/lump/lumpy/something/switch" as the flashlight. Understand "flash light" or "light" as the flashlight.

Staging Area is either dim or bright. Staging Area is dim.

Instead of going to a room regionally in Office Interior from dim Staging Area: say "You take a step and crack your shin against what feels like a metal desk. Ouch." Instead of going nowhere from dim Staging Area: try going north.

Instead of examining anything in dim Staging Area: say "You can hardly see anything in here; touch is about the only way you could navigate."

After touching desk in dim Staging Area: say "You feel around the edge of the desk, and find that it has a drawer."

After opening drawer in dim Staging Area: say "You slide the drawer open by feel in the darkness. Something large and lumpy rolls around inside-- a flashlight?" Instead of opening desk: try opening drawer.

After taking flashlight in dim Staging Area: say "Yeah, it's a flashlight all right. You grip it in sudden relief, turning it in your hands till your finger finds the switch."

Before switching on flashlight when Staging Area is dim: now metal desk is described; now hole in the floor is described; now every handled visible thing is described; now Staging Area is bright.

After switching on flashlight: say "Your surroundings spring into brightness around you."; try looking.


Section - Foreman's Office

The description of Foreman's Office is "[if location is lit by flashlight]You sweep the beam of your flashlight around[otherwise]The stark emergency lights illume[end if] this tiny office, probably once where the boss sat under [a dust-covered window]. The only exit is to the south."

A dust-covered window is a window. It is outside of Foreman's Office and inside from Base of the Tower.

A half-collapsed desk is in Foreman's Office. On the desk is a rusted key.

[Exercise 5.2]Instead of entering half-collapsed desk: say "It's already on its last legs."

[Exercise 3.2][A wastepaper basket is an open unopenable fixed in place container in Foreman's Office.]

A faded safety poster is in Foreman's Office. "Tacked to the wall is a peeling safety poster, text almost faded away except for a section mentioning an emergency radio frequency." Understand "peeling/text/section/emergency/radio/frequency" as faded safety poster. The description is "According to the poster, the emergency radio frequency is [the emergency frequency]." Instead of taking poster: say "It would disintegrate if you tried to remove it from the wall."

Section - Storage Room

The description of Storage Room is "The walls are lined with [bare metal shelves], [if location is lit by flashlight]casting strange patterns of shadow as you sweep your flashlight beam around[otherwise]rusting away[end if]. The break room lies back to the south and a [utility ladder] climbs through [a broken skylight] to the roof."

The emergency lights are a plural-named fixed in place device in Storage Room. Understand "bare/bulbs/control/panel" or "light bulb" or "light bulbs" as the emergency lights.

The initial appearance of the emergency lights is "Mounted to the wall is a control panel for the building's emergency lights. They are switched [if emergency lights are switched on]on[otherwise]off[end if]."

For writing a paragraph about the emergency lights: say "Near some [rows of crumbling shelving] supporting hundreds of dusty [cans of food] [if emergency lights are switched off]you spot a dark[otherwise]is the[end if] control panel for the building's emergency lights."; now cans of food are mentioned.

After switching on the emergency lights: now every room regionally in Tower Vicinity is lighted; say "With a sharp buzz, a whiff of static and an electrical groan, bare light bulbs flicker on throughout the building."

After switching off the emergency lights:
	now every room regionally in Tower Vicinity is dark;
	if headlights are switched on:
		now every within range of headlights room is lighted;
		say "The lights die out, except for a ghostly glow from outside that must be your headlights.";
	otherwise if flashlight is switched on and flashlight is visible:
		say "The lights die out, leaving only the beam of your flashlight.";
	otherwise:
		say "The lights flicker and die out";
		if player holds courage:
			say ", but you are not afraid";
		say ".";
	say "[line break]The generator whines as it powers off, slowly falling silent."

Some bare metal shelves, a utility ladder and a broken skylight are scenery in Storage Room. Instead of climbing or entering the utility ladder: try going up. Understand "use [utility ladder]" as entering.

[Exercise 3.2]A rusted filing cabinet is a closed openable fixed in place container in Storage Room.

[Exercise 4.2]The description of rusted filing cabinet is "Almost looks like an antique. How long has this place been deserted, anyway?"

Some rows of crumbling shelving are a fixed in place supporter in Storage Room. 

Some cans of food are on the shelving. The cans of food are fixed in place. Understand "can/hundreds" as cans of food.

Instead of taking cans of food: say "You grab one and turn it over and over in your hand, but water has soaked and crumbled away the label, and you don't have any way to get it open. Your stomach growls a little as you put it back on the shelf." Instead of opening or eating cans of food: try taking cans of food.

Instead of taking cans of food when player holds can opener: say "You pull down a can from the shelf, grip it with the rusty can opener, and peel open the lid. Yuck: [one of]moldy peas[or]rotten condensed milk[or]black and mold-covered mushrooms[or]something nasty-smelling and green[as decreasingly likely outcomes]. [one of]Just your luck.[or]Not your lucky day.[or]Some of these should still be good, right?[as decreasingly likely outcomes]".

The canned oranges are a thing. Instead of taking cans of food when player holds can opener and player holds luck and canned oranges are not handled: say "You run your fingers along the cans, waiting until one feels right. There's nothing, nothing, but then... yeah. That's the one. You snag it down, twist it open, and boom: mandarin oranges, unspoiled and delicious. You scarf them down, picking them out segment by segment with your chilly fingers. By the time you've polished them off you're a lot less hungry. You grab the next can down for later."; move canned oranges to player. 

Instead of taking cans of food when can opener is handled and canned oranges are handled: say "You won't be hungry again till morning."

Section - Break Room

The description of Break Room is "Shadows and grime linger in dark corners of this dismal room with just one [tiny frosted window]. Some [rotting picnic tables] strewn with [layers of sand] and [crumbling trash] are pushed against one wall, and open doorways lead west and north."

Some rotting picnic tables and some crumbling trash are scenery in Break Room. 

A wire mesh cage is in Break Room. In it is an emergency blanket. The cage is closed. The cage is openable. The cage is transparent and fixed in place. The cage is locked.

Instead of unlocking cage with rusted key: say "You sling the key into the lock, but as you turn it, the rusted metal snaps off inside. The crumbling fragments fall to the ground as you slam your fist against the wire mesh in frustration. This is not your day."; now rusted key is off-stage.

Instead of attacking closed cage when player holds strength: say "You grip the mesh in one hand and pull, and realize it's so rusted you can easily peel it back. The door rips free and you drop it to the floor."; now cage is open; now cage is unopenable; now cage is not lockable.

Instead of attacking closed cage: say "You try to get a grip on the mesh to rip it open, but you're just not strong enough."

Instead of attacking cage: say "You've already ripped it open. No point in going mental."

[Exercise 5.3][A first aid kit is an openable closed portable container. Some moth-eaten bandages are in first aid kit.

After taking emergency blanket when first aid kit is off-stage: now first aid kit is in cage; say "As you pick up the blanket, you find an old first aid kit underneath it."

Instead of inserting anything into first aid kit: say "It's really not the best place to store stuff."

Instead of wearing bandages: say "You don't need them."]

Instead of touching blanket when blanket is in cage: say "You can touch the warm wool through the mesh, but you can't get it out." Rule for reaching inside the wire mesh cage when we are touching: allow access.

[Exercise 10.8][A scrap of paper is in wire mesh cage. Rule for reaching inside cage when we are touching: allow access. Rule for reaching inside cage when we are taking: if noun is scrap of paper, allow access. After taking scrap when scrap was inside cage: say "Reaching carefully through the mesh, you snag an end of the scrap and pull it out."]

The blanket is wearable. After wearing blanket: say "You wrap it around your shoulders, and soon your shivering stops."

A tiny frosted window is a window. It is outside of Break Room and inside from Weed-strewn Rust.

Section - Roof

The description of Roof is "From the roof of the building, you can see [the huge electrical tower] rising up in front of you. At your feet is the way back down."

Some metal rungs are a fixed in place thing in Roof. ["Some [metal rungs] once led to a control room higher up the tower, but the lowest ones are well above your head. You'd have to jump out into space to grab the bottom rung. You could also go back down."] Understand "ladder/rung" as metal rungs.

Instead of jumping when location is Roof: try going up. Instead of climbing or entering metal rungs: try going up.

Instead of going nowhere when location is Roof: say "It's a drop off on all sides."

The Control Center is up from Roof. Control Center is regionally in Office Interior. A huge metal barrel is a fixed in place supporter in Roof.

Instead of going up in Roof when player does not hold courage and huge metal barrel is not placed correctly: say "The metal rungs have rusted away and crumbled; the lowest are well above your head. You don't have the courage to make the jump."

Report going up from Roof when player holds courage: say "[first time]You gather your courage and leap off the edge of the roof. Your hands grasp the metal of the bottommost rung, scraping and sliding, but holding. [only]You pull yourself up the rungs into the control center. Hey, it wasn't that hard after all."

The huge metal barrel can be placed correctly. It is not placed correctly.

[Exercise 10.5. Comment out the initial appearance of metal rungs above to use this.]For writing a paragraph about huge metal barrel: say "[The rungs] once led to a control booth higher up the tower, but the lower handholds have rotted away and collapsed. [if huge metal barrel is placed correctly]You should be able to clamber up onto the [huge metal barrel] underneath, though[otherwise if player holds courage]You're pretty sure you could make the leap, though[otherwise if player holds strength]You could probably push that [huge metal barrel] over underneath, though[otherwise]A [huge metal barrel] rusts quietly some distance away[end if]."

The description of the huge metal barrel is "[A huge metal barrel] stands upright and intact nearby, [if placed correctly]directly underneath the bottom rungs [otherwise]large enough you could climb up on top of it[end if]."

Instead of entering or climbing the placed correctly huge metal barrel: try going up. Instead of entering or climbing the huge metal barrel: say "Yeah, you could get on top of it, but while it's over here you couldn't reach a whole lot."

Instead of pushing the not placed correctly huge metal barrel when player does not hold strength: say "You push against the side, but you're not strong enough to move the barrel."

Instead of pushing the not placed correctly huge metal barrel when player holds strength: now huge metal barrel is placed correctly; say "Heaving, you push against the barrel, and with a horrible grating noise, it slides across the roof till it rests underneath the metal rungs."

Report going up from Roof when huge metal barrel is placed correctly: say "You climb up on the barrel, reach, grab the bottom rungs, and pull yourself up."

Instead of pushing the placed correctly huge metal barrel: say "Push it any more and it'll fall off the roof. Keep it here and you can get to the rungs."

Section - Control Center

A can opener is in Control Center. The can opener is privately-named. Understand "opener" or "can opener" as the can opener. The initial appearance of can opener is "But hey, on one pile here's a perfectly good can opener."

The description of Control Center is "Some kind of electrical control stuff must have happened here once, but it's totally trashed now. Like, [piles of trash], broken equipment, and junk are everywhere. Back down is the only place to go."

Some piles of trash are scenery in Control Center. Understand "broken/equipment/junk" as piles of trash.

The smell of gasoline is fixed in place in Control Center. "[if player holds scent]You can clearly smell gasoline coming from under that [sheet of corrugated metal][otherwise]You catch a faint whiff of gasoline coming from somewhere[end if]." Understand "faint/whiff" as smell of gasoline. Understand "gas" as smell of gasoline when gas can is not visible.

Instead of doing anything to smell of gasoline, say "[if player holds scent]It's coming from beneath that [sheet of corrugated metal][else]You can't tell where the smell is coming from[end if]."

Instead of smelling Control Center, try smelling smell of gasoline. 

A sheet of corrugated metal is an undescribed fixed in place thing in Control Center. Does the player mean doing anything to the flashlight while sheet of corrugated metal is in Control Center: it is unlikely

Instead of searching or taking piles of trash: try looking under piles of trash. Instead of searching or taking or looking under or pushing or pulling sheet of corrugated metal: try looking under piles of trash. Instead of looking under piles of trash: say "You root around in the trash hopelessly, but there's a lot of it. You don't turn up anything useful."

Instead of looking under piles of trash when player holds scent: say "Your sense of smell leads you straight to a [sheet of corrugated metal]. You lift it [if player holds strength]effortlessly [end if]and throw it aside, revealing a gas can."; move gas can to location; now smell of gasoline is off-stage.

A gas can is a closed openable container. The description is "It's full of gas." Instead of opening gas can: say "You don't want to spill it."



Chapter - The Open Desert

The Open Desert is a room. The Open Desert is west of Base of the Tower, north of Base of the Tower, east of Base of the Tower, west of Crumbling Concrete, west of Middle of Nowhere, east of Middle of Nowhere, west of Backtracking, south of Backtracking, east of Backtracking, north of Weed-strewn Rust, east of Weed-strewn Rust, and south of Weed-strewn Rust.

Before going from Around the Tower to Open Desert:
	if flashlight is not held, instead say "Better not. [if headlights are switched on]Outside the wavering glow of your headlights, i[otherwise]I[end if]t's black. Pitch. Storm must have rolled in; there's no stars above, no anything but blackness around. Only the smell of the desert tells you it's still out there.";
	if flashlight is not switched on, try switching on the flashlight;
	if emergency lights are switched off or voice has not been visible or insufficient memories found, instead say "You heft your flashlight nervously, licking your lips, but decide not to head out into the desert just yet. There might be more around here you should investigate before taking such a drastic step.";
	if Rainstorm is happening, instead say "In a storm like this? No way.";
	if Coyote's Offer has ended, instead say "You have some feeling that when the last spirit animal decides to make an appearance, it will find you.";
	if Pursuit is not happening and Temptation is not happening, instead say "On a night as freakishly dark as this, that's insane."

Definition: A direction is cardinal if it is not up and it is not down and it is not outside and it is not inside.

Before going to The Open Desert when The Open Desert is unvisited:
	repeat with heading running through cardinal directions:
		change the heading exit of The Open Desert to The Open Desert.
		
Report going to The Open Desert when The Open Desert is unvisited: say "You walk for a long time, thoughts turning over like the sand under your sneakers. You think about [a random thing in emotional baggage]. You think about Ocean and how pissed she's gonna be that you're not home. Like you tell her not to wait up for you but she always does anyway.

Some wind kicks up and chucks sand in your face. You blink it out and kinda realize while you're doing it that you haven't really been paying attention to where you've been going. Another gust whines through the sagebrush and you realize with a kind of heavy feeling that with all the dust this wind is kicking up you can't see a damn thing. You can't see your pickup, you can't see the electrical tower. Not even your damn footprints. You're lost. Well, shit."

The description of Open Desert is "[one of]Clouds of dust swirl through the air[or]The dust storm rages around you[or]Your tracks are swallowed up in moments by the billowing sand[or]The desert stretches around you in all directions[in random order], and [one of]you shiver in the chill night air[or]you plod wearily through the sand[or]you wish you could see more than twenty feet in front of you[or]god damn it's dark[or]every inch of sand looks just like every other[in random order]."

Desert flotsam is a kind of thing. A looming cactus is desert flotsam. A dull grey boulder is desert flotsam. A dead cow is desert flotsam. A low bluff is desert flotsam. A clutch of weeds is desert flotsam. Some dry bones are desert flotsam. Some clumps of sagebrush are desert flotsam. A dry streambed is desert flotsam. A stand of cactus is desert flotsam.

[Exercise 7.7]A scattered patch of dying sagebrush is desert flotsam. A dead pine tree is desert flotsam. A weatherbeaten outcropping is desert flotsam. A lizard skin is desert flotsam. Instead of doing anything to desert flotsam: say "It's not important, man."

The initial appearance of desert flotsam is usually "[one of]All you can make out in the darkness [is-are a list of visible desert flotsam][or]You can sort of see [a list of visible desert flotsam][or]Nearby: [list of visible desert flotsam]. Nothing to write home about[or]Half-lost in shadows, you see [a list of visible desert flotsam] and that's about it[in random order]."

Before going to Open Desert:
	repeat with item running through visible desert flotsam:
		now item is off-stage;
	let decorations be the list of desert flotsam;
	sort decorations in random order;
	let density be a random number from 0 to 2;
	truncate decorations to the first density entries;
	repeat with item running through decorations:
		now item is in The Open Desert.

Instead of dropping something when location is The Open Desert: say "Sounds like a good way to lose something forever."


Chapter - Regions

Tower Vicinity is a region. Around the Tower and Office Interior are in Tower Vicinity.

Part - Characters

A spirit animal is a kind of person. The rabbit, the Coyote, and Sand-dancer are male spirit animals. Understand "sand dancer" or "dancer" as Sand-dancer.

A normal animal is a kind of animal. A desert hare and a brown lizard are normal animals.

Chapter - Normal Animals

The brown lizard is in Middle of Nowhere. "[if player is in pickup truck]Through the windshield, you see a little lizard clinging frantically to the [Saguaro][otherwise]A brown-colored lizard clings to the cactus[end if]." Understand "brown-colored/colored/sand-dancer/dancer" or "sand dancer" as brown lizard. The description is "[one of]He looks pretty pissed that you crashed into his cactus. What did grandma used to call those little dudes? You can't remember any more[or]Oh yeah, you remember, she called them sand-dancers. This little sand-dancer still looks pissed[or]The little sand-dancer lizard stares at you with one slitted eye[stopping]."

Instead of giving anything to the lizard: say "You dangle [the noun] in front of it, but it just flicks its tongue in and out a little faster, staying put." Instead of attacking or taking or pushing or touching the lizard: say "You reach out to grab it, but in a flash it scurries around to the other side of the cactus and disappears."; now lizard is off-stage. Instead of kissing the lizard: say "Someone in elementary school dared you to do that once and you beat him up." 

[Exercise 9.2]
[The desert hare is in Base of the Tower.

Every turn when a random chance of 1 in 4 succeeds:
	let starting point be the location of the desert hare;
	let destination be a random room which is adjacent to starting point;
	let heading be the best route from starting point to destination;
	if heading is a direction and destination is regionally in Around the Tower, try the desert hare going heading.

After the hare going a direction (called way): if the hare is visible or the hare was visible, say "The hare hops [way]wards."]

Chapter - The Radio Voice

The voice is an undescribed man.

Every turn when radio is switched on and frequency tuned to of radio is emergency frequency and voice has not been visible:
	move voice to location;
	try quizzing voice about introduction;
	try listing suggested topics;
	have the parser notice voice.
	
After quizzing voice about introduction: say "Not like you think anything's going to happen, but what the hell. You grab the dusty old mike, press the call button, and ask is there anybody[paragraph break]'...out there?' the speaker blurts and holy crap, someone's responding, and they say 'Roger roger, tower station nineteen, read you now loud and clear, what's your forty?' and the voice is staticky and whirled through with weird rhythmic distortions but you can hear it just fine and now what?[add what that means ask suggestion][add being lost tell suggestion][add never mind tell suggestion]".

never mind is held by voice. After informing voice about never mind: say "[remove what that means ask suggestion]You mutter something about how you think you've made a mistake and you have to go but the voice interrupts. 'Hang on, hang on, son, there shouldn't be anybody out there. Not at all, especially not this late. Why don't you tell me what's going on?'".

what that means is held by voice. After quizzing voice about what that means: say "You try to make some joke about not having forty of anything, but the voice cuts you off. 'Ten forty means situation report, son. Obviously you're not on duty. Ain't nobody on duty out there anymore, specially not this time of night. What's going on?'".

being lost is held by voice. Understand "Im/I'm" or "I am" as being lost. After informing voice about being lost: say "[remove what that means ask suggestion][remove never mind tell suggestion]Feeling a little stupid, you come clean and tell the voice that you drove off the road and aren't sure really exactly where you are.[paragraph break]'Copy that,' the voice says briskly after a moment. 'You're at tower station nineteen, son, about thirty-two miles southwest of Oro Oeste, fifteen miles or so from the state highway.' And if the mike wasn't attached to the radio you'd drop it on the floor. Fifteen miles? How in the [italic type]hell[roman type] could you have driven fifteen miles off the road and not remember? How is that even possible?[paragraph break]'Hello?' the radio says. 'Hello, son, do you copy?'[add yes-suggestion other suggestion][add switch-off-radio other suggestion]".

After informing voice about yes-suggestion: say "You jabber something positive and sit back, still shaken.[paragraph break][voice explains choices]?".

switch-off-radio is a misc-suggestion held by voice with printed name "switch off the radio". Instead of switching off radio when current interlocutor is voice: say "You reach for the switch, but hesitate, hand hovering above it as the static whirls and roars.[paragraph break][voice explains choices]?".

To say voice explains choices: say "'Look, son,' the voice says, 'I don't know how you got out there but that's not important right now. Weather report's coming in and there's a cold front the size of Texas coming your way. I don't want to scare you but if you don't find a way home, or figure out some food and shelter for the night, you could freeze to death. You hear me? Now on account of the cutbacks I don't have anyone to send out there until morning. But there may be parts around that old tower you can use to patch up your truck and make it back to the highway. Or, there may be emergency supplies that would get you through the night. This storm's gonna blow out all our communication, so you're gonna be on your own. It's up to you. Over and out.'[paragraph break]You rub your face tiredly. Ocean was expecting you tonight after your shift, like usual. If you don't make it she'll be worried sick. Then on the other hand maybe you should worry about yourself first for a change. You feel like you need a cigarette and then you remember you quit. Hell, can't anything be easy"; reset the interlocutor; now voice is off-stage.


Chapter - Trading with the Spirit Animals

A spirit animal has a number called price. The price of the rabbit is 1. The price of the Coyote is 2. The price of Sand-dancer is 3.

Trading is an action applying to two things. Understand "trade [something preferably held] for [something]" as trading.

Understand "trade for [something]" as a mistake ("You've got to say both what memory you're trading and what talent you're trading it for."). [This was added to catch a common mistaken syntax.]

The trading action has a person called the trader. Rule for setting action variables for trading: now the trader is a random visible spirit animal.

Check trading when the trader is not a spirit animal: instead say "There's no one here to trade with."

Check trading when the noun is not a memory: instead say "'I'm only interested in trading memories,' [the trader] says."

Check trading when the second noun is not a talent: instead say "'I only have talents to offer you,' says [the trader], '[list of visible not held talents].'"

Check trading when the second noun is held: instead say "You've already got the talent of [second noun]."

Check trading when the noun is not in emotional baggage: instead say "You've already traded away that memory."

Check trading when the trader needs more memories and the trader is not Sand-dancer [The addition of "and the trader is not Sand-dancer" is not strictly necessary, but is required because of a bug in Inform: http://inform7.com/mantis/view.php?id=410]: move the noun to the trader; instead say "[The trader] touches your fingertips and pulls [the noun] through your nerve endings. 'Good,' he says, 'I'll take that, although it's not enough to complete the trade.'[paragraph break]Somewhere inside you, things are shifting, moving, growing."

To decide whether (trader - a person) needs more memories:
	let the projected total be the number of memories held by trader + 1;
	if the projected total is less than the price of trader, decide yes;
	decide no. 
	
Carry out trading:
	now the noun is held by the trader; [This line was accidentally omitted from the first printing of the book.]
	now the second noun is held by the player;
	repeat with item running through visible not held talents:
		now item is off-stage.
		
First report trading: say "[The trader] nods. 'Yes,' he says, 'a fair trade.' And something happens inside you as he says it. [The noun] shifts and wriggles and fades away and it's still there, but now it's shifted, become something else. And yeah, it kinda does feel like you could call it [the second noun]. Cool."

Instead of taking a not held talent when a spirit animal (called the potential trader) is visible: say "'You can't just have it,' [the potential trader] says. 'That's not how it works. You have to TRADE something for it.'".

Instead of giving something to a spirit animal (called the potential trader): say "'No, not like that,' [the potential trader] says. 'You have to TRADE it for something.'".

Instead of doing anything other than quizzing, implicit-quizzing or trading to a not held talent: say "It's just potential, or something."


Chapter - The Coyote

The description of the Coyote is "You can barely see him in the darkness, can't tell whether he's old or how old, what color his [faded denim jacket] is, and with those [sunglasses] you can't even tell whether he's smirking at you or just twitching his mouth. There's a weird smell coming off him, sweat and dirt and a little wet dog and something deeper, earth, desert, rain, all mixed with [cigarette] smoke." 

The Coyote holds a thing called a cigarette. He wears some sunglasses and a faded denim jacket.


Part - Scenes

A scene can be dramatic. Instead of smoking during a dramatic scene: say "This isn't really the best time for that, man."

Chapter - Sinister Voices

Sinister Voices is a scene. Sinister Voices begins when Rabbit's Offer ends. Sinister Voices ends when Sand-dancer's Arrival begins.

Every turn when going and location is Break Room during Sinister Voices: now radio is switched on; now frequency tuned to of radio is emergency frequency; say "[one of][sinister-radio-1][or][sinister-radio-2][or][sinister-radio-3][stopping]."

To say sinister-radio-1: say "With a sudden growl of static the radio springs to life[radio left off] and it freaks the hell out of you. The voice weaves in and out of crazy whirling distortion and shifting blasts of static. 'Hey... receiving? ...never told... you'll never, never--' A wail like an 8-bit banshee screams through the signal. '...waste of time... who do you think?...' Static, static. 'Very soon now, Nak... akaibito... very...'[paragraph break]Uh. You're pretty sure you never told that dude your name. Maybe you're just hearing things".

To say radio left off: if radio was switched off, say "[first time], which is weird because you're damn sure you turned it off[only]". [Added this and tweaked the radio text to incorporate it. This allows us to make sure the player gets the acknowledgement that they turned the radio off, no matter when in the progression they try this. It disenfranchises players when it seems as if the state changes they're making to the story world aren't being honored.]

To say sinister-radio-2: say "The radio growls to life again[radio left off], the voice distorted now under a constant barrage of electronic rain. 'Where do you think you're going?' it says. 'What are you trying to do? You can't...' A snap, some syncopated crackles. '...can see you, Na... know where... never going to work. Never g--' And the voice cuts off, replaced by a low, tooth-rattling hum.[paragraph break]The voice sounds different than before. I mean it still kind of sounds like the first guy you talked to but it sounds like someone else now too, someone you know, you've known for a long time. Someone you're afraid of".

plan-threatened, memory-threatened, talent-threatened, and final-threatened are truth state variables.

To say sinister-radio-3:
	if plan-threatened is false and the player holds something required by a plan (called the item):
		now plan-threatened is true;
		say "Static squeals from the radio[radio left off]. 'Hey,' the speaker shouts, 'hey, do you really think that [item]'s going to help you with anything? You can't even--' and static reclaims it again";
	otherwise if memory-threatened is false and emotional baggage contains a memory (called the selected memory):
		now memory-threatened is true;
		say "The static on the radio resolves into overlapping whispers[radio left off]. 'It makes for a nice story,' the whispers say, 'but you're remembering [the selected memory] all wrong. That's not really how it happened, was it? Was it, Knock? Was--' and they repeat and overlap and echo and fade back into the mutters of the static";
	otherwise if talent-threatened is false and the player holds a talent:
		now talent-threatened is true;
		say "'You think just because you've got [a random talent held by player] now you're going to be anything other than a pathetic failure?' the radio squawks angrily[radio left off], before dissolving into harsh buzzing distortions";
	otherwise if final-threatened is false and the player holds a talent:
		now final-threatened is true;
		say "'You're nothing,' the radio spews, 'your [list of talents held by player] [is-are] worthless. You'll never amount to anything, and neither will your kid, just another half-breed loser destined to die in poverty and live in debt, isn't that right, Knock?' and with a sudden shock you realize why the voice sounds so familiar. It's your voice. It's your own god-damned voice";
	otherwise:
		say "[one of]The radio fizzles and growls through weird twists of distortion[or]Angry distortion bubbles and pops from the radio speaker, twisting in weird rhythmic patterns[stopping]".
		
Understand "unplug [radio]" as a mistake ("[one of]You rip the cord out of the wall[if radio is switched on], but the speaker keeps buzzing and the lighted dial keeps flickering[end if].[or]Damnit, you already did![stopping]").

Instead of attacking radio: say "[one of]You slam a fist into the top of the radio, but it just keeps hissing with static.[or]You kick the radio off the table and it clatters to the ground, but still keeps laughing with hisses and whines.[or]You smash the radio over and over again, until it lies in pieces on the ground, but the static still continues, and more and more it sounds like sand.[or]The radio is destroyed, but the sound still plays, echoing and reverberating through the room.[stopping]".

Before saying hello to the emergency radio: if emergency radio is switched off, try switching on emergency radio instead; otherwise say "You try to raise someone, but there's no response[if frequency tuned to of radio is not the emergency frequency], at least on this frequency[end if]." instead. 

Chapter - Rainstorm

Rainstorm is a scene. "Rain starts to come down, pattering on the desert sand. Soon it's gonna be a muddy deathtrap out here."

Rainstorm begins when Rabbit's Offer ends.

The rain is a backdrop. "Rain batters down on the desert."

When Rainstorm begins: now the rain is in Around the Tower.

Rainstorm ends when at least one thing required by a plan has been carried and Control Center is visited and location is not Roof and a random chance of 1 in 4 succeeds.

Every turn when a random chance of 1 in 3 succeeds and player is in Office Interior during Rainstorm: say "[one of]The building groans as wind and rain lash it from outside[or]Water from the storm trickles down from unseen cracks and holes[or]Rain beats constantly on the roof, loud and furious[in random order]." [Just adding a bit more ambience during the rainstorm.]

When Rainstorm ends: now the rain is off-stage; say "The rain's dying down, the sounds of the storm fading, water sinking into the thirsty sand leaving only the smell of [sage] behind."; now sage is in Around the Tower.

The sage is a backdrop. Instead of smelling location when sage is visible, try smelling sage. Instead of smelling sage: say "When you were a kid, it smelt like camping and adventure. Now it just smells like desert and confusion.".

Instead of going to The Open Desert during Rainstorm: say "That's not the best idea in a storm like this." 

Instead of listening during Rainstorm: say "You can't hear anything at all above the pounding noise of water slapping sand."

Report going from Crumbling Concrete to Staging Area during Rainstorm: say "Gratefully, you slip inside the building, out of the storm."

Chapter - Pursuit

Pursuit is a recurring scene.

The darting shadow is a thing. 

Pursuit begins when
	player holds flashlight and
	emergency lights are switched on and
	The Rabbit's Offer has not happened and
	voice has been visible and
	the shadow appears.

To decide whether the shadow appears:
	if location is The Open Desert for at least six turns, decide on whether or not a random chance of 1 in 4 succeeds;
	if location is Roof, decide no;
	if location is in Around the Tower, decide on whether or not a random chance of 1 in 3 succeeds;
	decide no.
	
Understand "movement/moving/something" as darting shadow. The darting shadow has a direction called the path.

The initial appearance of darting shadow is "[one of]Hey, there it is again[or]Yeah, you're sure you saw it[or]It's gone now... no, wait[in random order]-- [one of]something's moving[or]movement[or]a darting shadow[in random order], to the [path of darting shadow]."

Instead of doing anything to the darting shadow, say "Hey, you're not even sure you saw it."

When Pursuit begins:
	let desert connection be an object;
	if location is The Open Desert:
		now desert connection is the bunny's path;
	otherwise if location is Weed-strewn Rust:
		now desert connection is east;
	otherwise:
		now desert connection is west;
	now path of darting shadow is desert connection;
	move darting shadow to location;
	if darting shadow is visible, say "[one of]Out of the corner of your eye you spot a glimpse of something moving in the darkness, off in the desert to the [path of darting shadow][or]You see that weird movement again, out in the shadows to the [path of darting shadow][stopping]."
	
To decide which direction is the bunny's path: decide on a random cardinal direction.
	
The darting shadow has a number called times followed. The times followed of darting shadow is 0.

Before going during Pursuit:
	if noun is path of darting shadow:
		increase the times followed of darting shadow by 1;
	otherwise:
		now times followed of darting shadow is 0;
		now darting shadow is off-stage;
		say "You lose sight of whatever it was."

Carry out going path of darting shadow when darting shadow is visible during Pursuit:
	say "[if times followed of darting shadow is 1]You head off in the direction of the movement, scanning with your flashlight over the skittering shadows.[otherwise if times followed of darting shadow is 2]You chase after the shadow, faster and faster, breath misting in the cold air.[otherwise]Some crazy thrill comes over you. You feel like a hunter. You can almost smell the thing you're chasing in the air. You [italic type]can[roman type] smell it, sweaty fur and terror. You race after it.[end if]";
	now path of darting shadow is the bunny's path.
	
Instead of going path of darting shadow when times followed of darting shadow is at least 4 and darting shadow is visible:
	say "Dodging after the fleeing, skittering shadow, you're almost caught up to it when your foot trips on a rock and you stumble to the ground. But the ground doesn't stop your fall, it collapses, and you're tumbling in a shower of dirt clods down a hole, rolling down some crazy underground tunnel clutching at mud and roots, till finally you slide into some damp, fetid place, and come up a stop against something soft, huge, warm. And furry.";
	now player is in Burrow;
	now darting shadow is off-stage.

Pursuit ends when darting shadow is not visible. When Pursuit ends: now times followed of darting shadow is 0.

Section - Easier testing (not for release)

[This was added to make verifying completability using the skein easier. Previously, changes to the game could cause the random directions of the shadow's movement to require hand-tuning the skein. This means that in testing versions, the bunny always goes the same way.]

To decide which direction is the bunny's path: decide on west.


Chapter - Rabbit's Offer

Rabbit's Offer is a dramatic scene.

The Rabbit's Offer begins when location is Burrow. Rabbit's Offer ends when location is not Burrow.

When Rabbit's Offer begins: Rabbit's conversation starts in 1 turn from now.

At the time when Rabbit's conversation starts: try quizzing the rabbit about introduction; try listing suggested topics.

Burrow is a room. The description of Burrow is "Roots push through the earthen roof, casting weird shadows in the beam of your flashlight. It's round and small and underground in here and filled with hot sweat and animal stench. But mostly filled with something big and alive." Some roots are scenery in Burrow.

The rabbit is in Burrow. The initial appearance of the rabbit is "[one of]It's huge, covered in sweaty fur stained with mud, and a huge eye stares out you above long black whiskers. You can feel its breath on your face and its heartbeat thudding through the floor and you cringe back in terror against the wall. It's... well.[paragraph break]It's a rabbit.[or]The rabbit stares at you, whispers twitching, and it's freaking you out.[stopping]". The description of the rabbit is "The closer you look the weirder it gets, like it doesn't start or end in any one place or something all new-agey like that."

introduction is a familiar thing. After quizzing the rabbit about introduction: say "The rabbit breathes and stares. You wonder if it's going to start talking like in some crap disney movie and then jesus christ it does...[paragraph break]'So what'd you expect from an animal guardian?' it says, but like not with its lips, somewhere in your head instead. 'Were you thinking big, nasty, sharp, pointy teeth? Waistcoat and pocket watch? Nah. Tricks are for kids. What's up, Knock?' Its whiskers twitch.[add rabbit ask suggestion][add go insane other suggestion]".

go insane is a misc-suggestion. It is held by the rabbit. The printed name is "just, you know, go insane". Understand "go insane" as a mistake ("I know, right? Looks like it's too late though.") when location is Burrow.

After quizzing the rabbit about the rabbit: say "[remove go insane other suggestion]'Oh come on, pal, you know me,' he says with this kind of stupid cheerful tone, and suddenly he looks more like Buster from Arthur, scrawny and poorly animated. 'I've been keeping an eye on you from the TV all these years. Your grandma asked me to, remember?' He grins, buck teeth protruding.[add grandma ask suggestion][add how he's not real tell suggestion]".

grandma is held by the rabbit. After quizzing the rabbit about grandma: say "'She was wrong about lots of stuff,' Buster says, scratching himself with a hind paw thoughtfully, 'but right about lots too. Oh, lots.'"; try quizzing the rabbit about rabbit's judgment.
	
how he's not real is held by the rabbit. After informing the rabbit about how he's not real: say "'Oh, don't say that!' the rabbit says, animated eyes going round like saucers. 'Then it'd be just you here all alone, and wouldn't that be boring. It's much more interesting if I'm really around.'"; try quizzing the rabbit about rabbit's judgment.

rabbit's judgment is held by rabbit. After quizzing the rabbit about rabbit's judgment: clear all topics; say "[one of][if count of pack of cigarettes is less than original cigarette count - 1]'Yo, you started smokin['] again?' Buster asks, sniffing disdainfully, except he's not Buster any more, more like Eminem. 'I thought you quit that shit, dawg. It's cool, I won't tell your grandma, but it makes Thumper cry a little, you know what I'm sayin[']?' [otherwise if at least 2 windows are open]'Yo, nice work breakin['] all those windows,' Buster says, except he's not Buster any more, more like Eminem. 'Way to stick it to the man. You hella bad, dawg. Maybe you can tag some shit when you get back to town too.' [otherwise]'Hey yo, you been hella good about keepin['] off those cancer sticks,' Buster says, except he's not Buster any more, more like Eminem. 'Don't think I ain't watchin['] ya.' [end if](Oh hey, Rabbit Smith, you get it.)[or]The rabbit just scratches his ear with a hind paw, smirking.[stopping][add how he knows so much about everything ask suggestion]".

how he knows so much about everything is held by the rabbit. After quizzing the rabbit about how he knows so much about everything: say "'Hey, back off, man,' he says, 'it's my ****in['] job.' And there's actually like a bleep, too, and now that you think of it you only ever saw 8 Mile on TV."; try quizzing rabbit about down to business.

down to business is held by the rabbit. After quizzing the rabbit about down to business: clear all topics; say "'Anyway, look, man, we both know you're in trouble. I just gotta ask you one question.' And he changes again into like a giant silhouette, and it's the Playboy Bunny, ears and bow tie and all. 'Do you love her?'[add yes-no-suggestion other suggestion][add don't know if I love her other suggestion]"; move the bunny's bow tie to location.
Instead of saying yes when yes-no-suggestion is familiar and location is The Burrow: say "'Then you should probably get home and tell her,' the bunny says. 'Patch up that truck and fly down that highway before she gets away.' It winks."; introduce rabbit's choices.
	
Instead of saying no when yes-no-suggestion is familiar and location is The Burrow: say "'Then what are you still doing with her?' the bunny says. 'Get out while the getting's good. You think either of you will be happier if you put that off? There's fish in other oceans kid. You've got your whole life ahead to swim.' It winks."; introduce rabbit's choices.
	
don't know if I love her is a misc-suggestion. It is held by the rabbit. The printed name is "tell him that you don't know". Understand "that/you" as don't know if I love her. After informing the rabbit about don't know if I love her: say "'Yeah,' the bunny says, 'well this is the night to figure it out. Whether you decide to go home to her tonight or take care of yourself tonight might have consequences on a night with a storm like the one that's coming. Just sayin['].' It winks."; introduce rabbit's choices.

To introduce rabbit's choices:
	clear all topics;
	now bow tie is off-stage;
	move strength to location;
	now strength is familiar;
	move courage to location;
	now courage is familiar;
	move easter basket to location;
	say "[line break]'Look,' he says, and now he's big and fluffy and smells like springtime and peeps. 'I can help you make your decisions. I'll trade you for one of these talents.' He holds out an [easter basket filled with plastic green easter grass]; in it are two glowing orbs.[paragraph break]'Strength,' he says, pointing to the first one, 'and courage. Pick whichever one you think will be most useful, but you have to give me something back. Something real, something I can work with.'[add more about trading ask suggestion][add strength ask suggestion][add courage ask suggestion][add trade-for-strength other suggestion][add trade-for-courage other suggestion][add take-inventory other suggestion][add don't want to trade other suggestion]".
	
There is a thing called an easter basket filled with plastic green easter grass. Instead of doing anything to easter basket: say "You aren't sure you believe in it enough for that.".

After quizzing the rabbit about strength: say "'Might be useful for surviving through the night,' he says, 'if that's what you're planning.'".

After quizzing the rabbit about courage: say "'You're going to need it to get home to Ocean,' he says, 'if that's what you want.'".

more about trading is a familiar thing held by the rabbit. After quizzing the rabbit about more about trading: say "'You won't lose what you trade entirely,' he says, twitching his whiskers, 'but it will change, transverse, be resurrected as something else. Reborn.'".

trade-for-strength is a misc-suggestion. It is held by the rabbit. The printed name is "trade something for strength". trade-for-courage is a misc-suggestion. It is held by the rabbit. The printed name is "trade something for courage".

you don't want to trade is a misc-suggestion. It is held by the rabbit. The printed name is "tell him you don't want to trade". Understand "i" as you don't want to trade. [This is so we can also recognize "i don't want to trade".]

After informing the rabbit about you don't want to trade: say "[remove you don't want to trade other suggestion]'I came all this way to help you,' the rabbit says, 'I'm even missing the big parade,' and it wiggles its tail with a smell of sugar and frosting. 'I think we'd better make a trade.'"

take-inventory is a misc-suggestion. It is held by the rabbit. The printed name is "take inventory of what you've got".

Check trading when the noun is not a memory and the trader is the rabbit: instead say "'No, no, I don't want that,' says the rabbit, twitching its nose indignantly. 'For a talent like this, you ought to put up something real. Something you care about.'[line break]".

Report trading when Rabbit is visible: clear all topics; now more coming is familiar; try quizzing the rabbit about more coming; stop the action.

more coming is a thing. After quizzing the rabbit about more coming: say "'The others are coming,' he says, 'they'll be here soon,' and now he looks like Frank from Donnie Darko and his face is behind that freaky metal mask and his voice is distorted and makes your skin crawl.[paragraph break]'Watch out for them,' he says. 'We all want to help, but... the others are wilier than me. Look up.'[paragraph break]'Look up, Naki,' he says again."; now lookup-suggestion is familiar; reset the interlocutor. lookup-suggestion is an unfamiliar misc-suggestion with printed name "look up".

Instead of trading or quizzing or informing or saying yes or saying no or saying hello to when lookup-suggestion is familiar, say "'Look up, Naki,' he says again." [This fixes a bug that could allow for trading with the rabbit multiple times.]

Instead of examining up when lookup-suggestion is familiar: say "Stupidly, you tilt your head back and stare up at the dirt ceiling, and all you can see is blackness.[paragraph break]No wait... there's patterns, slowly shifting, barely visible in the darkness, and miles away. Like clouds. And then a drop of water falls on your face, and then another, and you realize suddenly you're outside, and it's starting to rain..."; move player to Backtracking; now lookup-suggestion is unfamiliar.



Chapter - Temptation

Temptation is a scene.

Temptation begins when
	Rainstorm has ended and
	Control Center is visited and
	location is not regionally in Office Interior and
	location is not Roof and
	location is not Control Center.

When Temptation begins: say "You stop in mid-stride as your eyes flick to the horizon. Way out in the desert, silhouetted on a rise, a [distant figure] stands. As you watch he raises a hand and waves."; move distant figure to Around the Tower.

The distant figure is a backdrop. Instead of doing anything to the distant figure, say "He's too far away. You can barely see him." Instead of waving hands during Temptation: say "The figure waves back, then seems to beckon you forward."

Every turn during Temptation: if a random chance of 1 in 4 succeeds and location is not regionally in Office Interior, say "The [distant figure] waves again, out in the deep desert."

Temptation ends when location is The Open Desert. When Temptation ends: now the distant figure is off-stage.

Chapter - Chase

Chase is a dramatic scene. Chase begins when Temptation ends. Chase ends when Chase is happening for six turns.

Carry out going during Chase: say "[one of]You move nervously forward.[or]You jog forward, eyes snapping left and right at the moving shadows around you.[or]You're running now, jumping over sagebrush and stumbling on rocks, as snarling animal forms close in around you.[or]You run.[stopping]".

Every turn during Chase: say "[one of]Something snarls off in the distance, a warning growl.[or]A howl from behind you, and an answer from somewhere ahead. Coyotes. Hungry, sounds like.[or]Coyotes call all around you now, circling in the dark, unseen, but coming closer, closer.[or]You can smell them now, wild, feral. Shifting shadows whirl around you, panting, whining with the thrill of the chase.[or]The pack's at your heels, snapping, growling, and you've never in your life been this terrified.[or]Snarls and teeth and mangy fur on every side.[stopping]".

The snarling shadows are an undescribed animal. When Chase begins: move snarling shadows to Open Desert. When Chase ends: now snarling shadows are off-stage. Understand "moving/shadow/animal/form/forms/snarl/growl/howl/coyote/sound/sounds/coyotes/wolf/call/feral/wild/shifting/pack/snarls/teeth/mangy/fur" as snarling shadows. Instead of doing anything to snarling shadows: say "All you can do is run."

Chapter - Fight

Fight is a dramatic scene. Fight begins when Chase ends.

Instead of brooding during Fight: say "No time for that now." [We don't want to restrict brooding during all dramatic scenes, since it's often useful to review memories before trading them, but there's no value in that here and it's particularly inappropriate.]

When Fight begins: now circle of snarling coyotes is in location; say "It's over. They've caught you. They surround you, circling, growling, looking for weakness, moving in for the kill."

The circle of snarling coyotes is an animal. The description is "They're all around you, teeth and fur and sweat and muscles, angry, closing.". Understand "coyote" as circle of snarling coyotes. Every turn when circle of snarling coyotes is visible: say "[one of]A coyote snaps his teeth, lunging forward then fading back into the pack.[or]The circle of snarling coyotes tightens.[or]The coyotes growl, pulling closer, snapping at your heels.[in random order]".

Instead of going when circle of snarling coyotes is visible: say "You try to flee and instantly teeth and claws block your path; you pull back to the center of the circle, terrified."

Fight ends in cowardice when Fight is happening for six turns. When Fight ends in cowardice: say "It's over. The coyotes dive in for the kill, jaws snapping, and you cower in fear.

But then one of them flicks his head and bares his teeth, and the others pull back. He's not bigger or stronger or anything but there's something about him that's different. He takes the littlest step forward and the others scatter, mangy shadows slinking away into the desert and then you're left alone with the leader, the alpha coyote."

Fight ends in bravery when we are attacking. Instead of attacking during Fight: say "It's over. The coyotes dive in for the kill, jaws snapping, [if player holds strength]and without hardly realizing what you're doing you make a fist and slam it into the one that's closest.

The coyote squeals, flung sideways by the strength of your punch, blood dripping from its nose, and the rest of the pack pulls back in sudden caution. Another coyote makes to lunge and you whirl towards it in fury, pulling back for another blow, but the pack breaks in some collective decision and scatters[otherwise if player holds courage]and suddenly this bolt of courage runs through you and without even thinking about it you leap towards the biggest coyote with a terrible scream.

It flinches back, suddenly unsure, and you charge at it full speed, still screaming, arms outstretched, until it turns tail and bolts away. The other coyotes circle uncertainly, but you turn your snarling furious rage on them too and then they're all scattering[end if], mangy shadows slinking away into the desert. Except for one last coyote who stands his ground."

Instead of throwing anything at circle of snarling coyotes during Fight: say "Maybe you could just attack them directly."

When Fight ends: now circle of snarling coyotes is off-stage.

Chapter - Coyote's Offer

Coyote's Offer is a scene. "And then you blink, and realize he's not a coyote after all. Just... just a guy." Coyote's Offer begins when Fight ends.

Coyote's Offer ends when location is not Open Desert.

When Coyote's Offer begins: move the Coyote to Open Desert; Coyote's conversation starts in 1 turn from now.

At the time when Coyote's conversation starts: try quizzing the Coyote about introduction; now Coyote holds down to business; try listing suggested topics.

The initial appearance of Coyote is "The Coyote watches you intently." Understand "guy/man" as the Coyote.

After quizzing Coyote about introduction: say "He wears a couple days of stubble, a scuffed and [faded denim jacket], and, ridiculously in the darkness, a pair of cheap [sunglasses]. He lights a [cigarette], then holds up a hand in annoyance to block your flashlight beam. 'Turn that thing off,' he says, and either you do it or it goes off by itself, because the next thing you know it's darker and he's closer and the only light comes from the red glow of the cigarette.[paragraph break]'That's better,' he says. He takes a drag on the cigarette, then pulls another from behind his ear and offers it to you. 'Smoke?'[add yes-no-suggestion other suggestion]".

When Coyote's Offer begins: now flashlight is switched off; now Coyote is lit. Instead of switching on flashlight during Coyote's Offer: say "You think you'd rather keep him on your side."

Instead of taking cigarette: move cigarette to player; try saying yes. Instead of dropping cigarette: now cigarette is off-stage; say "You drop it to the ground and stub it out with your foot." Instead of smoking when player holds cigarette during Coyote's Offer: say "You take a drag, thoughts and adrenaline whirring through your head." Instead of smoking during Coyote's Offer: try saying yes.

Instead of saying yes when yes-no-suggestion is familiar and Coyote is visible: say "You pull out your pack and [if count of pack of cigarettes is 0]see that it's empty, but Coyote grins and hands you his last one[otherwise]he grins, like he knew you'd say yes[end if], and leans forward for you to light up off him. His sunglasses reflect back nothing but your own face weirdly lit by the glow from the cig, and for a moment it's like the blackness behind them is deep, deeper than the sky, deeper than the universe..."; if count of pack of cigarettes > 0, decrease count of pack of cigarettes by 1; Coyote-talks.

Instead of saying no when yes-no-suggestion is familiar and Coyote is visible: say "He shrugs, takes a puff on his, and exhales the smoke into the desert night. Wind whips it away and he stares towards the horizon, forehead wrinkling in something (annoyance, maybe contemplation) you can't read through the sunglasses."; Coyote-talks.

To Coyote-talks: clear all topics; say "[line break]'Gotta keep an eye on the horizon,' he says in a scratchy, slow voice[if we are saying yes] as you step back, inhaling the dry smoke[end if]. 'Always someone hunting. Border Patrol, National Guard, INS, Minutemen. You want to help people get where they're going out here, you need more than [if player holds strength]strength[otherwise]courage[end if]. You need to learn how to hide.'[paragraph break]'I'm the Coyote,' he says. 'And we've been hiding from each other for a long time.'[make rabbit known][add rabbit ask suggestion][add Coyote ask suggestion][add advice ask suggestion][add down to business ask suggestion]".

To say Coyote-business: say "[one of]smoke gusting from his lungs in clouds[or]scratching his stubble with the hand that holds the cigarette[or]itching underneath his jacket, slowly[or]the red tip of the cigarette glowing as he takes another drag[cycling]".

advice is held by the Coyote. After quizzing the Coyote about advice: say "He laughs, [Coyote-business]. 'Kid,' he says, 'you don't want my advice. I could tell you some stories and you'll smile and be sure they'll never happen to you. I could tell you some stories and you'll yawn and think you know them already. I could tell you some stories and you'll think they're wise and not realize you don't understand them until you make the same mistakes yourself and try to turn your failure into advice and fail at that, too. I could tell you some stories.' He looks off towards the horizon, [Coyote-business]. 'But it's not my stories that will help you.'".

After quizzing Coyote about Coyote: say "'You know who I am,' he says, [Coyote-business]. 'I'm the one who runs on both sides of the fence. I'm the one who scouts ahead. I'm the one with songs in my blood and dirt under my nails and people owe me money in every trailer park town from here to Yuma, or maybe I owe them money but anyway they don't want to see me. You know who I am, Knock.'".

After quizzing Coyote about the rabbit: say "He grins, not unkindly but not exactly kindly either. 'That cute little jackalope?' he says, [Coyote-business]. 'He's got his upsides, I guess. [if player holds strength]Strength[otherwise]Bravery[end if] has its place. But if you're always in the spotlight, you'll never learn how to live in the shadows. And most of us spend a lot of time in the shadows.'".

After quizzing Coyote about down to business: clear all topics; move luck to location; now luck is familiar; move scent to location; now scent is familiar; say "He presses his hands together, still clutching the cigarette with thumb and index finger, and smoke rises past his hidden eyes as he slowly rubs his palms together. He mutters something rhythmic to himself and you realize it's a song, and you can't quite make out the lyrics but the melody is simple and makes you think of Johnny Cash and the end of the world. And then he stops, and pulls his hands apart, and in each he holds a talent.[paragraph break]'Here we have luck,' he says, bobbing the left, 'and scent. And look, I'll be straight with you. These are precious things and I can't afford whatever blue light special deal the bunny gave you. I need double his price. I need two memories to part with one of these. Oh, they're worth it, believe me. Both have saved my ass more times than you'd believe. Both could save yours. But it's up to you. Which'll it be?'[add luck ask suggestion][add scent ask suggestion][add trade-for-luck other suggestion][add trade-for-scent other suggestion][add take-inventory other suggestion]".

After quizzing Coyote about luck: say "[if player holds strength]'Looks like you're already pretty tough,' he says appraisingly, looking you over. 'With a little luck, you ought to make it through the night and get on with the rest of your life.'[otherwise]'You found some cojones, kid,' he says, looking you over appraisingly, 'which'll be good for fixing your truck and getting back to your girl. I don't know if luck'll help you out much there, though.'".

After quizzing Coyote about scent: say "[if player holds courage]'You found some cojones, kid,' he says, 'If you can just sniff out the right finds, you can probably get back to that little lady you're so fond of, if that's what you want.'[otherwise]'You're pretty tough,' he says, 'but I don't know that a good nose is going to help you make it through the night and get on with the rest of your life, if that's what you're trying to do.'".

trade-for-luck is a misc-suggestion. It is held by Coyote. The printed name is "trade something for luck". 

trade-for-scent is a misc-suggestion. It is held by Coyote. The printed name is "trade something for scent".

Report trading when Coyote is visible: clear all topics; now more coming is familiar; try quizzing Coyote about more coming; stop the action.

After quizzing Coyote about more coming: say "He tucks the other talent back in his jacket, and without its faint glow it seems darker than ever, the pulsing red tip of his cigarette all you can see.[paragraph break]'The last of us is coming,' Coyote's voice says out of the black, 'last and most powerful, and most dangerous, and most afraid. Sand-dancer. Be careful of him, Knock. [if player holds strength]Stay strong[otherwise]Stay brave[end if]. [if player holds luck]Stay lucky[otherwise]Keep your nose to the wind[end if]. Remember the shadows.'[paragraph break]And it seems like he's growing, larger and larger, the red tip of his cigarette pulsing and glowing now high up in the sky, and you stumble back, shivering, and suddenly remember your flashlight in your hand and switch it on..."; reset the interlocutor; now flashlight is switched on; move player to Base of the Tower.

Chapter - Sand-dancer's Arrival

Sand-dancer's Arrival is a dramatic scene. "There's like this faint tickle through the soles of your feet, some vibration, almost like whispers in the sand. You want to bend down, put your ear to the ground, listen forever.[paragraph break]And then the ground drops out from under you, heaves, and drops again. Struts groan and boards snap and then with a whooshing bang sand starts pouring in through the window and every crack, jets of sand, and already it's shin-deep and holy christ you've got to get out of here." 

To decide whether time for arrival: if the number of complete plans is 1 or the number of in progress plans is 2, decide yes.[aar]

Going outside is leaving the building. Going southwest is leaving the building. Entering a window is leaving the building.

tried to leave is a truth state variable. Instead of leaving the building when time for arrival and not insufficient memories found: say "[one of]You start to go out, but then you stop. Something's not right. Something's... weird.[or]The building's sinking into the sand! You've got to get out some other way![stopping]"; now tried to leave is true. 

Sand-dancer's Arrival begins when time for arrival and tried to leave is true and not insufficient memories found. Sand-dancer's Arrival ends when location is Roof.

Every turn during Sand-dancer's Arrival: say "The building shakes and groans as sand continues to pour in, rising higher and higher."

Report going during Sand-dancer's Arrival: say "You wade through the sand, which is rising all the time."

The Sand-dancer room description body text rule is listed instead of the room description body text rule in the carry out looking rules.

This is the Sand-dancer room description body text rule: if Sand-dancer's Arrival is happening and location is in Office Interior, describe sand-filled room; otherwise abide by the room description body text rule.

To describe sand-filled room: say "[one of]Waves of sand flow like water through the room, filling it higher and higher[or]Knee-deep sand fills the room, rising at a terrifying rate[or]The deluge of sand thunders in from every side, filling the room[at random]."

The Sand-dancer emergency exit rule is listed after the Sand-dancer room description body text rule in the carry out looking rules. This is the Sand-dancer emergency exit rule: if Sand-dancer's arrival is happening and location is in Office Interior, say "You glance wildly at the exits [list of viable directions]; [the random visible detrital thing] [one of]surfaces for a moment then gets buried[or]tumbles in the flow[or]vanishes under the sand[at random]."

Definition: a direction is viable if the room it from the location is a room. 

[Exercise 10.9]
Definition: a thing is detrital: if it is the player, no; if it is a window, no; if it is a door, no; if it is scenery, no; if it is enclosed by player, no; yes.

[And also, change the say statement in the Sand-dancer emergency exit rule to read: "You glance wildly at the exits [the list of viable directions]; [the random visible detrital thing] [one of]surfaces for a moment then gets buried[or]tumbles in the flow[or]vanishes under the sand[at random]."]


Instead of throwing something at a window during Sand-dancer's Arrival: say "It's no good; the window shatters and sand rushes in through it."; now noun is off-stage.

Doing something to the radio is wasting time. Doing something to cans of food is wasting time. Examining something is wasting time. Before wasting time during Sand-dancer's Arrival: say "There's no time, man! The room's filling with sand!" instead.

After going up during Sand-dancer's Arrival: say "Barely able to reach the ladder through sand up to your waist, you haul yourself up the rungs and pull free just in time."; try looking.

Before going up during Sand-dancer's Arrival:
	now description of Roof is "Except it's more like a foundation now, the building's sunken almost entirely into the sand.";
	now metal rungs are off-stage;
	now huge metal barrel is off-stage;
	change the up exit of Roof to nothing.
	
Instead of going nowhere when location is Roof and Sand-dancer's Arrival has happened: say "No way, man. There's freaking lizards everywhere."

Chapter - Sand-dancer's Offer

Sand-dancer's Offer is a scene. "The sand swirls and churns like something liquid or alive around you, and then you look and see it is alive, thousands and [thousands of lizards], little sand-dancers, are burrowing up from somewhere underground, scattering and writhing in some complex pattern in a huge circle all around you.[paragraph break]Then, suddenly, everything stops.[paragraph break]And with a mighty heave, a huge lizard crests through the sand right in front of you."

Sand-dancer's Offer begins when Sand-dancer's Arrival ends.

When Sand-dancer's Offer begins: now Sand-dancer is in location; now thousands of lizards are in location; now Sand-dancer holds advice; Sand-dancer's conversation starts in 1 turn from now.

Sand-dancer can be named. The initial appearance of Sand-dancer is "[if Sand-dancer is named]Sand-dancer[otherwise]The huge lizard[end if] sits before you, breathing, watching." Understand "lizard/huge/sand/dancer" as Sand-dancer.

The description of Sand-dancer is "His scales are thick, sand still spilling off them in rivulets and trickles, and they recede and collide in fractal complexities that make you dizzy. He rumbles somewhere inside him, and the sand jitters at his feet."

The thousands of lizards are an animal. "Thousands of lizards writhe in the desert around you." The description is "They crawl over and under and around each other, restless, always moving."

To say SD-business: say "[one of]and his voice shakes the earth and creaks the rusty joints of the tower[or]flicking his tongue in and out, slowly[or]his great slitted eye blinking slowly[or]sighing as the lizards in the desert writhe and twitch[cycling]".

At the time when Sand-dancer's conversation starts: try quizzing Sand-dancer about introduction; try listing suggested topics.

After quizzing Sand-dancer about introduction: say "The lizard's tongue snakes through the air, tasting it, tasting you. One slitted eye studies you intently. It pauses, as if waiting for you to say something.[add hello other suggestion][add Sand-dancer ask suggestion][add thousands of lizards ask suggestion]".

hello is held by Sand-dancer. The printed name is "say hello". Instead of hailing when Sand-dancer is visible: say "[remove hello other suggestion]The ground rumbles as the lizards shift. 'Hello,' he says, [SD-business]. 'Yes, hello, little one. Strange thing to say when I've always been with you, watching, waiting. But hello, hello at last, Nakaibito.'".

Sand-dancer is familiar. After quizzing Sand-dancer about Sand-dancer: say "[remove hello other suggestion]'I am Sand-dancer,' he breathes, [SD-business]. 'I am the desert and the dust and the rain and the wind. I was there the first time you went hungry and the first time you made love and the last time you asked for help, but I could not help you then. But tonight, Nakaibito, tonight I can.'"; try quizzing Sand-dancer about final choice; now Sand-dancer is named. 

After quizzing Sand-dancer about thousands of lizards: say "[remove hello other suggestion]The lizards hiss and writhe as you ask, almost as if they are laughing. 'Little sand-dancers,' he says, [SD-business], 'they come with me wherever I go. They will not bother you.'".

Instead of quizzing Sand-dancer about final choice when the number of complete plans is 0: try quizzing Sand-dancer about path selection.

path selection is held by Sand-dancer.

After quizzing Sand-dancer about path selection:
	clear all topics;
	say "'Much has happened tonight. You've made bargains and plans. [Sand-dancer talent summary]But these things together do not help you. No, you still haven't decided.' The lizard stares at you with one eye, [SD-business]. 'But now is the time.'[paragraph break]";
	let unclaimed things be the list of things required by a plan;
	remove the list of held things from unclaimed things;
	repeat with item running through unclaimed things:
		now item is in location;
	say "The ground shudders and shifts beneath you, and out of the sand rise [unclaimed things with indefinite articles].[paragraph break]'The tape and the gas can will return you to her. The blanket and the can of food will look out for you. Take one.'[add grab something other suggestion]".
	
grab something is held by Sand-dancer. The printed name is "take [the list of visible not held things required by a plan]".

To say Sand-dancer talent summary:
	if player holds strength, say "You carry strength that ripped warmth from walls. ";
	if player holds courage, say "You hold courage that earned you a tool for mending. ";
	if player holds luck, say "You wear luck that filled your belly. ";
	if player holds scent, say "You have scent that brought you liquid motion. ".

After taking something required by a plan during Sand-dancer's Offer:
	now noun is handled;
	let unclaimed things be the list of things required by a plan;
	remove the list of held things from unclaimed things;
	repeat with item running through unclaimed things:
		now item is off-stage;
	say "As you take it, [unclaimed things with definite articles] sinks into the sand.[remove grab something other suggestion]";
	try quizzing Sand-dancer about final choice.

The final choice is a familiar thing held by Sand-dancer. 

After quizzing Sand-dancer about final choice: clear all topics; say "'By your actions and through your talents, you have chosen [a random complete plan],' he says, [SD-business]. 'You have looked into yourself and found your story, the path you will walk tomorrow.'[paragraph break]He breathes. 'And are you happy with your story?' he asks, and there's some dangerous undertone to the question and you don't know why. The lizards tense, quivering, twisting their little heads back and forth as they await your answer.[add yes-no-suggestion other suggestion][add not sure if I'm happy other suggestion]".
	
Instead of saying yes when yes-no-suggestion is familiar and Sand-dancer is visible: say "'Yes?' Sand-dancer says, and the lizards quiver anxiously. 'You're happy with the path you've chosen? [SD-tease].'"; try quizzing Sand-dancer about doing the trade.

Instead of saying no when yes-no-suggestion is familiar and Sand-dancer is visible: say "'No?' Sand-dancer says, and the lizards quiver anxiously. 'You're not happy with the path you've chosen? [SD-tease].'"; try quizzing Sand-dancer about doing the trade.

To say SD-tease: say "[if a random complete plan is staying the night]A life on the run, alone, work time in one town, jail time in another, no job, no skills, no family?' [otherwise]Trying to build a family out of nothing, spin futures from government handouts and dusty trailer parks, raising another generation of hopeless dropouts and messed-up losers?' [end if]The lizards scurry angrily, snapping and clawing at each other, with a sound like static and sand.[paragraph break]'It doesn't matter,' he says more calmly, as the lizards subside, 'since you have already made your choice. You cannot take back your actions. You cannot unmake the past.' The lizards around him tilt their head, edge forward cautiously, and he seems to grin. 'But I can".

not sure if I'm happy is a misc-suggestion. It is held by Sand-dancer. The printed name is "tell him you're not sure if you're happy". Understand "you/you're/I/I'm" as not sure if I'm happy. After informing Sand-dancer about not sure if I'm happy: say "The lizard turns his head sharply, and all the lizards in the desert around writhe angrily, clawing and biting at each other in agitation. 'And when will you know, Knock?' the lizard asks. 'When will you own your life? When will you become a man? Tonight. It must be tonight.'"; try quizzing Sand-dancer about doing the trade.

spirit, honor and freedom are familiar.

There is a thing called doing the trade. It is held by Sand-dancer. The printed name is "ask him about getting on with the trading". Understand "getting/on/with/trading" as doing the trade.
	
After quizzing Sand-dancer about doing the trade:
	clear all topics;
	if staying the night is complete, now spirit is in location;
	otherwise now honor is in location;
	now freedom is in location;
	now spirit is familiar;
	now honor is familiar;
	now freedom is familiar;
	say "A glistening egg rises from the sand, glowing with neon potential, and the lizard glances down at it almost dismissively. 'This is [if staying the night is complete]spirit[otherwise]honor[end if],' he says, 'the last talent you need to achieve your goal, and you can have it for three memories. But perhaps I have something else to trade.'[paragraph break]The lizards whisper in anticipation as a second egg rises. This one's bigger, and almost blinding with its intensity, and the lizards draw back, chittering in awe and amazement. 'This,' Sand-dancer says, 'is freedom. Pure, undiluted, and absolute. Many crave it and few get a chance to take it. I offer it to you, Nakaibito, but it does not come cheaply.' He grins. 'For freedom, you must give up everything. You must give me all your memories.'[paragraph break]The lizards begin to circle restlessly as they wait for you to choose. Sand-dancer merely watches, and waits.[if spirit is visible][add spirit ask suggestion][add trade-for-spirit other suggestion][otherwise][add honor ask suggestion][add trade-for-honor other suggestion][end if][add freedom ask suggestion][add trade-for-freedom other suggestion]".

After quizzing Sand-dancer about spirit: say "'You have the warmth and energy you need to stay through the night,' he says, 'but to continue looking out for yourself, you will need spirit.'".

After quizzing Sand-dancer about honor: say "'You have the tools to fix your truck,' he says, 'but to return to Ocean and stand by her side you will need honor.'".

After quizzing Sand-dancer about freedom: say "'With freedom, Nakaibito, you can make your troubles vanish. True freedom is the power of unmaking the past, of undoing what's done and regretted. This power is great and terrible, but I promise you.' He flicks his tongue. 'It will set you free.'".

trade-for-honor is a misc-suggestion. It is held by Sand-dancer. The printed name is "trade something for honor". trade-for-spirit is a misc-suggestion. It is held by Sand-dancer. The printed name is "trade something for spirit". trade-for-freedom is a misc-suggestion. It is held by Sand-dancer. The printed name is "trade something for freedom". 

To decide whether (trader - Sand-dancer) needs more memories:
	if the number of memories in emotional baggage is at least 2 and the second noun is freedom, decide yes;
	let the projected total be the number of memories held by trader + 1;
	if the projected total is less than the price of trader, decide yes;
	decide no.

Check trading when the trader needs more memories during Sand-dancer's offer: move the noun to the trader; say "He flicks out his tongue and pulls [the noun] from [one of]your head[or]your heart[or]your gut[or]your palm[or]your core[or]your soul[in random order], swallowing it whole. '[one of]A good start,' he says, 'but you must trade more.'[or]Yes,' he says, 'but more.'[or]More,' he says.[or]Still more,' he says.[or]I must have more,' he says.[or]Give me more,' he says.[stopping]" instead.

Report trading when Sand-dancer is visible: clear all topics; say "'The choice is made,' he rumbles, 'your path is set. Goodbye, Nakaibito.' And he turns and dives into the sand. The lizards twist and writhe and follow him.[paragraph break]And then, just as quiet settles, another huge rumble shakes the ground, and, almost like an afterthought, the building breaches the sand and rises to the surface."; now Sand-dancer is off-stage; now thousands of lizards are off-stage; reset the interlocutor; move player to Crumbling Concrete; stop the action.
