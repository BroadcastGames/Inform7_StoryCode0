"Fate" by Victor Gijsbers

[This game is copyrighted 2007 by Victor Gijsbers, who asserts the moral right to be recognised as the author. It is released under the GNU Public License 3.0. See http://www.gnu.org/copyleft/gpl.html for further details.]

[WARNING: this source code is too big to actually compile+play in Inform 7, because debug versions exceed the z8 format. You can Release it, though: without the debug code it just fits. The most important TODO for OpenFate is to make it Glulx-compatible. We also need to check that switching to later versions of Inform 7 has not introduced any new bugs.]

[Because Fate isunder the GPL, and because I will actively invite other people to change the source code, it will be extensively commented. Please follow this practice if you add or change any code.]


Part 0 - General rules and conventions

[This part defines the scenes, some general flags, some verbs and some kinds. It also contains definitions of the introduction, the player character and the included extensions.]

Chapter 0.1 - General flags and dependencies


Use no scoring and full-length room descriptions. [No score is kept in this game. The game is in verbose mode standardly.]

Include Simple Chat by Mark Tilford. [This extension is needed for all the menu-based conversations in the game. IMPORTANT!!! I use a slightly different version of SC, and this is crucial. In the extension, change "made from 0 to rowcount" to "made from 1 to rowcount" if you plan to compile a public release.]
[Include Mistype by Cedric Knight.] [I would like to include this extension, but it leads to errors. Try "x sleeeeep" in the Inform IDE.]
Include Basic Screen Effects by Emily Short. [Needed for 'wait for any key' and some other screen effects.]
Include Locksmith by Emily Short. [Automates unlocking doors. Only useful for the pixie cage, currently.]
Include Adaptive Hints by Eric Eve. [I manually disabled the "first time" hint message, because it seemed inappropriate.]
Include Basic Help Menu by Emily Short.


remembered_person is a person that varies. [I am using this global variable somewhere to store a person. It would be better if we could do without.]

Vision is a kind of value. The visions are viper_bite, killed_by_Harold, banished, glorious_kingdom, glorious_rebel, glorious_free, rebel_warned, happy and rebel_sorry. 

[The visions define the possible endings of the game, as well as what you see when you look in the crystal ball. 

Viper_bite: the player is killed by a viper which Harold has left in her bed. (Initial.)
Killed_by_Harold: the baby is killed by an agent of Harold's. (By removing the viper.)
Banished: mother and child are banished from the land for what you have done to Harold. (By making Harold mad.)
Glorious_kingdom: mother dies, child becomes glorious fighter for the kingdom. (By summoning the demon.)
Glorious_rebel: mother dies, child becomes glorious fighter for the rebels. (By summoning the demon.)
Glorious_free: mother dies, child becomes glorious fighter for the entire country. (By summoning the demon.)
Rebel_warned: mother and child die for the good cause. (By summoning the demon.)
Happy: mother dies, child goes off to lead a happy life somewhere far from all politics. (By summoning the demon.)
Rebel_sorry: mother and child die for a cause that, in the last moments, was shown to be not that important. (By summoning the demon, then repenting in the last moves.)

Rebel_sorry cannot be seen in the crystal ball, because it can only be accessed in the last moves of the game, when the ball is no longer accessible.]

Fate is a vision that varies. Fate is viper_bite. [The initial fate is Viper_bite. Change this to test different endings.]


Endgame is a thing. Endgame is either started or unstarted. Endgame is unstarted. [Dirty hack to allow us to start Giving Birth by changing a property of an object. There is no command to simply start a scene.]

Giving Birth is a scene. Giving Birth begins when endgame is started. [When Giving Birth starts, the player is transported to the bedroom and can only examine, look and push.]


Rule for deciding whether all includes scenery: it does not. [Take all, and things like that, do not include scenery.]




Chapter 0.2 - When the game begins

When play begins:
 display the boxed quotation
"Men at some time are masters of their fates:
The fault, dear Brutus, is not in our stars,
But in ourselves, that we are underlings.

-- Cassius to Brutus in 'Julius Caesar', Act I, Scene 2";
  show the current quotation; [Shows the quotation in a clear window.]
  wait for any key;
  say "You are nine months pregnant, and the contractions have already begun. Trapped in a castle with more enemies than friends, and Queen in name but not in influence, you fear for the future of your child. But your spells have finally worked, and now your crystal ball shows what fate awaits him. If you act with speed and determination, and if you are willing to do what is necessary, you may still have time to influence your son's destiny before the waters break." [The initial text.]

After printing the banner text, say "This work is licensed under the GNU Public License, version 2 or later. [line break]Type HELP for more information, or HINTS if you get stuck.".


Chapter 0.3 - The player character

The player is carrying the velvet pouch. [See Chapter 1.1 for this object.]

The player wears a scarlet gown. The description of the gown is "The gown, made of a satin the colour of blood, is richly embroidered with gold thread. Two rows of pearls adorn the hem." The thread is part of the gown. The description of the thread is "Abstract designs of occult significance catch the light whenever you move." Understand "designs" as the thread. Instead of taking off the gown, say "Walking around in your underwear would make even fewer people take you seriously." Understand "gold thread" as the thread. Understand "dress" as the gown. Instead of cutting the gown: try cutting the pearls.

The pearls are part of the gown. The pearls is either complete or incomplete. The pearls is complete. [Influences the description of the gown.] The description of the pearls is "Small but perfect, their iridescent colours dazzle the eye. They have been glued to the gown. [if the pearls are incomplete]One pearl is missing from the hem, but only close inspection will show. [end if][line break]". Understand "rows" and "row" as the pearls.

The pearl is a a thing. The description of the pearl is "Small but perfect, its iridescent colours dazzle the eye." [You can get the pearl by cutting the pearls with the dagger.]

Understand "pearl" as the pearls when the pearl is not visible and the pearl dust is not visible. [So that "cut pearl" works as expected.]

Instead of taking the pearls: say "They are glued to the hem of your gown. You might cut one loose with a sharp object.".
Instead of cutting the pearls:
  if the pearls are incomplete, say "Ruining your dress further will serve no purpose." instead;
  if player does not have the dagger and the dagger is not touchable, say "You will need a sharp object, such as your dagger." instead;
  if player does not have the dagger and the dagger is touchable, move the dagger to the player;
  say "Using the ceremonial dagger, you carefully cut one of the pearls from your robe. It hardly shows.";
  change the pearls to incomplete;
  move the pearl to the player.

Instead of examining the player: say "You are Catherine, barely twenty years old, dressed in a regal gown and--at least in name--the Queen of the Realm[if the player wears the amulet]. The Amulet of Madness hangs around your neck[end if]. For the past nine months, a little prince has been growing in your belly. You suspect he'll be coming out any moment now."

The baby is part of the player. The description of the baby is "Now and then you can feel your little sweetheart move inside of you." Instead of listening to the baby: say "Sometimes you imagine you can hear him laugh or cry." Understand "child" as the baby. Understand "prince" as the baby.

A person is either healthy or diseased. The player is healthy. [The player becomes diseased when doing a blood offering to the imp. See the disease rule in 0.7.] Your wrist is part of the player. The indefinite article is "your". The description of your wrist is "[if the player is healthy]You see nothing particular about your wrist.[otherwise]Red spots mark the teeth of the imp.[end if]". [The imp bites your wrist, therefore the player may wish to examine it. Also, perfume is applied to the wrist.] Your belly is part of the player. The indefinite article is "your". The description of your belly is "Your belly has swollen to a considerable size, as it contains your soon-to-be-born baby.".

A person is either poisoned or unpoisoned. The player is unpoisoned. [The player character is poisoned when she has applied the belladonna paste to her lips in order to cast Haunt on the King. Before that and after kissing him she is unpoisoned. Has no other effect than to regulate that scene.]

Chapter 0.4 - Standard responses

Instead of singing: say "You are too shy to raise your voice, and just hum tunelessly."
Instead of jumping: say "A pregnant woman, hopping up and down like a frog? It's hard enough to just stand."
Instead of saying sorry: say "You mumble something apologetic under your breath."
Instead of swearing mildly: say "You curse your luck."
Instead of swearing obscenely: say "You mutter a suitably dark oath."
Instead of thinking: say "Yes; only clear thought and daring will avail you now."
Instead of pushing or pulling or taking a fixed in place thing: say "You might not even be able to move that at other times, but you are certainly not able to move it now.".

Chapter 0.5 - New kinds and actions

Section 0.5.1 - Servant

[Since there are only two servants, this may be a bit overkill. But it makes it easy to add more. All servants can be stabbed to refill the ceremonial dagger.]

A servant is a kind of person.

Instead of attacking a servant (called the slapped): 
  if player has the ceremonial dagger, say "If you wish to slap [the slapped], please use 'slap [the slapped]'. If you wish to stab [the slapped] with the ceremonial dagger, please use 'stab [the slapped]'.";
  else try slapping the slapped. [Attacking a servant can be either slapping or stabbing. If the player does not have the dagger, slapping is default.]

A body is a kind of thing. A body is part of every servant. The description of a body is "[if the body is part of something]A normal, human body.[otherwise]The body lies in a pool of blood.[end if]". A body is usually scenery. Understand "corpse" as a body. [This is not very beautiful, but is allows us to leave a body after the servant has been killed. If you know a better solution, please consider implementing it.]

Instead of taking a body (called the thingy): if the thingy is not part of something, say "That is far too heavy for you to lift--and you would get blood all over your clothes." instead.

Persuasion rule for asking servants to try doing something: say "Little use attempting to order around the servants. They'll bow and smile, then go on with their tasks as usual." instead. [You can't order the servants around. Why not? It is far too much work to implement that.]



Section 0.5.2 - Slapping

[At the moment, slapping serves no real purpose in the game. It is referenced by the servant kind above.]

Slapping is an action applying to one visible thing. Understand "slap [someone]" as slapping.

Check slapping:
   if the noun is not a person, say "Only people can be slapped." instead;
   if the noun is not a servant, say "It would be discourteous to slap [if the noun is female]her[otherwise]him[end if]." instead;

Carry out slapping:
   say "You slap [the noun] hard across the face. 'Get out of my sight, you lazy [if the noun is female]wench[otherwise]knave[end if]!'".

Instead of slapping the player:
   say "You are quite awake already."

Section 0.5.3 - Stabbing

[Stabbing allows you to refill the dagger. Unless otherwise implemented, you can only stab servants.]

Stabbing is an action applying to one visible thing. Understand "stab [something]" as stabbing.

Check stabbing:
   if the player does not have the ceremonial dagger, say "You don't have your dagger with you." instead;
   if the noun is the hypnotised goat, try attacking the hypnotised goat instead; [the only inanimate that can be stabbed]
   if the noun is not a person, say "Only people can be stabbed." instead;
   if the noun is not a servant, say "Stabbing one of the Blood will cost you more than your life." instead. [This presupposes that everyone is either a servant or a noble. Custom messages for the goat, the imp, the demon and the player have been created, but creating a 'Blood' or 'noble' kind might be a better idea.]

Carry out stabbing:
   change remembered_person to the noun;
   run a conversation from c_stabbing.

Instead of stabbing the player:
   say "And risk killing your baby?".


[The conversation below gives the player the option to carry out the stabbing or refrain from doing so. The psychological effect is that it feels worse to stab someone.]

c_stabbing, c_stab_sorry, c_stab_dont are chat nodes.

Instead of giving text for c_stabbing: say "You hide the knife behind your back as you approach [remembered_person]."
Instead of finding responses to c_stabbing: link to c_stab_sorry; link to c_stab_dont.

Instead of giving link to c_stab_sorry: say "Whisper: 'I'm so sorry, [remembered_person]. I have to do it; the future of my child is at stake.' ".
Instead of giving text for c_stab_sorry: say "With one swift movement, you stab [remembered_person] in the heart. [if remembered_person is female]She[otherwise]He[end if] dies almost immediately, blood bubbling from [if remembered_person is female]her[otherwise]his[end if] mouth. Mystical power surges through you, and when you pull the dagger out of [if remembered_person is female]her[otherwise]his[end if] heart, you notice that it shines with renewed vigour.";
   repeat with item running through bodies begin;
     if the item is part of the remembered_person, move the item to the location; [See the body declaration in the servant type.]
     now the item is not scenery;
   end repeat;
   Remove the remembered_person from play;
   Change the dagger to loaded.

Instead of giving link to c_stab_dont: say "Gods, no, how could you do such a thing? The idea makes you slightly sick.".
Instead of giving text for c_stab_dont: say "You return the dagger to your belt, lamenting how far you've fallen that you think such terrible thoughts.".

Section 0.5.4 - Book

A book is a kind of thing. Understand "book" as a book. A book has a table-name called the contents. [Books are things you can look up topics in. The only book in the game, currently, is the grimoire.]

Report consulting a book about:
	say "You flip through [the noun], but find no reference to '[the topic understood]'." instead.

Instead of consulting a book about a topic listed in the contents of the noun:
	say "[reply entry][paragraph break]".

Looking up a spell is an action applying to one topic. Understand "look up [text]" as looking up a spell when the location is the den. [In the den (where the grimoire always is), 'look up ...' will cause a looking up in the grimoire.]

Instead of looking up a spell:
  if the grimoire is not visible, say "You will need the grimoire for that." instead;
  try consulting the grimoire about the topic understood.


Section 0.5.5 - Talking to

Talking to is an action applying to one visible thing. Understand "talk to [someone]" as talking to. Report talking to: say "No suitable words come to mind."


Section 0.5.6 - Cutting extended

Understand "cut [something] loose" as cutting. [Extra grammar for cutting. Also see Cutting with, below.]


Section 0.5.7 - Grinding

[You need to grind the pearl and the pixie wings using the mortar and pestle. The code below reflects this. If many more grindable objects are implemented, it may be better to move these rules to the individual objects.]

Grinding is an action applying to one thing. Understand "grind [something]" as grinding. Understand "pulverise [something]" as grinding. Understand "pulverize [something]" as grinding.

Check grinding:
  if the mortar is not touchable, say "You will need a mortar and pestle." instead.

Carry out grinding:
  if the noun is not the pearl and the noun is not the pixie wings, say "There is no use grinding that." instead;
  if the noun is the pearl, say "It is heavy work, but with the mortar and pestle you grind the pearl into a fine dust. You carefully pick up the dust.";
  if the noun is the pearl, remove the pearl from play;
  if the noun is the pearl, move pearl dust to player;
  if the noun is the pixie wings, say "Within seconds, the mortar and pestle turn the wings into dust.  You carefully pick up the dust.";
  if the noun is the pixie wings, remove the pixie wings from play;
  if the noun is the pixie wings, move pixie dust to player.

Some pearl dust is a thing. The description of pearl dust is "This fine dust is still iridescent, shimmering like a rainbow." [You get this by grinding the pearl.]



Section 0.5.8 - Pumping

[Implemented for the bellows, which can be pumped.]

Pumping is an action applying to one touchable thing. Understand "pump [something]" as pumping. Understand "blow [something]" as pumping.

Check pumping: 
  if the noun is not the bellows, say "You cannot pump that." instead.

Carry out pumping: say "You move the bellows a few times. Air comes from the pointy part. Not very useful, here.".

Section 0.5.9 - Petting

[For cute moments with, among others, the pixie.]

Petting is an action applying to one touchable thing. Understand "pat [something]" as petting. Understand "pet [something]" as petting. Understand "comfort [something]" as petting. [Comfort is suggested by one of the pixie dialogue options.]

Check petting: if the noun is not a person, say "You can only do that to something animate." instead.

Carry out petting:
  if the noun is the player, say "You attempt to console yourself." instead; 
  say "[The noun] might not care for that.".

Section 0.5.10 - Xyzzy

[Easter egg, but it also tells the player what to expect of casting magic in the game.]

Understand "xyzzy" or "say xyzzy" or "cast xyzzy" as casting xyzzy. Casting xyzzy is an action applying to nothing.

Instead of casting xyzzy: say "[italic type]Real[roman type] magic requires sacrifice and study.".

Section 0.5.11 - Vials of perfume

[Vials can be used to summon the imp. They are not actual containers.]

A vial is a kind of thing. The description of a vial is "This small vial contains some perfume." Instead of putting the vial on the player, say "You apply a little bit of perfume to your wrists." Instead of putting the vial on the wrist, say "You apply a little bit of perfume to your wrists." Instead of smelling a vial: say "It smells like generic perfume". Understand "perfume" as a vial. Instead of dropping a vial: say "You carefully put the vial on the floor."; move the noun to the location.

Section 0.5.12 - Telling and asking

[Tells the player to use different grammar than he may be used to.]

Instead of telling someone about something, say "Just use the command 'talk to' if you wish to start a conversation with someone.".
Instead of asking someone about something, say "Just use the command 'talk to' if you wish to start a conversation with someone.".
Instead of asking someone for something, say "Just use the command 'talk to' if you wish to start a conversation with someone.".
Instead of answering someone that something, say "Just use the command 'talk to' if you wish to start a conversation with someone.".

Section 0.5.13 - Dancing

[Dancing is one of the 'silly actions' you can do to convince Rudolph you are silly.]

Understand "dance" as dancing. Dancing is an action applying to nothing. Instead of dancing: say "That would be silly.".

Section 0.5.14 - Acting silly

[Not specific enough to convince Rudolph, but gives the player a hint that he is on the right track.]

Understand "act silly" as acting silly. Understand "be silly" as acting silly. Acting silly is an action applying to nothing. Instead of acting silly: say "Yes, but how?".

Section 0.5.15 - Gifts

[All the things that you can get from the imp are gifts. The given flag makes sure you can't ask for the same object twice.]

A gift is a kind of thing. A gift is either given or ungiven. A gift is usually ungiven.

Section 0.5.16 - Crying

[The player may want to cry in order to get 'the tears of a woman'.]

Crying is an action applying to nothing. Understand "cry" as crying. Understand "weep" as crying. Instead of crying: say "Your tears only come unbidden.".

Section 0.5.17 - Birthing

[The only significant action the player can take in the final scene, Giving Birth.]

Birthing is an action applying to nothing. Understand "push" as birthing when Giving Birth is happening. 

Section 0.5.18 - Cutting with

[Extending the grammar (rather than the functionality, actually) of cutting. You can now cut something 'with the dagger'.]

Cutting with is an action applying to two touchable things. Understand "cut [thing] with [thing]" as cutting with.

Instead of cutting with:
  if the second noun is not the dagger, say "You can only cut with the dagger." instead;
  try cutting the noun.

Section 0.5.19 - Waving at

[Extends the grammar of waving, in order to be able to 'wave at rudolph', which is one of the ways of acting silly.]

Waving at is an action applying to one visible thing. Understand "wave at [a person]" as waving at.

Instead of waving at: try waving hands. [Strangely, the command 'wave' leads to the action waving hands.]

Section 0.5.20 - Breathing

[Suggested by a tester as something the player would try to do during Giving Birth. Doesn't currently do anything.]

Breathing is an action applying to nothing. Understand "breath" as breathing.

Instead of breathing: say "You steady your breath[if Giving Birth is happening]. Maybe that will help[end if]."

Section 0.5.21 - Coins

A gold piece is a kind of thing. Understand "coin" as a gold piece. Understand "coins" as gold pieces. [I wonder why "take coins" takes only one coin, by default. Is there a way we can improve that behaviour?]


Section 0.5.22 - Tossing

[Suggested by a tester as something the player would try to do with the coins.]

Tossing is an action applying to one touchable thing. Understand "toss [thing]" as tossing. Understand "flip [thing]" as tossing.

Check tossing: if the noun is not a gold piece, say "You can only toss coins." instead.

[The following is a dirty routine. We should have a property called 'changable' or something like that somewhere, and simply test for that..]

Carry out tossing:
  if the location of the goat is not a room and the location of the hypnotised goat is not a room and the demon is not in the den, say "Heads. Nothing can change that now." instead; [Once the goat and the hypnotised goat are gone, you have summoned the demon; once it is gone, you cannot change fate anymore.]
  if the amulet of madness is unavailable, say "Tails. Nothing can change that now." instead; [This is the necessary and sufficient condition for being stuck with the killed by Harold fate.]
  say "[if a random chance of 1 in 2 succeeds]Heads. [otherwise]Tails. [end if]Pure chance, of course.".

Section 0.5.23 - Running

[Because running should not be a working synonym of going, when you are a highly pregnant woman.]

Understand the command "run" as something new. Running is an action applying to one visible thing. Understand "run [direction]" as running. Understand "run [thing]" as running.

Instead of running:
  if the noun is a direction, say "It takes willpower to simply keep walking. There will be no running today." instead;
  say "You cannot run that.".


Chapter 0.6 - Pregnancy rule

[Random phrases are shown once every forty turns as long as the player is not Giving Birth. They remind the player of the protagonist's physical condition.]

Every turn:
  if Giving Birth is happening, do nothing instead;
  if a random chance of 1 in 40 succeeds begin;
   choose a random row in Table of Pregnancy Events;
   say "[event entry][paragraph break]";
  end if.

Table of Pregnancy Events
event
"Again you feel the painful contractions that signal the approach of birth."
"Sharp bolts of pain move through your legs. 'I'd rather fight in battle thrice than give birth once,' you quote an ancient play."
"You feel your baby moving. 'Please, wait just a few more hours,' you mutter."
"You need to stop and take a few deep breaths. You are exhausted."
"You hurt everywhere. Only sheer willpower makes you go on."
"'If only I'm in time to change his fate,' you whisper, holding a hand to your belly."
"The contractions start again. How many minutes was it since the last ones?"


Chapter 0.7 - Disease rule

[This routine prints random messages while the player is diseased, which happens when you give a Blood Offering to the imp.]

Every turn when the player is diseased: 
  if Giving Birth is happening, do nothing instead;
  if a random chance of 1 in 5 succeeds begin;
   choose a random row in Table of Disease Events;
   say "[event entry][paragraph break]";
   end if;
  if a random chance of 1 in 34 succeeds or the player has been diseased for exactly 60 turns begin; [the player will always get better after at most 60 turns.]
   say "Your feeling of illness subsides.";
   now the player is healthy;
  end if.

Table of Disease Events
event
"For a moment, the world goes black. Luckily, your sight returns quickly."
"You have to steady yourself against a wall as a wave of dizziness comes over you."
"Your head pounds. That blood offering certainly didn't do you any good."
"You almost fall over, dizzy and sick."
"Sharp darts of pain go from your wrist through your arm."
"You feel sick."

[While diseased, you cannot talk to anyone or take anything. Giving a Blood Offering is not supposed to be fun, you know. (It is also unnecessary to finish the game.)]

Before talking to someone when the player is diseased, say "You feel too ill for that." instead.
Before taking something when the player is diseased, say "As you reach for [the noun], a wave of dizziness washes over you." instead.

Chapter 0.8 - Listing exits

[This routine, stolen from--I think--the Inform 7 manual, lists all the exists in the status bar.]

When play begins: 
    change left hand status line to "Exits: [exit list]"; 
    change right hand status line to "[location]". 


To say exit list: 
    let place be location; 
    repeat with way running through directions 
    begin; 
        let place be the room way from the location; 
        if place is a room, say " [way]"; 
    end repeat. 


Rule for printing the name of a direction (called the way) while constructing the status line: 
    choose row with a heading of the way in the Table of Abbreviation; 
    say "[shortcut entry]". 

Table of Abbreviation 
heading		shortcut    
north		"N"    
northeast	"NE"    
northwest	"NW"    
east		"E"    
southeast	"SE"    
south		"S"    
southwest	"SW"    
west		"W"    
up		"U"    
down		"D"    
inside		"IN"    
outside		"OUT"  

Chapter 0.9 - Backdrops

The ceiling is a backdrop. The ceiling is everywhere. "[if the player is not in the garden]Cold stone, undecorated.[otherwise]Unsurprisingly, there is no ceiling in the garden.[end if]"


Part 1 - Catherine's apartment


Chapter 1.1 - Sorcerer's den

Section 1.1.1 - Room description

The Sorcerer's Den is a room. "The servants know it is death to enter your den, your sanctuary from public life. Two braziers cast warmth and just enough mellow light to see the tapestries that line three of the four walls. A small, intricately decorated cabinet huddles in the far corner, while a heavy curtain obscures the doorway to the south. Faint wisps of magic linger in the air."

Check going south when the player is in the sorcerer's den:
  if the player has the grimoire, say "A woman as close to giving birth as you are shouldn't be carrying a hefty tome like the grimoire about." instead;
  if the player has the mortar, say "A woman as close to giving birth as you are shouldn't be carrying such a heavy mortar and pestle about." instead;
  if fate is not viper_bite and fate is not killed_by_Harold and fate is not banished begin;
    now endgame is started;
    say "Loud noises coming from the parlour stop you in your tracks." instead;
  end if;
  say "You open the heavy curtain, pulling it close again behind you.".

Instead of waiting when the player is in the sorcerer's den:
  run a conversation from sc_waiting_1.

sc_waiting_1, sc_waiting_2, sc_waiting_3 are chat nodes.

Instead of giving text for sc_waiting_1: say "Would you like to stop interfering with fate and see the current fate materialise?"
Instead of finding responses to sc_waiting_1: link to sc_waiting_2; link to sc_waiting_3.

Instead of giving link to sc_waiting_2: say "Yes. ".
Instead of giving text for sc_waiting_2: now endgame is started.

Instead of giving link to sc_waiting_3: say "No. ".
Instead of giving text for sc_waiting_3: say "You decide to keep going.".

Section 1.1.2 - The cabinet and its contents

An ornate cabinet is in the Sorcerer's den. It is scenery. An openable closed container called the small drawer is part of the cabinet. An openable closed container called the large drawer is part of the cabinet. Instead of opening the ornate cabinet: try opening the small drawer; try opening the large drawer. Instead of closing the ornate cabinet: try closing the small drawer; try closing the large drawer. Does the player mean opening the small drawer when the small drawer is closed and the large drawer is open: it is very likely. Does the player mean closing the small drawer when the small drawer is open and the large drawer is closed: it is very likely. Does the player mean opening the large drawer when the small drawer is open and the large drawer is closed: it is very likely. Does the player mean closing the large drawer when the small drawer is closed and the large drawer is open: it is very likely. 

In the small drawer are a ceremonial dagger, three gold pieces and a crucifix. In the large drawer is a grimoire. In the large drawer is a thing called a mortar and pestle.

The description of a gold piece is "Your husband's face is recognisable on one side, although the artist has made him look thirty years younger."

The dagger is either loaded or unloaded. The description of the dagger is "[if the dagger is unloaded]The runes on this wickedly sharp dagger are dull, signifying that its magical energy has been expended. It can only be refilled with the life force of a human being.[end if][if the dagger is loaded]The runes on this wickedly sharp dagger shine brightly with an inner fire. It is ready to be used.[end if]". The inventory listing of the dagger is "[if the dagger is unloaded]a ceremonial dagger (dull)[end if][if the dagger is loaded]a ceremonial dagger (shining brightly)[end if]". Instead of dropping the dagger when the player is not in the den, say "Such a powerful artefact should not be left for the unwary--or the wary.". Instead of putting the dagger on something when the player is not in the den, say "Such a powerful artefact should not be left for the unwary--or the wary.". Instead of inserting the dagger into something when the player is not in the den, say "Such a powerful artefact should not be left for the unwary--or the wary.". Understand "runes" as the dagger.

The printed name of the crucifix is "crucifix carven from human bone". Understand "carven" or "from human" or "human" or "bone" as the crucifix. The description of the crucifix is "A likeness of Jesus Christ nailed to the cross, carven from the arm bone of a martyred nun. It is a powerful relic, which can protect the wielder against the lures of the Prince of Darkness."

The grimoire is a book. The description of the grimoire is "A hefty tome, full of spells and rituals. You can look up the individual descriptions of Sleep, Snake Charm, Plant Growth, Haunt, Lesser Gating and Greater Gating as the need arises." The contents of the grimoire is the Table of Rituals. Instead of opening the grimoire: try examining the grimoire. Instead of smelling the grimoire: say "You love the smell of old books.". Understand "tome" as the grimoire.

The description of the mortar is "A heavy stone mortar and pestle, perfect for grinding small items to powder." Instead of inserting anything into the mortar: say "Simply use the verb 'grind' whenever you wish to use the mortar and pestle."

The velvet pouch is an openable closed container. The description of the pouch is "Red velvet, soft to the touch." In the velvet pouch is some sorcerer's sand. The description of the sand is "It looks like sickly pale sand, but it is the ground skull of a dead sorceress. Even the most powerful demons will be confined within a pentagram drawn with it." Instead of taking the sand: say "You might spill some; better to keep it safe in the pouch." Instead of inserting anything into the pouch: say "The pouch is already full of the priceless sand.". Instead of dropping the pouch when the player is not in the den, say "Such a powerful artefact should not be left for the unwary--or the wary.". Instead of putting the pouch on something when the player is not in the den, say "Such a powerful artefact should not be left for the unwary--or the wary.". Instead of inserting the pouch into something when the player is not in the den, say "Such a powerful artefact should not be left for the unwary--or the wary.".

The description of the cabinet is "Many ancient symbols have been carven into the dark wood of this cabinet. You do not know what they mean, but they look imposingly evil. A small drawer (which is [if the small drawer is open]open[otherwise]closed[end if]) and a large drawer (which is [if the large drawer is open]open[otherwise]closed[end if]) are part of the cabinet." Understand "symbols" as the cabinet.

Section 1.1.3 - The table and the crystal ball

A table is here. It is fixed in place. "A glowing crystal ball, placed carefully in the middle of a large table, beckons you to examine the future of your unborn child[if the time of day is 9:00 AM]. Two paths lie open to you: you can struggle to change it, or simply WAIT here, in your den, for his fate to arrive[end if]." The description of the table is "An oaken table takes up most of the room in your small den."

On the table is a crystal ball. It is scenery. Instead of taking the ball: say "Disturbing the crystal ball would break the spells you laid upon it." Understand "future of my unborn child" as the crystal ball. Understand "future" as the crystal ball. Understand "fate" as the crystal ball. Instead of searching the crystal ball: try examining the crystal ball.

Instead of examining the crystal ball: 
   say "You gaze into the crystal ball. At first, you see only writhing lines of black and purple, but then, slowly, an image coalesces out of the chaos.[paragraph break]";
   say "[the reply corresponding to a vision of Fate in Table of Visions] [paragraph break][paragraph break]";
   say "After that the vision vanishes from the ball.[paragraph break]";
   if Fate is viper_bite, change the viper to known;
   if Fate is killed_by_Harold, change Prince Harold to targeted;
   if fate is killed_by_Harold, activate the Table of Harold Hints;
   if fate is banished, activate the Table of Demon Hints;
   if fate is banished, activate sc_mebeira_2.
  
Table of Visions
vision		reply
viper_bite	"Strangely enough, the visions show not your son, but yourself, still pregnant. You are just getting into your bed... then... you scream! Your face twists in pain, your eyes bulge, and then you fall backwards, evidently dead."
killed_by_Harold	"You see your babe, barely a few weeks old, lying in his cradle. A truly adorable little child, smiling at you... A burly man enters the room, face obscured by a hood and brandishing a well-worn claymore. You scream, but he shoves you out of the way and kills your baby before your eyes... A wandering minstrel is accused of being an enemy spy and having killed your baby. After a short trial he is hanged, but you *know* he is not the murderer... Nobody speaks about it, but everybody knows the truth: the crown prince, Harold, has removed his only rival.[paragraph break]The vision leaves you shaken. If you don't act, and act soon, the only surviving son of the King's first marriage will kill your baby."
banished	"You see the King, raging at you as you hold your babe to your breast. He screams something indistinguishable about Harold... Scenes of battle appear in the background, the royal banner clashing with the banner of your own house and emerging victorious; your parental home, that proud castle in Gondola, torn down stone by stone... You again, still carrying your child, escorted to the borders of the kingdom and ordered never to return, on pain of death... Scenes of poverty[if the player has the diamond] (you were obviously not allowed to keep your diamond)[end if]; your child seen from behind, perhaps five years old, dirty and begging for bread in the streets of a foreign city."
glorious_kingdom	"Lo! Your child, clad in armour and wielding a large warhammer leads a huge army into battle. The royal banners flies over his warriors as he engages with foreign enemies, winning a resounding victory... The fame of your country spreads throughout the civilised world, and its monarch is highly esteemed among friends and enemies... Finally, you see a woman in regal dress (who is she? his wife?) kneeling in reverence before a beautiful marble statue of... you."
glorious_rebel	"Lo! Your child, clad in armour and wielding a large warhammer leads a huge army into battle. The banners of your house fly over his warriors as he engages with the King's troops, winning a resounding victory... The fame of your country spreads throughout the civilised world, and its new monarch is highly esteemed among friends and enemies... Finally, you see a woman in regal dress (who is she? his wife?) kneeling in reverence before a beautiful marble statue of... you."
glorious_free	"Lo! Your child, clad in armour and wielding a large warhammer leads a huge army into battle. Both the royal banner and that of your own house fly over his warriors as he engages with foreign enemies, winning a resounding victory... The fame of your country spreads throughout the civilised world, and its monarch is highly esteemed among friends and enemies... Finally, you see a woman in regal dress (who is she? his wife?) kneeling in reverence before a beautiful marble statue of... you."
rebel_warned	"You see the King, crying at your funeral... Harold, babbling like a child... Scenes of battle: the royal banner clashing with the banner of your own house and succumbing... The southern lords marching on the capital while the King, filled with black despair, flees before them... He attempts to use your child as hostages against the advancing army, but to no avail; and when the castle is under siege, he has your baby thrown down from the highest tower in a futile attempt to lower his enemy's morale."
happy		"An idyllic scene: a man and a woman in happy embrace, two children in the background. The setting appears to be a simple house, neither rich nor poor; far away from the power games of kings. On one of the walls hangs a portrait of you."



Section 1.1.4 - Other things

The wisps of magic are scenery. They are here. The description of the wisps of magic is "With your sharpened senses, you can [italic type]feel[roman type] the traces of your spellcraft all around you."

Some braziers are here. They are scenery. They are open containers. Understand "brazier" and "tripod" and "tripods" and "brasier" and "brasiers" as the braziers. The description of the braziers is "Two tripods filled with hot coals glow brightly in the gloom." Instead of taking the braziers: say "They are too hot and too heavy to handle."

Some hot coals are in the braziers. Understand "embers" as the hot coals. The description of the hot coals is "These glowing embers are hot enough to keep your entire den at a very comfortable temperature.". Instead of taking the coals, say "That would hurt.". Instead of smelling the coals: say "The smell reminds you of roasted meat.". Instead of smelling the braziers: try smelling the coals. Instead of inserting something into the braziers, say "Putting [the noun] in the hot coals is a pleasure best left for a more festive occasion.". Instead of inserting something (called the insertable) into the coals, try inserting the insertable into the braziers. Instead of putting something (called the insertable) on the coals, try inserting the insertable into the braziers. Instead of putting something (called the insertable) on the braziers, try inserting the insertable into the braziers.

The curtain is here. It is scenery. The description of the curtain is "Heavy, many-coloured cloth, which keeps your den safe from prying eyes and curious ears.". Instead of opening the curtain: try going south. Instead of closing the curtain: say "You always keep the curtain closed."



The tapestries are here. They are scenery. The description of the tapestries is "Scenes of heroism and courtly love are depicted in vivid colours. These tapestries were among the few possessions you could take with you from your parents[apostrophe] castle.". Understand "scenes" as the tapestries.

The floor is scenery. It is here. "It is just a regular floor."

Section 1.1.5 - The grimoire

 [The latter entries are all synonyms. Check them when you change a spell description!]

Table of Rituals
topic	reply
"sleep"	"'To have someone fall into a deep sleep, you must ensure the victim drinks a solution containing a ground pearl and dust made from the wings of a pixie.'"
"greater gating"	"'To summon a demon and force it to bargain with you, you must slit the throat of a living goat with a magically empowered dagger, while wearing a crown of silver. Pour the blood within a specially prepared pentagram, or the demon will break loose and wreak havoc upon the world.'"
"snake charm"	"'To charm a snake, you must Strike the Chord of Straining.' [if the player does not have the Chord of Straining]Well--[italic type]that[roman type]'s not very helpful![otherwise]Great idea to bargain for one, then.[end if]"
"lesser gating" 	"'To summon an imp and force it to bargain with you, you must smash a vial of perfume and speak the Rune of Summoning. No pentagram is needed.' Luckily, you know the Rune of Summoning by heart."
"plant growth"	"'The creation of life must be balanced by its destruction; to make one plant grow, you have to burn another, more beautiful, plant and speak the Secret Seventh Rune of Trismegistos.' It is a good thing that the Seventh Rune isn't all that secret--every witch worth her salt knows it."
"haunt"	"'To have a man haunted by his past wrongs, make a paste of belladonna, ash and the tears of a woman. Apply the paste to your lips, and kiss him. But beware, for the man must ask you for the kiss out of genuine affection.'"
"snake"		"'To charm a snake, you must Strike the Chord of Straining.' [if the player does not have the Chord of Straining]Well--[italic type]that[roman type]'s not very helpful![otherwise]Great idea to bargain for one, then.[end if]"
"charm"		"'To charm a snake, you must Strike the Chord of Straining.' [if the player does not have the Chord of Straining]Well--[italic type]that[roman type]'s not very helpful![otherwise]Great idea to bargain for one, then.[end if]"
"plant"		"'The creation of life must be balanced by its destruction; to make one plant grow, you have to burn another, more beautiful, plant and speak the Secret Seventh Rune of Trismegistos.' It is a good thing that the Seventh Rune isn't all that secret--every witch worth her salt knows it."
"growth"	"'The creation of life must be balanced by its destruction; to make one plant grow, you have to burn another, more beautiful, plant and speak the Secret Seventh Rune of Trismegistos.' It is a good thing that the Seventh Rune isn't all that secret--every witch worth her salt knows it."
"greater"	"'To summon a demon and force it to bargain with you, you must slit the throat of a living goat with a magically empowered dagger, while wearing a crown of silver. Pour the blood within a specially prepared pentagram, or the demon will break loose and wreak havoc upon the world.'"
"lesser"	 	"'To summon an imp and force it to bargain with you, you must smash a vial of perfume and speak the Rune of Summoning. No pentagram is needed.' Luckily, you know the Rune of Summoning by heart."
"gating"		"There are two different gating spells in the grimoire, so you need to be more specific."


Section 1.1.6 - The imp

The imp is a person. The description of the imp is "A little brown creature, vaguely resembling the devils exorcised by Jesus on the church's altar paintings. It is more mischievous than evil, and has little power.".

Instead of attacking the imp, say "Nimbly, it avoids you, laughing at the game.".
Instead of stabbing the imp, say "Nimbly, it avoids you, laughing at the game.".
Instead of petting the imp, say "It might feel belittled and become angry.".

Understand "smashing [something]" as attacking.

Understand "small" as the imp. Understand "brown" as the imp. Understand "creature" as the imp.

Before attacking a vial: 
  if the player is not in the den, say "If you wish to use the vial in a spell of lesser gating, you'd better do so in the secrecy of your den." instead;
  if the imp is in a room, say "One imp at a time is certainly enough." instead.

Instead of attacking a vial (called the attacked):
  say "You drop the vial on the stone floor, and it smashes into a thousand pieces. 'Azarah! Ray'kun! Bethadal!', you say, intoning the Rune of Summoning. The shards of the vial disappear into yellow, sulfurous smoke, and a small brown creature appears.";
  move the imp to the den;
  remove the attacked from play.

The big diamond is a gift. The description of the big diamond is "The size of a quail egg, this diamond is beautiful and quite expensive.".

The Chord of Straining is a gift. The description of the Chord is "If a small harp could be made of thickened air, this would be it. You have no idea what magics hold the thing together, but you can probably strike it to release its energy.". The snake stick is a thing. The description of the snake stick is "This appears to be the orange viper you found in your bed, but it has become as hard and straight as a stick and no signs of life are visible. Its eyes look strangely hypnotic, though a human will can withstand them.". Instead of showing the snake stick to someone, say "The viper stick is not powerful enough to hypnotise a human being.". Understand "viper" as the snake stick.

Instead of attacking the Chord:
  if the viper is not visible, say "There is no need for that here." instead;
  say "Your fingers touch the Chord of Straining, which emanates a sound like the shrieking of a thousand forks on a thousand plates. It immediately dissolves, but its effect on the snake is remarkable.";
  remove Chord from play;
  remove viper from play;
  move snake stick to bed;
  change Fate to killed_by_Harold.

Understand "strike [something]" as attacking.

The bargain is a gift that varies.

Instead of talking to the imp, run a conversation from sc_imp_3.

[Source created by DLGC from source file G:\Interactive Fiction\Dialogue\Dialogues\Fate_Imp.DCP]

sc_imp_3 is a chat node. sc_imp_4 is a chat node. sc_imp_6 is a chat node. sc_imp_27 is a chat node. sc_imp_29 is a chat node. sc_imp_31 is a chat node. sc_imp_34 is a chat node. sc_imp_74 is a chat node. sc_imp_76 is a chat node. sc_imp_156 is a chat node. sc_imp_222 is a chat node. sc_imp_224 is a chat node. sc_imp_231 is a chat node.

Instead of giving text for sc_imp_3: say "You approach the imp with wariness and fake certainty.".
Instead of finding responses to sc_imp_3: link to sc_imp_4; link to sc_imp_6.

Instead of giving link to sc_imp_4: say "'Imp! I've summoned you, and now you will bargain with me.' ".
Instead of giving text for sc_imp_4: say "'Bargain, yes? Good! Mazuul [italic type]enjoys[roman type] helping humans.'".
Instead of finding responses to sc_imp_4: link to sc_imp_27; if the diamond is ungiven, link to sc_imp_29; if the chord is ungiven, link to sc_imp_31; if the wings are part of the pixie and the pixie dust is ungiven, link to sc_imp_231; link to sc_imp_34.

Instead of giving link to sc_imp_6: say "'I had expected a more imposing demon.' ".
Instead of giving text for sc_imp_6: say "The imp laughs, an eery sound devoid of mirth. 'Mazuul is attracted by perfume and comes at your bidding. The princes of darkness--teeheehee! They come at their own...'".
Instead of finding responses to sc_imp_6: link to sc_imp_27;  if the diamond is ungiven, link to sc_imp_29; if the chord is ungiven, link to sc_imp_31; if the wings are part of the pixie and the pixie dust is ungiven, link to sc_imp_231; link to sc_imp_34.

Instead of giving link to sc_imp_27: say "'No matter. I want you to make sure my little boy will become happy, glorious and powerful.' ".
Instead of giving text for sc_imp_27: say "The imp jumps up and down excitedly. 'Are you stupid, little sorcerer? Have you been eating too much powdered mushroom? Mazuul is an imp, not a demon lord! Mazuul can do small things only.'".
Instead of finding responses to sc_imp_27: if the diamond is ungiven, link to sc_imp_29; if the chord is ungiven, link to sc_imp_31; if the wings are part of the pixie and the pixie dust is ungiven, link to sc_imp_231; link to sc_imp_34.

Instead of giving link to sc_imp_29: say "'No matter. I want you to grant me wealth.' ".
Instead of giving text for sc_imp_29: say "'Wealth, that is good. Mazuul can give you a really big diamond, a lot of wealth! Let us discuss the price...'"; now the bargain is the diamond.
Instead of finding responses to sc_imp_29: if the crucifix is visible, link to sc_imp_156; link to sc_imp_222; link to sc_imp_224.

Instead of giving link to sc_imp_31: say "'No matter. I want you to teach me to Strike the Chord of Straining.' ".
Instead of giving text for sc_imp_31: say "'Sorcerous artifacts you are after, yes? Mazuul knows the Chord of Straining well, Mazuul will teach you. Let us discuss the price.'"; now the bargain is the chord.
Instead of finding responses to sc_imp_31: if the crucifix is visible, link to sc_imp_156; link to sc_imp_222; link to sc_imp_224.

Instead of giving link to sc_imp_231: say "'No matter. I want you to give me some pixie dust.' ".
Instead of giving text for sc_imp_231: say "'Really? And you could just cut the wings of your pixie? But Mazuul does not ask questions. Let us discuss the price.'"; now the bargain is the pixie dust.
Instead of finding responses to sc_imp_231: if the crucifix is visible, link to sc_imp_156; link to sc_imp_222; link to sc_imp_224.

Instead of giving link to sc_imp_34: say "'Actually, I don't think I want to bargain with such a foul creature. I want to dismiss you.' ".
Instead of giving text for sc_imp_34: say "'But Mazuul wants to [italic type]help[roman type] you...' The imp tries to make his squeaking voice sound seductive, but fails.".
Instead of finding responses to sc_imp_34: link to sc_imp_74; link to sc_imp_76.

Instead of giving link to sc_imp_74: say "Dismiss the imp. ".
Instead of giving text for sc_imp_74: say "With a wave of your hands, you send the imp back to its dark realm. An unfortunate waste of perfectly good perfume."; remove the imp from play.

Instead of giving link to sc_imp_76: say "Bargain anyway. ".
Instead of giving text for sc_imp_76: say "'Yes? You will allow Mazuul to help you?'".
Instead of finding responses to sc_imp_76: link to sc_imp_27;  if the diamond is ungiven, link to sc_imp_29; if the chord is ungiven, link to sc_imp_31; if the wings are part of the pixie and the pixie dust is ungiven, link to sc_imp_231; link to sc_imp_34.

Instead of giving link to sc_imp_156: say "'I offer you this holy relic, a cross carven from the bones of a saint.' ".
Instead of giving text for sc_imp_156: 
   say "'Good, good! Very much praise it brings, getting holy relics! I will grant your request.'[line break]";
   remove the crucifix from play;
   say "You hand the crucifix to the imp, who immediately puts it in his mouth and starts chewing. Making some complicated gestures, he conjures forth [the bargain], which appears in your outstretched hands. He then disappears in a puff of sulfurous smoke.";
   move the bargain to the player;
   now the bargain is given;
   remove the imp from play.

Instead of giving link to sc_imp_222: say "'I will perform a blood offering to you.' ".
Instead of giving text for sc_imp_222: 
  say "'Yes, that will suffice...' The imp looks at you with hungry eyes.[line break]";
  say "You step forward, and offer your wrist to the imp. It sinks its small teeth into your flesh, drinking from your blood for what seem to be agonising minutes. Finally satiated, he grins at you, and with some complicated gestures, conjures forth [the bargain] into your outstretched hands. He then disappears in a puff of sulfurous smoke. You feel very ill.";
   now the player is diseased;
   move the bargain to the player;
   now the bargain is given;
   remove the imp from play.

Instead of giving link to sc_imp_224: say "'On second thoughts, I'd rather bargain for something else.' ".
Instead of giving text for sc_imp_224: say "'Of course, of course, Mazuul can help in [italic type]many[roman type] ways!'".
Instead of finding responses to sc_imp_224: link to sc_imp_27;  if the diamond is ungiven, link to sc_imp_29; if the chord is ungiven, link to sc_imp_31; if the wings are part of the pixie and the pixie dust is ungiven, link to sc_imp_231; link to sc_imp_34.

Section 1.1.7 - The Demon

The pentagram is a thing. "An unbroken pentagram has been drawn on the floor with sorcerer's sand. It looks as if it can hold even the strongest demons.". The description of the pentagram is "There are no gaps in the pentagram: it is flawless.". Instead of taking the pentagram: say "That would destroy the pentagram.". Understand "pentacle" as the pentagram.

Drawing the pentagram is an action applying to nothing.

Instead of drawing the pentagram:
  if the player is not in the den, say "You should do that in the secrecy of your own den." instead;
  if the sand is not visible and the pouch is visible, say "You will have to open the velvet pouch first." instead;
  if the sand is not visible, say "You do not have your sorcerer's sand here." instead;
  if the pentagram is in the den, say "You have already drawn a pentagram." instead;
  say "You take some of the sorcerer's sand from the pouch and draw a large pentagram on the floor, making very sure there are no gaps.";
  move the pentagram to the den.

Instead of dropping the sand: try drawing the pentagram.
Instead of putting the sand on the floor: try drawing the pentagram.
Understand "pentagram" or "pentacle" as "[pentagram]".
Understand "draw a [pentagram]" as drawing the pentagram. Understand "draw [pentagram]" as drawing the pentagram. Understand "draw the [pentagram]" as drawing the pentagram. Understand "draw [pentagram] with sand" as drawing the pentagram. Understand "draw [pentagram] with sand" as drawing the pentagram. Understand "draw the [pentagram] with sand" as drawing the pentagram. Understand "draw [pentagram] with the sand" as drawing the pentagram. Understand "draw [pentagram] with the sand" as drawing the pentagram. Understand "draw the [pentagram] with the sand" as drawing the pentagram.


Understand "sacrifice [something]" as attacking. Understand "slaughter [something]" as attacking.

Instead of attacking the goat:
  if the player does not have the dagger, say "You do not have your dagger here." instead;
  if the dagger is unloaded, say "Sacrificing a goat will have no effect if you do not first load your dagger with magical power." instead;
  if the player is not in the den, say "You should do that in the secrecy of your own den." instead;
  if the pentagram is not in the den, say "Wait! You should first draw a pentagram, using your sorcerer's sand!" instead;
  if the player does not wear the silver crown, say "You should be wearing a silver crown, as a sign of dominance and power." instead;
  run a conversation from sc_goat_kill_1.

Instead of attacking the hypnotised goat:
  if the player does not have the dagger, say "You do not have your dagger here." instead;
  if the dagger is unloaded, say "Sacrificing a goat will have no effect if you do not first load your dagger with magical power." instead;
  if the player is not in the den, say "You should do that in the secrecy of your own den." instead;
  if the pentagram is not in the den, say "Wait! You should first draw a pentagram, using your sorcerer's sand!" instead;
  if the player does not wear the silver crown, say "You should be wearing a silver crown, as a sign of dominance and power." instead;
  run a conversation from sc_goat_kill_1.

sc_goat_kill_1, sc_goat_kill_2, sc_goat_kill_3 are chat nodes.

Instead of giving text for sc_goat_kill_1: say "As you raise the dagger to cut the throat of the goat, it [if the hypnotised goat is visible]awakens from its trance, [end if]bleats frightfully and looks at you with imploring eyes."
Instead of finding responses to sc_goat_kill_1: link to sc_goat_kill_2; link to sc_goat_kill_3.

Instead of giving link to sc_goat_kill_2: say "'I cannot do this.'. ".
Instead of giving text for sc_goat_kill_2: move the goat to the den; now the goat is tame; remove the hypnotised goat from play; say "You release the goat, your mind filling with horror as you think back on all the things you've done today.".

Instead of giving link to sc_goat_kill_3: say "Proceed. ".
Instead of giving text for sc_goat_kill_3: 
  say "Blood gushes out of the goat as you slit its throat. Before it reaches the floor inside the pentagram, dark shapes leap out of the floor to devour it. You jump back in surprise as the shapes annihilate the goat entirely, then slowly come together to form a towering demon.";
  move the demon to the den;
  now the dagger is unloaded;
  remove the goat from play;
  remove the hypnotised goat from play.


The demon is a person. "A foul creature, as black as tar, is confined within a pentagram." The description of the demon is "A large black creature stands within the pentagram, leathery wings almost spanning the distance from wall to wall. Cruel thoughts flicker behind its beady eyes." Understand "creature" as the demon. Understand "foul" as the demon. Instead of talking to the demon: run a conversation from sc_demon_1. Instead of attacking the demon: say "You wouldn't stand a chance against [italic type]that[roman type].". Instead of cutting the demon: try attacking the demon. Instead of stabbing the demon: try attacking the demon.


[Source created by DLGC from source file G:\Interactive Fiction\Dialogue_4_6\Dialogues\Fate_Demon.DCP]

sc_demon_1 is a chat node. sc_demon_3 is a chat node. sc_demon_5 is a chat node. sc_demon_7 is a chat node. sc_demon_37 is a chat node. sc_demon_39 is a chat node. sc_demon_41 is a chat node. sc_demon_58 is a chat node. sc_demon_60 is a chat node. sc_demon_158 is a chat node. sc_demon_197 is a chat node. sc_demon_199 is a chat node. sc_demon_423 is a chat node. sc_demon_339 is a chat node. sc_demon_366 is a chat node. sc_demon_457 is a chat node. sc_demon_494 is a chat node. sc_demon_496 is a chat node. sc_demon_648 is a chat node. sc_demon_689 is a chat node. 

Instead of giving text for sc_demon_1: say "Your voice shaking just a little, you address the demon.".
Instead of finding responses to sc_demon_1: link to sc_demon_3; link to sc_demon_5; link to sc_demon_7.

Instead of giving link to sc_demon_3: say "'Greetings, demon!' ".
Instead of giving text for sc_demon_3: say "'And greeting to you as well, my... mistress.' The demon emits a sound like screeching metal, which might be its equivalent of laughter.".
Instead of finding responses to sc_demon_3: link to sc_demon_37; link to sc_demon_39; link to sc_demon_41.

Instead of giving link to sc_demon_5: say "'Welcome in my humble abode, master of darkness.' ".
Instead of giving text for sc_demon_5: say "'I accept your invitation, little servant.' The demon emits a sound like screeching metal, which might be its equivalent of laughter.".
Instead of finding responses to sc_demon_5: link to sc_demon_37; link to sc_demon_39; link to sc_demon_41.

Instead of giving link to sc_demon_7: say "'On second thoughts, I don't think I wanted to summon [italic type]you[roman type]...' ".
Instead of giving text for sc_demon_7: say "'No?' The demon eyes you shrewdly. 'Nevertheless, you did. And I can give you everything you wish.'".
Instead of finding responses to sc_demon_7: link to sc_demon_37; link to sc_demon_39; link to sc_demon_41.

Instead of giving link to sc_demon_37: say "'I want you to change the fate of my child.' ".
Instead of giving text for sc_demon_37: say "'That can be arranged. What would you like your child's fate to be?'".
Instead of finding responses to sc_demon_37: link to sc_demon_58; link to sc_demon_60.

Instead of giving link to sc_demon_39: say "'I want you to warn the rebel leaders about the King's strategic plans.' ".
Instead of giving text for sc_demon_39: say "'Well, well. I see.' A hideous grin appears on the face of the demon. 'Now let us discuss the price...'".
Instead of finding responses to sc_demon_39: link to sc_demon_423; now fate is rebel_warned.

Instead of giving link to sc_demon_41: say "'I want to dismiss you. Now.' ".
Instead of giving text for sc_demon_41: say "'That would be a tragic mistake. I can give your child glory or happiness, instead of the rather gloomy fate that currently lies in wait...'".
Instead of finding responses to sc_demon_41: link to sc_demon_339; link to sc_demon_366.

Instead of giving link to sc_demon_58: say "'I want him to achieve fame and glory.' ".
Instead of giving text for sc_demon_58: say "'Truly? That can be arranged. On which side do you want your child to fight?'".
Instead of finding responses to sc_demon_58: link to sc_demon_158; link to sc_demon_197; link to sc_demon_199.

Instead of giving link to sc_demon_60: say "'I want him to lead a long life of happiness and love.' ".
Instead of giving text for sc_demon_60: say "'Well, well. I see.' A hideous grin appears on the face of the demon. 'Now let us discuss the price...'".
Instead of finding responses to sc_demon_60: link to sc_demon_423; now fate is happy.

Instead of giving link to sc_demon_158: say "'On the side of the rebels and my family.' ".
Instead of giving text for sc_demon_158: say "'Well, well. I see.' A hideous grin appears on the face of the demon. 'Now let us discuss the price...'".
Instead of finding responses to sc_demon_158: link to sc_demon_423; now fate is glorious_rebel.

Instead of giving link to sc_demon_197: say "'On the side of the kingdom and the monarchy.' ".
Instead of giving text for sc_demon_197: say "'Well, well. I see.' A hideous grin appears on the face of the demon. 'Now let us discuss the price...'".
Instead of finding responses to sc_demon_197: link to sc_demon_423; now fate is glorious_kingdom.

Instead of giving link to sc_demon_199: say "'On whichever side he chooses.' ".
Instead of giving text for sc_demon_199: say "'Well, well. I see.' A hideous grin appears on the face of the demon. 'Now let us discuss the price...'".
Instead of finding responses to sc_demon_199: link to sc_demon_423; now fate is glorious_free.

Instead of giving link to sc_demon_423: say "'What is the price you ask, creature of Hell?' ".
Instead of giving text for sc_demon_423: say "'Your life.'".
Instead of finding responses to sc_demon_423: link to sc_demon_457.

Instead of giving link to sc_demon_339: say "'You are right. I want to change my child's fate.' ".
Instead of giving text for sc_demon_339: say "'That can be arranged. What would you like your child's fate to be?'".
Instead of finding responses to sc_demon_339: link to sc_demon_58; link to sc_demon_60.

Instead of giving link to sc_demon_366: say "'No. Don't tempt me! You are dismissed, NOW!' ".
Instead of giving text for sc_demon_366: say "In a large cloud of sulfurous smoke the demon disappears, taking with him all hope of changing your child's fate."; now fate is banished; remove the demon from play.

Instead of giving link to sc_demon_457: say "'My life?' ".
Instead of giving text for sc_demon_457: say "'Yes. I grant you your wish, and the price is that you will die in childbirth. Rather a bargain, I would say.'".
Instead of finding responses to sc_demon_457: link to sc_demon_494; link to sc_demon_496.

Instead of giving link to sc_demon_494: say "(Softly) 'I will do it. Let the bargain be struck.' ".
Instead of giving text for sc_demon_494: say "'So be it.' The demon laughs his horrible, shrieking laugh, then disappears in a large cloud of sulfurous smoke."; remove the demon from play.

Instead of giving link to sc_demon_496: say "(Loudly) 'No! Foul monster! I will never consent to that!' ".
Instead of giving text for sc_demon_496: say "'No? Think about it. [if fate is not rebel_warned]It is a sacrifice for your child[otherwise]It is a sacrifice for your family[end if]... could you ever forgive yourself if you did not make it?'".
Instead of finding responses to sc_demon_496: link to sc_demon_648; link to sc_demon_689.

Instead of giving link to sc_demon_648: say "(Softly) 'That is true. I accept your offer.' ".
Instead of giving text for sc_demon_648: say "'So be it.' The demon laughs his horrible, shrieking laugh, then disappears in a large cloud of sulfurous smoke."; remove the demon from play.

Instead of giving link to sc_demon_689: say "'Avaunt! I dismiss you!' ".
Instead of giving text for sc_demon_689: say "In a large cloud of sulfurous smoke the demon disappears, taking with him all hope of changing your child's fate."; now fate is banished; remove the demon from play.




Chapter 1.2 - Parlour

The Parlour is south of the sorcerer's den. "The parlour, which is the central room of your three-room apartment, is less your own than you'd like: [if sir charles is awake]one of Prince Harold's knights, Sir Charles, has installed himself on the leather couch[otherwise]Sir Charles lies, soundly sleeping, in the leather couch[end if]. The walls are adorned by three paintings and a huge mirror, none of them to your taste. Luckily, there are three routes of escape: your den lies to the north, your bedroom to the east, and the rest of the castle can be reached by the staircase to the west."


Before going north in the parlour:
   say "You open the heavy curtain, pulling it close again behind you.".

Before going west in the parlour:
  if Sir Charles is awake, activate the Table of Sleep Hints;
  if Sir Charles is awake and Sir Charles is calm, say "'I have strict orders not to let you leave these rooms, my lady.', Sir Charles intervenes." instead;
  Now Sir Charles is calm;
  if Sir Charles is awake, say "'What? Are you merely trying to distract me?', Sir Charles exclaims. 'You will not leave here until the prince gives his consent!'" instead;
  if Fate is viper_bite and the viper is known, say "You'd like to deal with the fatal vision you saw in the crystal ball first." instead;
  if Fate is viper_bite, say "Before going on a romp through the castle, you'd better venture a look into the crystal ball first." instead;
  if Fate is killed_by_Harold and Prince Harold is untargeted, say "Before going on a romp through the castle, you'd better venture another look into the crystal ball first." instead.


Section 1.2.1 - General things

A small table is here. It is a supporter. It is fixed in place. The description of the small table is "This table is highly ornate, with legs so slender they appear to be impossibly fragile. It contains a tiny drawer in which you usually keep the key to your pixie's cage.". An openable closed container called the tiny drawer is part of the small table. The golden key is in the drawer. The description of the golden key is "Actually, the key is made of gilded iron. It can lock and unlock the golden cage in your bedroom.". 

A teddy bear is on the small table. The description of the teddy bear is "Brown used to be your favourite toy animal and most loyal companion. The smile on his face is reassuring, and even if his eyes are merely buttons, some kind of intelligence seems to reside in them. You plan to give him to your baby.". Understand "brown" as the teddy bear. Instead of petting the bear: say "You take the bear into your dainty arms, and hug him as if your life depends on it.". Instead of kissing the bear: say "You give the teddy a kiss on his brown snout.". The buttons are part of the bear. Understand "eyes" as the buttons. The description of the buttons is "Plain black buttons.".

A leather couch is here. The couch is scenery. It is a supporter. It is enterable. Instead of entering the couch, say "You'd rather not spend any more time in Sir Charles's company than is absolutely necessary.". The description of the couch is "A huge piece of furniture, very comfortable, and big enough for six people to sit on without touching. It was a gift from your husband. You dislike its hulking black presence immensely."

A painting is a kind of thing. Understand "painting" and "paintings" and "picture" and "pictures" as a painting. A painting is usually scenery.

The portrait is a painting. The landscape is a painting. The war scene is a painting. The portrait, the landscape and the war scene are here. The description of the portrait is "An old, hard man in dinted armour grimly stares out of the frame. It is King Alfred II, your husband.". The description of the war scene is "A grisly scene, full of dying horses and people, clashing bands of armed men and a river running red with blood. A town on the right side of the painting is already ablaze. In the middle your husband is fighting your father in mounted combat--and you know all too well how that fight ended.". The description of the landscape is "Fair Gondola, the lush and often rebellious southern province of the kingdom. It is where you were born and raised.".

A mirror is here. It is scenery. The description of the mirror is "You are young and comely; although you would find yourself more comely if you were not close to nine months pregnant. The red dress with the pearls that you are wearing already had to be adjusted thrice.".


Section 1.2.3 - Sir Charles

Sir Charles is in the parlour. He is a man. He is scenery. He is wearing leather armour. Instead of talking to Sir Charles, run a conversation from sc_charles_2. Sir Charles is either awake or asleep. Sir Charles is either excited or calm. Sir Charles is awake and calm. Understand "knight" as Sir Charles.

The description of Sir Charles is "Sir Charles is a big, burly knight, not particularly known for deeds of valour, but loyal to his prince. [if sir charles is awake]He is passing his time here drinking wine and daydreaming about slaying dragons.[otherwise]Your sleep spell worked wonders, and he is now sleeping as soundly as a babe.[end if]"

Instead of kissing Sir Charles, say "He disgusts you.".

A goblet is here. The wine is in the goblet. The indefinite article is "some". Instead of inserting something (called the insertable) into the wine, try inserting the insertable into the goblet. Instead of taking the wine, try taking the goblet. The description of the goblet is "A silver goblet, almost too dainty for Sir Charles's rough hands.". The description of the wine is "The usual cheap vintage your thrifty husband insists on buying.". Instead of drinking the wine: say "Sir Charles already drank from that cup--yugh!". Instead of tasting the wine: try drinking the wine.  Instead of smelling the wine: say "Sour and unappealing.". Understand "cup" and "chalice" as the goblet.

Before taking the goblet:
  if Sir Charles is awake and Sir Charles is calm, say "Sir Charles exclaims 'You can leave that well enough alone!'" instead;
  if Sir Charles is awake, say "'I'm telling you about my exploits--leave my wine alone!', the knight exclaims." instead.

Before inserting a thing (called the insertable) into the goblet:
  if the insertable is the pixie wings, say "You'd better pulverise them first." instead;
  if the insertable is not the pixie dust and the insertable is not the pearl dust, say "Putting [the insertable] into the wine is not going to further your cause." instead;
  if Sir Charles is calm, say "Sir Charles is so intent on his wine that he will surely notice your attempt to put [the insertable] into it." instead;
  if fate is viper_bite and the viper is not known, say "Perhaps you should look at your crystal ball before you start casting spells on people." instead;
  if fate is viper_bite and the bed is open, say "A great idea, but you'd better take care of the deadly snake first. It might turn out that you still need Sir Charles's help." instead;
  if fate is viper_bite and the bed is closed, say "A great idea, but you'd better take care of the threat in your bed first. It might turn out that you still need Sir Charles's help." instead.

After inserting something (called the insertable) into the goblet:
  say "You carefully drop [the insertable] into Sir Charles's wine.".


Every turn:
 if the the pixie dust is in the goblet and the pearl dust is in the goblet and Sir Charles is calm begin;
    remove the pixie dust from play;
    remove the pearl dust from play;
    remove the wine from play;
    say "Ignorant of your sorcerous manipulations, Sir Charles soon takes a sip--and starts yawning only seconds after. 'How strangely tired I am...', he mutters, before collapsing on the couch. A deep sleep has overtaken him.";
  Now Sir Charles is asleep;
  end if. 

Instead of waking Sir Charles:
  if Sir Charles is awake, say "Putting him asleep would be more useful.";
  if Sir Charles is asleep, say "Nothing is going to wake [italic type]him[roman type] for the next few hours.".

[Source created by DLGC from source file G:\Interactive Fiction\Dialogue\Dialogues\Fate_Sir_Charles.DCP]

sc_charles_2 is a chat node. sc_charles_3 is a chat node. sc_charles_803 is a chat node. sc_charles_49 is a chat node. sc_charles_5 is a chat node. sc_charles_6 is a chat node. sc_charles_145 is a chat node. sc_charles_222 is a chat node. sc_charles_338 is a chat node. sc_charles_398 is a chat node. sc_charles_419 is a chat node. sc_charles_441 is a chat node. sc_charles_492 is a chat node. sc_charles_17 is a chat node. sc_charles_568 is a chat node. sc_charles_740 is a chat node. sc_charles_123 is a chat node. sc_charles_125 is a chat node. sc_charles_127 is a chat node. sc_charles_extra is a chat node.

Instead of giving text for sc_charles_2: say "Diffidently, with downcast eyes, you walk up to Sir Charles. He looks at you with a condescending smile.".
Instead of finding responses to sc_charles_2: link to sc_charles_3; link to sc_charles_803; link to sc_charles_49; if the bed is open and the viper is in the bed, link to sc_charles_extra.

Instead of giving link to sc_charles_3: say "'Sir Charles, can I go down to the gardens?' ".
Instead of giving text for sc_charles_3: say "'Certainly not, child!', the stout knight answers. 'The prince has made me vow to keep you here, for your safety and that of your baby. No climbing up and down narrow staircases for you, little sister.'".
Instead of finding responses to sc_charles_3: link to sc_charles_5; link to sc_charles_6; link to sc_charles_145.

Instead of giving link to sc_charles_803: say "'Sir Charles, I would like to visit my husband.' ".
Instead of giving text for sc_charles_803: say "'I don't think so, girl. Prince Harold wishes to keep you safe in your rooms, and I am here to protect you--against yourself, if need be.'".
Instead of finding responses to sc_charles_803: link to sc_charles_5; link to sc_charles_6; link to sc_charles_145.

Instead of giving link to sc_charles_49: say "'Isn't it awfully exciting to be a knight, Sir Charles?' ".
Instead of giving text for sc_charles_49: say "If there was a trace of mockery in your voice, Sir Charles doesn't notice. 'Exciting?', he says. 'Certainly! Ah, I could tell you stories, young lady, stories that would curdle the blood of brave men and make women faint in adoration!'".
Instead of finding responses to sc_charles_49: link to sc_charles_123; link to sc_charles_125; link to sc_charles_127.

Instead of giving link to sc_charles_5: say "(Petulant) 'I am the Queen, and the prince has no sovereignty over me.' ".
Instead of giving text for sc_charles_5: say "Sir Charles merely chuckles, then returns to his thoughts and his wine.".

Instead of giving link to sc_charles_6: say "(Firm) 'I am the Queen, and the prince has no sovereignty over me.' ".
Instead of giving text for sc_charles_6: say "'Sovereignty, no.' says Sir Charles earnestly. 'But power, yes. Take my advice, and bend your will to that of Prince Harold. The old king will not live long, and then your fate will be in the hands of my lord.'".
Instead of finding responses to sc_charles_6: link to sc_charles_222; link to sc_charles_338.

Instead of giving link to sc_charles_145: say "(With a shy smile) 'That was very wise of the prince, Sir. I thank you both for your concern.' ".
Instead of giving text for sc_charles_145: say "The knight answers your shy smile with a chuckle. 'There's a good girl.'".

Instead of giving link to sc_charles_222: say "'I am the Queen and I will be treated as such! From now on, you will listen to [italic type]my[roman type] commands.' ".
Instead of giving text for sc_charles_222: say "The knight rises from his chair. 'My Queen,' he exclaims with a mock bow, 'I am all at your service! Your wish is my command.'".
Instead of finding responses to sc_charles_222: link to sc_charles_398; link to sc_charles_419; link to sc_charles_441.

Instead of giving link to sc_charles_338: say "'How dare you say such things? Wait till I tell my husband about it!' ".
Instead of giving text for sc_charles_338: say "'It is your word against mine, and you know exactly how much faith the King has in the words of women. So you had better shut up and do what I say.'".
Instead of finding responses to sc_charles_338: link to sc_charles_568; link to sc_charles_740; link to sc_charles_441.

Instead of giving link to sc_charles_398: say "'I wish you to allow me to leave.' ".
Instead of giving text for sc_charles_398: say "'Ah, well, yes... I am sorry to inform you, my Queen, that there are some limits to the wishes you are allowed to have.' He smiles insolently, then returns to his wine.".

Instead of giving link to sc_charles_419: say "'You are cruel to mock me so, Sir Charles.' ".
Instead of giving text for sc_charles_419: say "'Nay, it is not mockery, lady, but compassion that you see. You should learn submission before it is too late, even if the lessons are harsh.'".
Instead of finding responses to sc_charles_419: link to sc_charles_492; link to sc_charles_17; link to sc_charles_441.

Instead of giving link to sc_charles_441: say "Start crying. ".
Instead of giving text for sc_charles_441: say "Sir Charles hesitates, as if he is about to comfort you. Then he decides against this, and returns somewhat gloomily to his wine.".

Instead of giving link to sc_charles_492: say "'Why does Prince Harold hate me?' ".
Instead of giving text for sc_charles_492: say "The knight looks at you, almost with compassion. 'He hates not you personally, lady, but the threat you pose to him. A Queen could be powerful; a new Prince... well, with all these rebel lords in the south, it would be a grave risk to him. Please Catherine, try not to anger him.'".
[Instead of finding responses to sc_charles_492: link to sc_charles_3; link to sc_charles_803; link to sc_charles_49.] 

Instead of giving link to sc_charles_17: say "'I will never submit!' ".
Instead of giving text for sc_charles_17: say "'As you say.' Sir Charles smiles wryly, and returns to his wine.".

Instead of giving link to sc_charles_568: say "'I will never submit!' ".
Instead of giving text for sc_charles_568: say "'As you say.' Sir Charles smiles wryly, and returns to his wine.".

Instead of giving link to sc_charles_740: say "'I will have your head off, you bastard!' ".
Instead of giving text for sc_charles_740: say "A dangerous glint comes into Sir Charles's eye. 'Now will you, my lady? I wonder... who of us will be beheaded first.' With those words, he turns away from you.".

Instead of giving link to sc_charles_123: say "'I see. Well, maybe another time.' ".
Instead of giving text for sc_charles_123: say "Sir Charles looks faintly disappointed about your lack of interest.".

Instead of giving link to sc_charles_125: say "'Oh, Sir Charles! Please, make me faint in adoration, tell me about your bravest adventures!' ".
Instead of giving text for sc_charles_125: 
  Now Sir Charles is excited;
  now the Temporary Charles Number is The Charles Story times ten;
  say "[text corresponding to an entry of the Temporary Charles Number in the Table of Charles Stories] Bobbing with excitement, Sir Charles jumps up to re-enact the fight.".

Instead of giving link to sc_charles_127: say "'Stories about [italic type]other men[roman type], no doubt.' ".
Instead of giving text for sc_charles_127: say "His face flushes red with anger, and the knight slaps you hard across the face. 'Shut up, you little whore!', he snarls, then gloomily returns to his wine.".


Every turn: 
                if Sir Charles is excited and Sir Charles was excited, increase the Temporary Charles Number by one;
                if Sir Charles has been excited for only one turn, say "[text corresponding to an entry of the Temporary Charles Number in the Table of Charles Stories], [if the player is not in the parlour]you hear Sir Charles shout[otherwise]Sir Charles shouts[end if].";
                if Sir Charles has been excited for only two turns, say "[text corresponding to an entry of the Temporary Charles Number in the Table of Charles Stories], [if the player is not in the parlour]you hear Sir Charles shout[otherwise]Sir Charles shouts[end if].";
                if Sir Charles has been excited for only three turns, say "[text corresponding to an entry of the Temporary Charles Number in the Table of Charles Stories], [if the player is not in the parlour]you hear Sir Charles shout[otherwise]Sir Charles shouts[end if].";
                if Sir Charles has been excited for only four turns begin;
                   Now Sir Charles is calm;
                   say "[text corresponding to an entry of the Temporary Charles Number in the Table of Charles Stories], [if the player is not in the parlour]you hear Sir Charles shout[otherwise]Sir Charles concludes. Clearly tired of his demonstration, he seats himself and reaches for his wine[end if].";
                   if the Charles Story is at least 3, now the Charles Story is 0;
                   increase the Charles Story by one;
                end if.


The Charles Story is a number that varies. The Charles Story is 1. The Temporary Charles Number is a number that varies.

Table of Charles Stories
entry	text
10	"'Have I ever told you about the time I slew the valiant Black Knight of Skullwood? No, I thought not!'"
11	"'First he tried to sever my head with his obsidian sword, but I blocked him like [italic type]this[roman type]!'"
12	"'He had me in a tight spot then, but I managed to kick him in the groin like so--haha, you should have seen his face!'"
13	"'Then I swung, like this, and this, and this!' [if the player is in the parlour]Sir Charles misses your mirror by an inch[otherwise]Metal hits stone[end if]. 'And finally, when he raised his shield to block me...'"
14	"'I suddenly reversed my thrust, and gutted him like [italic type]this[roman type]! Oh, what a fight!'"
20	"'Did you hear the story about my fight with the Scaled Dragon of Thrax before? You'll love it!'"
21	"'The dragon was guarding a huge pile of gold, you know, which it had hoarded in his cave.'"
22	"'So I just walked in, with my shield in one hand and my sword in the other, and I said to him: come on, Scaled Dragon of Thrax, I come to reclaim your ill-gotten gains! You sissy!'"
23	"'This made him mad with rage! He blindly rushed out of the cave to get me, but I had sneakily hidden myself in a pit in the cave itself. So when he went past me, just over my head, I raised my sword like [italic type]this[roman type]...'"
24	"'And then I gutted him, right there! Oh, his foul blood streamed all over me, but he was as dead as a doornail, I can tell you that. A dragon, with a single blow--the minstrels and the lasses are still talking about it!'"
30	"'Have you heard about my encounter with the Demon King of the Lower Reaches? I warn you: it is a tale of bloodcurdling horror.'"
31	"'We had been fighting hellspawn all afternoon, you see, and I had lost my sword somewhere in the process. So I was completely unarmed when I met the Demon King.'"
32	"'He was standing amidst the corpses of my dearest companions, carrying a huge axe that glowed with mystical light. But I had no fear, and I charged him without a second thought!'"
33	"'He tried to raise his axe, but I hit him with my armoured fist like [italic type]so[roman type]. And then he slashed at me like [italic type]this[roman type], but I ducked away, and then I punched him in the groin!'"
34	"'Haha! He doubled over in pain, and with a feat of almost inhuman strength I took him by the horns like [italic type]this[roman type] and snapped his neck!'"




Instead of giving link to sc_charles_extra: say "'Sir Charles! There is a dangerous viper in my bed!'".
Instead of giving text for sc_charles_extra: 
 say "Sir Charles jumps up. 'A dangerous viper?', he exclaims, then, without waiting for an answer, runs into the bedchamber pulling you with him. His eyes fall upon the orange viper, and with a savage scream he smashes the vile creature under his boot. Satisfied with a deed well done, he bows to you and returns to the parlour.";
  remove the viper from play;
  move the viper goo to the bedchamber;
  move the player to the bedchamber;
  change Fate to killed_by_Harold.


Chapter 1.3 - Bedchamber

The Bedchamber is east of the parlour. "You sleep in this luxuriously furnished room, complete with a huge four-poster bed and a mahogany beauty table. As your pregnancy progressed, you came to spend more and more time here, simply exhausted from moving up and down a few staircases. A portrait of your mother graces the wall where you can look at it from the bed, while a large golden cage containing your pixie dangles from the ceiling."

The mahogany beauty table is here. It is scenery. The description of the beauty table is "This large table sports an upright mirror and many rows of flasks which contain nothing that could be useful in [italic type]this[roman type] situation.". The upright mirror is part of the beauty table. The description of the upright mirror is "You are young and comely; although you would find yourself more comely if you were not close to nine months pregnant. The red dress with the pearls that you are wearing already had to be adjusted thrice.". A thing called the flasks is part of the beauty table. The description of the flasks is "Beauty products, each and every one of them. For the second time in your conscious life, they hold no interest for you.". Instead of taking the flasks, say "There are more pressing concerns than improving your looks.".

The blue vial is a vial. The blue vial is on the mahogany beauty table. Instead of smelling the blue vial: say "It reminds you of how your mother smelled.".

The portrait of your mother is here. It is scenery. The description of the portrait of your mother is "Will you ever see that sweet face again? Especially with the rumours of your mother backing the southern rebellion, it is unlikely.".

Section 1.3.1 - The bed and the viper

A bed is here. It is scenery, container, openable, closed, opaque and enterable. The description of the bed is "Soft, comfortable and very big. You have it for yourself almost every night."
Instead of examining the bed when the bed is closed, say "There might be something hidden in the bed, near the foot, but it is hard to be sure. You'd have to pull back the covers in order to find out more.".

The covers are part of the bed. Instead of taking the covers when the bed is open, say "You have no need for the covers.". Instead of taking the covers when the bed is closed, try opening the bed. Instead of pulling the covers, try taking the covers. Understand "pull back [something]" as pulling. Instead of pushing the covers, try pulling the covers.

In the bed is a viper. The viper is either known or unknown. The viper is unknown. The description of the viper is "The viper is orange, about two hands long, and probably poisonous. You know one thing for certain: snakes such as these do not normally live in this kingdom.".

Instead of taking the viper, say "And die?!". Instead of attacking, cutting or stabbing the viper, say "That solution is too dangerous.".

Instead of closing the bed when the bed is open:
  if the viper is not in the bed, say "And risk another viper being put into it? I think not!" instead;
  say "And conceal the viper again? I think not!".

Instead of opening the bed when the viper is unknown and the bed is closed:
  say "As you draw back the covers of the bed, an orange shape is suddenly revealed and it [italic type]bites[roman type] you--";
  end the game saying "You and your child have been assassinated.".

Instead of entering the bed when the viper is unknown:
  say "As you draw back the covers of the bed, an orange shape is suddenly revealed and it [italic type]bites[roman type] you--";
  end the game saying "You and your child have been assassinated.".

Instead of opening the bed when the viper is known and the bed is closed:
  say "Very, very carefully you pull back the covers. Near the foot of the bed, you reveal a curled-up orange viper.";
  now the bed is open.

Instead of entering the bed when the viper is known and the viper is in the bed:
  say "That would be far too dangerous.".

Instead of entering the bed when the viper is known and the viper is not in the bed:
  say "There are pressing matters you need to take care of.".


At the time when Sir Charles enters:
  if Sir Charles is asleep, do nothing instead;
  say "[if the player is in the bedchamber]Sir Charles bursts into your bedroom. 'What is the matter?!', he exclaims. [otherwise]Sir Charles has jumped up. 'What happened?', he asks, then, without waiting for an answer, runs into the bedchamber pulling you with him. He looks at Sylvie's corpse in horror. [end if]Then his eyes fall upon the orange viper, and with a savage scream he smashes the vile creature under his boot. Satisfied with a deed well done and hardly glancing at Sylvie's corpse, he bows to you and returns to the parlour.";
  remove the viper from play;
  move the viper goo to the bedchamber;
  if the player is in the parlour, move the player to the bedchamber;
  change Fate to killed_by_Harold.



The viper goo is a thing. The indefinite article is "some". The description of the viper goo is "Blood and skin have been suffused into a disgusting mix, with fragments of bone sticking out of it.". Understand "mix" as the viper goo. After taking the viper goo: say "Yuck. But if you insist." instead.


Section 1.3.2 - Sylvie

Sylvie is a female servant. Sylvie is here. Sylvie is either bitten or unbitten. Sylvie is unbitten. The description of Sylvie is "Still a young woman, though slightly older than you are, Sylvie takes care of your apartment--with the exception of your den, of course. She is currently cleaning your bedroom, and it will be hard to break her from that routine.". The initial appearance of Sylvie is "Your servant Sylvie is busy cleaning the room.".

Persuasion rule for asking Sylvie to try taking the covers: persuasion succeeds. Persuasion rule for asking Sylvie to try opening the bed: persuasion succeeds. Persuasion rule for asking Sylvie to try pulling the covers: persuasion succeeds.

Instead of Sylvie trying pulling the covers: try Sylvie trying opening the bed; rule succeeds. Instead of Sylvie trying taking the covers: try Sylvie trying opening the bed; rule succeeds.

Instead of Sylvie trying opening the bed when the bed is closed:
  say "[if viper is known]Unsuspecting, [end if]Sylvie pulls down the covers of the bed. She suddenly shrieks, and you see an orange viper biting her. The next moment, Sylvie falls down, dead.";
  now the bed is open;
  move Sylvie's body to the location;
  now Sylvie's body is not scenery;
  now Sylvie is bitten;
  remove Sylvie from play;
  Sir Charles enters in one turn from now;
  now the viper is known;
  rule succeeds.

Instead of Sylvie trying taking the viper: say "She only looks at you in wide-eyed horror.".
Instead of Sylvie trying pulling the viper: say "She only looks at you in wide-eyed horror.".

Unsuccessful attempt by Sylvie trying opening the bed when the bed is closed:
  now the bed is open.
Unsuccessful attempt by Sylvie trying taking the covers when the bed is closed:
  now the bed is open.
Unsuccessful attempt by Sylvie trying pulling the covers when the bed is closed:
  now the bed is open.

The description of Sylvie's body is "[if sylvie is in the bedchamber]Slender but pale, Sylvie would look better if she got more sleep.[end if][if Sylvie is bitten]Sylvie's corpse lies next to your bed, showing no outward sign of the terrible poison that killed her.[otherwise]Sylvie's body lies in a pool of her own blood, right where you have stabbed it.[end if]". Understand "Sylvie" as Sylvie's body when Sylvie is not visible.

Instead of kissing Sylvie, say "It wouldn't make her happy.".

Instead of talking to Sylvie, run a conversation from sc_sylvie_1.

[Source created by DLGC from source file G:\Interactive Fiction\Dialogue\Dialogues\Fate_Sylvie.DCP]

sc_sylvie_1 is a chat node. sc_sylvie_3 is a chat node. sc_sylvie_5 is a chat node. sc_sylvie_7 is a chat node. sc_sylvie_10 is a chat node. sc_sylvie_11 is a chat node.

Instead of giving text for sc_sylvie_1: say "Sylvie is busily cleaning the room.".
Instead of finding responses to sc_sylvie_1: if the viper is known and the bed is closed, link to sc_sylvie_3; link to sc_sylvie_5; link to sc_sylvie_7.

Instead of giving link to sc_sylvie_3: say "'Sylvie, would you pull back the covers for me? I'd like to take a nap.' ".
Instead of giving text for sc_sylvie_3: say "She might be killed by whatever hides in the bed."
Instead of finding responses to sc_sylvie_3: link to sc_sylvie_10; link to sc_sylvie_11.

Instead of giving link to sc_sylvie_10: say "Proceed, knowing of the danger. ".
Instead of giving text for sc_sylvie_10: say "'Yes madam, of course,' she answers."; try sylvie trying opening the bed.

Instead of giving link to sc_sylvie_11: say "Refrain from asking her. ".
Instead of giving text for sc_sylvie_11: say "It occurs to you that since you know of the threat, you might be able to carefully pull back the covers without too much danger.".

Instead of giving link to sc_sylvie_5: say "'How are you today, Sylvie?' ".
Instead of giving text for sc_sylvie_5: say "'I'm fine, madam. Thank you, madam.' Servants have never been encouraged to say much to their lords and ladies.".
Instead of finding responses to sc_sylvie_5: if the viper is known and the bed is closed, link to sc_sylvie_3; link to sc_sylvie_5; link to sc_sylvie_7.

Instead of giving link to sc_sylvie_7: say "Leave her to work in peace. ".
Instead of giving text for sc_sylvie_7: say "You return to your own concerns.".


Section 1.3.3 - The pixie

A golden cage is here. It is scenery. In the cage is female person called the pixie. Understand "Amalia" as the pixie. The cage is openable, locked, transparent, closed and fixed in place. A thing called the pixie wings are part of the pixie. The golden cage has matching key the golden key.


The description of the cage is "A gilded bird cage, normally used for parrots or nightingales, houses your pixie. It is currently [if the cage is open]open[otherwise]closed[end if][if the cage is locked] and locked with the little golden key you keep in the parlour table[end if].". The description of the pixie is "Pixies are small faeries, about as big as a human hand, with translucent, butterfly-like wings. They are not very intelligent, and cannot talk, but can convey a large range of emotions. Among pet owners, they are praised for their sweet nature. Among sorcerers, they are praised for the magical powers of their wings, which not only can be cut and used in many spells, but also regrow within days, making a pixie an almost inexhaustible resource. [paragraph break]You have always treated your pixie, Amalia, very well, and until today, you've never cut her wings[if the wings are not part of the pixie]. Now she sits on the floor of her cage, crying. You tell yourself that her wings will regrow soon, but you still feel wretched[end if].".
The description of the wings is "Among sorcerers, pixies are praised for the magical powers of their wings, which not only can be cut and used in many spells, but also regrow within days, making a pixie an almost inexhaustible resource. The wings are translucent and glow faintly.".

Does the player mean examining the pixie: it is likely. Does the player mean petting the pixie: it is very likely.

Instead of talking to the pixie when the wings are not part of the pixie: say "You probably won't be able to console her.".

Instead of talking to the pixie when the wings are part of the pixie: run a conversation from sc_pixie_1.

Instead of cutting the wings:
  if the wings are not part of the pixie, say "You have done that already." instead;
  if the player does not have the dagger, say "You need something to cut the wings with." instead;
  run a conversation from sc_cutpixie2.

Some pixie dust is a gift. The description of the pixie dust is "Glimmering and faintly magical, the ground wings of a pixie are highly regarded by sorcerers and cosmeticians."

[Source created by DLGC from source file G:\Interactive Fiction\Dialogue\Dialogues\Fate_CutPixie.DCP]

sc_cutpixie2 is a chat node. sc_cutpixie3 is a chat node. sc_cutpixie9 is a chat node. sc_cutpixie181 is a chat node. sc_cutpixie19 is a chat node. sc_cutpixie55 is a chat node. sc_cutpixie57 is a chat node. sc_cutpixie89 is a chat node. sc_cutpixie91 is a chat node. 

Instead of giving text for sc_cutpixie2: say "With the wicked dagger in your hand, you approach the pixie. She cowers in fear, her hands held up to you in a begging motion.".
Instead of finding responses to sc_cutpixie2: link to sc_cutpixie3; link to sc_cutpixie9; link to sc_cutpixie181.

Instead of giving link to sc_cutpixie3: say "'No, I cannot harm such an innocent creature!' ".
Instead of giving text for sc_cutpixie3: say "You put the dagger back in your belt. The pixie twitters in tones of gratitude and relief. 'Maybe there is another way,' you mutter.".

Instead of giving link to sc_cutpixie9: say "(Proceed) 'I'm sorry pixie. I'll try to make amends to you when this whole crisis is over.' ".
Instead of giving text for sc_cutpixie9: say "The pixie begins to whine pitifully as the sharp dagger approaches her wings.".
Instead of finding responses to sc_cutpixie9: link to sc_cutpixie19.

Instead of giving link to sc_cutpixie181: say "(Proceed in silence.)".
Instead of giving text for sc_cutpixie181: say "The pixie begins to whine pitifully as the sharp dagger approaches her wings.".
Instead of finding responses to sc_cutpixie181: link to sc_cutpixie19.

Instead of giving link to sc_cutpixie19: say "Grab the pixie. ".
Instead of giving text for sc_cutpixie19: say "Frantically, your little pet tries to escape, but in vain.".
Instead of finding responses to sc_cutpixie19: link to sc_cutpixie55; link to sc_cutpixie57.

Instead of giving link to sc_cutpixie55: say "Cut. ".
Instead of giving text for sc_cutpixie55: say "Her whining turns into a shrill scream as your dagger severs the two little wings from the back of the pixie. As you drop her back into the cage, she lies on the cold floor, sobbing."; move pixie wings to player.
Instead of finding responses to sc_cutpixie55: link to sc_cutpixie89; link to sc_cutpixie91.

Instead of giving link to sc_cutpixie57: say "Release her. ".
Instead of giving text for sc_cutpixie57: say "No--you cannot do it. You release the pixie, who twitters in tones of gratitude and relief. 'Maybe there is another way,' you mutter.".

Instead of giving link to sc_cutpixie89: say "Leave her. ".
Instead of giving text for sc_cutpixie89: say "You turn away, leaving the pixie to her pain and grief.".

Instead of giving link to sc_cutpixie91: say "Comfort her. ".
Instead of giving text for sc_cutpixie91: say "'I am sorry, I am so sorry', you whisper as you stroke the little creature. 'Everything will turn out alright.'[line break]Your empty words do little to console her.".



[Source created by DLGC from source file G:\Interactive Fiction\Dialogue\Dialogues\Fate_pixie.DCP]

sc_pixie_1 is a chat node. sc_pixie_2 is a chat node. sc_pixie_4 is a chat node. sc_pixie_6 is a chat node. 

Instead of giving text for sc_pixie_1: say "You put your face close to the cage.".
Instead of finding responses to sc_pixie_1: link to sc_pixie_2; link to sc_pixie_4; link to sc_pixie_6.

Instead of giving link to sc_pixie_2: say "'Good morning, Amalia. How are you today?' ".
Instead of giving text for sc_pixie_2: say "Not being able to talk, Amalia doesn't respond as such, but she looks at you with a happy smile on her tiny face.".

Instead of giving link to sc_pixie_4: say "'Hi cutie!' ".
Instead of giving text for sc_pixie_4: say "Not being able to talk, Amalia doesn't respond as such, but she looks at you with a happy smile on her tiny face.".

Instead of giving link to sc_pixie_6: say "'Is my little princess awake already?' ".
Instead of giving text for sc_pixie_6: say "Not being able to talk, Amalia doesn't respond as such, but she looks at you with a happy smile on her tiny face.".




Instead of taking the pixie when the cage is open: say "Pixies are fragile creatures. Carrying her around with you might hurt her.".
Instead of stabbing the pixie, say "You have no intention of killing the sweet creature.".
Instead of attacking the pixie, say "You have no intention of killing the sweet creature.".
Instead of petting the pixie, say "You softly stroke Amalia[if the wings are part of the pixie], who twitters with pleasure[otherwise], who doesn't stop crying[end if].".
Instead of kissing the pixie, say "You kiss Amalia on her tiny head[if the wings are part of the pixie], making her beam with joy[otherwise], but it doesn't lighten her mood[end if].".


Check talking to the pixie:
  do nothing. [This ensures you can talk to the pixie even when the cage is closed. Inform has transparent objects, but not objects with holes.]



Chapter 1.10 - Region

Catherine's apartment is a region. The sorcerer's den, the parlour and the bedchamber are in Catherine's apartment.




Part 2 - The Corridors

A room called The Corridors is west of the parlour. "The corridors of the castle twist and turn endlessly through all the towers and keeps. At the top of the northwestern tower is Mebeira's lair, where you sometimes go to talk about sorcery. Your husband's quarters lie to the west, whereas your own are to the east and those of Prince Harold are situated in the northern keep. Taking the stairs down will bring you to an enclosed garden."

Instead of going west in the corridors when the player has the goat: say "Walking around the castle with a goat might arouse suspicion.". Instead of going northwest in the corridors when the player has the goat: say "Walking around the castle with a goat might arouse suspicion.". Instead of going north in the corridors when the player has the goat: say "Walking around the castle with a goat might arouse suspicion.".

Before going down in the corridors: say "Descending the steps is a terrible chore, but you manage.".


Part 3 - Mebeira's Lair

A room called Mebeira's Lair is northwest of the corridors. "You have never found out, or inquired, where Mebeira sleeps. Her single tower room is cluttered with stuffed animals, open jars containing evil-coloured powders, dirty plates and mugs, black clothes decades out of fashion, human skulls, yellowed books, trunks and cabinets almost hidden under the undisturbed dust of years, and dozens of objects that may look magical to the uninitiated but appear useless to your trained eye. And yet, you know that Mebeira has real powers."


Section 3.1 - General things

The debris is here. It is scenery. Understand "stuffed" and "animals" and "open jars" and "jars" and "powders" and "evil-coloured" and "dirty" and "plates" and "mugs" and "clothes" and "human skulls" and "skulls" and "yellowed" and "books" and "objects" and "treasures" and "junk" and "dust" as the debris. The description of the debris is "It is a simply astounding collection of junk. Who knows what treasures might be hidden among it?". Instead of searching the debris, say "You are not going to find out whether any treasures are to be found among the junk, because it would take far too much time to search through it--not to mention that Mebeira might not approve.". Instead of taking the debris, say "You have no use for any of the junk you see.".

The trunks are here. They are scenery. Understand "cabinets" and "cabinet" and "trunk" as the trunks. The description of the trunks is "They haven't been touched in years, and probably contain nothing but mouldering clothes.". Instead of opening the trunks, say "Truly, it would be a waste of time, even if Mebeira would let you.".

The tiger skin is here. It is scenery. "The skin of a tiger has been draped over a pile of cushions to provide a comfortable seat. You've never seen Mebeira anywhere but on it.". Instead of taking the skin, say "Mebeira is sitting on it.".


Section 3.2 - Mebeira

Mebeira is here. Mebeira is a woman. "Mebeira, that old witch, reclines on the skin of a tiger." The description of Mebeira is "She must be over sixty, several years older than the King, her brother. She hasn't aged as well as he has: her face is wrinkled and haggard, her eyesight is weak, and her once sharp mind now sometimes seems to wander.". Understand "witch" as Mebeira.

Instead of talking to mebeira: run a conversation from sc_mebeira_1.

The dried piece of belladonna is a thing. It is carried by Mebeira. The description is "Small, brown and probably not even poisonous any longer, this is all that remains of a once proud and deadly belladonna plant.". Instead of eating the dried piece, say "Let's not take any chances.".

The Amulet of Madness is a thing. The description of the amulet is "This evil pendant, bright red lines on a circular plate of gold, has a fearsome magical power. The first person to attack the wearer with the intent to kill him or her will be struck with immediate and incurable madness." The Amulet is wearable. Mebeira is wearing the amulet. The amulet is either available or unavailable. The amulet is available. [If you put the game into a state where the amulet can no longer be gotten from Mebeira, it becomes unavailable. This is checked by routines that check whether your fate can still be changed: currently the coins and the hints.]



[Source created by DLGC from source file G:\Interactive Fiction\Dialogue\Dialogues\Fate_Mebeira_2.DCP]

sc_mebeira_1 is a chat node. sc_mebeira_2 is a chat node. sc_mebeira_4 is a chat node. sc_mebeira_6 is a chat node. sc_mebeira_16 is a chat node. sc_mebeira_18 is a chat node. sc_mebeira_20 is a chat node. sc_mebeira_22 is a chat node. sc_mebeira_66 is a chat node. sc_mebeira_107 is a chat node. sc_mebeira_159 is a chat node. sc_mebeira_161 is a chat node. sc_mebeira_186 is a chat node. sc_mebeira_188 is a chat node. sc_mebeira_216 is a chat node. sc_mebeira_218 is a chat node. sc_mebeira_280 is a chat node. sc_mebeira_282 is a chat node. sc_mebeira_415 is a chat node. sc_mebeira_419 is a chat node. sc_mebeira_498 is a chat node. sc_mebeira_578 is a chat node. sc_mebeira_580 is a chat node. sc_mebeira_634 is a chat node. sc_mebeira_636 is a chat node. sc_mebeira_796 is a chat node. sc_mebeira_799 is a chat node. sc_mebeira_1071 is a chat node. sc_mebeira_1245 is a chat node. sc_mebeira_1247 is a chat node. sc_mebeira_1249 is a chat node. sc_mebeira_1316 is a chat node. sc_mebeira_1446 is a chat node. sc_mebeira_1517 is a chat node. sc_mebeira_1519 is a chat node. sc_mebeira_2524 is a chat node. sc_mebeira_2682 is a chat node. sc_mebeira_2767 is a chat node. sc_mebeira_2769 is a chat node. sc_mebeira_2858 is a chat node. sc_mebeira_3571 is a chat node. sc_mebeira_3665 is a chat node. sc_mebeira_3667 is a chat node. sc_mebeira_4339 is a chat node. sc_mebeira_4341 is a chat node. sc_mebeira_4343 is a chat node. sc_mebeira_4869 is a chat node. sc_mebeira_4871 is a chat node. sc_mebeira_4873 is a chat node. sc_mebeira_4875 is a chat node. sc_mebeira_4877 is a chat node. sc_mebeira_5923 is a chat node. sc_mebeira_6048 is a chat node. sc_mebeira_6050 is a chat node. sc_mebeira_6800 is a chat node. sc_mebeira_7183 is a chat node. sc_mebeira_7450 is a chat node. sc_mebeira_7723 is a chat node. sc_mebeira_7725 is a chat node. sc_mebeira_1023 is a chat node. sc_mebeira_1025 is a chat node. sc_mebeira_1027 is a chat node. sc_mebeira_2046 is a chat node. sc_mebeira_2198 is a chat node. sc_mebeira_2353 is a chat node. sc_mebeira_2816 is a chat node. 

Instead of giving text for sc_mebeira_1: say "You address Mebeira, your sorcerous mentor and sister-in-law.".
Instead of finding responses to sc_mebeira_1: link to sc_mebeira_2; link to sc_mebeira_4; if the player has the fresh belladonna plant and the player has the pinch of ash and the player has the handkerchief, link to sc_mebeira_6; link to sc_mebeira_16; link to sc_mebeira_18; link to sc_mebeira_20; link to sc_mebeira_22.

Instead of preparing sc_mebeira_2: do nothing.
Instead of giving link to sc_mebeira_2: say "'I have done everything I could, and yet my baby's future seems grim and dire!' ".
Instead of giving text for sc_mebeira_2: say "Mebeira shakes her head. 'Changing fate is never easy, little one. Maybe you'd better take the final step.'".
Instead of finding responses to sc_mebeira_2: link to sc_mebeira_4339; link to sc_mebeira_4341; link to sc_mebeira_4343.

Instead of preparing sc_mebeira_4: do nothing.
Instead of giving link to sc_mebeira_4: say "'The price has been exacted; I have been the agent of your revenge. Now you will give me my reward.' ".
Instead of giving text for sc_mebeira_4: say "'Tell me what happened! How did he react when you kissed him?'".
Instead of finding responses to sc_mebeira_4: link to sc_mebeira_3571; link to sc_mebeira_3665; link to sc_mebeira_3667.

Instead of preparing sc_mebeira_6: do nothing.
Instead of giving link to sc_mebeira_6: say "'Fresh belladonna, a pinch of ash and the tears of a woman. All the ingredients of your infernal spell have been assembled.' ".
Instead of giving text for sc_mebeira_6: say "Mebeira looks upon the bounty of your hunt with a mixture of fear and excitement. 'Yes, yes, you have assembled everything,' she mutters, still hesitating.".
Instead of finding responses to sc_mebeira_6: link to sc_mebeira_159; link to sc_mebeira_161; deactivate sc_mebeira_6; deactivate sc_mebeira_16.

Instead of preparing sc_mebeira_16: do nothing.
Instead of giving link to sc_mebeira_16: say "'What ingredients did we need again?' ".
Instead of giving text for sc_mebeira_16: say "Mebeira holds up three clawlike fingers. 'We need a pinch of ash. Just any ordinary ash will do.' Her thumb is retracted. 'We also need a fresh belladonna plant, like the dried piece I've given you but bigger and fresher.' Her index finger follows suit. 'And finally, we need the tears of a woman, shed in true grief. Do you understand?'".
Instead of finding responses to sc_mebeira_16: link to sc_mebeira_66; link to sc_mebeira_107.

Instead of giving link to sc_mebeira_18: say "'Mebeira, I need your help.' ".
Instead of giving text for sc_mebeira_18: say "'With what, little sister? I'd be very happy to teach you some more magic.'".
Instead of finding responses to sc_mebeira_18: link to sc_mebeira_5923.

Instead of giving link to sc_mebeira_20: say "'I have some questions.' ".
Instead of giving text for sc_mebeira_20: say "'Speak, little girl.'".
Instead of finding responses to sc_mebeira_20: link to sc_mebeira_4869; link to sc_mebeira_4871; link to sc_mebeira_4873; link to sc_mebeira_4875; link to sc_mebeira_4877.

Instead of giving link to sc_mebeira_22: say "Leave your thoughts unspoken. ".
Instead of giving text for sc_mebeira_22: say "You only stare at her.".

Instead of giving link to sc_mebeira_66: say "'I will not forget it again.' ".
Instead of giving text for sc_mebeira_66: say "Mebeira smiles at you; the indulgence of the master with the slow apprentice.".

Instead of giving link to sc_mebeira_107: say "'Right. Belladonna, ash and women's tears. I'll just go and seek a peddler then.' ".
Instead of giving text for sc_mebeira_107: say "Mebeira merely smiles her indulgent smile, the irony gliding off her like raindrops off an oiled spearpoint.".

Instead of giving link to sc_mebeira_159: say "'Are you sure you wish to go through with this?' ".
Instead of giving text for sc_mebeira_159: say "'I can't turn back now, can I?' Her question is not rhetorical; she is seeking affirmation, support, something to strengthen her resolve.".
Instead of finding responses to sc_mebeira_159: link to sc_mebeira_186; link to sc_mebeira_188.

Instead of giving link to sc_mebeira_161: say "'Don't tell me you're too cowardly to carry through with this. Remember what he did to you!' ".
Instead of giving text for sc_mebeira_161: say "'No, of course not. Not at all. No, no doubts now Mebeira, no doubts, and no qualms neither.' Mebeira shakes her head, then grabs the ingredients you brought and starts working.".
Instead of finding responses to sc_mebeira_161: link to sc_mebeira_2524.

Instead of giving link to sc_mebeira_186: say "'Yes, you can. You can still decide to forgive Alfred; the moves have not been made.' ".
Instead of giving text for sc_mebeira_186: say "'Forgive him? But I thought we decided...'".
Instead of finding responses to sc_mebeira_186: link to sc_mebeira_216; link to sc_mebeira_218.

Instead of giving link to sc_mebeira_188: say "'No. We have to go on to the bitter end. You and Henry deserve your revenge.' ".
Instead of giving text for sc_mebeira_188: say "'Yes, you are right. Quite right. We deserve our revenge.' Mebeira shakes her head, then grabs the ingredients you brought and starts working.".
Instead of finding responses to sc_mebeira_188: link to sc_mebeira_2524.

Instead of giving link to sc_mebeira_216: say "'Decided what? Decided to take fate in our own hands? Decided to free ourselves from the shackles in which our masters have kept us? Yes. But is revenge, when followed, not simply a new master, more cruel than our former?' ".
Instead of giving text for sc_mebeira_216: say "Your words shake Mebeira. [paragraph break]'But Henry? Won't I betray him?'".
Instead of finding responses to sc_mebeira_216: link to sc_mebeira_280; link to sc_mebeira_282.

Instead of giving link to sc_mebeira_218: say "'The emotions of the moment overcame us. What Alfred did to you was terrible, but it happened decades ago. May you not be merciful?' ".
Instead of giving text for sc_mebeira_218: say "Your words shake Mebeira. [paragraph break]'But Henry? Won't I betray him?'".
Instead of finding responses to sc_mebeira_218: link to sc_mebeira_280; link to sc_mebeira_282.

Instead of giving link to sc_mebeira_280: say "You smile a sad and wistful smile. 'Punishing Alfred will not bring Henry back. Be grateful with what you have. At your age, Mebeira, most women have lost their husbands; your plight is not different from theirs. Be content with your memories, cherish them, and do not mar their purity with black deeds.' ".
Instead of giving text for sc_mebeira_280: say "Tears appear in Mebeira's eyes. 'You are right,' she sighs. 'I had better let the matter rest and not comment on history in blood. You have prevented me from making a grievous mistake.'".
Instead of finding responses to sc_mebeira_280: link to sc_mebeira_415; link to sc_mebeira_419.

Instead of giving link to sc_mebeira_282: say "'He is dead, Mebeira, dead, and nothing will ever bring him back again. One cannot betray the dead, but one can hurt the living. To what effect? Nothing good will come of it.' ".
Instead of giving text for sc_mebeira_282: say "Tears appear in Mebeira's eyes. 'You are right,' she sighs. 'I had better let the matter rest and not comment on history in blood. You have prevented me from making a grievous mistake.'".
Instead of finding responses to sc_mebeira_282: link to sc_mebeira_415; link to sc_mebeira_419.

Instead of giving link to sc_mebeira_415: say "'I still need that amulet, though. My own task cannot wait.' ".
Instead of giving text for sc_mebeira_415: say "Mebeira jumps up as if stung by a viper. 'What?', she cries in dismay. 'Are you counseling peace for others and war for yourself?' [paragraph break]You feel that every word is crucial now.".
Instead of finding responses to sc_mebeira_415: link to sc_mebeira_634; link to sc_mebeira_636.

Instead of giving link to sc_mebeira_419: say "With an overwhelming feeling of resignation, you add: 'And please keep the amulet. I have decided that I will not raise the blade in self-defence.' ".
Instead of giving text for sc_mebeira_419: say "Mebeira gets off her tiger skin to hug you, but you feel strangely empty. All the possibilities have collapsed into a bleak certainty, and yet, all the alternatives seemed worse.".
Instead of finding responses to sc_mebeira_419: link to sc_mebeira_498; link to sc_mebeira_578; link to sc_mebeira_580; now the amulet is unavailable. [You can no longer get the amulet.]

Instead of giving link to sc_mebeira_498: say "'We never are the masters of our fates.' ".
Instead of giving text for sc_mebeira_498: say "Chained within the web of fate, we merely follow our predestined course. Blinded by pride we try to interfere, and thus heap scorn and sorrow on our heads. [paragraph break]You free yourself from Mebeira's tight embrace. There is nothing to do now but wait.".

Instead of giving link to sc_mebeira_578: say "'To change our fate invokes too high a price.' ".
Instead of giving text for sc_mebeira_578: say "Blinded by pride we attempt to increase our alloted portion, only to see it dwindle faster the more determined our attempt. Fate cannot be cheated of its due. [paragraph break]You free yourself from Mebeira's tight embrace. There is nothing to do now but wait.".

Instead of giving link to sc_mebeira_580: say "Cry. ".
Instead of giving text for sc_mebeira_580: say "Now the tears come, and never seem to stop. At last you free yourself from Mebeira's tight embrace. There is nothing to do now but wait.".

Instead of giving link to sc_mebeira_634: say "'The besieged does not choose war, but war is thrust upon him.' ".
Instead of giving text for sc_mebeira_634: say "'Yet the besieged can secure the peace by dropping his resistance. You bid me to live with the hand I was dealt by fate, and yet you try to change your own.'".
Instead of finding responses to sc_mebeira_634: link to sc_mebeira_796; link to sc_mebeira_799; link to sc_mebeira_1071.

Instead of giving link to sc_mebeira_636: say "'My problem with Harold is utterly unlike your quarrel with Alfred.' ".
Instead of giving text for sc_mebeira_636: say "'In what respects is it so different? It seems all quite the same to me.'".
Instead of finding responses to sc_mebeira_636: link to sc_mebeira_796; link to sc_mebeira_799; link to sc_mebeira_1071.

Instead of giving link to sc_mebeira_796: say "'I bid you to live with wrongs long past, not with the crimes that happen now.' ".
Instead of giving text for sc_mebeira_796: say "'So you think my griefs are less important than your own, eh?' Mebeira looks at you with hatred. 'Know that you will never get the amulet, unless you take it from my dead body!'".
Instead of finding responses to sc_mebeira_796: link to sc_mebeira_1245; link to sc_mebeira_1247; link to sc_mebeira_1249; now the amulet is unavailable. [You can no longer get the amulet.]

Instead of giving link to sc_mebeira_799: say "'I can resign myself to [italic type]my[roman type] fate, but I will not resign myself to that of my child! What mother would you have me be?' ".
Instead of giving text for sc_mebeira_799: say "Mebeira gives you a long hard look. 'You are right,' she finally says. 'Harold doesn't have the right to lash out against a child.' [paragraph break]Solemnly, she hands you the Amulet of Madness. 'Remember, it only works if you can get him to attack you while you wear it.'"; move the Amulet of Madness to the player.

Instead of giving link to sc_mebeira_1071: say "'The fire of youth still burns in me, while you have the serenity of age.' ".
Instead of giving text for sc_mebeira_1071: say "'So you are saying that I am too old for vengeance? You think that Mebeira is a frail carcass on the verge of death?' She looks at you with undisguised hatred. 'Know that you will never get the amulet, unless you take it from my dead body!'".
Instead of finding responses to sc_mebeira_1071: link to sc_mebeira_1245; link to sc_mebeira_1247; link to sc_mebeira_1249; now the amulet is unavailable. [You can no longer get the amulet.]

Instead of giving link to sc_mebeira_1245: say "'Give it to me, Mebeira. I will not shun violence.' ".
Instead of giving text for sc_mebeira_1245: say "Mebeira keeps her hand closed around the amulet. 'Never,' she hisses.".
Instead of finding responses to sc_mebeira_1245: link to sc_mebeira_1316; link to sc_mebeira_1446.

Instead of giving link to sc_mebeira_1247: say "'Give it to me, Mebeira, for the sake of our friendship.' ".
Instead of giving text for sc_mebeira_1247: say "'You think our friendship strong enough that I would kill my nephew? Think again, dim girl.'".
Instead of finding responses to sc_mebeira_1247: link to sc_mebeira_1245; link to sc_mebeira_1249.

Instead of giving link to sc_mebeira_1249: say "'Then all is lost. My child will die.' ".
Instead of giving text for sc_mebeira_1249: say "Pity does not move Mebeira's heart.".
Instead of finding responses to sc_mebeira_1249: link to sc_mebeira_1517; link to sc_mebeira_1519.

Instead of giving link to sc_mebeira_1316: say "(Attack her.) 'You made me do this.' ".
Instead of giving text for sc_mebeira_1316: say "[if the dagger is visible]You raise the ceremonial dagger, and before Mebeira can react, plunge it right into her heart.[otherwise]You grab a metal object off a shelf--some kind of telescope?--then smash Mebeira's head in with a savage blow.[end if] [paragraph break]But just before you hit her, the Amulet of Madness around her neck lights up with a savage flash and you fall backwards with a cry. 'Foolish girl!', are the last words you hear as your rational mind is obliterated."; wait for any key; end the game saying "Your child is born, then killed by Harold, just like your crystal ball told you. But you never become conscious of it, spending the rest of a long and peaceful life in blue forgetfulness.".

Instead of giving link to sc_mebeira_1446: say "'Then all is lost. My child will die.' ".
Instead of giving text for sc_mebeira_1446: say "Pity does not move Mebeira's heart.".
Instead of finding responses to sc_mebeira_1446: link to sc_mebeira_1517; link to sc_mebeira_1519.

Instead of giving link to sc_mebeira_1517: say "Attack her when she least suspects it. ".
Instead of giving text for sc_mebeira_1517: say "[if the dagger is visible]You raise the ceremonial dagger, and before Mebeira can react, plunge it right into her heart.[otherwise]You grab a metal object off a shelf--some kind of telescope?--then smash Mebeira's head in with a savage blow.[end if] [paragraph break]But just before you hit her, the Amulet of Madness around her neck lights up with a savage flash and you fall backwards with a cry. 'Foolish girl!', are the last words you hear as your rational mind is obliterated.";  wait for any key; end the game saying "Your child is born, then killed by Harold, just like your crystal ball told you. But you never become conscious of it, spending the rest of a long and peaceful life in blue forgetfulness.".

Instead of giving link to sc_mebeira_1519: say "Turn away, knowing that the chance to save your child has passed. ".
Instead of giving text for sc_mebeira_1519: say "Seeing what decision you have made, Mebeira hugs you, trying to comfort you in the moment of your grief. You feel strangely empty. All the possibilities have collapsed into a bleak certainty, and yet, all the alternatives seemed worse.".
Instead of finding responses to sc_mebeira_1519: link to sc_mebeira_498; link to sc_mebeira_578; link to sc_mebeira_580.

Instead of giving link to sc_mebeira_2524: say "Watch her. ".
Instead of giving text for sc_mebeira_2524: say "Mebeira hacks up the belladonna plant is little pieces, to which she adds several powders you have never seen before. She then rips up the handkerchief and mixes it with the belladonna.".
Instead of finding responses to sc_mebeira_2524: link to sc_mebeira_2682; remove the pinch of ash from play; remove the fresh belladonna plant from play; remove the handkerchief from play.

Instead of giving link to sc_mebeira_2682: say "Continue watching. ".
Instead of giving text for sc_mebeira_2682: say "Mebeira then sets fire to the whole mixture while chanting several runes you only half remember. After a few minutes the flames die down, and all that is left in the bowl is a singe drop of clear liquid. Mebeira then adds the pinch of ash, and a dark paste is the result. 'Now you have to smear this on your lips. Don't worry, it will be quite harmless to you.'".
Instead of finding responses to sc_mebeira_2682: link to sc_mebeira_2767; link to sc_mebeira_2769.

Instead of giving link to sc_mebeira_2767: say "'Yes. Let's do it.' Smear the paste on your lips. ".
Instead of giving text for sc_mebeira_2767: say "'You can hardly see it,' says Mebeira approvingly. 'Remember, you have to make King Alfred ask you to kiss him out of genuine affection, otherwise the spell will not work. Now, off you go. I will be eagerly awaiting your return!' She looks very excited."; now the player is poisoned.

Instead of giving link to sc_mebeira_2769: say "'Can't you just give me the amulet, without me going through this ordeal?' ".
Instead of giving text for sc_mebeira_2769: say "Mebeira shakes her head. 'First my revenge, then the amulet.'".
Instead of finding responses to sc_mebeira_2769: link to sc_mebeira_2858.

Instead of giving link to sc_mebeira_2858: say "'[italic type]Alea iacta est[roman type],' you mutter, and apply the paste to your lips. ".
Instead of giving text for sc_mebeira_2858: say "'You can hardly see it,' says Mebeira approvingly. 'Remember, you have to make King Alfred ask you to kiss him out of genuine affection, otherwise the spell will not work. Now, off you go. I will be eagerly awaiting your return!' She looks very excited."; now the player is poisoned.

Instead of giving link to sc_mebeira_3571: say "'He staggered backwards, a haunted look in his eyes. I heard him whispering Henry's name, and he seemed to be in obvious pain. You can be happy; I am sure you and Henry are avenged.' ".
Instead of giving text for sc_mebeira_3571: say "'Ha! Revenge! After all those years, finally, revenge!' Perverse glee pervades her words. 'You have certainly deserved this, little girl.' She hands you the Amulet of Madness. 'Remember, it only works if you can get Harold to attack you while you wear it.'"; move the Amulet of Madness to the player; deactivate sc_mebeira_4.

Instead of giving link to sc_mebeira_3665: say "'He staggered backwards, a haunted look in his eyes. I heard him whispering Henry's name, and he seemed to be in obvious pain. It was tragic really; I'm not sure we did right. Alfred suddenly seemed so frail, so vulnerable.' ".
Instead of giving text for sc_mebeira_3665: say "Mebeira looks abashed. 'You think that...' She looks to the ground, silently. Finally she speaks again. 'I guess it is too late to have regrets.' She hands you the Amulet of Madness."; move the Amulet of Madness to the player; deactivate sc_mebeira_4.

Instead of giving link to sc_mebeira_3667: say "'It has been done, let that be enough. Gloating does not become us.' ".
Instead of giving text for sc_mebeira_3667: say "'I suppose you are right.' Mebeira's glee seems to be dimmed by your harsh words. 'I guess I should give you this now.' She hands you the Amulet of Madness. 'Remember, it only works if you can get Harold to attack you while you wear it.'"; move the Amulet of Madness to the player; deactivate sc_mebeira_4.

Instead of giving link to sc_mebeira_4339: say "'I see. You might be right.' ".
Instead of giving text for sc_mebeira_4339: say "'It is your choice. I am not sure I would do it myself. The price is never small.'".

Instead of giving link to sc_mebeira_4341: say "'What do you mean?' ".
Instead of giving text for sc_mebeira_4341: say "'What I mean, my naive sister, is that you should strike a bargain with the powers of Hell.'".
Instead of finding responses to sc_mebeira_4341: link to sc_mebeira_4339; link to sc_mebeira_4343.

Instead of giving link to sc_mebeira_4343: say "'No. I will never do that.' ".
Instead of giving text for sc_mebeira_4343: say "'Then you can do nothing but wait, my dear, and see your fate materialise.'".

Instead of giving link to sc_mebeira_4869: say "'What do you think about Sir Charles?' ".
Instead of giving text for sc_mebeira_4869: say "'Ha, a fool, if ever I saw one! Loyal to a fault, of course. He has attached himself to Harold, and his whole self-image is built around that. Small men are wont to do that: identify themselves with something bigger to belittle the significance of their own fate.'".
Instead of finding responses to sc_mebeira_4869: link to sc_mebeira_4869; link to sc_mebeira_4871; link to sc_mebeira_4873; link to sc_mebeira_4875; link to sc_mebeira_4877.

Instead of giving link to sc_mebeira_4871: say "'What do you think about Prince Harold?' ".
Instead of giving text for sc_mebeira_4871: say "'Harold is a very dangerous man. Cold as ice. Cynical. He has chosen a path for himself and will not hesitate to destroy anyone who tries to block his way.'".
Instead of finding responses to sc_mebeira_4871: link to sc_mebeira_4869; link to sc_mebeira_4871; link to sc_mebeira_4873; link to sc_mebeira_4875; link to sc_mebeira_4877.

Instead of giving link to sc_mebeira_4873: say "'What do you think about Princess Amy?' ".
Instead of giving text for sc_mebeira_4873: say "'The little strumpet? She was a stronger woman once; I even taught her a small portion of the Art. She couldn't handle the harshness of life, and that is why she fled.'".
Instead of finding responses to sc_mebeira_4873: link to sc_mebeira_4869; link to sc_mebeira_4871; link to sc_mebeira_4873; link to sc_mebeira_4875; link to sc_mebeira_4877.

Instead of giving link to sc_mebeira_4875: say "'What do you think about King Alfred?' ".
Instead of giving text for sc_mebeira_4875: say "'He is... hard. Very capable as king, but with and iron heart unmoved by human feelings. He may yet give you cause to grieve.'".
Instead of finding responses to sc_mebeira_4875: link to sc_mebeira_4869; link to sc_mebeira_4871; link to sc_mebeira_4873; link to sc_mebeira_4875; link to sc_mebeira_4877.

Instead of giving link to sc_mebeira_4877: say "'Never mind, I came for something else.' ".
Instead of giving text for sc_mebeira_4877: say "'Do not be afraid; ask me what you wish.'".
Instead of finding responses to sc_mebeira_4877: link to sc_mebeira_2; link to sc_mebeira_4; if the player has the fresh belladonna plant and the player has the pinch of ash and the player has the handkerchief, link to sc_mebeira_6; link to sc_mebeira_16; link to sc_mebeira_18; link to sc_mebeira_20; link to sc_mebeira_22.

Instead of giving link to sc_mebeira_5923: say "'I divined the fate of my child, and discovered that Prince Harold is going to kill him. I need to find some way to stop him!' ".
Instead of giving text for sc_mebeira_5923: say "'Harold is going to kill your child? That is grave news indeed.' Mebeira sounds unhappy and reluctant. 'But I don't think it would be a good idea to lash out against him.'".
Instead of finding responses to sc_mebeira_5923: link to sc_mebeira_6048; link to sc_mebeira_6050.

Instead of giving link to sc_mebeira_6048: say "'Mebeira, your wisdom is known by all. Why isn't it a good idea to attempt to stop Prince Harold?' ".
Instead of giving text for sc_mebeira_6048: say "'He is too powerful. If your plan fails, he will be sure to kill not only your child but also everyone who helped you. And even if your plan succeeds, there will be many people trying to avenge him, probably including the King himself.'".
Instead of finding responses to sc_mebeira_6048: link to sc_mebeira_6800; link to sc_mebeira_7183.

Instead of giving link to sc_mebeira_6050: say "'Good idea? I don't care whether it is a good idea! I am going to save my child, if I have to walk to Hell and back!' ".
Instead of giving text for sc_mebeira_6050: say "'Calm down and listen to me, child. Harold is too powerful. If your plan fails, he will be sure to kill not only your child but also everyone who helped you. And even if your plan succeeds, there will be many people trying to avenge him, probably including the King himself.'".
Instead of finding responses to sc_mebeira_6050: link to sc_mebeira_6800; link to sc_mebeira_7183.

Instead of giving link to sc_mebeira_6800: say "'So what are [italic type]you[roman type] suggesting? To just let my fate be determined by those in power? To be servile, even when they wish to crush me underfoot?' ".
Instead of giving text for sc_mebeira_6800: say "'Only by bending does the tree survive the storm. Sometimes bending is the hardest thing to do, the most painful, and yet it is necessary. I believe that this is such a time.'".
Instead of finding responses to sc_mebeira_6800: link to sc_mebeira_7450.

Instead of giving link to sc_mebeira_7183: say "'And what is the alternative? To let my baby die?' ".
Instead of giving text for sc_mebeira_7183: say "'Only by sacrifice do we placate the gods. Sometimes a sacrifice is the hardest thing to do, the most painful, and yet it is necessary. I believe that this is such a time.'".
Instead of finding responses to sc_mebeira_7183: link to sc_mebeira_7450.

Instead of giving link to sc_mebeira_7450: say "'What do you know about that, Mebeira? Did you ever bend down in the storm? Did you ever sacrifice a child?' ".
Instead of giving text for sc_mebeira_7450: say "'A child, no. But when I was but little older than you are now, I sacrificed a lover to the powers that be. We sometimes must accept that our fathers, brothers, husbands do stake out our path.'".
Instead of finding responses to sc_mebeira_7450: link to sc_mebeira_7723; link to sc_mebeira_7725.

Instead of giving link to sc_mebeira_7723: say "'A lover? Who killed him?' ".
Instead of giving text for sc_mebeira_7723: say "She sighs. 'Your own beloved husband. My own beloved brother. Henry--he was called Henry, the man I loved--used to be a friend of Alfred's. But when he began to openly support the Charter, Alfred decided that he had to be removed.'".
Instead of finding responses to sc_mebeira_7723: link to sc_mebeira_1023; link to sc_mebeira_1025; link to sc_mebeira_1027.

Instead of giving link to sc_mebeira_7725: say "'A lover? What was his name?' ".
Instead of giving text for sc_mebeira_7725: say "She sighs. 'Henry--he was called Henry, the man I loved. Your own beloved husband, my own beloved brother killed him. They used to be friends, but when Henry began to openly support the Charter, Alfred decided that he had to be removed.'".
Instead of finding responses to sc_mebeira_7725: link to sc_mebeira_1023; link to sc_mebeira_1025; link to sc_mebeira_1027.

Instead of giving link to sc_mebeira_1023: say "'The Charter? What was that?' ".
Instead of giving text for sc_mebeira_1023: say "'It had to do with politics. It was a law that would give the nobles more autonomy, thus weakening the position of the King. Alfred was strongly opposed to it, and in the end he proved his point by winning several important battles. This made him especially unpopular in the southern provinces.'".
Instead of finding responses to sc_mebeira_1023: link to sc_mebeira_1025; link to sc_mebeira_1027; deactivate sc_mebeira_1023.

Instead of giving link to sc_mebeira_1025: say "'Why didn't you try to stop Alfred? Surely, with your powers you could have saved Henry...' ".
Instead of giving text for sc_mebeira_1025: say "Tears appear in Mebeira's eyes, and for the first time you feel sympathy for her. 'I could have stopped Alfred, certainly. I already had the Amulet of Madness in those days. But who was I to take the life of my king and brother? I did not dare to do it, and wasn't sure I wanted to.'".
Instead of finding responses to sc_mebeira_1025: link to sc_mebeira_1023; link to sc_mebeira_1027; deactivate sc_mebeira_1025.

Instead of giving link to sc_mebeira_1027: say "'But why didn't you ever avenge yourself? And Henry! Are you planning to just let Alfred get away with that heinous crime?' ".
Instead of giving text for sc_mebeira_1027: say "'I want to, I really do. I have thought about it for decades. I have nurtured my griefs and my hate; those wounds have never healed. I know exactly how I want to do it. But--like I said, our lords are far too powerful. The consequences would be dire.'".
Instead of finding responses to sc_mebeira_1027: link to sc_mebeira_2046.

Instead of giving link to sc_mebeira_2046: say "'I will help you exact your revenge if you will help me stop Prince Harold. What matter if dire consequences hit me twice?' ".
Instead of giving text for sc_mebeira_2046: say "'You would?' Mebeira's eyes shine with the possibility. 'All right. Your resolve awakens my own. If you help me, I will give you the Amulet of Madness. Prince Harold will not be very dangerous to you if he has gone insane!'".
Instead of finding responses to sc_mebeira_2046: link to sc_mebeira_2198.

Instead of giving link to sc_mebeira_2198: say "'And what do I need to do to help you?' ".
Instead of giving text for sc_mebeira_2198: say "'We will cast a Haunt on Alfred, so that he will have to look upon his misdeeds for the rest of his life. It is no more than he deserves!' Mebeira's viciousness is a little disconcerting. 'You must bring me the ingredients and then help me cast the spell. We need three things: a fresh belladonna plant; the tears of a woman; and a pinch of ash. Ash shouldn't be too hard to find. My own tears have unfortunately dried years ago, so you'll have to make yourself or some other woman cry. As to the belladonna, I will give you this dried-out piece; it may help you identify the real plant when you see it.'".
Instead of finding responses to sc_mebeira_2198: link to sc_mebeira_2353; link to sc_mebeira_2816.

Instead of giving link to sc_mebeira_2353: say "'A pinch of ash; a fresh belladonna plant; the tears of a woman. Good, I will return. And you'd better keep that Amulet of Madness ready, for that's the only reason I'm doing this.' ".
Instead of giving text for sc_mebeira_2353: say "Mebeira nods happily."; activate sc_mebeira_16; activate sc_mebeira_6; deactivate sc_mebeira_18; move dried piece to player.

Instead of giving link to sc_mebeira_2816: say "'A pinch of ash; a fresh belladonna plant; the tears of a woman. Good, I will return. We will make Alfred suffer for his crimes. Our revenge is near; we will wrestle our fate from their grasp!' ".
Instead of giving text for sc_mebeira_2816: say "Mebeira nods happily."; activate sc_mebeira_16; activate sc_mebeira_6; deactivate sc_mebeira_18; move dried piece to player.









Part 4 - The King's Rooms


Chapter 4.0 - The King's Hallway

A room called the King's Hallway is west of the corridors. "This is a barren hallway, just like all the other corridors in the castle; plain cold stone, and not an object of art and beauty in sight. A sturdy guard called Rudolph stands next to the solid doors that lead into the King's apartment to the west. The rest of the castle lies east."


Section 4.0.1 - General things

The stone is here. It is scenery. The description of the stone is "Hard and merciless. It has neither the potential of metal, nor the meaning of wood. You dislike it.".

The solid doors are here. They are scenery. The description of the solid doors is "They are made from wood reinforced with iron straps.". Instead of opening the solid doors, try going west. Instead of closing the solid doors, say "They are always closed, unless someone is passing through.".

Section 4.0.2 - Rudolph

A guard is a kind of man. A guard has a number called the state of suspicion. A guard usually has state of suspicion 1. Rudolph is a guard. Rudolph is here. Rudolph is scenery. Instead of talking to Rudolph, run a conversation from sc_guard_1. Instead of pushing Rudolph, say "He is stronger than you are.". Instead of pulling Rudolph, say "He is stronger than you are.". Instead of attacking Rudolph, say "That will get you into too much trouble.". Instead of stabbing Rudolph, say "That will get you into too much trouble.". Instead of kissing Rudolph, say "The class difference is too great.". Understand "guard" as rudolph.

The red nose is part of rudolph. Rule for deciding whether all includes the red nose: it does not. The description of the red nose is "Yes, it is quite red.".

The description of Rudolph is "Rudolph is strong, fiercely loyal and not too bright. For these three reasons, he is your husband's personal guard.".

Before going west from the King's Hallway:
 if the state of suspicion of Rudolph is less than 7, activate the Table of Rudolph Hints;
 if the state of suspicion of Rudolph is less than 7, say "'I am not allowed to let you pass, Queen Catherine,' the guard intervenes." instead;
 say "Rudolph sniggers as he lets you through.".


[Source created by DLGC from source file G:\Interactive Fiction\Dialogue\Dialogues\Fate_Rudolph.DCP]

sc_guard_1 is a chat node. sc_guard_2 is a chat node. sc_guard_5 is a chat node. sc_guard_7 is a chat node. sc_guard_804 is a chat node. sc_guard_9 is a chat node. sc_guard_11 is a chat node. sc_guard_47 is a chat node. sc_guard_70 is a chat node. sc_guard_116 is a chat node. sc_guard_118 is a chat node. sc_guard_193 is a chat node. sc_guard_265 is a chat node. sc_guard_267 is a chat node. sc_guard_354 is a chat node. sc_guard_356 is a chat node. sc_guard_358 is a chat node. sc_guard_497 is a chat node. sc_guard_969 is a chat node. sc_guard_971 is a chat node. sc_guard_1068 is a chat node. sc_guard_1122 is a chat node. sc_guard_1179 is a chat node. 

Instead of giving text for sc_guard_1: say "You approach Rudolph, the dutiful guard.".
Instead of finding responses to sc_guard_1: if the state of suspicion of Rudolph is 1, link to sc_guard_2; if the state of suspicion of Rudolph is 2, link to sc_guard_5; if the state of suspicion of Rudolph is 3, link to sc_guard_7; if the state of suspicion of Rudolph is greater than 3 and the state of suspicion of Rudolph is less than 7, link to sc_guard_804; if the state of suspicion of Rudolph is greater than 6, link to sc_guard_9; link to sc_guard_11.

Instead of giving link to sc_guard_2: say "'I would like to enter my husband's rooms, Rudolph.' ".
Instead of giving text for sc_guard_2: say "'I am sorry, Queen Catherine. I was told that no man is to be allowed to enter.'".
Instead of finding responses to sc_guard_2: link to sc_guard_47; link to sc_guard_70.

Instead of giving link to sc_guard_5: say "'I'm a woman, Rudolph. Surely you will let me pass?' ".
Instead of giving text for sc_guard_5: say "'No, I don't think I can do that,' Rudolph answers. 'When the King said that no man should be allowed to pass this door, he must have meant both men and women.'".
Instead of finding responses to sc_guard_5: link to sc_guard_265; link to sc_guard_267.

Instead of giving link to sc_guard_7: say "'Really, Rudolph, there is no harm in letting me pass.' ".
Instead of giving text for sc_guard_7: say "'I don't know, my lady. As I said, my daughter is very smart, and maybe you are more like my daughter than like my wife.'".
Instead of finding responses to sc_guard_7: link to sc_guard_969; link to sc_guard_971.

Instead of giving link to sc_guard_804: say "'Really, Rudolph, I am very silly.' ".
Instead of giving text for sc_guard_804: say "Rudolph looks doubtful. 'I'm not convinced, my lady. You don't [italic type]act[roman type] very silly.'".

Instead of giving link to sc_guard_9: say "'Do you finally understand that I'm a very silly person, Rudolph?' ".
Instead of giving text for sc_guard_9: say "'Yes lady, you are a very silly person, with all due respect. I'm sure letting you into the King's rooms will do no harm at all.' He sounds like an indulgent parent.".

Instead of giving link to sc_guard_11: say "Leave the guard in peace. ".
Instead of giving text for sc_guard_11: say "You ignore Rudolph for the time being.".

Instead of giving link to sc_guard_47: say "'Why? Is something secret going on in there?' ".
Instead of giving text for sc_guard_47: say "'Yes, my lady. The King is planning his military campaign against the southern rebels. He was very explicit: no man is allowed to enter.'".
Instead of finding responses to sc_guard_47: link to sc_guard_116; link to sc_guard_118.

Instead of giving link to sc_guard_70: say "'But I am the King's wife. He wouldn't want you to bar [italic type]my[roman type] way.' ".
Instead of giving text for sc_guard_70: say "'I'm sorry, my lady, but the King was quite explicit. He told me that no man should be allowed to enter while he was planning his military campaign.'".
Instead of finding responses to sc_guard_70: link to sc_guard_116; link to sc_guard_118.

Instead of giving link to sc_guard_116: say "'But I am no man.' ".
Instead of giving text for sc_guard_116: say "Rudolph looks confused. 'What do you mean, my Queen?'".
Instead of finding responses to sc_guard_116: link to sc_guard_193.

Instead of giving link to sc_guard_118: say "'I see. That is unfortunate.' ".
Instead of giving text for sc_guard_118: say "'I am glad you take it so well, my Queen.' He actually seems to respect you, but that's not stopping him from blocking your way.".

Instead of giving link to sc_guard_193: say "'What I mean, Rudolph, is that I am a woman. The King told you that no man should pass, but I am not a man but a woman. Logically, then, I should be allowed to pass.' ".
Instead of giving text for sc_guard_193: say "Rudolph thinks this over. 'You seem to be right,' he finally says. 'But maybe the King meant both men and women. Don't you think he would have mentioned women specifically if he wanted to exempt them from his command?'"; change the state of suspicion of Rudolph to 2.

Instead of giving link to sc_guard_265: say "'Let's think that through a bit more thoroughly, Rudolph. What was the reason behind the King's commands?' ".
Instead of giving text for sc_guard_265: say "'He is planning out his military campaign, my lady. He doesn't want anyone to see his maps and strategies.'".
Instead of finding responses to sc_guard_265: link to sc_guard_354; link to sc_guard_356; link to sc_guard_358.

Instead of giving link to sc_guard_267: say "'You can't be fooled, can you?' ".
Instead of giving text for sc_guard_267: say "'No lady.' He grins.".

Instead of giving link to sc_guard_354: say "'But of course there is a problem only when people who actually [italic type]have to fight[roman type] see those maps and strategies.' ".
Instead of giving text for sc_guard_354: say "'I don't think so, my lady. Anyone could tell the enemy about what he has seen on the maps, so I'm not allowed to let anyone pass.'".

Instead of giving link to sc_guard_356: say "'But of course there is a problem only when people who actually [italic type]understand such matters[roman type] see those maps and strategies.' ".
Instead of giving text for sc_guard_356: say "'I suppose that is true, my lady. There would be little harm in letting a small child or a dog pass.' He chuckles.".
Instead of finding responses to sc_guard_356: link to sc_guard_497.

Instead of giving link to sc_guard_358: say "'But of course there is a problem only when [italic type]the enemy[roman type] sees those maps and strategies.' ".
Instead of giving text for sc_guard_358: say "'That is true, my lady. But anyone could be a spy of the enemy, so I'm not allowed to let anyone pass.'".

Instead of giving link to sc_guard_497: say "'Or women,' you add. 'You know we don't understand difficult things like warfare.' ".
Instead of giving text for sc_guard_497: say "Rudolph frowns in thought. 'I suppose that is true,' he says doubtfully. 'But I'm not sure all women are stupid. My wife has no brains at all, but my little daughter is pretty smart. So I think I'd better not take any chances, and just keep all women out.'"; change the state of suspicion of Rudolph to 3.

Instead of giving link to sc_guard_969: say "'No, look. Where do you think children get their brains from?' ".
Instead of giving text for sc_guard_969: say "Rudolph looks perplexed. 'From their mother?', he finally ventures.".
Instead of finding responses to sc_guard_969: link to sc_guard_1068.

Instead of giving link to sc_guard_971: say "'Uhm, no, you see, women get more stupid as they get older.' ".
Instead of giving text for sc_guard_971: say "'Yes, well, perhaps... but you are still pretty young. I don't think I can let you pass, my lady.' Rudolph shakes his head.".

Instead of giving link to sc_guard_1068: say "'Exactly! So, what happens when a woman gets pregnant?' ".
Instead of giving text for sc_guard_1068: say "'Uh...' Rudolph looks stumped.".
Instead of finding responses to sc_guard_1068: link to sc_guard_1122.

Instead of giving link to sc_guard_1122: say "'Her brains slowly leak from her head into her child's head!' You beam on Rudolph. 'Now look at my belly.' You point downwards. 'How likely is it that I still have much brains left?' ".
Instead of giving text for sc_guard_1122: say "Rudolph stares at you and your belly in astonishment. 'Yes, but, but...'".
Instead of finding responses to sc_guard_1122: link to sc_guard_1179.

Instead of giving link to sc_guard_1179: say "(Smile) 'But what, Rudolph?' ".
Instead of giving text for sc_guard_1179: say "'But... Well! It sounds reasonable, but you know all these things, and you can wrap words around a man's head like the best of them. It seems to me that you are still pretty smart. I don't see you act silly, that's the problem! I can't be sure!'[paragraph break]Damn."; change the state of suspicion of Rudolph to 4.



Before waving hands in the King's hallway:
  if the state of suspicion of Rudolph is less than 4, say "Acting silly might be a good idea, but perhaps you should talk to Rudolph first." instead;
  if the state of suspicion of Rudolph is greater than 6, say "You have already convinced Rudolph of your silliness." instead;
  say "You wave your hands with a stupid grin on your face. ";
  now the state of suspicion of Rudolph is the state of suspicion of Rudolph + 1;
  if the state of suspicion of Rudolph is 5, say "Rudolph watches you in astonishment. (Let's try a little dance next.)" instead;
  if the state of suspicion of Rudolph is 6, say "Rudolph arches an eyebrow. It seems as if he is about to laugh. (Let's try a little dance next.)" instead;
  say "Rudolph starts laughing at your silly performance." instead.

Before dancing in the King's hallway:
  if the state of suspicion of Rudolph is less than 4, say "Acting silly might be a good idea, but perhaps you should talk to Rudolph first." instead;
  if the state of suspicion of Rudolph is greater than 6, say "You have already convinced Rudolph of your silliness." instead;
  say "You do a parody of a dance, moving very slowly due to your pregnancy. ";
  now the state of suspicion of Rudolph is the state of suspicion of Rudolph + 1;
  if the state of suspicion of Rudolph is 5, say "Rudolph watches you in astonishment. (Maybe adding some singing will convince him.)" instead;
  if the state of suspicion of Rudolph is 6, say "Rudolph arches an eyebrow. It seems as if he is about to laugh. (Maybe adding some singing will convince him.)" instead;
  say "Rudolph starts laughing at your silly performance." instead.

Before singing in the King's hallway:
  if the state of suspicion of Rudolph is less than 4, say "Acting silly might be a good idea, but perhaps you should talk to Rudolph first." instead;
  if the state of suspicion of Rudolph is greater than 6, say "You have already convinced Rudolph of your silliness." instead;
  say "In an awful voice, you start singing nonsense rhymes. ";
  now the state of suspicion of Rudolph is the state of suspicion of Rudolph + 1;
  if the state of suspicion of Rudolph is 5, say "Rudolph watches you in astonishment. (It seems to be working. Let's jump a bit as well.)" instead;
  if the state of suspicion of Rudolph is 6, say "Rudolph arches an eyebrow. It seems as if he is about to laugh. (It seems to be working. Let's jump a bit as well.)" instead;
  say "Rudolph starts laughing at your silly performance." instead.

Before jumping in the King's hallway:
  if the state of suspicion of Rudolph is less than 4, say "Acting silly might be a good idea, but perhaps you should talk to Rudolph first." instead;
  if the state of suspicion of Rudolph is greater than 6, say "You have already convinced Rudolph of your silliness." instead;
  say "You hop about a bit, very, very carefully. It looks positively stupid. ";
  now the state of suspicion of Rudolph is the state of suspicion of Rudolph + 1;
  if the state of suspicion of Rudolph is 5, say "Rudolph watches you in astonishment. (Let's try a little dance next.)" instead;
  if the state of suspicion of Rudolph is 6, say "Rudolph arches an eyebrow. It seems as if he is about to laugh. (Let's try a little dance next.)" instead;
  say "Rudolph starts laughing at your silly performance." instead.

Instead of giving the teddy bear to Rudolph:
  say "Just showing it to him might be good enough.".

Before showing the teddy bear to Rudolph:
  if the state of suspicion of Rudolph is less than 4, say "Acting silly might be a good idea, but perhaps you should talk to Rudolph first." instead;
  if the state of suspicion of Rudolph is greater than 6, say "You have already convinced Rudolph of your silliness." instead;
  say "You hug the teddy bear with a vacuous smile on your face. ";
  now the state of suspicion of Rudolph is the state of suspicion of Rudolph + 1;
  if the state of suspicion of Rudolph is 5, say "Rudolph watches you in astonishment. (Let's try waving at him next.)" instead;
  if the state of suspicion of Rudolph is 6, say "Rudolph arches an eyebrow. It seems as if he is about to laugh. (Let's try waving at him next.)" instead;
  say "Rudolph starts laughing at your silly performance." instead.




Chapter 4.1 - The King's Parlour

A room called the King's Parlour is west of the King's Hallway. "A large table covered with maps features prominently in the spacious room; your husband, the King, walks around the table with [if the king is unhaunted]a scowl on his face, presumably planning a military campaign[otherwise]a haunted look in his eyes[end if]. Three large pictures adorn the walls, while doors lead east to the corridors and north to the King's bedroom."



Every turn: if the King's Parlour is visited and the King's Parlour was not visited, say "'What are you doing here, woman?', your husband asks, but he doesn't seem to be very interested in your answer.".

Section 4.1.1 - General stuff

The King's table is a thing. It is here. It is scenery. It is a supporter. Understand "large" as the King's table. The description of the King's table is "Nearly six by two metres and made of mahogany, this thing must have been assembled in the room itself. Its entire surface is currently covered by maps representing various parts of the kingdom.".

The maps are on the King's table. The maps are scenery. Instead of taking the maps, say "Quite probably, your husband would not be happy with that. It might also rouse suspicion.". The description of the maps is "The maps show all the different parts of the kingdom, but most of them appear to be of your home province of Gondola--which is also the main focus of the insurrection. Estimates of the locations and strengths of various armies and armed groups have been written on them, and detailed tactical plans for a campaign against Gondola have been sketched in with pencil. The broad outlines of the plan are evident even to your untrained eye.". The plan is part of the maps. Understand "plans" as the plan. Understand "outlines" as the plan. The description of the plan is "King Alfred seems to be planning to send a small force along the main roads to Gondina, the seat of your family's power, which is presumably to serve as bait for Duke Albricht's forces in the lowlands. As soon as Duke Albricht pursues this army, his main force will cross the hills just west of Gras and make straight for the important ports of Calay and Gendo. Given Albricht's lack of patience, such a tactic might well work.".

The King's portrait is a painting. The King's landscape is a painting. The King's war scene is a painting. The King's portrait, the King's landscape and the King's war scene are here. The description of the King's portrait is "An old, hard man in dinted armour grimly stares out of the frame. It is King Alfred I, your husband's father.". The description of the King's war scene is "It is almost identical to the painting that hangs in your room. A grisly scene, full of dying horses and people, clashing bands of armed men and a river running red with blood. A town to the right side of the painting is already ablaze. In the middle your husband is fighting your father in mounted combat--and you know all too well how that fight ended.". The description of the King's landscape is "The capital of the kingdom, looking ominously down from the hills on which it lies.".



Section 4.1.2 - The King

The King is a man. He is scenery. The King is in the King's Parlour. Understand "Alfred" as the King. Understand "husband" as the King. The King is either haunted or unhaunted. The king is unhaunted. The indefinite article is "the". The description of the king is "Your husband, thirty years your senior. [if the King is unhaunted]He married you for political reasons, hoping that your proud family and their vassals would be appeased by the gesture. Apparently, they were not; only six years have passed since your father was killed, but a new rebellion has already broken out.[otherwise]He looks about furtively, an almost fearful look in his eyes.[end if]".

Instead of kissing the king: say "[if the player is poisoned]The spell will only work if you get the King to ask you for a kiss first--out of genuine affection.[otherwise]You kiss the King. He hardly seems to notice.[end if]".

Instead of attacking the king: say "That would get you into too much trouble too soon.".

Instead of talking to the king when the king is unhaunted: run a conversation from sc_king_1.
Instead of talking to the king when the king is haunted: say "He doesn't react to your words, but looks at something--or someone--you cannot see."

[Source created by DLGC from source file G:\Interactive Fiction\Dialogue_4_6\Dialogues\Fate_King.DCP]

sc_king_1 is a chat node. sc_king_3 is a chat node. sc_king_10 is a chat node. sc_king_21 is a chat node. sc_king_31 is a chat node. sc_king_44 is a chat node. sc_king_46 is a chat node. sc_king_77 is a chat node. sc_king_79 is a chat node. sc_king_120 is a chat node. sc_king_146 is a chat node. sc_king_148 is a chat node. sc_king_180 is a chat node. sc_king_210 is a chat node. sc_king_334 is a chat node. sc_king_336 is a chat node. sc_king_446 is a chat node. sc_king_526 is a chat node. sc_king_608 is a chat node. sc_king_743 is a chat node. sc_king_745 is a chat node. sc_king_747 is a chat node. sc_king_1143 is a chat node. sc_king_1411 is a chat node. sc_king_1640 is a chat node. sc_king_1702 is a chat node. sc_king_1765 is a chat node. sc_king_1959 is a chat node. sc_king_1961 is a chat node. sc_king_2102 is a chat node. sc_king_2104 is a chat node. sc_king_2253 is a chat node. sc_king_2255 is a chat node. sc_king_2257 is a chat node. 

Instead of giving text for sc_king_1: say "You approach your husband, the King.".
Instead of finding responses to sc_king_1: link to sc_king_3; link to sc_king_10; link to sc_king_21.

Instead of giving link to sc_king_3: say "'Alfred, my lord! An attempt on my life has been made!' ".
Instead of giving text for sc_king_3: say "'An attempt on your life? Are you certain?' The King sounds a little disconcerted. 'Come, tell me about it.'".
Instead of finding responses to sc_king_3: link to sc_king_31; deactivate sc_king_3.

Instead of giving link to sc_king_10: say "'My lord and king, forgive me for intruding on your privacy, but I really need to talk to you about Prince Harold.' ".
Instead of giving text for sc_king_10: say "'About Prince Harold? What is it about Prince Harold that is important enough to make you come to me when you should be in your own room, keeping warm and not exerting yourself?'".
Instead of finding responses to sc_king_10: link to sc_king_180; link to sc_king_210; deactivate sc_king_3; deactivate sc_king_10.

Instead of giving link to sc_king_21: say "'I heard rumours about my mother being involved in a rebellion against the kingdom. Is it true?' ".
Instead of giving text for sc_king_21: say "'As far as I can tell, it is true. Reports are sparse, but it is quite unlikely that so many southern lords would dare to raise their banner in defiance if they did not know they were backed by your mother.'".
Instead of finding responses to sc_king_21: link to sc_king_1640; link to sc_king_1702; link to sc_king_1765.

Instead of giving link to sc_king_31: say "'A deadly viper had been put in my bed. If I had not discovered it by accident, it would have bitten me when I went to sleep.' ".
Instead of giving text for sc_king_31: say "'Extraordinary,' you husband muses. 'But what makes you think that it was an attempt to kill you? The animal may have come from the gardens.'".
Instead of finding responses to sc_king_31: link to sc_king_44; link to sc_king_46.

Instead of giving link to sc_king_44: say "'Pardon, my lord, but that is not possible. This viper was of a kind I have never seen before anywhere in our kingdom. It must have been brought here on purpose.' ".
Instead of giving text for sc_king_44: say "'I see. Then this is a grave matter indeed. I will instruct my spymaster to conduct a thorough investigation; rest assured, my love, that we will find the killer.'".
Instead of finding responses to sc_king_44: link to sc_king_77; link to sc_king_79.

Instead of giving link to sc_king_46: say "'That is true, my lord. I hadn't thought about it that way.' ".
Instead of giving text for sc_king_46: say "'Well, good. We can let the matter rest, then. I will instruct the gardeners to hunt down any vipers that are still within the castle walls.'".

Instead of giving link to sc_king_77: say "'That won't be necessary, my lord. I know who the killer is.' ".
Instead of giving text for sc_king_77: say "'What? Who is it?'".
Instead of finding responses to sc_king_77: link to sc_king_120; deactivate sc_king_3.

Instead of giving link to sc_king_79: say "'I thank you for your concern, my lord. I will be able to rest easy now.' ".
Instead of giving text for sc_king_79: say "'Yes, see to it that you do. Our child could come any moment now.' He smiles at you, quite affectionally, then turns back to his maps.".

Instead of giving link to sc_king_120: say "'It is Prince Harold, my lord. He tried to kill me in order to get my baby out of the way. He is sure to try again.' ".
Instead of giving text for sc_king_120: say "The King looks at you for a long time. His face is grave, but there is a touch of sadness in his eyes.".
Instead of finding responses to sc_king_120: link to sc_king_146; link to sc_king_148.

Instead of giving link to sc_king_146: say "'My lord, don't you believe me?' ".
Instead of giving text for sc_king_146: say "'No. I mean, yes, I do believe you. In fact, I know it is true.'".
Instead of finding responses to sc_king_146: link to sc_king_334; link to sc_king_336.

Instead of giving link to sc_king_148: say "Wait until he speaks. ".
Instead of giving text for sc_king_148: say "'Yes, well, there is no use hiding it from you, I suppose. It is true.'".
Instead of finding responses to sc_king_148: link to sc_king_334; link to sc_king_336.

Instead of giving link to sc_king_180: say "'He tried to kill me! And now he is going to kill our baby!' ".
Instead of giving text for sc_king_180: say "The King looks at you for a long time. His face is grave, but there is a touch of sadness in his eyes.".
Instead of finding responses to sc_king_180: link to sc_king_146; link to sc_king_148.

Instead of giving link to sc_king_210: say "'I have reasons to believe that he desires to kill both me and our child.' ".
Instead of giving text for sc_king_210: say "The King looks at you for a long time. His face is grave, but there is a touch of sadness in his eyes.".
Instead of finding responses to sc_king_210: link to sc_king_146; link to sc_king_148.

Instead of giving link to sc_king_334: say "'You already knew it? Then why didn't you do something about it?' ".
Instead of giving text for sc_king_334: say "'I did not know that Harold was planning to make an attempt on your life, and if I had, I would have stopped him. But it is not unknown to me that Harold is planning to kill my as yet unborn son.'".
Instead of finding responses to sc_king_334: link to sc_king_446.

Instead of giving link to sc_king_336: say "(Begging.) 'You [italic type]must[roman type] protect me!' ".
Instead of giving text for sc_king_336: say "'And I will. There will be no more attempts on your life. It has never been my wish to drag you, who has already suffered enough, into this snake pit.'".
Instead of finding responses to sc_king_336: link to sc_king_446.

Instead of giving link to sc_king_446: say "'And the baby? Are you going to protect our baby against Harold?' ".
Instead of giving text for sc_king_446: say "The King looks away in obvious distress. 'No.' he says at last. 'I will not protect our child.'".
Instead of finding responses to sc_king_446: link to sc_king_526; link to sc_king_608.

Instead of giving link to sc_king_526: say "'But why not? Why on earth wouldn't you stop Harold from killing your own child?' ".
Instead of giving text for sc_king_526: say "'Because the child is a threat to the kingdom. Harold is doing what [italic type]I[roman type] should be doing.'".
Instead of finding responses to sc_king_526: link to sc_king_743; link to sc_king_745; link to sc_king_747.

Instead of giving link to sc_king_608: say "(Full of hatred:) 'Then I will have to protect him myself.' ".
Instead of giving text for sc_king_608: say "'Please, my girl, accept the things you cannot change,' the King tries. You are too angry to answer.".

Instead of giving link to sc_king_743: say "'A threat to the kingdom? How could a baby be a threat to the kingdom?' ".
Instead of giving text for sc_king_743: say "'He is exactly what the rebels need: a prince of royal blood and of the blood of Gondola, and far too young to say anything against them. They will proclaim him King, and thus legitimise their cause. It is a move that could bring many nobles over to their side.'".
Instead of finding responses to sc_king_743: link to sc_king_745; link to sc_king_747; deactivate sc_king_743.

Instead of giving link to sc_king_745: say "'Harold is doing what [italic type]you[roman type] should be doing?' ".
Instead of giving text for sc_king_745: say "'Yes. I should place the good of the kingdom above my own emotions. But... my love, I cannot. I cannot give the order to kill our child, even though I know it to be necessary. As long as the young prince is alife, he will only be the cause of strife and war. But I cannot do it.'".
Instead of finding responses to sc_king_745: link to sc_king_743; link to sc_king_747; deactivate sc_king_745.

Instead of giving link to sc_king_747: say "'Threat or no threat, how can you stand by and wait until your own child is killed?' ".
Instead of giving text for sc_king_747: say "'It will be hard. But I cannot protect him without betraying my kingdom, so I [italic type]will not[roman type] protect him, no matter the pain it causes me!'".
Instead of finding responses to sc_king_747: link to sc_king_1143; link to sc_king_1411; link to sc_king_608.

Instead of giving link to sc_king_1143: say "'I beg you, please, please, reconsider!' ".
Instead of giving text for sc_king_1143: say "'No woman, no. I will not.'".

Instead of giving link to sc_king_1411: say "'I see. This is a sad day indeed.' ".
Instead of giving text for sc_king_1411: say "'Yes, my wife, yes, it is. I wish I could shield you from the evils of power, but I cannot.'".

Instead of giving link to sc_king_1640: say "'Are you going to wage war against them?' ".
Instead of giving text for sc_king_1640: say "'If they continue to provoke me, yes, and it will have to be a bloody war as well. I have no choice.'".
Instead of finding responses to sc_king_1640: link to sc_king_1640; link to sc_king_1702; link to sc_king_1765.

Instead of giving link to sc_king_1702: say "'But I thought you married me so my family would not revolt again?' ".
Instead of giving text for sc_king_1702: say "'That was the idea, originally. Apparently, though, they love you less than I hoped. But do not be afraid--I will not harm you.'".
Instead of finding responses to sc_king_1702: link to sc_king_1959; link to sc_king_1961.

Instead of giving link to sc_king_1765: say "'What a mess.' ".
Instead of giving text for sc_king_1765: say "The King sighs. 'What a mess indeed.'".

Instead of giving link to sc_king_1959: say "(Sadly.) 'They don't love me, you don't love me, nobody loves me. What am I but a single pawn in a game that's full of queens?' ".
Instead of giving text for sc_king_1959: say "The King looks at you with tenderness and pity. 'If I had known that marrying you would not help my politics, I would not have taken you from your parental home. I am very sorry for everything you have had to endure.'".
Instead of finding responses to sc_king_1959: link to sc_king_2102; link to sc_king_2104.

Instead of giving link to sc_king_1961: say "(Gratefully.) 'I thank you, my Lord.' ".
Instead of giving text for sc_king_1961: say "'Well, it's the least I can do for you.'".

Instead of giving link to sc_king_2102: say "Look down, sadly. ".
Instead of giving text for sc_king_2102: say "'Come on,' says the King. 'Don't cry. Come, come here, give me a kiss.'".
Instead of finding responses to sc_king_2102: if the player is poisoned, link to sc_king_2253; if the player is not poisoned, link to sc_king_2255; link to sc_king_2257.

Instead of giving link to sc_king_2104: say "Try to smile in gratitude. ".
Instead of giving text for sc_king_2104: say "'Come on,' says the King. 'Don't cry. Come, come here, give me a kiss.'".
Instead of finding responses to sc_king_2104: if the player is poisoned, link to sc_king_2253; if the player is not poisoned, link to sc_king_2255; link to sc_king_2257.

Instead of giving link to sc_king_2253: say "Kiss Alfred. ".
Instead of giving text for sc_king_2253: say "The moment your lips touch his skin, the spell takes hold and a sudden change comes over him. 'What is happening?' He staggers backwards. 'Henry? It cannot be! I... I did not want to... Believe me, you must believe me... Henry, listen. I had to do it, but I've never forgiven myself for it... But...' [paragraph break]The King shakes his head, looks around fearfully, then returns to his maps. A haunted look remains in his eyes."; now the king is haunted; activate sc_mebeira_4.

Instead of giving link to sc_king_2255: say "Kiss Alfred. ".
Instead of giving text for sc_king_2255: say "You kiss your husband on the cheek, and he hugs you for a moment.".

Instead of giving link to sc_king_2257: say "Turn away. ".
Instead of giving text for sc_king_2257: say "'If you don't want to...', the King says hesitantly as you turn away.".





Chapter 4.2 - The King's Bedroom

A room called the King's Bedroom is north of the King's Parlour. "You have spent the night here only a handful of times, as the King prefers solitude. The bedroom isn't luxurious, but it is comfortable. The four-poster bed is large and just soft enough, while the hearth seems big enough to warm half the castle, though there is no fire in it now. The only exit leads back south to the parlour."

Section 4.2.1 - General things

The four-poster bed is here. It is scenery. It is an enterable container. "You have often wondered whether you are happy or sad that the King almost never lets you sleep here."

An open enterable container called the hearth is here. It is scenery. Understand "fireplace" as the hearth. The description of the hearth is "The fire has been left to die in the hearth. All you see are [list of things in the hearth].". Some cold ashes are in the hearth. The indefinite article is "some". Understand "ash" as the cold ashes when the pinch of ash is not visible. The description of the ashes is "A heap of grey flakes is all that is left of a proud tree, consumed in the flames of your husband's fire.".

Instead of taking the ashes: 
  if the location of the pinch of ash is a room, say "It is not your intention to strew ashes everywhere." instead;
  move the pinch to the player;
  say "You take a pinch of ash from the hearth.".

A pinch of ash is a thing. The description of the pinch of ash is "Grey flakes are all that is left of a proud tree, consumed in the flames of your husband's fire.".

A thing called the bellows is here. The indefinite article is "a pair of". The description of the bellows is "A common pair of bellows, crafted out of wood and leather. If you pump them, air comes out of the pointy end.". Instead of squeezing the bellows: try pumping the bellows. Instead of pushing the bellows: try pumping the bellows. Instead of pulling the bellows: try pumping the bellows.

Instead of pumping the bellows in the King's Bedroom, say "There are only cold ashes in the hearth. Using the bellows on those would merely create a mess.".



Part 5 - Prince Harold's Rooms

Chapter 5.1 - Prince Harold's Parlour

A room called Prince Harold's Parlour is north of the corridors. "Dark wood and dark stone dominate the room that Prince Harold calls his own, creating a solemn atmosphere that would be almost church-like if hope and gratitude weren't so obviously lacking. The rest of the castle lies to the south. Amy's room lies to the west."

Section 5.1.1 - General things

The dark wood is here. It is scenery. "Heavy hues of brown, some almost verging on the black.". The dark stone is here. It is scenery. "The entire castle is built of these dark grey stones, but Prince Harold has done nothing to lighten up his room."


Section 5.1.2 - Harold

Prince Harold is a man. "[if Prince Harold is sane]Prince Harold is walking around briskly.[otherwise]Prince Harold is hopping about like a frog, licking the floor now and then.[end if]". Prince Harold is here. Prince Harold is either targeted or untargeted. Prince Harold is untargeted. [You can only leave your apartment when Harold is targeted.] Prince Harold is either mad or sane. Prince Harold is sane. The description of Prince Harold is "[if Prince Harold is sane and Amy is not befriended]Perhaps Harold is a handsome man, but the utter lack of compassion evident in his hard face--accentuated by a slim silver crown--makes you shiver. He is the source of your problems[end if][if Prince Harold is sane and Amy is befriended]Perhaps Harold is a handsome man, but the utter lack of compassion evident in his hard face--accentuated by a slim silver crown--makes you shiver. It is hard to believe Amy's claim that he was once kind and generous[end if][if Harold is mad]Harold looks at you with vacant, happy eyes. 'Badabadoodle?', he ventures. One thing is certain: he will not trouble you anymore[end if][if Harold is mad and Harold wears the crown]. The slim silver crown makes a drunken angle with his head[end if]."

Prince Harold wears a silver crown. The description of the silver crown is "A simple band of silver with only a few precious gems set in it, this crown is actually quite tasteful.". Instead of taking the silver crown when Harold is sane: say "'What are you doing woman? Get your hands off my crown!'". Instead of taking the crown when Harold is mad and Harold wears the crown: say "'Gimme!', Harold squeals, but he has forgotten the crown the moment after."; move the crown to the player.

Instead of attacking Harold:
  if Harold is sane, say "A pregnant woman versus a seasoned warrior? You are bound to fail." instead;
  if Harold is mad, say "You could easily kill Harold now--but to what purpose? He is no more than a child".

Instead of petting Harold when Harold is mad: say "You lightly pat Harold on his head. He smiles at you.".
Instead of kissing Harold when Harold is mad: say "You kiss Harold on the brow. 'There's a good boy,' you say, pinching his cheek. He looks up at you with vacant eyes.".

Instead of giving the teddy bear to Harold when Harold is mad: say "You offer the teddy bear to Harold, who smiles broadly and starts playing with it. After a minute or so he gives it back to you, with a grateful look in his eyes.".

Instead of talking to Prince Harold:
  if Harold is sane, run a conversation from sc_harold_1 instead;
  say "'Gaba? Gaboo gabadoo?', is all you can get him to say.".

[Source created by DLGC from source file G:\Interactive Fiction\Dialogue_4_6\Dialogues\Fate_Harold.DCP]

sc_harold_1 is a chat node. sc_harold_3 is a chat node. sc_harold_6 is a chat node. sc_harold_8 is a chat node. sc_harold_22 is a chat node. sc_harold_24 is a chat node. sc_harold_47 is a chat node. sc_harold_74 is a chat node. sc_harold_107 is a chat node. sc_harold_129 is a chat node. sc_harold_131 is a chat node. sc_harold_180 is a chat node. sc_harold_182 is a chat node. sc_harold_184 is a chat node. sc_harold_335 is a chat node. sc_harold_371 is a chat node. sc_harold_373 is a chat node. sc_harold_453 is a chat node. sc_harold_455 is a chat node. sc_harold_457 is a chat node. sc_harold_677 is a chat node. sc_harold_679 is a chat node. sc_harold_681 is a chat node. sc_harold_935 is a chat node. sc_harold_937 is a chat node. 

Instead of giving text for sc_harold_1: say "A disapproving scowl appears on Harold's face as you approach him.".
Instead of finding responses to sc_harold_1: link to sc_harold_3; link to sc_harold_6; link to sc_harold_8.

Instead of giving link to sc_harold_3: say "'You tried to kill me.' ".
Instead of giving text for sc_harold_3: say "'You rather overestimate yourself, woman.'".
Instead of finding responses to sc_harold_3: link to sc_harold_22; link to sc_harold_24; deactivate sc_harold_3.

Instead of giving link to sc_harold_6: say "'I know you are planning to kill my baby.' ".
Instead of giving text for sc_harold_6: say "Prince Harold smiles coldly. 'Now why would I want to do that?'".
Instead of finding responses to sc_harold_6: link to sc_harold_107; deactivate sc_harold_3; deactivate sc_harold_6.

Instead of giving link to sc_harold_8: say "'I need to tell you something, Harold. You will never be a competent king.' ".
Instead of giving text for sc_harold_8: say "He smirks. 'Says the little girl.'".
Instead of finding responses to sc_harold_8: link to sc_harold_335; link to sc_harold_371; link to sc_harold_373.

Instead of giving link to sc_harold_22: say "'Well, you [italic type]under[roman type]estimate me if you think you can just deny your crimes.' ".
Instead of giving text for sc_harold_22: say "'I deny nothing. I confess nothing. I only want you to go away, because I have [italic type]important[roman type] matters to attend to.'".
Instead of finding responses to sc_harold_22: link to sc_harold_47; link to sc_harold_74.

Instead of giving link to sc_harold_24: say "'So you deny that you had someone put a deadly viper in my bed?' ".
Instead of giving text for sc_harold_24: say "'I deny nothing. I confess nothing. I only want to you to go away, because I have [italic type]important[roman type] matters to attend to.'".
Instead of finding responses to sc_harold_24: link to sc_harold_47; link to sc_harold_74.

Instead of giving link to sc_harold_47: say "'I know you are planning to kill my baby as well.' ".
Instead of giving text for sc_harold_47: say "Prince Harold smiles coldly. 'Now why would I want to do that?'".
Instead of finding responses to sc_harold_47: link to sc_harold_107; deactivate sc_harold_6.

Instead of giving link to sc_harold_74: say "'Bastard!' ".
Instead of giving text for sc_harold_74: say "Harold raises an eyebrow, but doesn't retort.".

Instead of giving link to sc_harold_107: say "'Because you are afraid. You are afraid of an unborn child; afraid that he will take your place as king.' ".
Instead of giving text for sc_harold_107: say "'If I am as fearful as you think, it seems I have an excellent reason to take his little life. I don't understand what you're blaming me for.'".
Instead of finding responses to sc_harold_107: link to sc_harold_129; link to sc_harold_131.

Instead of giving link to sc_harold_129: say "'Please! Don't be so cruel! How could you kill a child who has never done you harm?' ".
Instead of giving text for sc_harold_129: say "'[italic type]If[roman type] I indeed plan to kill him, as you say I do, then I supposedly believe that he may do me harm in the future. Know this, woman.' He leans towards you. 'Fate cheated me once. I will not allow it to cheat me again.'".
Instead of finding responses to sc_harold_129: if Amy is befriended, link to sc_harold_180; link to sc_harold_182; link to sc_harold_184.

Instead of giving link to sc_harold_131: say "'You will cease your attempts, or I will personally destroy you.' ".
Instead of giving text for sc_harold_131: say "'This is, I think, where I say: do your worst. So, do your worst, woman.' Harold grins, but there is no laughter in his eyes.".

Instead of giving link to sc_harold_180: say "'But remember your own child, Catherine...' ".
Instead of giving text for sc_harold_180: say "Before you can finish your sentence, Harold has slapped you hard across the face. 'Never say that name again!', he hisses between his teeth. He takes a deep breath, then adds, a little calmer: 'Even if it is your own.'".

Instead of giving link to sc_harold_182: say "'I beg you, I am willing to make any compromise! Banish me, keep me locked up in a remote fortress, but please, please do not kill my child.' ".
Instead of giving text for sc_harold_182: say "'I am not interested in making compromises, woman, and you are in no position to force me to.' He turns away.".

Instead of giving link to sc_harold_184: say "'But Fate will always have its due!' ".
Instead of giving text for sc_harold_184: say "'You think so? We will see.' He turns away.".

Instead of giving link to sc_harold_335: say "'You're a little girl yourself!' ".
Instead of giving text for sc_harold_335: say "His laughter is mocking and without humour.".

Instead of giving link to sc_harold_371: say "'No, let's face it. You are utterly incompetent as a king, because you cannot perform a king's prime duty.' ".
Instead of giving text for sc_harold_371: say "'And what would that be? Girl.'".
Instead of finding responses to sc_harold_371: link to sc_harold_453; link to sc_harold_455; link to sc_harold_457.

Instead of giving link to sc_harold_373: say "Smirk back. ".
Instead of giving text for sc_harold_373: say "You both smirk at each other for a while. This is getting you nowhere.".

Instead of giving link to sc_harold_453: say "'Make your subjects love you.' ".
Instead of giving text for sc_harold_453: say "'Love is good, but fear is better. Don't worry about the security of my position, little bird.'".

Instead of giving link to sc_harold_455: say "'Produce an heir.' ".
Instead of giving text for sc_harold_455: say "Harold's face becomes red. 'What are you implying?!'".
Instead of finding responses to sc_harold_455: if the player is wearing the Amulet of Madness, link to sc_harold_677; if the player is wearing the Amulet of Madness, link to sc_harold_679; if the player is not wearing the Amulet of Madness, link to sc_harold_681.

Instead of giving link to sc_harold_457: say "'Fight like a man on the field of battle.' ".
Instead of giving text for sc_harold_457: say "'Your attempt to enrage me is [italic type]so[roman type] transparent. I'm not going to fall into your trap, little spider.'".

Instead of giving link to sc_harold_677: say "'Well, you don't have any children, do you? You probably cannot even get your dick up.' ".
Instead of giving text for sc_harold_677: say "'Ha!' Harold laughs in your face. 'You little perverted whore, talking about things you know nothing of.  Now go away.'".

Instead of giving link to sc_harold_679: say "'The only time you managed to get a woman pregnant, the child died within weeks. Your seed must be incredibly weak.' ".
Instead of giving text for sc_harold_679: say "'WHAT?' Harold roars.".
Instead of finding responses to sc_harold_679: link to sc_harold_935; link to sc_harold_937.

Instead of giving link to sc_harold_681: say "It occurs to you that saying anything else will probably end with Harold beating you up. Not a pretty prospect. ".
Instead of giving text for sc_harold_681: say "You decide not to enrage Harold just yet.".

Instead of giving link to sc_harold_935: say "'What I'm saying is that Catherine's death is all your fault, little boy.' ".
Instead of giving text for sc_harold_935: say "'You will pay for that!' Harold grabs his sword and lunges at you! [paragraph break]But just before he hits you, the Amulet of Madness emits a blinding flash of light. Harold screams and drops his sword. 'No, my mind, my... badadoo... help me I... bada... da... da doo diddle...' He looks around as if he sees the world for the first time. 'Da doodle?' he wonders, then starts licking the floor. 'Doodle!'."; now Prince harold is mad; remove the Amulet of Madness from play; now fate is banished.

Instead of giving link to sc_harold_937: say "'Uhm, nothing.' Go away. ".
Instead of giving text for sc_harold_937: say "You quickly leave Harold's presence."; move player to corridors.



Chapter 5.2 - Amy's room

A room called Amy's Room is west of Prince Harold's Parlour. "Fluffy--that is the word that comes to mind first. Cushions--mostly red, pink and gold--are everywhere, almost hiding the large bed from view. Amy's devotion to personal beauty is obvious: shelves with creams, lotions and other kinds of make-up line the walls, and her vanity table is both the largest and the best equipped you know. An open doorway leads back to the east." [GOED MAKEN!]

Section 5.2.1 - General things

The large bed is here. It is enterable, scenery and supporter. The description of the large bed is "Amy's marriage bed is supposedly more cozy than your own.". Instead of entering the large bed, say "Lying down in a snakeless bed sounds inviting, but you have more pressing concerns.".

The shelves are here. They are a supporter. They are scenery. The description of the shelves is "They are chock-full of small bottles, jars, tubes, boxes and other small containers. All of it seems rather pointless in this life-and-death situation.". 

The creams are here. They are scenery. The description is "All of that seems rather pointless in this life-and-death situation.". Instead of taking the creams, say "All of that seems rather pointless in this life-and-death situation.". Understand "jars" as the creams. Understand "tubes" as the creams.

The lotions are here. They are scenery. The description is "All of that seems rather pointless in this life-and-death situation.". Instead of taking the lotions, say "All of that seems rather pointless in this life-and-death situation.". Understand "bottles" as the lotions.

The other kinds of make-up are here. They are scenery. The description is "All of that seems rather pointless in this life-and-death situation.". Instead of taking the other kinds of make-up, say "All of that seems rather pointless in this life-and-death situation.". Understand "boxes" as the make-up. 

Some cushions are here. They are scenery. They are enterable and supporter. Understand "cushion" as the cushions. The description of the cushions is "Soft cushions and pillows lie in piles on the floor and on the bed, making it possible for Amy and all her women friends to come together, relax and talk about nothing. The cushions have striking colours that make your eyes hurt, or so you tell yourself.". Instead of entering the cushions, say "Relax and talk about nothing. No. Your waters could break any moment, and you still have [italic type]so much[roman type] to do.". [This could be changed when fate can no longer be changed.]Instead of taking the cushions, say "They would spoil the austere stylishness of your own rooms.".

The doorway is here. It is scenery. The description of the doorway is "A simple stone doorway, leading back to Prince Harold's parlour.".

The vanity table is here. It is scenery and supporter. The gilded mirror is part of the vanity table. The white marble top is part of the vanity table. The description of the vanity table is "More make-up clutters the vanity table. It is a grand specimen, made of dark, heavily decorated wood, with a top of white marble and a gilded mirror attached to it." The description of the gilded mirror is "You are young and comely; although you would find yourself more comely if you were not close to nine months pregnant. The red dress with the pearls that you are wearing already had to be adjusted thrice.". The description of the marble top is "Red lines on white form symbols no human will ever understand.".



Section 5.2.2 - The glass cabinet and the red vial of perfume

A glass cabinet is here. It is an openable closed transparent container. It is fixed in place. The description of the glass cabinet is "A small cabinet made of glass sits in one of the room's corners.".

The red vial is a vial. The red vial is in the glass cabinet. The description of the red vial is "A posh red vial filled with perfume.". Instead of smelling the red vial: say "It is much stronger and sweeter than what you use.".

Instead of opening the glass cabinet when Amy is aware: say "Amy will certainly become suspicious if you start rummaging through her cabinets.".
Instead of inserting something into the glass cabinet when Amy is aware: say "Amy will certainly become suspicious when you start rummaging through her cabinets.".
Instead of removing something from the glass cabinet when Amy is aware: say "Amy will certainly become suspicious when you start rummaging through her cabinets.".



Section 5.2.3 - Amy

Amy is a woman. "[if Amy is distracted]Amy is sitting behind her vanity table, checking out her make-up.[end if][if Amy is nonangry and Amy is not distracted]Amy is reclining on the bed. She looks at you with a vague smile.[end if][if Amy is angry and Amy is not distracted]Amy is reclining on the bed. She angrily glares at you.[end if]". Amy is here. Amy is either distracted or aware. Amy is aware. Amy is either befriended or indifferent. Amy is indifferent. Amy is either angry or nonangry. Amy is nonangry. The description of Amy is "[if Amy is indifferent]Amy is the poster child of superficial court life: always talking about fashion and parties, always busy with her looks, always complaining about how she isn't as beautiful as she used to be when she was your age.[otherwise]Hidden tragedy lurks beneath her smooth exterior, you now know. Come to think of it, perhaps there always was a certain sadness in her words and gestures.[end if]".

Instead of talking to Amy:
  if Amy is angry, say "She looks away in anger. Luckily, her distemper never lasts long." instead;
  if Amy is aware, run a conversation from sc_amy_1 instead;
  if Amy is distracted, say "She is busy behind the mirror.".

Every turn:
  if Amy is distracted for only four turns begin;
   if the player is in Amy's room, say "'Well, I think I fixed that,' Amy announces.";
   now Amy is aware;
  end if.

Every turn:
  if Amy is angry for only ten turns begin;
   now Amy is nonangry;
  end if.

The handkerchief is a thing. The description of the handkerchief is "This is Amy's light blue handkerchief, still wet from her tears.".

[Source created by DLGC from source file G:\Interactive Fiction\Dialogue\Dialogues\Fate_Amy.DCP]

sc_amy_1 is a chat node. sc_amy_2 is a chat node. sc_amy_4 is a chat node. sc_amy_6 is a chat node. sc_amy_22 is a chat node. sc_amy_47 is a chat node. sc_amy_85 is a chat node. sc_amy_87 is a chat node. sc_amy_184 is a chat node. sc_amy_265 is a chat node. sc_amy_313 is a chat node. sc_amy_315 is a chat node. sc_amy_425 is a chat node. sc_amy_640 is a chat node. sc_amy_678 is a chat node. sc_amy_680 is a chat node. sc_amy_876 is a chat node. sc_amy_961 is a chat node. sc_amy_1060 is a chat node. sc_amy_1113 is a chat node. sc_amy_1115 is a chat node. sc_amy_1384 is a chat node. sc_amy_1443 is a chat node. 

Instead of giving text for sc_amy_1: say "[if Amy is indifferent]Amy regards you with either boredom or lack of intellect--you are not sure which.[otherwise]Amy regards you with a friendly smile.[end if]".
Instead of finding responses to sc_amy_1: if harold is sane, link to sc_amy_2; link to sc_amy_4; link to sc_amy_6.

Instead of giving link to sc_amy_2: say "'Amy, I really need you to talk to Prince Harold on my behalf.' ".
Instead of giving text for sc_amy_2: say "'Talk to Harold? About what?'".
Instead of finding responses to sc_amy_2: deactivate sc_amy_2; link to sc_amy_876; link to sc_amy_961.

Instead of giving link to sc_amy_4: say "'Could I talk to you for a moment, Amy, about some private things?' ".
Instead of giving text for sc_amy_4: say "'Private things? Just women together, eh?' You almost expect her to giggle, but she doesn't.".
Instead of finding responses to sc_amy_4: link to sc_amy_85; link to sc_amy_87.

Instead of giving link to sc_amy_6: say "'Is that a new kind of make-up you're wearing?' ".
Instead of giving text for sc_amy_6: say "Amy brings a hand to her face. 'Why, no,' she says, somewhat disconcerted. 'Is something wrong?'".
Instead of finding responses to sc_amy_6: link to sc_amy_22; link to sc_amy_47.

Instead of giving link to sc_amy_22: say "'Well, I don't want to hurt your feelings, but you do look like a corpse that has been dead for three weeks.' ".
Instead of giving text for sc_amy_22: say "Amy smirks and motions you to go away. 'Right. Off you go, little fashion queen.'"; now Amy is angry; move the player to Prince Harold's Parlour.

Instead of giving link to sc_amy_47: say "Frown. 'Wrong, wrong... I wouldn't exactly call it wrong... it's just... I don't know...' ".
Instead of giving text for sc_amy_47: say "Before you can finish your sentence, Amy runs to her mirror, intently searching for flaws in her appearance."; now Amy is distracted.

Instead of giving link to sc_amy_85: say "(Sincere) 'I am afraid of giving birth.' ".
Instead of giving text for sc_amy_85: say "'Oh, poor girl. Come on, sit down, here, next to me. We really do need to talk, with your mother being so far away and everything.' Genuine concern sounds in her voice.".
Instead of finding responses to sc_amy_85: link to sc_amy_265.

Instead of giving link to sc_amy_87: say "Look at your belly. 'Do you think I will get my old figure back again, afterwards?' ".
Instead of giving text for sc_amy_87: say "'Certainly!', Amy exclaims, and the two of you spend several minutes chatting about the ins and outs of post-natal cosmetics. 'Just one thing about your dress,' she says when you rise to go.".
Instead of finding responses to sc_amy_87: link to sc_amy_184.

Instead of giving link to sc_amy_184: say "'Yes?' ".
Instead of giving text for sc_amy_184: say "'You've lost a pearl,' she whispers in your ear.".

Instead of giving link to sc_amy_265: say "'Does it hurt as much as they say? And didn't Lady Esmeralda die giving birth, last autumn? Maybe I will die as well!' ".
Instead of giving text for sc_amy_265: say "Amy puts an arm around you. 'It can hurt, yes, but you're not going to die. Look at you--you're a strong, healthy girl, whereas everyone knows that Esmeralda was sickly. Really, you've got nothing to worry about.'".
Instead of finding responses to sc_amy_265: link to sc_amy_313; link to sc_amy_315.

Instead of giving link to sc_amy_313: say "'Oh Amy, will you be there and hold my hand? I'm so alone in this castle. The King barely looks at me, Prince Harold hates me, Mebeira treats me like an indulgent grandmother treats her grandchild, and even the servants act like I don't exist! I'm so alone...' ".
Instead of giving text for sc_amy_313: say "'I will be there child, I will be there.' She embraces you while you let your tears stream freely. Now and then, she pats you on the back and mutters a few reassuring words."; now Amy is befriended.
Instead of finding responses to sc_amy_313: link to sc_amy_425.

Instead of giving link to sc_amy_315: say "Nod your thanks, then rise to go. ".
Instead of giving text for sc_amy_315: say "Amy watches you go with pity in her eyes.".

Instead of giving link to sc_amy_425: say "'Amy, why don't you have any children?' ".
Instead of giving text for sc_amy_425: say "A sad smile appears on her lips. 'I had a child one, a little girl. Her name was Catherine, just like yours.'".
Instead of finding responses to sc_amy_425: link to sc_amy_640.

Instead of giving link to sc_amy_640: say "Now it is your turn to hold her hand. 'How... how did she die?' ".
Instead of giving text for sc_amy_640: say "'Cot death.' Tears appear in Amy's eyes. 'Unexplained; unexplainable. Just cruel fate.' She is silent for a long time, while tears continue to stream down her face. Finally, she takes a handkerchief from one of her pockets and dries her tears.".
Instead of finding responses to sc_amy_640: link to sc_amy_678; link to sc_amy_680; deactivate sc_amy_4; move the handkerchief to Amy's Room.

Instead of giving link to sc_amy_678: say "Wait. ".
Instead of giving text for sc_amy_678: say "After a while she goes on, dropping the handkerchief to the ground. 'You know, all this...'--she gestures at her dress, her mirror, her cosmetics--'it is just something to keep me occupied, so I don't have to see her lying in my arms, cold and motionless.' [paragraph break]'It really changed me, it did. And it changed Harold as well. He used to be carefree, open and happy, but when Catherine died he became cold and harsh to the world. Now he only shows his real feelings to me, in our most intimate moments.'[paragraph break]She sits awhile in thought. 'Yes. Well.' She sighs. 'Not the kind of story I should be telling you when you're expecting.'".

Instead of giving link to sc_amy_680: say "'I'm very sorry for you.' ".
Instead of giving text for sc_amy_680: say "After a while she goes on, dropping the handkerchief to the ground. 'You know, all this..'--she gestures at her dress, her mirror, her cosmetics--'it is just something to keep me occupied, so I don't have to see her lying in my arms, cold and motionless.' [paragraph break]'It really changed me, it did. And it changed Harold as well. He used to be carefree, open and happy, but when Catherine died he became cold and harsh to the world. Now he only shows his real feelings to me, in our most intimate moments.'[paragraph break]She sits awhile in thought. 'Yes. Well.' She sighs. 'Not the kind of story I should be telling you when you're expecting.'".

Instead of giving link to sc_amy_876: say "'I believe he is planning to kill my child.' ".
Instead of giving text for sc_amy_876: say "She just stares at you.".
Instead of finding responses to sc_amy_876: link to sc_amy_1060.

Instead of giving link to sc_amy_961: say "'I think he made an attempt on my life.' ".
Instead of giving text for sc_amy_961: say "She just stares at you.".
Instead of finding responses to sc_amy_961: link to sc_amy_1060.

Instead of giving link to sc_amy_1060: say "'No, really. I need you to talk to him and make sure he leaves me and my child alone.' ".
Instead of giving text for sc_amy_1060: say "Amy looks uncomfortable. Her words come slowly. 'It sounds like politics, girl. I never involve myself in politics--those are powers beyond a woman's control.'".
Instead of finding responses to sc_amy_1060: link to sc_amy_1113; link to sc_amy_1115.

Instead of giving link to sc_amy_1113: say "'But it is my future and that of my child which are at stake! Surely I need to influence that!' ".
Instead of giving text for sc_amy_1113: say "'Child, listen to me. It is a very hard lesson which you have to learn, but learn it you must.' Genuine pathos fills her words. 'You cannot fight fate. You can either learn to accept it, or become a victim of grief and despair. Don't try to fight; try to accept.'".
Instead of finding responses to sc_amy_1113: link to sc_amy_1384; link to sc_amy_1443.

Instead of giving link to sc_amy_1115: say "'I see. Yes, yes, I see. You are truly a gutless wench, with all your pathetic talk about clothing and perfume and with your dainty finger nails and [italic type]everything[roman type]!' ".
Instead of giving text for sc_amy_1115: say "Amy's face goes deadly pale, anger and grief fighting for control. She turns away from you without another word."; now Amy is angry.

Instead of giving link to sc_amy_1384: say "'No. I'll never listen to such defeatism.' ".
Instead of giving text for sc_amy_1384: say "'No. No, you wouldn't. May your fate be merciful.'".

Instead of giving link to sc_amy_1443: say "'Maybe... maybe you are right.' ".
Instead of giving text for sc_amy_1443: say "'It is cruel advice I give you, but it is the only advice I have. Just go back to your rooms, and await your fate. Try to accept it.' [italic type](Remember: by WAITing in your den, you can have the current fate materialise.)[roman type]".





Part 6 - The Garden

Chapter 6.1 - The enclosed garden


A room called the Enclosed Garden is down of the corridors. "High walls rise up to the overcast sky on all sides. That the garden is nevertheless charming is a compliment to the skill of the royal gardeners. A small square of grass in the middle is adorned by a marble statue, while rose beds lie all around. Stairs lead up to the castle proper."

Before going up in the garden: say "Ascending the stairs is a decidedly unpleasant task. Yet although you have to stop and regain your breath several times, you finally reach the corridors.".


The sky is here. It is scenery. "Grey clouds obscure the sun. You long for the weather of sweet Gondola, so far away now in space and possibility." Understand "clouds" as the sky.

The walls are here. They are scenery. "Ugly grey stone, mighty and invincible."

The small square of grass is here. It is scenery. "Perhaps three by three meters, the square of grass is surprisingly green." Instead of cutting the grass: say "You know of no spell which features blades of grass.". Instead of taking the grass: say "You know of no spell which features blades of grass.".

The stairs are here. They are scenery. "Steep carven steps lead back up.".

The statue is here. It is scenery. "A young woman immortalised in stone. Her nakedness is naive and innocent rather than erotic. You have no idea whether she is a mythical figure, an allegory, a goddess or the sole remaining memory of a real person.". Instead of taking the statue: say "It would look very beautiful in your apartment, that is true, but it is much too heavy for you.".



Section 6.1.1 - The roses

Some roses are here. They are scenery. "Roses: red, yellow, pink, purple, white, and an endless variety of shades between these. They are the pride of the royal gardens, and their chief beauty."

Understand "rose" as the roses when the rose is not visible. Understand "bed" and "beds" and "flowers" as the roses. Instead of taking the roses, say "Grabbing one of the thorny rosebushes and attempting to pull it out of the ground would prove to be a very painful failure.". Instead of pulling the roses, try taking the roses. Instead of cutting the roses when the location of the rose is a room, say "You already have a rose, and object to mutilating these splendid plants without a good reason.". Instead of cutting the roses when the player does not have the dagger, say "You'll need your dagger to do that.". Instead of cutting the rose when in the garden: try cutting the roses. Instead of smelling the roses: say "Most have a lovely fragrance.".

Instead of cutting the roses:
  move rose to the player;
  say "You carefully cut one of the roses.".

The rose is a thing. The description of the rose is "It is a yellow rose, turning orange towards the centre and white towards the tips of the petals. Thorny, but beautiful." Instead of burning the rose: say "That might be a good idea, but you'll have to take a more detailed approach.". Understand "flower" as the rose. Instead of smelling the rose: say "The sweet, pleasing smell reminds you of your mother's garden.".

Instead of inserting the rose into the braziers:
  move the rose to the braziers;
  if the dried piece of belladonna is not touchable and the shriveled carrot is not touchable, say "In order to speak the Plant Growth spell, you will need a piece of the plant you wish to grow." instead;
  say "You lay the rose onto one of the braziers. The heat makes the flower turn brown slowly, but is apparently not great enough to make it catch fire.";
  now the description of the rose is "The rose is slightly charred from lying on the brazier.".

Instead of pumping the bellows in the sorcerer's den:
  if the rose is not in the braziers, say "You carefully use the bellows to make the coals in the braziers glow more fiercely orange. As soon as you stop, they return to their previous mellow redness." instead;
  if the dried piece of belladonna is not touchable and the shriveled carrot is not touchable, say "That might work, but you seem to lack a piece of the plant you wish to grow." instead;
  if the dried piece of belladonna is touchable and the shriveled carrot is not touchable, try growing the belladonna instead;
  if the dried piece of belladonna is not touchable and the shriveled carrot is touchable, try growing the carrot instead;
  run a conversation from sc_plant_1.

sc_plant_1, sc_plant_2, sc_plant_3 are chat nodes.

Instead of giving text for sc_plant_1: say "Do you want to grow the belladonna or the carrot?"
Instead of finding responses to sc_plant_1: link to sc_plant_2; link to sc_plant_3.

Instead of giving link to sc_plant_2: say "The belladonna. ".
Instead of giving text for sc_plant_2: try growing the belladonna.

Instead of giving link to sc_plant_3: say "The carrot.".
Instead of giving text for sc_plant_3: try growing the carrot.

Growing the belladonna is an action applying to nothing. Growing the carrot is an action applying to nothing.

Instead of growing the belladonna:
  say "You carefully use the bellows to make the coals in the braziers glow more fiercely orange. After a few minutes of concentrated work, the rose suddenly catches fire. You hold up the piece of dried belladonna and speak the Secret Seventh Rune of Trismegistos. Behold! Within seconds, you have a full-grown and fresh, if somewhat pale belladonna plant in your hand.";
  remove the rose from play;
  remove the dried piece of belladonna from play;
  move the fresh belladonna to the player.

Instead of growing the carrot:
  say "You carefully use the bellows to make the coals in the braziers glow more fiercely orange. After a few minutes of concentrated work, the rose suddenly catches fire. You hold up the shriveled carrot and speak the Secret Seventh Rune of Trismegistos. Behold! Within seconds, you have a fresh and brightly orange carrot in your hand.";
  remove the rose from play;
  remove the shriveled carrot from play;
  move the fresh carrot to the player.

The fresh belladonna plant is a thing. The description of the fresh belladonna plant is "It looks so innocent, and yet it is so deadly.".

Section 6.1.2 - The gardener

The gardener is a servant. The gardener is here. "An old gardener is shoveling in a remote corner." The description of the gardener is "He is a very old man, stooped and nearsighted. With his speed, shoveling the garden will take years.". Instead of talking to the gardener: say "He doesn't seem to hear you. He is probably deaf as well.". Instead of showing or giving the dried piece of belladonna to the gardener: say "He looks away from the evil plant in disgust.". Instead of showing or giving the fresh belladonna plant to the gardener: say "He looks away from the evil plant in disgust.".

The indefinite article of the gardener's body is "the".

Section 6.1.3 - The goat

A goat is here. It is either wild or tame. It is wild. It is an animal. "[if the goat can see the shriveled carrot]A scraggy goat is looking disdainfully at a shriveled carrot[end if][if the goat can see the shriveled carrot and the player has the carrot] which you are carrying around[end if][if the goat cannot see the carrot]A scraggy goat is standing here, clearly bored[end if].". The description of the goat is "It is a very young, small goat, [if the goat is wild]which looks at you with evident disdain[otherwise]which regards you with a thankful stare[end if].".

Instead of cutting the goat: try attacking the goat. Instead of stabbing the goat: try attacking the goat.

Instead of taking the goat: 
  if the goat is wild, say "It struggles far too much, especially since you are not at your most nimble." instead;
  say "The goat lets itself be picked up without protestation. It even licks your hand.";
  move the goat to the player.

Persuasion rule for asking the goat to try doing something: say "It doesn't seem to understand you." instead.

Instead of showing something (called the thingy) to the goat: try giving the thingy to the goat.

Instead of giving the snake stick to the goat:
  say "You show the snake stick to the goat, which looks at it curiously. The goat seems fixated by the stare of the snake's eyes, and after half a minute, it suddenly falls over, having gone completely rigid.";
  remove goat from play;
  now the shriveled carrot is not scenery;
  move hypnotised goat to location.

Instead of giving the shriveled carrot to the goat: say "It looks even more disdainfully.".

Instead of giving the dried piece of belladonna to the goat: say "It looks at the poisonous plant in horror.". Instead of giving the fresh belladonna plant to the goat: say "It looks at the poisonous plant in horror.".

Instead of giving the fresh carrot to the goat: 
  say "You show the fresh carrot to the goat, which immediately comes over to you and eats it. It bleats in thanks.";
  remove the fresh carrot from play;
  now the goat is tame.

The hypnotised goat is a thing. The description of the hypnotised goat is "When you let it look at the snake stick, the goat has turned into a rigid statue. It still feels warm, though, and its heart is beating."

The shriveled carrot is in the garden. It is scenery. The description of the shriveled carrot is "It looks distinctly unappetising.". Before taking the shriveled carrot for the first time: now the shriveled carrot is not scenery. Instead of eating the shriveled carrot: say "It looks disgusting.".

The fresh carrot is a thing. The description of the fresh carrot is "Big, orange, and probably delicious." Instead of eating the fresh carrot: say "No, you have no appetite at all.".


Part 7 - The End


Chapter 7.1 - Giving birth


When Giving Birth begins:
  repeat with item running through things on the mahogany beauty table begin;
    remove the item from play;
  end repeat;
  repeat with item running through things in the bedchamber begin;
    remove the item from play;
  end repeat;
  repeat with item running through things in the player begin;
    remove the item from play;
  end repeat;
  repeat with item running through things in the bed begin;
    remove the item from play;
  end repeat;
  move the bed to the bedchamber; now the bed is open; move the mahogany beauty table to the bedchamber; move the cage to the bedchamber; move the portrait of your mother to the bedchamber; move onlookers to the bedchamber;
  if amy is befriended, move amy to the bedchamber; now the initial appearance of amy is "Amy sits next to you, holding your hand."; now the description of amy is "She smiles at you, encouraging you to push harder.";
  if amy is not befriended, move the midwife to the bedchamber;
  now the description of the player is "You are lying on your bed, giving birth to your first child.";
  if fate is banished or fate is glorious_kingdom or fate is glorious_rebel or fate is glorious_free or fate is rebel_warned or fate is happy begin;
      say "The King bursts into your den, accompanied by several guards. 'You foul witch!', he screams at you. 'What have you done with my son?' ";
      wait for any key;
      say "But before you can answer, you suddenly feel a warm liquid running down your legs. 'He is coming...', you gasp.[paragraph break]";
      wait for any key;
      say "Then everything happens in a confused rush. The King is screaming, people are running, people carry you to your bed...";
      move the player to the bed;
  end if;
  if fate is viper_bite begin;
      say "You wearily decide to stop worrying and go to bed, come what may.[paragraph break]";
      wait for any key;
      say "As you step into the bed, a poisonous viper--left there by an agent of Prince Harold--bites you, killing you instantly.";
      end the game saying "You and your child have been assassinated.";
  end if;
  if fate is killed_by_Harold begin;
      say "You sit down and wait, wait for whatever the future will bring you. The first few hours, it brings nothing. Then, finally, it brings the breaking of the waters; it brings--your child...[paragraph break]";
      wait for any key;
      say "You call out, and everything happens in a confused rush. People are running, people carry you to you bed...";
      move the player to the bed;
  end if.

onlookers are a person. They are scenery. The indefinite article of onlookers is "some". The description of onlookers is "Women--both servants and nobles--are walking in and out of your bedchamber. The birth of a prince is an important event, which everyone wishes to attend.". Understand "people" as onlookers.


Before doing anything other than looking, waiting, examining or birthing during Giving Birth:
  if the beauty table is in the bedchamber, say "'Stay calm,' [if Amy is befriended]Amy[otherwise]the midwife[end if] says. 'Just push.'" instead.

Instead of waiting during Giving Birth:
  say "Waiting is not enough. You will have to push.".

The midwife is a female servant. "A midwife sits next to you." The description of the midwife is "She talks to you in a firm voice, encouraging you to push harder.".

Before birthing for the first time during Giving Birth:
  say "The contractions now come every one or two minutes, and are much more painful than they were before. As your baby is moving through the birth canal, you feel the overwhelming urge to push, needing no encouragement." instead.

Before birthing for the second time during Giving Birth:
  say "Steadying your breathing is challenging as the contractions become stronger and even more painful. Hours go by while you attempt to master the waves of pain and deliver your baby into the world you prepared for him. [if fate is killed_by_Harold or fate is banished]People are coming and going, telling each other that the birth is going well.[otherwise]People are coming and going, whispering to each other in worried tones. You feel totally exhausted.[end if]" instead.

Before birthing for the third time during Giving Birth:
  remove the beauty table from play;
  if fate is killed_by_Harold or fate is banished begin;
    say "You start to feel more in control. The effect of your pushing now becomes apparent, and finally, after another thirty minutes of hard work, the baby's head appears. Finally![paragraph break]'It is a girl!', [if Amy is befriended]Amy[otherwise]the midwife[end if] cries. A whisper of disappointment goes around the room, but you aren't listening to that; you are looking at the small, red baby in your arms. 'A girl,' you whisper. 'Why didn't I think of that?' You are as happy as you have never been before.[paragraph break]";
    wait for any key;
    if fate is killed_by_Harold begin;
      say "Unfortunately, you crystal ball did not lie. It is not three days later that a masked man, sent by Prince Harold, kills your little girl.";
      run a conversation from sc_killed_fate_1;
      end the game saying "Fate has not been merciful to your child.";
    end if;
    if fate is banished begin;
      say "However, your crystal ball did not lie. You are tried for your crimes against the King and the Prince, and are banished forever from the land. Together with your little girl you go forward into an uncertain future of poverty and need.";
      run a conversation from sc_banished_1;
      end the game saying "Here, where fear mixes with hope, our story ends.";
    end if;
  end if;
  if fate is not killed_by_Harold and fate is not banished begin;
    say "You are losing control. It is hard to remain conscious as the searing pain sets your whole body on fire. People speak to you, but you do not hear the words; you hardly notice when, after another thirty minutes of hard work, the baby's head appears.[paragraph break]A moment of clarity. 'It is a girl!', [if Amy is befriended]Amy[otherwise]the midwife[end if] cries. A moment of obscurity; you feel your life force slipping away. Clarity again--someone has put your child in your arms. 'A girl,' you whisper. 'Why didn't I think of that?' [if fate is not rebel_warned]Then darkness closes in on your happiness.[end if][paragraph break]";
    if fate is not rebel_warned, run a conversation from sc_other_fate_1;
    if fate is rebel_warned, run a conversation from sc_rebel_fate_1;
    if fate is not rebel_warned, end the game saying "You have died, but your child lives on.";
    if fate is rebel_warned, end the game saying "You have died, but your cause lives on.";
    if fate is rebel_sorry, end the game saying "You martyred yourself and your child for a political cause.";
  end if.


Section 7.1.1 - Birthing conversations

sc_killed_fate_1, sc_killed_fate_2, sc_killed_fate_3 are chat nodes.

Instead of giving text for sc_killed_fate_1: say "Would you choose the same course of action, given another chance?"
Instead of finding responses to sc_killed_fate_1: link to sc_killed_fate_2; link to sc_killed_fate_3.

Instead of giving link to sc_killed_fate_2: say "Yes. ".
Instead of giving text for sc_killed_fate_2: do nothing.

Instead of giving link to sc_killed_fate_3: say "No. ".
Instead of giving text for sc_killed_fate_3: do nothing.


sc_banished_1, sc_banished_2, sc_banished_3 are chat nodes.

Instead of giving text for sc_banished_1: say "What do you feel?"
Instead of finding responses to sc_banished_1: link to sc_banished_2; link to sc_banished_3.

Instead of giving link to sc_banished_2: say "Fear. ".
Instead of giving text for sc_banished_2: do nothing.

Instead of giving link to sc_banished_3: say "Hope. ".
Instead of giving text for sc_banished_3: do nothing.



sc_other_fate_1, sc_other_fate_2, sc_other_fate_3, sc_other_fate_4, sc_other_fate_5, sc_other_fate_6 are chat nodes.

Instead of giving text for sc_other_fate_1: say "With your last breath, you say..."
Instead of finding responses to sc_other_fate_1: link to sc_other_fate_2; link to sc_other_fate_3; link to sc_other_fate_4; link to sc_other_fate_5; link to sc_other_fate_6.

Instead of giving link to sc_other_fate_2: say "'My daughter. It was all worth it.' ".
Instead of giving text for sc_other_fate_2: do nothing.

Instead of giving link to sc_other_fate_3: say "'Make something of your life girl. Make something of it.' ".
Instead of giving text for sc_other_fate_3: do nothing.

Instead of giving link to sc_other_fate_4: say "'You will show them, girl. I have seen it.' ".
Instead of giving text for sc_other_fate_4: do nothing.

Instead of giving link to sc_other_fate_5: say "'Remember me. Remember at least my sacrifice.' ".
Instead of giving text for sc_other_fate_5: do nothing.

Instead of giving link to sc_other_fate_6: say "'Remember me. Remember at least my love for you.' ".
Instead of giving text for sc_other_fate_6: do nothing.


sc_rebel_fate_1, sc_rebel_fate_2, sc_rebel_fate_3 are chat nodes.

Instead of giving text for sc_rebel_fate_1: say "With your last breath, you say..."
Instead of finding responses to sc_rebel_fate_1: link to sc_rebel_fate_2; link to sc_rebel_fate_3.

Instead of giving link to sc_rebel_fate_2: say "(Apologetically) 'I am so sorry I had to sacrifce you for the greater good... It had to be done.' ".
Instead of giving text for sc_rebel_fate_2: do nothing.

Instead of giving link to sc_rebel_fate_3: say "(Despairingly) 'What a fool I was, to choose a war above your life! Now fate can no longer be changed...' ".
Instead of giving text for sc_rebel_fate_3: now fate is rebel_sorry.




Part 99 - Menus

Chapter 99.1 - Hints

Table of Potential Hints (continued)
title	subtable
"I am at a complete loss. What should I do?"	Table of Crystal Ball Hints 
"I am fated to die. How do I solve that problem?"	Table of SnakeOne Hints
"How do I get rid of the snake?"			Table of SnakeTwo Hints
"How do I get past Sir Charles?"			Table of Sleep Hints
"How do I stop Harold?"				Table of Harold Hints
"How do I get past Rudolph?"			Table of Rudolph Hints
"Where do I find fresh belladonna?"		Table of Belladonna Hints
"Where do I find a woman's tears?"		Table of Tears Hints
"Where do I find a pinch of ash?"			Table of Ash Hints
"How do I haunt the King?"			Table of Haunt Hints
"How can I make Harold go mad?"			Table of Madness Hints
"How do I cast Greater Gating?"			Table of Demon Hints
"What do I do now?"				Table of Stuck Hints



When play begins: activate the Table of Crystal Ball Hints.

A hint deactivation rule:
  if the viper is known, deactivate the Table of Crystal Ball Hints.

Table of Crystal Ball Hints
hint	used
"You have cast spells to determine the fate of your child."	a number
"So look in your crystal ball in order to find out what it is."


A hint activation rule:
  if the viper is known, activate the Table of SnakeOne Hints.

A hint deactivation rule:
  if the bed is open, deactivate the Table of SnakeOne Hints.

Table of SnakeOne Hints
hint	used
"Something will go wrong when you get into your bed."	a number
"Maybe you should look in your bed?"
"You can ask Sylvie to pull back the covers."
"Or you can simply do it yourself."


A hint activation rule:
  if the bed is open, activate the Table of SnakeTwo Hints.

A hint deactivation rule:
  if the location of the viper is not a room, deactivate the Table of SnakeTwo Hints.

Table of SnakeTwo Hints
hint	used
"You will have to get rid of that deadly viper in your bed."	a number
"If you asked Sylvie to open the bed, Sir Charles will take care of that for you."
"If you opened the bed yourself, you will have to do something more."
"You could just ask Charles to help you."
"But you could also cast Snake Charm."
"You will need to strike the Chord of Straining to do so, like it says in the grimoire in your cabinet."
"But you don't know that. Maybe you can get it by supernatural means?"
"Read the 'lesser gating' spell in your grimoire."
"Get the vial of perfume from your bedroom."
"Smash it in your den."
"Bargain with the imp for the Chord of Straining."


[Activated by attempting to go west in the parlour.]

A hint deactivation rule:
  if Sir Charles is asleep, deactivate the Table of Sleep Hints.

Table of Sleep Hints
hint	used
"You cannot leave your apartment as long as Sir Charles is stopping you."	a number
"Look in your grimoire, in the cabinet, for a solution."
"That sleep spell sounds good, doesn't it?"
"First, you will need to get pearl dust."
"There are pearls on your dress."
"You can cut one off with the dagger, then grind it in the mortar and pestle."
"Now you will need pixie dust."
"You can cast lesser gating, using the vial from the bedroom, and bargain for pixie dust with the imp."
"Or you can cut and grind the wings of your own pixie, in the cage in your bedroom."
"You will need the dagger and the golden key, which is in the table in the parlour."
"Now that you have both ingredients, you need to put them into the wine Sir Charles is drinking."
"But you need to distract him first."
"Ask him to tell about his heroic deeds."

[Activated by looking the crystal ball]

[A hint activation rule:
  if fate is killed_by_Harold, activate the Table of Harold Hints.] [Commented out.]

A hint deactivation rule:
  if the player has had the dried piece of belladonna, deactivate the Table of Harold Hints.


Table of Harold Hints
hint	used
"You need to stop Prince Harold from killing your baby."	a number
"First of all, you need to get past Sir Charles."
"Who could you go to for advice?"
"You might try the King."
"But that doesn't work."
"You could try Amy."
"But she won't help you either."
"Perhaps Mebeira can help you."



[Activated by attempting to go west in the King's Hallway.]

A hint deactivation rule:
  if the state of suspicion of Rudolph is greater than 6, deactivate the Table of Rudolph Hints.


Table of Rudolph Hints
hint	used
"You need to get past Rudolph, but he won't let you in."	a number
"First, try talking to him."
"And talk some more, until you've almost convinced him that you're silly."
"What seems to be the problem?"
"That you don't [italic type]act[roman type] silly."
"So, act silly."
"Try singing (or jumping, or waving, or dancing) in his presence."




A hint activation rule:
  if the player has had the dried piece of belladonna, activate the Table of Belladonna Hints;
  if the player has had the dried piece of belladonna, activate the Table of Tears Hints;
  if the player has had the dried piece of belladonna, activate the Table of Ash Hints.

A hint deactivation rule:
  if the player has had the fresh belladonna, deactivate the Table of Belladonna Hints.

A hint deactivation rule:
  if the player has had the pinch of ash, deactivate the Table of Ash Hints.

A hint deactivation rule:
  if the player has had the handkerchief, deactivate the Table of Tears Hints.


Table of Belladonna Hints
hint	used
"You have been given a dried piece of belladonna by Mebeira."	a number
"Perhaps there is a way to make it grow?"
"What about your repertoire of spells?"
"Plant Growth sounds about right. So we need to burn a beautiful plant."
"There are roses down in the garden."
"Cut one with your dagger."
"The braziers in your den are there for a purpose, of course."
"But they don't appear to be hot enough."
"You are not supposed to be able to solve this until you get past Rudolph."
"Take the bellows from the King's Bedroom."
"Put the rose on the braziers. Push the bellows."

Table of Ash Hints
hint	used
"You are not supposed to be able to solve this until you get past Rudolph."	a number
"But once you have, it should be very easy."
"Just take some ash from the hearth in the King's Bedroom."

Table of Tears Hints
hint	used
"You will need to make a woman cry."	a number
"You can't make the servants cry, and neither you nor Mebeira are of the tearful type."
"So it will have to be Amy."
"Just talk to her."
"And take her seriously as a potential friend."



A hint activation rule:
  if the player is poisoned, activate the Table of Haunt Hints.

A hint deactivation rule:
  if the King is haunted, deactivate the Table of Haunt Hints.


Table of Haunt Hints
hint	used
"You need the King to ask you to kiss him."	a number
"All you need to do is choose the right dialogue options."
"Show him that you're miserable and afraid."



A hint activation rule:
  if the player has had the amulet of madness, activate the Table of Madness Hints.

A hint deactivation rule:
  if prince Harold is mad, deactivate the Table of Madness Hints.


Table of Madness Hints
hint	used
"First, you must wear the Amulet, not just carry it around."	a number
"Then, you must enrage Prince Harold."
"Remember what Amy told you about him."
"Tease him with the fact that he has no children."


[Activated by seeing the banished fate.]

[A hint activation rule:
  if fate is banished, activate the Table of Demon Hints.]

A hint deactivation rule:
  if the demon has been in the den, deactivate the Table of Demon Hints.

Table of Demon Hints
hint	used
"You need several things to cast a Greater Gating: an empowered dagger, a goat, a crown and a pentagram."	a number
"The pentagram is easy: just draw it with the sorcerer's sand in your pouch."
"Let's take care of the crown next."
"Who have you seen wearing one?"
"Prince Harold."
"Just take it from him. He won't object anymore."
"Then, the dagger. It should be refilled by a human life."
"Stabbing a noble is too dangerous."
"But nobody cares about servants."
"Stab Sylvie or the gardener."
"Finally, the goat."
"You can get it to come with you in two different ways."
"If you charmed the snake, just show the snake stick to the goat."
"Otherwise, you must use the shriveled carrot."
"By casting Plant Growth on it."
"Then feeding it to the goat."
"You can take the goat afterwards."
"Now all you have to do is wear the crown, and sacrifice the goat in the den."
"And speak to the demon that appears."



A hint activation rule:
   if the location of the goat is not a room and the location of the hypnotised goat is not a room and the demon is not in the den, activate the Table of Stuck Hints;
  if the amulet of madness is unavailable, activate the Table of Stuck Hints.

A hint deactivation rule:
  if Giving Birth is happening, deactivate the Table of Stuck Hints.

Table of Stuck Hints
hint	used
"The coins have been tossed."	a number
"There is nothing more you can do."
"All that is left is going to your den and aWAITing your fate."
"Go to the den, and type 'wait'."



Chapter 99.2 - The menu

When play begins:
     choose row 1 in Table of Basic Help Options;
     change description entry to "Welcome to [italic type]Fate[roman type], an interactive fiction written by Victor Gijsbers. In this game, you take on the role of a pregnant woman who has the chance to influence her child's fate through her use of magic. As the game progresses, you will be able to strive for better and better destinies, but the price you will have to pay rises as well.[paragraph break]There are several endings to [italic type]Fate[roman type], but none of them are 'winning' or 'losing' endings; which ones are preferable is up to you to decide. (Most probably, though, the first two fates accessible to you will not seem very good.)[paragraph break][paragraph break]Because there are no 'winning' and 'losing' endings, you cannot technically put the game into an unwinnable state. You can, however, put the game into a state where changing your child's fate has become impossible. It should always be quite clear when this happens.[paragraph break][paragraph break]If at any time you wish to accept the fate currently visible in your crystal ball, all you have to do is WAIT in your den."



Table of Basic Help Options (continued)
title			subtable		description	toggle
"Contacting the author"	--		"At the time of writing, March 2007, Victor Gijsbers can be contacted using the following mail address: victor@lilith.gotdns.org. Please feel free to contact him with bug reports, comments, or fan mail."	--
"Credits"			--		"[italic type]Fate[roman type] could not have succeeded without the help of many individuals. I would like to thank:[paragraph break][paragraph break]Graham Nelson, Emily Short, David Kinder and all other people who have played a major role in the development of Inform 7. This language is fantastic! (Major thanks also to the first person to port the Inform 7 IDE to Linux: you are my hero, whoever you turn out to be.)[paragraph break][paragraph break]Mark Tilford, for the Simple Chat extension. Eric Eve, for the Adaptive Hints extension. Emily Short for the Basic Help Menu, the Locksmith and Basic Screen Effects extensions.[paragraph break][paragraph break]Annette van de Kraats, Eva Deinum, Remko van der Pluijm, Cassandra Palop, Anthony Phillips and Ryusui for beta-testing. You were essential.[paragraph break][paragraph break]Ron Edwards for the independent roleplaying game [italic type]Sorcerer[roman type], which must have been an important influence on my design. (Influence is not transparent, not even to the one influenced.) Another probable influence is the computer roleplaying game [italic type]Planescape: Torment[roman type] (especially its use of conversation menus). Much interactive fiction must have been influential as well, but I don't know which particular games to point to."	--
"License"		--		"This game is released under the GNU Public License version 2 or any later version. You can read this license at: [bold type]http://www.gnu.org/copyleft/gpl.html[roman type]. During the Spring Thing 2007, the source code will not be published in a public repository, but you can email me to get it."	--
"Hints"			Table of Active Hints	--	Display Hints Rule
