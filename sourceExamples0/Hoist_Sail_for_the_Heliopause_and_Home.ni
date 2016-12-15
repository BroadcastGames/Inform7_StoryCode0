"Hoist Sail for the Heliopause and Home" by Andrew Plotkin.
[IFID:7fc1b98f-8b86-4066-a2f3-2a82e01d4f82]

The story headline is "Interactive fiction".
The release number is 6.

[
Copyright 2010 Andrew Plotkin <erkyrath@eblong.com>
<http://eblong.com/zarf/if.html>

This source code is provided for personal, educational use only. The story and text of _Heliopause..._ belong to me; you may not use them or create derivative works which contain them. However, you have permission to use the programming techniques of this game in your own works, and you may use the source code excluding game text.

If you want to *play* this game, you're in the wrong place. Go to my web site: <http://eblong.com/zarf/zweb/heliopause/>

Obvious warning:  This code contains spoilers! If you haven't played _Heliopause..._, and you read this code, you'll certainly ruin the game for yourself. Play it first. I am releasing this code for the benefit of Inform programmers who are familiar with the game and want to know how I did it.

This source code was written for Inform 7, build 5Z71. I have not tested it with later I7 releases. (I started writing it in May of 2010. A newer I7 release appeared just as I began beta-testing, and I didn't think it was worth upgrading and re-testing everything.)

Some 10% of this file is Inform 6 code. It's not as bad as it looks. I needed to change a single line of Parser.i6t, and the best way to do it was to paste in the whole 350-line function and then make the change.
]

When play begins:
	say "Myrmidal is the queen of the bright worlds, and you've walked her million cities beneath her sky and beyond it. Myrmidal laughs and Myrmidal dances; they say no one weeps on Myrmidal, except for moments on the stage.[para]";
	say "But even on Myrmidal the sun rises and sets, and the music grows tinny and harsh when you weary of dancing. Your best stories and your best lies draw the same fond laughter. This morning you decide to rise to the docks, and rouse your [HorizonOfNight] from her sleep, and raise her sails. Somewhere are worlds you have never seen. And if your friends miss you at the dance, they can tell you so when you return."

The player is in Myrmidal.

Chapter - Utilities

[Release along with cover art.]

Use serial comma.
Use American dialect.
Use full-length room descriptions.
Use no scoring.

[Some textual shortcuts.]

To say para -- running on:
	(- DivideParagraphPoint(); new_line; -).

To say That-Those (T - thing):
	if the noun is the player:
		say "You";
	else if the noun is plural-named:
		say "Those";
	else:
		say "That".

To say That-Those-are (T - thing):
	if the noun is the player:
		say "You are";
	else if the noun is plural-named:
		say "Those are";
	else:
		say "That is".

[The open-bracket/close-bracket stuff is to permit italics in stored text buffers. I will explain the text buffers anon.]

To say Horizon:
	if z-buffering:
		say "[bracket]Horizon[close bracket]";
	else:
		say "[italic type]Horizon[roman type]".

To say HorizonOfNight:
	if z-buffering:
		say "[bracket]Horizon of Night[close bracket]";
	else:
		say "[italic type]Horizon of Night[roman type]".

When play begins:
	now the right hand status line is "[status line desc]".

Rule for constructing the status line:
	do the substitute status line work.

The description of the player is "You are an improved model."

Definition: a room is non-location if it is not the location.

Definition: a thing is non-equipment-scenery if it is scenery and it is not equipment.

Rule for deciding whether all includes scenery: it does not.

Last does the player mean doing something with non-equipment-scenery:
	it is unlikely.

[Disable the brief and superbrief commands.]

Check preferring unabbreviated room descriptions:
	instead say "[italic type][Story title][roman type] does not support the 'brief' or 'superbrief' modes. You will always see long descriptions of locations."

Check preferring abbreviated room descriptions:
	instead try preferring unabbreviated room descriptions.

Check preferring sometimes abbreviated room descriptions:
	instead try preferring unabbreviated room descriptions.

Chapter - I6 Work

[I didn't feel like including Basic Screen Effects, so here's the one-line version:]

To wait for keystroke: (- VM_KeyChar(); -).

[I didn't feel like using regexps, so here's a simple I6 routine to turn "?" and "!" into periods in the input. This lets the player type "set sail!"]

After reading a command: depunctuate the command.
To depunctuate the command: (- DepunctuateBuffer(); -).

Include (-
[DepunctuateBuffer ix len addr;
	len = buffer->1;
	addr = buffer+2;
	for (ix=0 : ix<len : ix++) {
		if (addr->ix == '!' or '?')
			addr->ix = '.';
	}
];
-).

[A little bit of hackery to right-justify the right-hand part of the status line.]

To do the substitute status line work: (- SubstituteStatusLine(); -).

Include (-
[ SubstituteStatusLine width len ix addr;
	width = VM_ScreenWidth();
	VM_MoveCursorInStatusLine(1, 2);
	switch(metaclass(left_hand_status_line)) {
		String: print (string) left_hand_status_line;
		Routine: left_hand_status_line();
	}
	len = VM_PrintToBuffer(StorageForShortName, 80, right_hand_status_line);
	addr = StorageForShortName + WORDSIZE;
	VM_MoveCursorInStatusLine(1, width - (len+1));
	for (ix=0 : ix<len : ix++)
		print (char) addr->ix;
];
-).

Include (-
[ LanguageVerb i;
	switch (i) {
		'i//','inv','inventory':
				 print "take inventory";
		'l//':   print "look";
		'x//':   print "examine";
		'z//':   print "wait";
		default: rfalse;
	}
	rtrue;
];

[ LanguageVerbMayBeName w;
	if (w == 'long' or 'short' or 'normal' or 'brief' or 'full' or 'verbose' or 'sail')
		rtrue;
	rfalse;
];
-) instead of "Commands" in "Language.i6t".

[This giant NounDomain inclusion is really just to add a single function call to a single line in the library routine:

	if ((0 ~= j&1) && ~~LanguageVerbMayBeName(first_word)) ...

What's going on? If the player types "raise", the game will respond "What do you want to raise?" and we want "sail" to be a valid response. But normally a verb response aborts the disambiguation prompt and gets parsed on its own. "Sail" is a verb in this game. So we need a special test.]

Include (-
[ NounDomain domain1 domain2 context
	first_word i j k l answer_words marker;
	#Ifdef DEBUG;
	if (parser_trace >= 4) {
		print "   [NounDomain called at word ", wn, "^";
		print "   ";
		if (indef_mode) {
			print "seeking indefinite object: ";
			if (indef_type & OTHER_BIT)  print "other ";
			if (indef_type & MY_BIT)     print "my ";
			if (indef_type & THAT_BIT)   print "that ";
			if (indef_type & PLURAL_BIT) print "plural ";
			if (indef_type & LIT_BIT)    print "lit ";
			if (indef_type & UNLIT_BIT)  print "unlit ";
			if (indef_owner ~= 0) print "owner:", (name) indef_owner;
			new_line;
			print "   number wanted: ";
			if (indef_wanted == INDEF_ALL_WANTED) print "all"; else print indef_wanted;
			new_line;
			print "   most likely GNAs of names: ", indef_cases, "^";
		}
		else print "seeking definite object^";
	}
	#Endif; ! DEBUG

	match_length = 0; number_matched = 0; match_from = wn;

	SearchScope(domain1, domain2, context);

	#Ifdef DEBUG;
	if (parser_trace >= 4) print "   [ND made ", number_matched, " matches]^";
	#Endif; ! DEBUG

	wn = match_from+match_length;

	! If nothing worked at all, leave with the word marker skipped past the
	! first unmatched word...

	if (number_matched == 0) { wn++; rfalse; }

	! Suppose that there really were some words being parsed (i.e., we did
	! not just infer).  If so, and if there was only one match, it must be
	! right and we return it...

	if (match_from <= num_words) {
		if (number_matched == 1) {
			i=match_list-->0;
			return i;
		}

		! ...now suppose that there was more typing to come, i.e. suppose that
		! the user entered something beyond this noun.  If nothing ought to follow,
		! then there must be a mistake, (unless what does follow is just a full
		! stop, and or comma)

		if (wn <= num_words) {
			i = NextWord(); wn--;
			if (i ~=  AND1__WD or AND2__WD or AND3__WD or comma_word
					 or THEN1__WD or THEN2__WD or THEN3__WD
					 or BUT1__WD or BUT2__WD or BUT3__WD) {
				if (lookahead == ENDIT_TOKEN) rfalse;
			}
		}
	}

	! Now look for a good choice, if there's more than one choice...

	number_of_classes = 0;

	if (number_matched == 1) i = match_list-->0;
	if (number_matched > 1) {
		i = Adjudicate(context);
		if (i == -1) rfalse;
		if (i == 1) rtrue;       !  Adjudicate has made a multiple
							 !  object, and we pass it on
	}

	! If i is non-zero here, one of two things is happening: either
	! (a) an inference has been successfully made that object i is
	!     the intended one from the user's specification, or
	! (b) the user finished typing some time ago, but we've decided
	!     on i because it's the only possible choice.
	! In either case we have to keep the pattern up to date,
	! note that an inference has been made and return.
	! (Except, we don't note which of a pile of identical objects.)

	if (i ~= 0) {
		if (dont_infer) return i;
		if (inferfrom == 0) inferfrom=pcount;
		pattern-->pcount = i;
		return i;
	}

	! If we get here, there was no obvious choice of object to make.  If in
	! fact we've already gone past the end of the player's typing (which
	! means the match list must contain every object in scope, regardless
	! of its name), then it's foolish to give an enormous list to choose
	! from - instead we go and ask a more suitable question...

	if (match_from > num_words) jump Incomplete;

	! Now we print up the question, using the equivalence classes as worked
	! out by Adjudicate() so as not to repeat ourselves on plural objects...

	BeginActivity(ASKING_WHICH_DO_YOU_MEAN_ACT);
	if (ForActivity(ASKING_WHICH_DO_YOU_MEAN_ACT)) jump SkipWhichQuestion;

	if (context==CREATURE_TOKEN) L__M(##Miscellany, 45);
	else                         L__M(##Miscellany, 46);

	j = number_of_classes; marker = 0;
	for (i=1 : i<=number_of_classes : i++) {
		while (((match_classes-->marker) ~= i) && ((match_classes-->marker) ~= -i)) marker++;
		k = match_list-->marker;

		if (match_classes-->marker > 0) print (the) k; else print (a) k;

		if (i < j-1)  print (string) COMMA__TX;
		if (i == j-1) {
			#Ifdef SERIAL_COMMA;
			print ",";
			#Endif; ! SERIAL_COMMA
			print (string) OR__TX;
		}
	}
	L__M(##Miscellany, 57);

	.SkipWhichQuestion; EndActivity(ASKING_WHICH_DO_YOU_MEAN_ACT);

	! ...and get an answer:

	.WhichOne;
	#Ifdef TARGET_ZCODE;
	for (i=2 : i<INPUT_BUFFER_LEN : i++) buffer2->i = ' ';
	#Endif; ! TARGET_ZCODE
	answer_words=Keyboard(buffer2, parse2);

	! Conveniently, parse2-->1 is the first word in both ZCODE and GLULX.
	first_word = (parse2-->1);

	! Take care of "all", because that does something too clever here to do
	! later on:

	if (first_word == ALL1__WD or ALL2__WD or ALL3__WD or ALL4__WD or ALL5__WD) {
		if (context == MULTI_TOKEN or MULTIHELD_TOKEN or MULTIEXCEPT_TOKEN or MULTIINSIDE_TOKEN) {
			l = multiple_object-->0;
			for (i=0 : i<number_matched && l+i<MATCH_LIST_WORDS : i++) {
				k = match_list-->i;
				multiple_object-->(i+1+l) = k;
			}
			multiple_object-->0 = i+l;
			rtrue;
		}
		L__M(##Miscellany, 47);
		jump WhichOne;
	}

	! If the first word of the reply can be interpreted as a verb, then
	! assume that the player has ignored the question and given a new
	! command altogether.
	! (This is one time when it's convenient that the directions are
	! not themselves verbs - thus, "north" as a reply to "Which, the north
	! or south door" is not treated as a fresh command but as an answer.)

	#Ifdef LanguageIsVerb;
	if (first_word == 0) {
		j = wn; first_word = LanguageIsVerb(buffer2, parse2, 1); wn = j;
	}
	#Endif; ! LanguageIsVerb
	if (first_word ~= 0) {
		j = first_word->#dict_par1;
		if ((0 ~= j&1) && ~~LanguageVerbMayBeName(first_word)) {
			VM_CopyBuffer(buffer, buffer2);
			jump RECONSTRUCT_INPUT;
		}
	}

	! Now we insert the answer into the original typed command, as
	! words additionally describing the same object
	! (eg, > take red button
	!      Which one, ...
	!      > music
	! becomes "take music red button".  The parser will thus have three
	! words to work from next time, not two.)

	#Ifdef TARGET_ZCODE;
	k = WordAddress(match_from) - buffer; l=buffer2->1+1;
	for (j=buffer + buffer->0 - 1 : j>=buffer+k+l : j-- ) j->0 = 0->(j-l);
	for (i=0 : i<l : i++) buffer->(k+i) = buffer2->(2+i);
	buffer->(k+l-1) = ' ';
	buffer->1 = buffer->1 + l;
	if (buffer->1 >= (buffer->0 - 1)) buffer->1 = buffer->0;
	#Ifnot; ! TARGET_GLULX
	k = WordAddress(match_from) - buffer;
	l = (buffer2-->0) + 1;
	for (j=buffer+INPUT_BUFFER_LEN-1 : j>=buffer+k+l : j-- ) j->0 = j->(-l);
	for (i=0 : i<l : i++) buffer->(k+i) = buffer2->(WORDSIZE+i);
	buffer->(k+l-1) = ' ';
	buffer-->0 = buffer-->0 + l;
	if (buffer-->0 > (INPUT_BUFFER_LEN-WORDSIZE)) buffer-->0 = (INPUT_BUFFER_LEN-WORDSIZE);
	#Endif; ! TARGET_

	! Having reconstructed the input, we warn the parser accordingly
	! and get out.

	.RECONSTRUCT_INPUT;

	num_words = WordCount();
	wn = 1;
	#Ifdef LanguageToInformese;
	LanguageToInformese();
	! Re-tokenise:
	VM_Tokenise(buffer,parse);
	#Endif; ! LanguageToInformese
	num_words = WordCount();
	players_command = 100 + WordCount();
	FollowRulebook(Activity_after_rulebooks-->READING_A_COMMAND_ACT, true);

	return REPARSE_CODE;

	! Now we come to the question asked when the input has run out
	! and can't easily be guessed (eg, the player typed "take" and there
	! were plenty of things which might have been meant).

	.Incomplete;

	if (context == CREATURE_TOKEN) L__M(##Miscellany, 48);
	else                           L__M(##Miscellany, 49);

	#Ifdef TARGET_ZCODE;
	for (i=2 : i<INPUT_BUFFER_LEN : i++) buffer2->i=' ';
	#Endif; ! TARGET_ZCODE
	answer_words = Keyboard(buffer2, parse2);

	first_word=(parse2-->1);
	#Ifdef LanguageIsVerb;
	if (first_word==0) {
		j = wn; first_word=LanguageIsVerb(buffer2, parse2, 1); wn = j;
	}
	#Endif; ! LanguageIsVerb

	! Once again, if the reply looks like a command, give it to the
	! parser to get on with and forget about the question...

	if (first_word ~= 0) {
		j = first_word->#dict_par1;
		if ((0 ~= j&1) && ~~LanguageVerbMayBeName(first_word)) {
			VM_CopyBuffer(buffer, buffer2);
			return REPARSE_CODE;
		}
	}

	! ...but if we have a genuine answer, then:
	!
	! (1) we must glue in text suitable for anything that's been inferred.

	if (inferfrom ~= 0) {
		for (j=inferfrom : j<pcount : j++) {
			if (pattern-->j == PATTERN_NULL) continue;
			#Ifdef TARGET_ZCODE;
			i = 2+buffer->1; (buffer->1)++; buffer->(i++) = ' ';
			#Ifnot; ! TARGET_GLULX
			i = WORDSIZE + buffer-->0;
			(buffer-->0)++; buffer->(i++) = ' ';
			#Endif; ! TARGET_

			#Ifdef DEBUG;
			if (parser_trace >= 5)
				print "[Gluing in inference with pattern code ", pattern-->j, "]^";
			#Endif; ! DEBUG

			! Conveniently, parse2-->1 is the first word in both ZCODE and GLULX.

			parse2-->1 = 0;

			! An inferred object.  Best we can do is glue in a pronoun.
			! (This is imperfect, but it's very seldom needed anyway.)

			if (pattern-->j >= 2 && pattern-->j < REPARSE_CODE) {
				PronounNotice(pattern-->j);
				for (k=1 : k<=LanguagePronouns-->0 : k=k+3)
					if (pattern-->j == LanguagePronouns-->(k+2)) {
						parse2-->1 = LanguagePronouns-->k;
						#Ifdef DEBUG;
						if (parser_trace >= 5)
							print "[Using pronoun '", (address) parse2-->1, "']^";
						#Endif; ! DEBUG
						break;
					}
			}
			else {
				! An inferred preposition.
				parse2-->1 = VM_NumberToDictionaryAddress(pattern-->j - REPARSE_CODE);
				#Ifdef DEBUG;
				if (parser_trace >= 5)
					print "[Using preposition '", (address) parse2-->1, "']^";
				#Endif; ! DEBUG
			}

			! parse2-->1 now holds the dictionary address of the word to glue in.

			if (parse2-->1 ~= 0) {
				k = buffer + i;
				#Ifdef TARGET_ZCODE;
				@output_stream 3 k;
				 print (address) parse2-->1;
				@output_stream -3;
				k = k-->0;
				for (l=i : l<i+k : l++) buffer->l = buffer->(l+2);
				i = i + k; buffer->1 = i-2;
				#Ifnot; ! TARGET_GLULX
				k = Glulx_PrintAnyToArray(buffer+i, INPUT_BUFFER_LEN-i, parse2-->1);
				i = i + k; buffer-->0 = i - WORDSIZE;
				#Endif; ! TARGET_
			}
		}
	}

	! (2) we must glue the newly-typed text onto the end.

	#Ifdef TARGET_ZCODE;
	i = 2+buffer->1; (buffer->1)++; buffer->(i++) = ' ';
	for (j=0 : j<buffer2->1 : i++,j++) {
		buffer->i = buffer2->(j+2);
		(buffer->1)++;
		if (buffer->1 == INPUT_BUFFER_LEN) break;
	}
	#Ifnot; ! TARGET_GLULX
	i = WORDSIZE + buffer-->0;
	(buffer-->0)++; buffer->(i++) = ' ';
	for (j=0 : j<buffer2-->0 : i++,j++) {
		buffer->i = buffer2->(j+WORDSIZE);
		(buffer-->0)++;
		if (buffer-->0 == INPUT_BUFFER_LEN) break;
	}
	#Endif; ! TARGET_

	! (3) we fill up the buffer with spaces, which is unnecessary, but may
	!     help incorrectly-written interpreters to cope.

	#Ifdef TARGET_ZCODE;
	for (: i<INPUT_BUFFER_LEN : i++) buffer->i = ' ';
	#Endif; ! TARGET_ZCODE

	return REPARSE_CODE;

]; ! end of NounDomain

-) instead of "Noun Domain" in "Parser.i6t".

[I didn't feel like using indexed text, so here's some code to push text (the room description) into a buffer and reprint it later. I need this because many room descriptions are randomly generated, but I want them to be consistent if the player types "look" repeatedly.

Room descriptions occasionally contain italics, so I had to do some extra work to encode the "style underline" and "style roman" commands into the buffer. They are encoded as open-bracket and close-bracket.]

Include (-
	Global ZBuffering = false;
	Constant Z_BUFLEN_ROOM = 512;
	Array z_buffer_room -> Z_BUFLEN_ROOM+4;

	[ FillZBuffer buf len rule   save_say_p save_say_pc;
		save_say_p = say__p;
		save_say_pc = say__pc;
		say__p = 0;
		ZBuffering = true;
		VM_PrintToBuffer(buf, Z_BUFLEN_ROOM, ProcessRulebook, rule);
		ZBuffering = false;
		if (buf-->0 >= Z_BUFLEN_ROOM-1) print "(BUG) Room buffer overflow!";
		say__p = save_say_p;
		say__pc = save_say_pc;
	];

	[ PrintZBuffer buf   ix len ch;
		len = buf-->0;
		buf = buf+WORDSIZE;
		for (ix=0 : ix<len : ix++) {
			ch = buf->ix;
			if (ch == '[')
				style underline;
			else if (ch == ']')
				style roman;
			else
				print (char) ch;
		}
	];

	[ TestZBuffering;
		return ZBuffering;
	];
-).

To decide whether z-buffering: (- TestZBuffering() -).

Chapter - Values

[These values are used in randomly generating stars.

I wanted to include "yellow-white" and "blue-white" as possible star colors, but I7's property-value parsing wasn't quite up to the job. To make myself feel better, I added a "blue-white" star later in the game -- but its color is actually white. I added the "blue" and "blue-white" synonyms by hand.]

Color is a kind of value.

The colors are no-color, red, orange, golden, yellow, white, blue.

Understand "gold" as golden.

Table of Star-Appropriate Colors
Color
red
orange
golden
yellow
white
blue

A color-modifier is a kind of value.

The color-modifiers are no-modifier, pale, dim, bright.

A star-descriptor is a kind of value.

The star-descriptors are no-star-desc, fat, swollen, large, plain, small, petite, tiny.

Chapter - Credits Stuff

Abouting is an action out of world applying to nothing.

Understand "about" as abouting.
Understand the command "credits" as "about".

Report abouting:
	say "[italic type][Story title][roman type] was created for the [bold type]@party[roman type] demoscene event in Massachusetts, in the summer of 2010. Like all of my short works, apparently, it took a month to write.[para]";
	say "[italic type][Story title][roman type] is copyright 2010 by Andrew Plotkin (erkyrath@eblong.com). It may be distributed for free, but not sold or included in any for-profit collection without written permission from the author.[para]";
	say "I presented this game as a work-in-progress at the Grue Street IF writer's workshop (http://pr-if.org/); the feedback was invaluable. Beta playthroughs were offered by Emily Short, Dan Efran, Jake Eakle, Kevin Jackson-Mead, and Sarah Morayati. My thanks to them and to everyone who helped out.[para]";
	say "The cover art is a composition of the Cat's Eye Nebula (NASA, ESA, HEIC, and The Hubble Heritage Team (STScI/AURA), 2007) and a [italic type]Celestial Map of the Northern Sky[roman type] (Albrecht Dürer, 1515)."


To decide whether the game ended in victory:
	decide yes.

Rule for amusing a victorious player:
	say "How many nautical-style actions did you try? The game recognizes quite a range, mostly things you can do to sails: 'raise', 'lift', 'hoist', 'heave', 'haul', 'spread', 'widen', 'broaden', 'lower', 'unfurl', 'unfold', 'unreef', 'reef', 'narrow', 'furl', 'fold', 'trim', 'tauten', 'slacken', and 'rig'. You can also say 'set sail', 'strike sail', 'more sail', or 'less sail'. Or simply 'sail' or 'sail forth'.[para]";
	say "The ship will move if you say 'go', 'fly', 'forward', 'ahead', or even 'push on' or 'forge onward'. You can 'go to', 'fly toward', 'vector toward', or 'steer toward'.[para]";
	say "But don't try 'warp 8'. That would be silly."

Chapter - Actions

[The action structure in this game is kind of monstrous.

This section defines a whole slew of new actions, including flying, launching, inwarding (moving towards a planet), outwarding (moving away from a planet), raising and lowering, etc. Many standard actions redirect to these; "go in" becomes inwarding, "go out" becomes outwarding, and so on. Launching also redirects to outwarding. These are just examples. There's a whole mess of actions that redirect to other actions.

Then *those* action redirect to a different set, the abstract actions, which are defined in the next section. The abstract actions aren't directly typable by the player; they do all the actual work. Except in the cases when they don't.
]

Understand the commands "stow", "collect" as "take".

[### "take off"!]

Understand "drop [something preferably held] out" as dropping.
Understand "drop out [something preferably held]" as dropping.

Understand the command "stand" as something new.

First check sleeping:
	if the location is Lightless:
		instead wait it out;
	instead say "You have never liked the notion of chilling down and traveling the light-centuries in frozen sleep. You prefer to watch the stars pass."

First check waking up:
	instead say "This is no dream."

Repairing is an action applying to one thing.
Understand "repair [something]" as repairing.
Understand the command "fix" as something new.
Understand the command "fix" as "repair".

Report repairing:
	say "[That-Those-are noun]n't damaged."

[I sure wish I7 supported real text constants.]

Understand "warp" as a mistake ("You recall, from a quixotic interest in antique blue-water sailing jargon, that 'to warp' is to draw a sea-ship into dock by pulling on ropes. But it really isn't meaningful for starships.").
Understand "warp [text]" as a mistake ("You recall, from a quixotic interest in antique blue-water sailing jargon, that 'to warp' is to draw a sea-ship into dock by pulling on ropes. But it really isn't meaningful for starships.").

Understand "avast" as a mistake ("Real space explorers do not use such language.").
Understand the commands "arr", "arrr", "arrrr", "arrrrr" as "avast".
Understand the commands "xyzzy" as "avast".

Raising is an action applying to one thing.
Lowering is an action applying to one thing.

Report raising:
	say "That cannot be raised."
Report lowering:
	say "That cannot be lowered."

Understand "raise [something]" as raising.
Understand "raise u/up [something]" as raising.
Understand "raise [something] u/up" as raising.
Understand "lower [something]" as lowering.
Understand "lower d/down [something]" as lowering.
Understand "lower [something] d/down" as lowering.

Understand the command "lift", "hoist", "heave", "haul" as "raise".

[### ship/unship anchor and sails? "ship me"]

[### Understand "up [something]" as raising.
Understand "down [something]" as lowering.
]

Understand the command "board" as "enter".
[### board ship only?]

Flying is an action applying to nothing.

Check flying when the location is a planet:
	instead try launching.

Check flying when the location is Myr-system:
	instead say "Yes! Set sail."

Check flying when the location is a system:
	instead try system-leaving.

Check flying:
	now the travel-cause is the flying action;
	instead try travelling.

Outwarding is an action applying to nothing.

Inwarding is an action applying to nothing.

Understand the command "go" as something new.
Understand "go" as flying.
Understand "go away/on/ahead/forward/forwards/forth" as flying.
Understand "go back/backwards" as a mistake ("Spaceships really only fly forwards.").
Understand "go [direction]" as going.
Understand "go [something]" as entering.
Understand "go into/in/inside/through/to/toward/towards/at/for [something]" as entering.

Understand the command "fly", "travel", "steer", "vector", "ride" as "go".
Understand the command "sail" as "go".

Understand "push on/onward/onwards" as flying.
Understand "ahead" as flying.
Understand "forge on/onward/onwards/ahead" as flying.
Understand "forward" as flying.
Understand "forwards" as flying.

Understand "aft" as a mistake ("Spaceships really only fly forwards.").
Understand the commands "back", "backward", "backwards", "astern" as "aft".
Understand the commands "port", "starboard" as "aft".

Understand the command "approach" as "enter".

Understand the commands "exit", "out", "leave" as something new.
Understand "exit" as outwarding.
Understand the commands "out", "leave", "depart" as "exit".

Understand "land" as inwarding.

[### land on/at star/planet]
[### "fly/steer/ride/vector ship" should really mean "fly", when boarded]
[### launch ship?]
[### make/break/enter/leave orbit]
[### leave/exit ship? maybe]

The wait-counter is a number that varies.

Check waiting when the location is Lightless:
	increase the wait-counter by one;
	if the wait-counter is at least three:
		instead wait it out;
	instead say "Nothing happens."

Check waiting when the location is a planet:
	if the location is an unlooted planet:
		instead say "You'd rather discover what this place has to offer.";
	instead say "You would rather fly."

Check waiting when the spreadness is zero:
	if the location is an unlooted system:
		instead say "If you don't drop anchor, you'll turn forever in this dull orbit.";
	instead say "Without raising sail, you'll turn forever in this dull orbit."

Check waiting:
	now the travel-cause is the waiting action;
	instead try travelling.

Launching is an action applying to nothing.
Understand "launch" as launching.
Check launching:
	if the location is a planet or the location is Lightless:
		instead try outwarding;
	else:
		instead say "[Horizon] is already in flight."

Check outwarding when the location is Myrmidal:
	instead say "Only raise the anchor, and you'll be away."

Check outwarding when the location is Myr-system:
	instead say "Yes! Set sail."

Check outwarding when the location is a planet:
	now the planet-cause-mentioned is the anchor;
	instead try planet-departing.

Check outwarding when the location is a system:
	instead try system-leaving.

Check outwarding when the location is Nebula-Heart:
	instead try flying.

Check outwarding:
	instead say "You are already under way."

Check inwarding when the location is a planet:
	instead say "You [if the location is Myrmidal]are already grounded[else]have already made planetfall[end if]."

Check inwarding when the location is a system:
	instead try planet-arriving.

Check inwarding when the location is solar-curious:
	instead try system-entering.

Check inwarding when the location is Nebula-Heart:
	instead try entering the pulsar.

Check inwarding:
	instead say "Inward has no meaning here."

Instead of going nowhere:
	if the noun is inside and the location is Myrmidal:
		instead try entering the ship;
	if the noun is inside:
		instead try inwarding;
	if the noun is outside:
		instead try outwarding;
	if the noun is down and the location is solar-systemic:
		instead try inwarding;
	if the noun is down and the location is solar-curious:
		instead try system-entering;
	if the noun is up and the location is solar-systemic:
		instead try outwarding;
	say "Such directions have no meaning for you."


Chapter - Abstract Actions

[The abstract actions are planet-departing, planet-arriving, system-leaving, system-entering, and travelling. These are the five phases of space flight, and cover all of the movement in the game.]

The planet-cause-mentioned is a thing that varies.
The travel-cause is an action-name that varies.
Every turn:
	now     the planet-cause-mentioned is nothing;
	now the travel-cause is the drinking action.

A room can be unsmugged or smugged. A room is usually unsmugged.

Planet-departing is an action applying to nothing.

Check planet-departing when the location is not a planet:
	instead say "(BUG) You are not on a planet."

Check planet-departing when the location is not looted:
	if the location is:
		-- Planet-1: instead say "You certainly cannot leave this world without collecting some token[one of][or] of the life you have discovered[stopping].";
		-- otherwise: instead say "Surely it is worth collecting something before you depart."

Carry out planet-departing:
	if the planet-cause-mentioned is the anchor:
		say "You [one of]raise[or]hoist[or]heave[cycling] anchor.";
	now the ship is boarded;
	now the anchor is raised;
	if the location is Myrmidal:
		say "The anchor precesses.[para][Horizon] shakes, waking the speed which has slept these past years. Myrmidal's magnetic halo bucks her keel high; high and out through the rings of city and industry and careless Myrmidal society. When the anchor falls into place along the keel, [Horizon] rings bell-clear, and the sky is black.";
		move the player to Myr-system;
	else:
		let S be a random system that overlays the location;
		move the player to S;
	if the location is unsmugged:
		now the location is smugged;
		if the location is:
			-- System-1: say "This iridescent substance is an enthralling start to your journey. Even d'Accord technology cannot create all things, and a new form of matter may benefit lives across the bright worlds. If the stars before you are as rich in wonders as this, you will be a nine-days[apostrophe] wonder when you return home.";
			-- System-2: say "The fluid luminescence is unique in your memory and experience. The light, together with the iridescent cloth -- discoveries like these will assure your fame.";
			-- System-3: say "Civilizations are fragile, and the relics of an unknown race -- a people who might have bloomed billions of years past, in the cold unlight of a dwarf star -- these tablets must be incalculably valuable. You are torn: should you come around, and begin the journey back to the bright worlds?[para]But so much remains out there for you to take. Just one more discovery. Perhaps two.";
			-- otherwise: say "(BUG) No smug message.";

Planet-arriving is an action applying to nothing.

Check planet-arriving when the location is not a system:
	instead say "(BUG) You are not near a planet."

Check planet-arriving when the location is Myr-system:
	instead say "The last thing you want is to return to Myrmidal."

Check planet-arriving when the location is Lightless:
	instead say "You have no idea if there's anywhere within light-years to anchor."

Carry out planet-arriving:
	let S be a random planet that underlies the location;
	if S is:
		-- Planet-1: say "You drop the anchor. [Horizon] curves gracefully in to meet the gas giant in its orbit.";
		-- Planet-2: say "You drop the anchor; [Horizon] swings slowly into the asteroid belt. You maneuver towards the odd planetoid.";
		-- Planet-3: say "You drop the anchor. [Horizon] glides in towards the dwarf star and its icy companion.";
		-- otherwise: say "You drop the anchor. [Horizon]'s orbit curves gracefully sunward.";
	now the anchor is lowered;
	move the player to S.

System-leaving is an action applying to nothing.

Check system-leaving when the location is not a system:
	instead say "(BUG) You are not in an outer system."

Check system-leaving when the location is an unlooted system:
	instead say "But you just got here!"

Check system-leaving when the location is Lightless:
	if Lightless is zlit and the compass is fixed and the current-sail is new-sails:
		instead end it;
	if the current-sail is no-sails:
		instead try examining no-sails;
	if Lightless is unzlit and the compass is broken:
		instead say "You have sails, but [if the compass is he-unknown][he-discover]no helium for your[else]no[end if] compass. In any case, the darkness around you is absolute; you can see nowhere to steer.";
	if Lightless is unzlit:
		instead say "The darkness around you is absolute; you can see nowhere to steer.";
	if the compass is broken:
		instead say "Without [if the compass is he-unknown][he-discover]helium for your[else]a functioning[end if] compass, you will never arrive anywhere.";
	instead say "(BUG) Can't go home."

Carry out system-leaving:
	let R be Myrmidal;
	if the location is Myr-system:
		say "The sails begin to unfurl. They catch sunlight. The [HorizonOfNight] shifts gladly around her keel, and slides into interstellar space.";
		let R be a random non-location room in Journey-One-Beginning;
		regenerate R;
	if the location is System-1:
		say "You hoist the sails once again. [Horizon] swings outward from [the star-1], into the spaces beyond.";
		let R be Periphery;
		regenerate R;
	if the location is System-2:
		say "You raise sail to pulsar-light. [Horizon] rides a long crest out through the nebula and into the star-clusters beyond.";
		let R be Elder;
	if the location is System-3:
		say "You hoist the sails once again. Slowly, the infrared glow of the dwarf fills them, and [Horizon] moves out into the galactic halo.";
		let R be Roiling;
	if R is Myrmidal:
		instead say "(BUG) Don't know how to leave [location].";
	now the spreadness is one;
	now the tightness is two;
	move the player to R.

System-entering is an action applying to nothing.

Check system-entering when the spreadness is 3:
	now the travel-cause is the sleeping action;
	say "You vector for the star. But [Horizon]'s velocity is too great; you whip past the star in a shallow hyperbola, and are flung away into the void[one of][or]. You'll have to reef sail before you can make orbit[stopping].[run paragraph on]";
	instead try travelling.

Check system-entering when the location is To-Tighter:
	instead say "The binary star system has no planets."

Check system-entering when the location is Roiling:
	say "You vector for the supergiant. [Horizon]'s fast approach compresses its history. Carbon roils in the star's atmosphere; shock-waves roll in fast-forward across its surface.";
	instead suffer disaster.

Carry out system-entering:
	if a star (called S) is in the location:
		let R be the star-system of S;
		if R is no-system:
			instead say "(BUG) [The S] has no star-system.";
		say "You furl your sails, and descend into [the S]'s outer system.";
		now the spreadness is zero;
		now S is in R;
		move the player to R;
	else:
		say "(BUG) There is no star here."

Travelling is an action applying to nothing.

Check travelling when the location is a planet:
	instead say "(BUG) Can't travel on the ground."

Check travelling when the spreadness is zero:
	if the location is a system:
		instead try raising the current-sail;
	instead say "Only set sail, and you will."

Carry out travelling:
	carry out the travel activity.

To decide whether (A - action-name) is sail-active:
	if A is:
		-- sail-raising action: decide yes;
		-- sail-lowering action: decide yes;
		-- sail-tightening action: decide yes;
		-- sail-loosening action: decide yes;
		-- otherwise: decide no.

To say sail-verb of (A - action-name):
	if A is:
		-- sail-raising action: say "raise";
		-- sail-lowering action: say "lower";
		-- sail-tightening action: say "tighten";
		-- sail-loosening action: say "loosen";
		-- otherwise: say "adjust";

To declare typical travel-cause:
	if the travel-cause is:
		-- waiting action: say "You allow the [Horizon] to move on.";
		-- flying action: say "The [Horizon] moves on.";
		-- sail-raising action: say typical sail-raising;
		-- sail-lowering action: say typical sail-lowering;
		-- sail-tightening action: say typical sail-tightening;
		-- sail-loosening action: say typical sail-loosening;
		-- sleeping action: say line break;
		-- otherwise: say "(BUG) I don't know why we're travelling."

To say typical sail-raising:
	[### more say variants]
	if the spreadness is:
		-- 1: say "You unfurl the sails, and [Horizon] moves outward.";
		-- 2: say "You spread the sails wider. The ship accelerates.";
		-- 3: say "You spread the sails as widely as [Horizon] will allow. She hurtles on.";
		-- otherwise: say "(BUG) Unknown spreadness [spreadness].";

To say typical sail-lowering:
	[### more say variants]
	if the spreadness is:
		-- 2: say "You take the sails in a degree, and [Horizon] slows.";
		-- 1: say "You trim the sails to a narrow edge. The ship slows to a sedate pace.";
		-- 0: say "You furl the sails entirely. [Horizon] is now drifting passively.";
		-- otherwise: say "(BUG) Unknown spreadness [spreadness].";

To say typical sail-tightening:
	[### more say variants]
	if the tightness is:
		-- 2: say "You pull the sails tighter. [Horizon] flies on.";
		-- 3: say "You stretch the sails as tight as you can. The ship quivers as it flies on.";
		-- otherwise: say "(BUG) Unknown tightness [spreadness].";

To say typical sail-loosening:
	[### more say variants]
	if the tightness is:
		-- 2: say "You relax the sails a bit. [Horizon] flies on.";
		-- 1: say "You loosen the sails deeply. The ship wallows as it flies on.";
		-- otherwise: say "(BUG) Unknown tightness [spreadness].";

[The travel activity takes care of all of the travelling actions (all movement which is not planet-arriving/departing or system-entering/leaving). I used an activity so that I could add rules incrementally as the game developed.]

Travel is an activity.

Rule for travel when the location is in Journey-One-Beginning and spreadness is less than three:
	declare typical travel-cause;
	let S be a random non-location room in Journey-One-Beginning;
	regenerate S;
	move the player to S.

Rule for travel when the location is in Journey-One-Beginning and spreadness is three:
	say "You stretch the sails to their fullest spread. The [HorizonOfNight] leans forward eagerly, and springs out into the void.";
	regenerate Dark-Reaches;
	move the player to Dark-Reaches.

Rule for travel when the location is Dark-Reaches:
	if the travel-cause is:
		-- the waiting action: say "[Horizon] [if spreadness is 3]speeds[else]moves[end if] silently through the Reaches.";
		-- the flying action: say "[Horizon] [if spreadness is 3]speeds[else]moves[end if] silently through the Reaches.";
		-- the sail-lowering action:
			if star-1 is not in Dark-Reaches:
				declare typical travel-cause;
			else:
				say "You begin bringing in the sails. But [Horizon]'s velocity is too great; you whip past the star in a shallow hyperbola, and are flung away into the void. [The star-1] disappears behind you.";
		-- otherwise: declare typical travel-cause;
	if star-1 is not in Dark-Reaches:
		if Dark-Reaches is just-saw-star:
			now Dark-Reaches is not just-saw-star;
		else:
			regenerate star-1;
			now star-1 is in Dark-Reaches;
	else:
		if the travel-cause is not the sail-lowering action:
			say "[line break][one of][The star-1] disappears [one of]behind you[or]into the distance[cycling][or]You leave [the star-1] behind[cycling]";
			say "[one of][or]. Perhaps, you think, you should have [if the spreadness is three]slowed down[else]steered[end if] for it[stopping]";
			say ".";
		remove star-1 from play;
		now Dark-Reaches is just-saw-star;
	regenerate Dark-Reaches;
	move the player to Dark-Reaches.

Rule for travel when the location is Periphery:
	say "You [sail-verb of travel-cause] the sails, and";
	if the spreadness is:
		-- 1: say " drift";
		-- otherwise: say " plunge";
	say " into the nebula.";
	regenerate Nebula-Lost;
	move the player to Nebula-Lost.

Rule for travel when the location is Nebula-Lost and the tightness is not one:
	if the travel-cause is:
		-- sail-raising action: say "You spread the sails[if the spreadness is 3] widely[end if], but [Horizon] only shakes more violently.";
		-- sail-lowering action: say "You[if the spreadness is 1] nearly[else if the spreadness is 2] partially[end if] furl the sails. [Horizon] slows, easing through the nebula, but the currents still rock her.";
		-- sail-tightening action:
			say "You tighten the sails";
			if the tightness is 3:
				say " to their pitch. They snap violently in the dust-currents of the nebula; you fear that even their monomolecular structure is about to tear.";
			else:
				say ". They vibrate painfully in the nebula's heavy currents.";
		-- sail-loosening action:
			say "You partially relax the sails, and [Horizon] begins to ease.";
		-- otherwise:
			say "[Horizon] fights on through the nebula";
			if the spreadness is 3:
				say " at a dangerous rate";
			if the tightness is 3:
				say ", shuddering and shaking";
			else:
				say ", rocking unsteadily";
			say ".";
	regenerate Nebula-Lost;
	move the player to Nebula-Lost.

Rule for travel when the location is Nebula-Lost:
	if travel-cause is sail-loosening action:
		say "You loosen the sails to catch the thick dust-currents";
	else:
		say "Your loose sails catch the thick dust-currents";
	say ". [Horizon] pitches once; but then the sails billow and fill, and she comes to hand. You steer her inwards, shifting deftly with the nebula's roiling, until the clouds part before you.";
	move the player to Nebula-Heart.

Rule for travel when the location is Nebula-Heart and the tightness is 3:
	say "You tighten the sails, taut as you can pull them, and steer into the pulsar's beam. The sails sing in the pure clear high-energy stream; the [HorizonOfNight] thrums, blazes, and flings herself out through the veils of dust.";
	move the player to Nebula-Lane.

Rule for travel when the location is Nebula-Heart:
	if travel-cause is:
		-- sail-raising action:
			say "You raise the sails, fighting to angle their [if the tightness is 1]lax[else]loose[end if] fabric against the pulsar-light. [Horizon] accelerates skittishly[if the spreadness is 3] until it hurtles around[else], speeding around[end if] [one of]the edge of the bubble[or]the bubble's edge[cycling]. But speed will do you no favors once you are embroiled in the dust.";
		-- sail-lowering action:
			say "You lower the loose sails, and slow[if the spreadness is 1] to a near-drift[end if]. [Horizon] still handles unevenly, even at this speed.";
		-- sail-loosening action:
			say "You loosen the sails again. They flap helplessly in the pulsar's clear radiation.";
		-- sail-tightening action:
			say "You tighten sail somewhat. It helps; the sails begin to thrum in the clear, hot energy-flow. But it is not enough.";
		-- otherwise:
			say "[one of]Plunging back into the nebula's currents would only leave you as lost as before. [or]You would only lose yourself in the nebula again. [or]Diving out into the nebula would be foolish. [stopping]You need to make use of the blazing energy that surrounds you here."

Rule for travel when the location is Nebula-Lane:
	if the travel-cause is the sleeping action:
		say line break;
	else if the travel-cause is the sail-lowering action:
		say "You begin bringing in the sails. But you cannot slow sufficiently, and [Horizon] slingshot pasts the star, back into the dust clouds.";
	else:
		if the travel-cause is the waiting action or the travel-cause is the flying action:
			say "You";
		else:
			say "You [sail-verb of travel-cause] the sails, and";
		say " allow [the star-2] to pass by. [Horizon] falls back into the dust clouds.";
	regenerate Nebula-Lost;
	move the player to Nebula-Lost.

Just-moved-maze is a truth state that varies.

Rule for travel when the location is Elder:
	now the flux is undetected;
	declare typical travel-cause;
	advance through maze.

Rule for travel when the location is Elder-Retry:
	now the flux is undetected;
	declare typical travel-cause; [###]
	advance through maze.

To advance through maze:
	now just-moved-maze is true;
	increase the maze-count by one;
	if the maze-count is greater than five and the spreadness is not three:
		regenerate Brown-Dwarf;
		move the player to Brown-Dwarf;
		stop;
	let R be Brown-Dwarf;
	if the maze-count is odd or the maze-count is greater than five:
		if the spreadness is one:
			now R is To-Raise;
		else if the spreadness is three:
			now R is To-Lower;
		else if a random chance of one in two succeeds:
			now R is To-Raise;
		else:
			now R is To-Lower;
		regenerate R;
		move the player to R;
	else:
		if the tightness is one:
			now R is To-Tight;
		else if the tightness is three:
			now R is To-Loose;
		else if a random chance of one in two succeeds:
			now R is To-Tighter;
		else:
			now R is To-Looser;
		regenerate R;
		move the player to R.

To detract from maze:
	now just-moved-maze is true;
	decrease the maze-count by two;
	if the maze-count is less than zero:
		now the maze-count is zero;
	move the player to Elder-Retry.

Rule for travel when the location is To-Raise:
	if the travel-cause is the sail-raising action:
		say "You haul the sails higher. [Horizon] accelerates across the void, towards the source of the neutrino shift.";
		advance through maze;
	else:
		if the travel-cause is the sail-lowering action:
			say "You lower the sails. [Horizon] slows, and succumbs to the powerful solar winds of the bubble; she";
		else if the travel-cause is sail-active:
			say "You [sail-verb of travel-cause] the sails; but at your slow speed, [Horizon] succumbs to the powerful solar winds of the bubble. She";
		else:
			say "At your slow speed, [Horizon] succumbs to the powerful solar winds of the bubble. She";
		say " shifts off-course, into the halo reaches.";
		detract from maze.

Rule for travel when the location is To-Lower:
	if the travel-cause is the sail-lowering action:
		say "You lower the sails, and steer carefully into the cluster.";
		advance through maze;
	else:
		if the travel-cause is the sail-raising action:
			say "You raise the sails. [Horizon] accelerates, speeding helplessly past the cluster";
		else if the travel-cause is sail-active:
			say "You [sail-verb of travel-cause] the sails; but at your velocity, [Horizon] plunges past the cluster";
		else:
			say "At your velocity, [Horizon] plunges past the cluster";
		say " and out into the halo.";
		detract from maze.

Rule for travel when the location is To-Tight or the location is To-Tighter:
	if the travel-cause is the sail-tightening action:
		say "You tighten sail. [Horizon] shivers, catching the energetic radiation, and draws in on the neutrino source.";
		advance through maze;
	else:
		if the travel-cause is the sail-loosening action:
			say "You loosen the sails, and they flap limply";
		else if the travel-cause is sail-active:
			say "You [sail-verb of travel-cause] the sails, but they still flap loosely";
		else:
			say "The sails flap loosely";
		say ", spilling the energetic radiation. [Horizon] falls through the cluster and out into the halo.";
		detract from maze.

Rule for travel when the location is To-Loose or the location is To-Looser:
	if the travel-cause is the sail-loosening action:
		say "You relax the sails. They billow, catching the dense solar currents, and you steer [Horizon] into the cluster.";
		advance through maze;
	else:
		if the travel-cause is the sail-tightening action:
			say "You tighten the sails. They quiver, battered by the dense solar current, and you spin";
		else if the travel-cause is sail-active:
			say "You [sail-verb of travel-cause] the sails, but they still shiver, unable to catch the dense solar currents. [Horizon] spins";
		else:
			say "The sails shiver, unable to catch the dense solar currents. [Horizon] spins";
		say " out into the reaches in an uncontrolled tumble.";
		detract from maze.

Rule for travel when the location is Brown-Dwarf:
	if the travel-cause is the sleeping action:
		say line break;
	else:
		if the travel-cause is the waiting action or the travel-cause is the flying action:
			say "You";
		else:
			say "You [sail-verb of travel-cause] the sails, and";
		say " allow [the star-3] to pass by.";
	detract from maze.

Rule for travel when the location is Roiling:
	say "The giant is only an astronomical curiosity, you decide, not a treasure-trove";
	if the travel-cause is the waiting action:
		say ". You allow [Horizon] to pass by";
	else if the travel-cause is the flying action:
		say ". You fly [Horizon] by";
	else:
		say ". You [sail-verb of travel-cause] the sails, and fly [Horizon] by";
	say ". But the spectacle is hypnotic: the speed of your passage compresses the star's story. Carbon roils in the star's atmosphere; shock-waves roll in fast-forward across its surface.";
	instead suffer disaster.

Rule for travel:
	say "(BUG) Don't know how to travel here."

Chapter - Debugging - Not For Release

[A debugging verb to jump to any chapter of the story.]

Zapping is an action applying to one number.

Understand "zap [number]" as zapping.

Carry out zapping:
	if the number understood is:
		-- 1:
			now the ship is boarded;
			now the anchor is raised;
			now the spreadness is 2;
			now the player is in Dark-Reaches;
			try flying;
		-- 2:
			now the ship is boarded;
			now the anchor is raised;
			now the spreadness is 0;
			now the player carries the cloth;
			regenerate star-1;
			now star-1 is in System-1;
			now the player is in System-1;
		-- 3:
			now the ship is boarded;
			now the anchor is raised;
			now the spreadness is 2;
			now the tightness is 3;
			now the player carries the cloth;
			now the player is in Nebula-Lane;
		-- 4:
			now the ship is boarded;
			now the anchor is raised;
			now the spreadness is 0;
			now the player carries the cloth;
			now the player carries the liquid;
			now star-2 is in System-2;
			now the player is in System-2;
		-- 5:
			now the ship is boarded;
			now the anchor is raised;
			now the spreadness is 2;
			now the tightness is 3;
			now the maze-count is 6;
			now the player carries the cloth;
			now the player carries the liquid;
			regenerate Brown-Dwarf;
			now the player is in Brown-Dwarf;
		-- 6:
			now the ship is boarded;
			now the anchor is raised;
			now the spreadness is 0;
			now the player carries the cloth;
			now the player carries the liquid;
			now the player carries the tablets;
			now star-3 is in System-3;
			now the player is in System-3;
		-- otherwise:
			say "I don't know that number."

Chapter - Starship Props

[The "starship" object. This is a backdrop (everywhere) which has the other ship-equipment (keel, compass, sails, etc) as component parts.

(The three treasures are *not* kept in the ship; they're actually your normal inventory.)]

The ship is a backdrop. The printed name is "[Horizon]".

Understand "horizon", "of night", "starship", "spaceship", "star ship", "space ship", "sailer" as the ship.
Understand "hold", "hull", "equipment" as the ship.

The ship is everywhere.
The ship can be boarded.

The description of the ship is "[ship-description]."

To say ship-description:
	if the location is Lightless:
		if known-broken is false:
			now known-broken is true;
			say "[HorizonOfNight] is wounded, but she lives. The hull is sound. The controls and the shipframe are more or less functional. But the sails are destroyed, and the compass must have cracked";
			if Lightless is unzlit:
				say ". Worse: her senses are quite dead. You will have to steer by eye; and there is nothing outside to see, at all";
			else:
				say ". Worse: her senses are quite dead. You will have to steer through this murk by eye. You could do it, if you had a compass -- and sails";
		else:
			if Lightless is unzlit:
				say "The [HorizonOfNight] hangs in darkness, and does not move, and cannot see";
			else:
				say "The [HorizonOfNight] hangs in a swirl of dimly-lit debris";
			if the compass is broken:
				say ". Her compass is cracked";
				if the current-sail is no-sails:
					say "; her sails are ruined";
				else:
					say ", but you have replaced her sails";
			else if the compass is fixed:
				say ". You have recharged the compass";
				if the current-sail is no-sails:
					say ", but her sails are ruined";
				else:
					say " and replaced her sails";
	else:
		say "The [HorizonOfNight][one of] is just the right size for a ship -- big enough to be comfortable, not so large as to be lonely. She[or][stopping]";
		if the location is Myrmidal or the location is Myr-system:
			say " gleams in the light of Myrmidal's sun";
		else if the location is System-1:
			say " gleams [color of star-1] in the starlight";
		else if the location is Planet-1:
			say " shines against the clouds";
		else if the location is Nebula-Heart:
			say " glints in the pulsar's glow";
		else if the location is System-2 or the location is Planet-2:
			say " gleams blue-white in the starlight";
		else if the location is Planet-3:
			say " is a dark outline against the stars";
		else if the location is Roiling:
			say " gleams hell-red in the sunlight";
		else:
			say " shines dimly in the starlight";
		if the spreadness is zero:
			say "; but her sails are furled";
		else:
			say ". [Sail-layout]";
	let N be the number of treasures carried by the player;
	if N is not zero:
		say ".[para]Stowed in [Horizon]'s hold [if N is one]is[else]are[end if] [the list of treasures carried by the player]".

Does the player mean doing something with the ship:
	it is unlikely.

Check searching the ship:
	let N be the number of treasures carried by the player;
	if N is zero:
		instead say "You have nothing on board [Horizon][if the ship is boarded] but yourself[end if].";
	else:
		instead try taking inventory.

Check entering the ship:
	if the ship is not boarded:
		now the ship is boarded;
		instead say "You go aboard [Horizon]. Her airlock closes with a familiar hiss.";
	else:
		instead say "You are already aboard."

Instead of exiting:
	if the ship is not boarded:
		instead say "You haven't even boarded yet.";
	if the location is Myrmidal:
		instead say "Leave the ship? You'd rather leave the planet.";
	If the location is a planet:
		instead say "You could leave the ship if you had a reason.";
	instead say "[Horizon] is much more comfortable on the inside."

Check rubbing the ship:
	instead say "Starships don't need regular scrubbing."

Check tasting the ship:
	instead say "Don't lick the starship. It's tacky."

Check pushing the ship:
	instead say "[Horizon] moves herself."
Check pulling the ship:
	instead say "[Horizon] moves herself."
Check turning the ship:
	instead say "[Horizon] moves herself."

Check taking the ship:
	instead say "[Horizon] is already yours."

Check raising the ship:
	instead try launching.

Check repairing the ship when the location is Lightless:
	instead say "The hull has repaired itself as much as it can. There's nothing you can do to aid it."

Instead of putting something on the ship:
	instead try taking the noun.
Instead of inserting something into the ship:
	instead try taking the noun.

Chapter - Equipment Props

[The various pieces of the ship. This section also includes some equipment-specific verbs, such as "weigh anchor" and "set sail".]

Equipment is a kind of thing. Equipment is scenery.

Check taking equipment:
	instead say "[That-Those-are noun] a part of the [Horizon]."

Check rubbing equipment:
	instead say "Starships don't need regular scrubbing."

Check tasting equipment:
	instead say "Don't lick the starship. It's tacky."

The spreadness is a number that varies.
The tightness is a number that varies.

When play begins:
	now the anchor is part of the ship;
	now the current-sail is old-sails;
	now the current-sail is part of the ship;
	now the keel is part of the ship;
	now the compass is part of the ship;
	now the controls is part of the ship;
	now the sensors is part of the ship;
	now the anchor is lowered;
	now the spreadness is zero;
	now the tightness is two.


The controls are plural-named equipment.

Instead of doing anything to the controls:
	say "You know the controls by heart. You do not have to think about them."

Understand "control", "console", "consoles", "couch" as the controls.

The sensors are plural-named equipment.

Understand "screen", "viewscreen", "viewer", "sensor", "senses", "scanner", "scanners", "longscan" as the sensors.

Instead of doing anything except examining, searching, repairing to the sensors:
	say "You know the controls by heart. You do not have to think about them."

Check examining the sensors:
	instead try looking.
Check searching the sensors:
	instead try looking.

Check repairing the sensors when the location is Lightless:
	instead say "It's hopeless. The only senses [Horizon] has left are your eyes."

The keel is equipment. The description is "[if the location is not Lightless]The keel runs the [Horizon]'s length, its rhodomagnetic core and axis[else]The keel seems to be whole, to your relief[end if]."

Understand "core", "axis" as the keel.

Instead of pulling, pushing, turning the keel:
	say "Fly the ship, and the keel will take care of itself."

Instead of touching, listening to the keel:
	say "The keel hums with [if the location is a planet]restrained power[else]the power of [Horizon]'s flight[end if]."

Check repairing the keel when the location is Lightless:
	instead try examining the keel.

The compass is equipment. The description is "[he-discover][if the compass is unbroken]The compass rests in its bath of liquid helium. Subtle magnetic fields stir between the stars, a sailor knows, and the compass shifts on their breath[else if the compass is broken]The compass housing is ridged with barely-healed scars. It must have cracked in the disaster; most of its superfluid helium has boiled away[one of]. If the ship had not managed this repair, the entire compass assembly might have been hopelessly quenched. No doubt the course-memory of your travels has been lost. But[or]. At least[stopping] the mechanism itself looks sound[else]The compass housing is ridged with barely-healed scars, but it is sealed, and you have refilled it with liquid helium. It should function, though you may never recover the inertial memory[end if]."

Understand "bath", "liquid", "superfluid", "helium" as the compass.

The compass can be unbroken, broken, or fixed.

The compass can be he-unknown or he-known. The compass is he-unknown.

To say he-discover:
	now the compass is he-known.

Instead of touching, turning, pushing, pulling the compass:
	say "It is wiser not to touch the equipment whose operating temperature is a quarter-degree above absolute zero."

Check melting the compass:
	instead say "The compass is [italic type]supposed[roman type] to be cold."

Check repairing the compass when the location is Lightless:
	if the compass is broken:
		instead say "The compass mechanism doesn't need to be repaired. It only needs to be refilled.";
	else:
		instead say "It's as repaired as it's going to get."

The anchor is equipment. The description is "Your anchor is a disk of whirling strange matter[if the location is Lightless]. It doesn't seem to have been damaged; it's secured by the keel[else if the anchor is lowered]. It's dug deeply into the bent space-time of [local-planetary-orbit], holding the [Horizon]'s keel in its frame[else]. It's secured by the keel, edge-on so that it slips without drag through space-time[end if]."

Understand "disk", "strange", "matter" as the anchor.

The anchor can be raised or lowered.

Check turning the anchor:
	instead say "If the anchor weren't spinning, it wouldn't exist."

Check touching the anchor:
	instead say "It feels like strange matter."

Anchor-raising is an action applying to one thing.
Understand "weigh [something]" as anchor-raising.
Understand the command "precess" as "weigh".

Does the player mean anchor-raising the anchor:
	it is likely.

Check anchor-raising the anchor:
	instead try raising the anchor.
Check anchor-raising the compass:
	instead say "Precessing the compass would be a bad, bad idea."
Report anchor-raising:
	say "[That-Those-are noun]n't the anchor."

To say local-planetary-orbit:
	if the location is Myrmidal:
		say "Myrmidal's";
	else:
		say "your";
	say " planetary orbit";

Instead of dropping the anchor:
	try lowering the anchor.

Instead of taking the anchor:
	say "(raising the anchor)";
	try raising the anchor.

Instead of pulling the anchor:
	try raising the anchor.

Instead of pushing the anchor:
	say "(lowering the anchor)";
	try lowering the anchor.

Check raising the anchor when the anchor is raised:
	instead say "The anchor is already raised[one of], and secured by the keel[or][stopping]."

Check raising the anchor when the anchor is lowered:
	instead try planet-departing.

Check lowering the anchor when the anchor is raised:
	if the location is a planet:
		instead say "(BUG) Landed but anchor raised.";
	if the location is a system:
		instead try planet-arriving;
	if the location is To-Tighter:
		instead say "The binary star system has no planets.";
	if the location is solar-curious:
		instead say "You are too far out to drop anchor. Steer towards that star, maybe, first.";
	if the location is Nebula-Heart:
		instead try entering the pulsar;
	instead say "Out here? There's nowhere in sight to anchor."

Check lowering the anchor when the anchor is lowered:
	instead say "The anchor is already lowered."

Check repairing the anchor when the location is Lightless:
	instead say "It doesn't seem to have been damaged."

Sails are a kind of equipment. Sails are plural-named.

Understand "sail", "sails" as sails.
Understand "spar", "spars", "mast" as sails.

The current-sail is sails that vary.

The old-sails are sails. The printed name is "sails".
The description is "[if the location is Myrmidal]The [Horizon]'s sails are kilometers of shimmering monomolecule -- charged silver lace ready to spread in the night[else if the location is Myr-system]They are kilometers of shimmering monomolecule. [Sail-layout][else][Sail-layout][end if]."

Understand "charged", "silver", "lace", "monomolec" as the old-sails.

To say sail-layout:
	if the spreadness is zero and the location is Myr-system:
		say "Spread that bright lace into the fields of solar energy, and you can leave this cramped star-system behind";
		stop;
	if the spreadness is zero:
		say "The sails are furled";
		stop;
	if spreadness is:
		-- 1: say "The sails are rigged narrow";
		-- 2: say "The sails are spread";
		-- 3: say "The sails are spread wide";
		-- otherwise: say "The sails are (BUG) [spreadness]";
	if tightness is:
		-- 3: say ", and drawn tight and taut";
		-- 1: say ", but ripple loosely";
	[### clue when in flight!]

To say status line desc:
	if the anchor is lowered:
		say "(at anchor)";
		stop;
	if the current-sail is no-sails:
		say "(adrift)";
		stop;
	if the spreadness is 0:
		say "(sails furled)";
		stop;
	say "(sails";
	if the tightness is:
		-- 1: say " loose,";
		-- 3: say " taut,";
	if the spreadness is:
		-- 1: say " slightly raised";
		-- 2: say " partly raised";
		-- 3: say " fully raised";
		-- otherwise: say "(sails (BUG)";
	say ")".

The no-sails are sails. The printed name is "ruined sails".
The description is "[one of][if known-broken is false]You scan the spars, and then scan them again, but it is just as you expected: your sails are gone[else]Your sails are gone; only tatters hang on the spars[end if]. The monomolecular lace was surely blasted apart in the first instant of the disaster.[para]But then, if the sails had held against the shockwave, you suppose you would have been swept into the next galaxy. Small blessings[or]Your sails are gone; only ruined tatters of lace remain on the spars[stopping]."

Understand "charged", "silver", "lace", "monomolec" as the no-sails.
Understand "ruined", "missing", "tatter", "tatters", "tattered" as the no-sails.

Check repairing no-sails:
	instead say "Repair them? There's nothing left of the sails to repair."
Check touching no-sails:
	instead try examining the no-sails.
Instead of pushing no-sails:
	instead try examining the no-sails.
Instead of pulling no-sails:
	instead try examining the no-sails.
First check lowering no-sails:
	instead try examining the no-sails.
Check sail-lowering no-sails:
	instead try examining the no-sails.
Check sail-tightening no-sails:
	instead try examining the no-sails.
Check sail-loosening no-sails:
	instead try examining the no-sails.

The new-sails are sails. The printed name is "iridescent sails".
The description is "[if Lightless is not zlit]The tissue's iridescence is invisible in this darkness, but it hangs on the spars, ready to raise[else]The new sails gleam dimly on [Horizon]'s spars, hanging on long folds, ready to raise. But the tissue is slowly subliming a trace of silver vapor. It will not last forever[end if]."

Understand "iridescent", "cloth", "silver", "vapor", "trace" as the new-sails.

Check touching sails:
	instead say "So much as a fingerprint would be enough to throw starship sails off-balance -- if it didn't tear right through them."

Check climbing sails:
	instead say "You can rig the sails from right here."

The sail-bits are plural-named scenery. The printed name is "sail nomenclature".
The sail-bits are part of the old-sails.
Understand "foresail", "aftsail", "mainsail", "headsail", "stunsl", "stuns'l", "spinnaker", "jib" as the sail-bits.
Understand "fore sail", "aft sail", "main sail", "head sail", "nomenclature" as the sail-bits.

Instead of doing anything to the sail-bits:
	say "Starship sails aren't named like that."

Sail-rigging is an action applying to one thing.
Understand "rig [something]" as sail-rigging.
Understand the command "rerig" as "rig".
Does the player mean sail-rigging sails:
	it is likely.
Report sail-rigging:
	say "[That-Those-are noun]n't a sail."

Instead of sail-rigging the ship:
	if the spreadness is zero:
		say "(raising the sails)";
		instead try sail-raising the current-sail;
	else:
		instead try sail-rigging the current-sail.

Instead of sail-rigging sails:
	if the spreadness is zero:
		instead try sail-raising the noun;
	else:
		say "You could";
		if the spreadness is:
			-- 3: say " lower the sails (they are fully raised)";
			-- otherwise: say " raise or lower the sails";
		say ", or";
		if the tightness is:
			-- 1: say " tighten them (they are loose)";
			-- 3: say " loosen them (they are fully taut)";
			-- otherwise: say " tighten or loosen them";
		instead say "."

Sail-raising is an action applying to one thing.
Sail-lowering is an action applying to one thing.
Understand the command "set" as something new.
Understand "set [something]" as sail-raising.
Understand the command "spread", "widen", "broaden", "unfurl", "unfold", "unreef", "more" as "set".
Understand "strike [something]" as sail-lowering.
Understand the command "reef", "narrow", "furl", "fold", "trim", "less" as "strike".

Does the player mean sail-raising sails:
	it is likely.
Does the player mean sail-lowering sails:
	it is likely.

Check sail-raising sails:
	instead try raising the noun.
Check sail-lowering sails:
	instead try lowering the noun.
Check sail-raising the liquid when the location is Lightless:
	instead try opening the liquid.
Report sail-raising:
	say "[That-Those-are noun]n't a sail."
Report sail-lowering:
	say "[That-Those-are noun]n't a sail."

Instead of cutting sails:
	instead try lowering the noun.
Instead of dropping sails:
	instead try lowering the noun.
Instead of closing sails:
	instead try lowering the noun.

Instead of opening sails:
	instead try raising the noun.

Check raising sails when the location is Myrmidal:
	instead say "You can't raise sail here! The docking environment is crowded with ships and equipment[one of]. Your sails would be destroyed immediately, and with a terrible mess[or][stopping]."

Check raising sails when the location is Planet-1:
	instead say "You can't raise sail inside a planetary atmosphere!"

Check raising sails when the location is Planet-3:
	instead say "You can't raise sail on a planet's surface!"

Check raising sails when the location is a planet:
	instead say "You can't raise sail from planetary orbit[one of]! This inner system is thick with dust and raw sunlight; the sails would be shredded in minutes[or]! The sails would be shredded in minutes[or][stopping]."

Check raising sails when the location is a system:
	instead try system-leaving.

Check raising sails when the spreadness is greater than two:
	instead say "The sails are spread to their widest extent."

Check raising sails:
	increase the spreadness by one;
	now the travel-cause is the sail-raising action;
	instead try travelling.

Check lowering sails when the spreadness is zero:
	instead say "The sails are already furled."

Check lowering sails when the spreadness is less than three:
	if the location is solar-curious:
		instead try system-entering.

Check lowering sails when the spreadness is one:
	if the location is Nebula-Heart:
		instead try entering the pulsar;
	instead say "You don't want to strike your sails completely, not out here in the void. That would leave [Horizon] an aimless comet."

Check lowering sails:
	decrease the spreadness by one;
	now the travel-cause is the sail-lowering action;
	instead try travelling.

Sail-tightening is an action applying to one thing.
Sail-loosening is an action applying to one thing.

Understand "tighten [something]" as sail-tightening.
Understand the commands "tight", "taut", "tauten", "stretch" as "tighten".
Understand "loosen [something]" as sail-loosening.
Understand the commands "loose", "relax", "release", "slack", "slacken" as "loosen".

Does the player mean sail-tightening sails:
	it is likely.
Does the player mean sail-loosening sails:
	it is likely.

Check pulling sails when the spreadness is zero:
	instead say "You must raise the sails before you can tauten or loosen them."
Check pushing sails when the spreadness is zero:
	instead say "You must raise the sails before you can tauten or loosen them."

Check pushing sails when the tightness is one:
	instead say "You've given the sails as much play as you can."

Check pulling sails when the tightness is three:
	instead say "You've drawn the sails as tight as they'll go."

Check pulling sails:
	increase the tightness by one;
	now the travel-cause is the sail-tightening action;
	instead try travelling.

Check pushing sails:
	decrease the tightness by one;
	now the travel-cause is the sail-loosening action;
	instead try travelling.

Check sail-tightening sails:
	instead try pulling the noun.
Check sail-loosening sails:
	instead try pushing the noun.
Report sail-tightening:
	say "[That-Those-are noun]n't a sail."
Report sail-loosening:
	say "[That-Those-are noun]n't a sail."

Chapter - Treasure

[The three items you collect in the game are treasures.]

Treasure is a kind of thing.

Rule for writing a paragraph about treasure (called T):
	now T is mentioned.

Check dropping a treasure:
	if the player carries the noun:
		instead say "You hate the thought of discarding [the noun].";
	else:
		instead say "You don't have [the noun]."

Instead of taking inventory:
	let N be the number of treasures carried by the player;
	if N is zero:
		say "You own nothing of value, besides the [HorizonOfNight].";
	else:
		say "You have [the list of treasures carried by the player],";
		if N is 3:
			say " all";
		say " safely stowed."

Chapter - Environments

[This section defines some useful kinds: planets and systems (which are rooms), planet-props and stars (which are scenery objects that go in the rooms.) Also the ubiquitous "stars" backdrop.

A room with a desc-generator rule has a randomized description. We generate a new room description when the room is entered, and store the text in a buffer. (This happens in the travelling action.) We can then print the text if the player types "look".]

A room has a rule called the desc-generator. The desc-generator is usually the default-desc-generator rule.
A room can be desc-generated.

This is the default-desc-generator rule:
	say "(BUG) This room has no description generator."

To regenerate (R - room):
	now R is unvisited;
	now R is desc-generated;
	let G be the desc-generator of R;
	fill room buffer with G.

To fill room buffer with (G - rule): (- FillZBuffer(z_buffer_room, Z_BUFLEN_ROOM, {G}); -).

To say the room buffer: (- PrintZBuffer(z_buffer_room); -).

Before printing the locale description of a desc-generated room:
	say the room buffer.

A planet is a kind of room.

Definition: a planet is looted unless it is unlooted.
Definition: a planet is unlooted if a treasure is in it.

A system is a kind of room. No-system is a system.

Planet-system relates one planet to one system.
The verb to underlie (it underlies) implies the planet-system relation.
The verb to overlay (it overlays) implies the reversed planet-system relation.

Definition: a system is looted if it overlays a looted planet.
Definition: a system is unlooted if it overlays an unlooted planet.

Definition: a room is solar-systemic if it is a planet or it is a system.

Definition: a room is solar-curious if it is not a planet and it is not a system and it contains a star.

A star is a kind of thing. The printed name is "[star-printed-name]".
A star is usually scenery.

Understand "star", "sun" as a star.

A star has a color. Understand the color property as describing the star.
A star has a color-modifier. Understand the color-modifier property as describing the star.
A star has a star-descriptor. Understand the star-descriptor property as describing the star.

A star has a system called the star-system. The star-system is usually no-system.

To say star-printed-name:
	let S be the item described;
	if the star-descriptor of S is not no-star-desc:
		say "[star-descriptor of S] ";
	if the color of S is not no-color:
		say "[color of S] ";
	say "star".

To regenerate (S - star):
	now S is no-modifier;
	now S is no-star-desc;
	choose a random row in the Table of Star-Appropriate Colors;
	let C be the color entry;
	now S is C;
	if a random chance of 1 in 2 succeeds:
		now S is a random color-modifier;
	let N be 2;
	if S is no-modifier:
		now N is 4;
	if a random chance of N in 5 succeeds:
		now S is a random star-descriptor.

Instead of entering a star:
	if the location is solar-curious:
		instead try system-entering;
	else:
		instead say "The inside of a star is more exotic an adventure than you are prepared for."

Check melting a star:
	instead say "Stars are hot enough already, really."

Instead of doing something other than examining, listening, melting, or entering to a star:
	say "That makes no sense."

Does the player mean entering a star:
	it is likely.

A planet-prop is a kind of thing. A planet-prop is scenery.
Understand "planet", "world" as a planet-prop.

Instead of entering a planet-prop:
	instead try planet-arriving;

Instead of pushing, pulling, turning a planet-prop:
	instead say "It's really too big for that."

Instead of touching, searching a planet-prop:
	instead say "You haven't landed."

Does the player mean entering a planet-prop:
	it is very likely.

The stars-backdrop are a plural-named backdrop. The printed name is "stars".
The stars-backdrop are everywhere.
The description is "The stars are infinite."

Understand "stars", "cluster", "core", "galaxy", "galactic" as the stars-backdrop.
Understand "space", "darkness" as the stars-backdrop when the location is not Lightless.

Instead of doing anything to the stars-backdrop when the location is Lightless:
	say "There are no stars."

Instead of entering the stars-backdrop:
	try flying.
Instead of doing anything except entering or examining to the stars-backdrop:
	say "Hardly."

Chapter - Beginning

[The game opening: Myrmidal and its star system.]

Myrmidal is a planet. The printed name is "Myrmidal -- the Docks".
"The [HorizonOfNight] is a sweet tiny sailer[one of]; you have missed her more than you remembered. Now she comes alive for you[or][stopping]. The keel hums with power; the monomolecular sails are reefed and ready. The compass spins to the touch of the Galaxy's magnetic currents. You have only to weigh anchor, and leave Myrmidal behind."

The docked-ships are plural-named scenery in Myrmidal. The printed name is "docked ships".
Understand "ships", "docked" as the docked-ships.

Instead of doing anything to the docked-ships:
	say "You only have eyes for [Horizon]."

Myr-system is a system. The printed name is "Myrmidal -- Far Orbit".
"You are circling the outer fringe of Myrmidal's system, where your keel's rhodomagnetics balance the solar winds. You pass snow-miners and farfactories, humming cheerfully in their work[one of].[para]Already the quiet is a relief. But this is still civilization, and this star has nothing for you[or]. The near-quiet is a relief[or][stopping]."

Myr-system overlays Myrmidal.
Myr-system is smugged.

The Myr-star is a star in Myr-system. The printed name is "star". The color of Myr-star is golden.
Understand "lovely", "subgiant" as Myr-star.
The description is "Myrmidal's sun is a lovely golden subgiant."

Myr-prop is a planet-prop in Myr-system. The printed name is "Myrmidal".
Understand "myrmidal" as Myr-prop.

Instead of doing anything except entering to Myr-prop:
	instead say "Myrmidal is behind you now."

The workers are plural-named scenery in Myr-system. The printed name is "workers".

Understand "miner", "miners", "snow", "snow-miner", "farfactor", "factory", "factories", "industrial", "belt" as the workers.

Instead of doing anything to the workers:
	instead say "You have no interest in Myrmidal's extended industrial belt."

Chapter - Journey the First

[Travel to the gas giant and pick up the cloth.]

Journey-One-Beginning is a region.

Spindrift is a room in Journey-One-Beginning. The printed name is "The Spindrift Stars".
The desc-generator is the j1b-desc rule.

Hinder is a room in Journey-One-Beginning. The printed name is "The Hinder Arm".
The desc-generator is the j1b-desc rule.

Marches is a room in Journey-One-Beginning. The printed name is "The Outer Marches".
The desc-generator is the j1b-desc rule.

The j1b-fly-count is a number that varies.

This is the j1b-desc rule:
	increase the j1b-fly-count by one;
	if a random number between 1 and 3 is:
		-- 1: say "[one of]Stars[or]The stars[cycling] thin around you as you leave the bright worlds behind";
		-- 2: say "The bright worlds [one of]fade[or]fall[cycling] behind you";
		-- 3: say "The stars are [one of]thinner[or]less dense[cycling] here, beyond the bright worlds";
	if a random number between 1 and 3 is:
		-- 1: say ". Nebulae drift past[one of][or], hiding the Core[cycling]";
		-- 2: say ". A [one of]globular[or]stellar[cycling] cluster drifts by";
	say "."

The j1b-boredom-count is a number that varies.

After printing the locale description when the location is in Journey-One-Beginning:
	if j1b-fly-count is one:
		say "[line break]Somewhere out there, you sense, are treasures worthy of your attention[one of][or]. You are eager to fly on[stopping].";
	else:
		increase the j1b-boredom-count by one;
	if the j1b-boredom-count is:
		-- 0: do nothing;
		-- 1: say "[line break]You won't get far into the unknown at this rate.";
		-- otherwise:
			if spreadness is one:
				say "[line break]These are still familiar stars. You'll need more sail to move beyond them.";
			else:
				say "[line break]You're moving faster now, but the dark reaches are still beyond you[one of].[or]. More sail![stopping]";

Dark-Reaches is a room. The printed name is "The Dark Reaches".
The desc-generator is the j1r-desc rule.
Dark-Reaches can be just-saw-star.

This is the  j1r-desc rule:
	if a random number between 1 and 4 is:
		-- 1: say "[one of][Horizon] is[or]You are[cycling] far beyond the bright worlds now. ";
		-- 2: say "The bright worlds are far behind [one of][Horizon][or]you[cycling] now. ";
		-- 3: say "You [if spreadness is 3]speed[else]move[end if] through the void. ";
	if a random number between 1 and 4 is:
		-- 1: say "Darkness clots thickly between the stars";
		-- 2: say "The stars are [one of]thinly[or]widely[cycling]-scattered dust";
		-- 3: say "Wide sunless spaces stretch between distant stars";
		-- 4: say "Emptiness hangs wide between the stars";
	if a random number between 1 and 4 is:
		-- 1: say ", out here";
		-- 2: say ", and you sense no trace of d'Accord [one of]travel[or]presence[cycling]";
	if star-1 is in Dark-Reaches:
		say ".[para][A star-1] catches your [one of]eye[or]interest[or]attention[cycling]";
	say "."

The star-1 is a star.
The description is "It's common enough for a star of its spectral class[if the location is not System-1]. However, you hear a faint jangling from its direction, in the long-wave band[end if]."

The jangling is part of star-1. The printed name is "jangling sound".
The description is "You are detecting a faint, musical jangling from [if the location is System-1]the gas giant[else][the star-1]'s vicinity[end if]."
Understand "sound", "noise", "music", "musical", "long-wave", "wave", "band", "alien", "signal" as the jangling.

Instead of doing anything other than examining, listening to the jangling:
	say "It's just long-wave noise."

Instead of listening to the jangling:
	try examining the jangling.

Instead of listening to the star-1 when the location is not System-1:
	try examining the jangling.

Instead of listening to Dark-Reaches when the star-1 is in the location:
	try examining the jangling.

System-1 is a system. The printed name is "Somewhere -- Far Orbit".
The description is "This [color of star-1] star is circled by the usual assortment of barren rocks[if Planet-1 is unlooted]. However, a faint, long-wave jangling radiates from one fat gas giant[else]. The alien signal fades as you circle outward from the gas giant[end if]."

The gas-giant is a planet-prop in System-1. The printed name is "gas giant".
The description is "The planet is a banded globe of russet, mauve, and violet. The signal radiating from it is unusual, however."

Understand "gas", "giant", "fat", "banded", "globe", "mauve", "violet", "russet" as the gas-giant.

Instead of listening to the gas-giant:
	try examining the jangling.

Instead of listening to System-1:
	try examining the jangling.

The rocks are scenery in System-1.
Understand "barren", "planetary", "rock" as the rocks.

Instead of doing anything to the rocks:
	instead say "The planetary rocks are uninteresting."

Planet-1 is a planet. The printed name is "Gas Giant -- Atmosphere".
The description is "[Horizon] hangs within the cloud layers of the nameless gas giant. Mauve and violet bands of cloud slide past you."

System-1 overlays Planet-1.
The star-system of star-1 is System-1.

The floaters are plural-named fixed in place in Planet-1.
The description is "A flock of vast, gaseous jellyfish-beings move across the face of the world.[para]You notice sheets of iridescent tissue peeling from some of them and drifting away through the clouds."

Understand "vast", "floating", "floater", "bubble", "bubbles", "jellyfish", "jelly", "fish", "gaseous", "alien", "aliens", "beings", "flock", "shape", "shapes" as the floaters.

Rule for writing a paragraph about the floaters:
	say "[one of]Something iridescent drifts out from behind a cloud. You think of a bubble, and then a jellyfish. By the time the scale registers, others have followed: vast floating shapes, gaseous and shimmering, each a kilometer long[or]A flock of vast, gaseous jellyfish-beings move through the clouds. You notice sheets of iridescent membrane peeling from some of them and drifting away -- a natural shedding part of their life cycle, perhaps[or]A flock of vast, gaseous jellyfish-beings move through the clouds. You notice sheets of iridescent membrane peeling from some of them and drifting away[stopping]";
	say ".[para][one of]Incomprehensible[or]Alien[or]Unfathomable[cycling] long-wave harmony rings through the [one of]clouds[or]atmosphere[cycling]";
	if Planet-1 is looted:
		say ". But you have your trophy, and studying these beings is beyond you[one of][or]. Time to move on[stopping]";
	say "."

Instead of listening to the floaters:
	try examining the music.

Instead of doing anything other than examining, listening to the floaters:
	say "You do not wish to approach the floaters too closely."

The clouds are plural-named scenery in Planet-1. The description is "The clouds are massive banks of russet and violet, lit from somewhere above by the [color of star-1] light of their sun."
Understand "cloud", "layer", "layers", "mauve", "violet", "russet", "band", "bands" as the clouds.

Instead of entering the clouds:
	say "You are already among the clouds."

Instead of listening to the clouds:
	try examining the music.

Instead of doing anything other than examining, listening, entering to the clouds:
	say "They're only clouds."

The music is scenery in Planet-1.
The description is "You cannot even determine whether it is language."
Understand "sound", "noise", "music", "musical", "long-wave", "wave", "band", "harmony", "incomprehensible", "signal" as the music.

Instead of doing anything other than examining, listening to the music:
	say "It's just a long-wave signal."

Instead of listening to the music:
	try examining the music.

Instead of listening to Planet-1:
	try examining the music.

The cloth is treasure in Planet-1. The printed name is "iridescent cloth". The indefinite article is "some".
The description is "[if the player does not carry the cloth]You do not know why the floating beings shed this substance, but it drifts away from the flock in long, iridescent streamers. Each one twists slowly through the clouds, until it is lost from sight[else]You have lengths of the iridescent tissue neatly packed in the hold. It is nearly weightless, but it catches the light in a way that even monomolecular cloth cannot match[end if]."

Understand "iridescent", "membrane", "fabric", "sheet", "sheets", "tissue", "streamer" as the cloth.

Instead of pulling, pushing, touching the cloth when the player does not carry the cloth:
	say "You'll have to take some first."

Rule for implicitly taking the cloth:
	instead say "You don't have [the cloth]."

Check touching the cloth:
	instead say "You feel very nearly nothing at all."

Check wearing the cloth:
	instead say "It's in vast sheets. Sewing it into a suit of clothing would be tacky, even for Myrmidal high society."

Check taking the cloth when the player carries the cloth:
	instead say "You have already taken a quantity of the cloth on board."

Report taking the cloth:
	instead say "You glide cautiously below the flock, and gather a sample of the shed tissue. Up close, it is more like cloth than a grown membrane, although it lacks the regularity of artificial fabric. In any case, the fibers are incredibly fine -- almost transparent.[para]You have seen nothing like it before. And you are certain that, within d'Accord, you are the first. You stow your prize in the hold."

Check sail-rigging the cloth:
	if the location is Lightless:
		remove the cloth from play;
		remove the no-sails from play;
		now the current-sail is new-sails;
		now the current-sail is part of the ship;
		now known-broken is true;
		instead say "You unroll the iridescent cloth from your hold, and begin fastening it to [Horizon]'s spars.[para]The tissue seems strong and it plays well upon your lines. Even reefed, it rolls eagerly in [if Lightless is zlit]the dust currents[else]the unseen currents of this space[end if]. After a timeless interval of labor, you have its full measure rigged and ready to unfurl[if Lightless is zlit].[para]But you notice a faint silver vapor subliming from the new sails. Apparently this material, light as it is, is not perfectly suited for space travel. Best you hurry[end if].";
	instead say "The iridescent cloth is invaluable, and you have perfectly good sails already."

Instead of inserting the cloth into the ship when the location is Lightless:
	try sail-rigging the cloth.
Instead of putting the cloth on the ship when the location is Lightless:
	try sail-rigging the cloth.

Instead of sail-tightening the cloth when the location is Lightless:
	try sail-rigging the cloth.
Instead of sail-loosening the cloth when the location is Lightless:
	try sail-rigging the cloth.

Instead of lowering the cloth when the location is Lightless:
	instead say "Presumably you'd want to spread the iridescent cloth, not lower it."
Instead of sail-lowering the cloth when the location is Lightless:
	instead say "Presumably you'd want to spread the iridescent cloth, not lower it."

Instead of inserting the cloth into sails:
	instead try sail-rigging the cloth.
Instead of putting the cloth on sails:
	instead try sail-rigging the cloth.

Instead of raising the cloth:
	try sail-rigging the cloth.
Instead of sail-raising the cloth:
	try sail-rigging the cloth.

Instead of tying the cloth to the ship:
	try sail-rigging the cloth.

Instead of tying the cloth to sails:
	try sail-rigging the cloth.

Chapter - Journey the Second

[Travel to the planetoid and pick up the light.]

Journey-Two is a region.

The nebula is a backdrop. The nebula is in Journey-Two.
The description is "[if the location is Periphery]A nebula is splashed colorfully across space, directly ahead. It looks promising[else if the location is solar-systemic]The nebula entirely surrounds this system[else]The nebula is all around you. Surely there is something to discover in its depths[end if]."

Instead of doing anything except examining or entering to the nebula:
	say "The nebula is too vast and intangible to affect."

Instead of entering the nebula:
	try flying.

Understand "dust", "web", "vapor", "gas", "tendril", "tendrils", "cloud", "clouds" as the nebula.

Periphery is a room in Journey-Two. The printed name is "Nebula Periphery".
The desc-generator is the j2periph-desc rule.

This is the  j2periph-desc rule:
	say "Tendrils of dust encroach on these straits, hazing the stars. A stellar nebula looms ahead -- a fantastic web of blue, green, and violet vapor, stirred by internal currents."

Nebula-Lost is a room in Journey-Two. The printed name is "Interior of Nebula".
The desc-generator is the j2lost-desc rule.

To say j2lost-desc-winds:
	if a random chance of 1 in 4 succeeds:
		say "Slow, [one of]thick[or]heavy[at random] stellar winds";
		say " perturb the nebula";
	else:
		say "The [one of]stellar winds[or]starwinds[or]winds[at random] are [one of]turgid and heavy[or]turgid[or]thick[or]thick and turgid[at random]";
		say "[one of], here in the nebula[or] here[at random]".

The j2lost-fly-count is a number that varies.

This is the  j2lost-desc rule:
	increase the j2lost-fly-count by one;
	let beforeflag be whether or not a random chance of 2 in 5 succeeds;
	if beforeflag is true:
		say j2lost-desc-winds;
		say ". ";
	if a random number between 1 and 2 is:
		-- 1:
			say "Clouds of [one of]dust[or]vapor[or]gas[at random] [one of]roil[or]swirl[at random][one of][or] around you[at random]";
			say "[one of], nearly blotting out the stars[or], obscuring the stars[or], confusing your sight[or][at random]. ";
		-- 2:
			say "You are lost in clouds of [one of]dust[or]vapor[or]gas[at random]. ";
	if beforeflag is false:
		say j2lost-desc-winds;
		say "[one of]. [or]; [at random]";
	say "[Horizon] heaves [if the tightness is 3]frighteningly[else]uneasily[end if] as she [if the spreadness is 3]crashes through[else if the spreadness is 2]moves across[else]wallows through[end if] the currents";
	say ".";

After printing the locale description when the location is Nebula-Lost:
	if the j2lost-fly-count is greater than one:
		say "[line break][one of]Your sails are[if the tightness is 3] much[end if] too taut for this dense environment, you realize[or]You will have to loosen sail to gain control[stopping]."

Nebula-Heart is a room in Journey-Two. The printed name is "Pulsar's Nest".

The description is "[Horizon] circles the rim of a vast, empty bubble -- a void swept clear by the bright-beating pulsar at its heart. Hot radiation sleets around you, most intensely in the pulsar's whirling beams."

A pulsar is scenery in Nebula-Heart.
The description is "A pulsar is the core of a dead star -- its bulk long since blasted away, dispersed to the dust that surrounds this place. The tiny dense remnant has not yet cooled, after these aeons. It blazes hot and clear, and casts two polar beams in wild spirals as it whirls."

Understand "beating", "heart", "neutron", "dead", "energetic", "star", "sun", "core" as the pulsar.

Instead of doing anything except examining, entering the pulsar:
	say "That makes no sense."

Check entering the pulsar:
	instead say "A close approach to such an energetic dead star would kill you, despite [Horizon]'s protection[one of][or]. If there is something to investigate in this nebula, it lies farther out[stopping].";

The radiation is scenery in Nebula-Heart. The indefinite article is "some".
The description is "The radiation in this space is a pure hot high-energy blaze -- very different from the dust-thick currents out in the nebula. The pulsar's beams whirl around the bubble in a spiralling sweep. (48.327 rotations per second, whispers the compass.)"

Understand "bright", "pure", "clear", "hot", "radiation", "high", "energy", "blaze", "polar", "beam", "beams", "whirling", "spiral", "whirl" as the radiation.

Check taking the radiation:
	instead try entering the radiation.

Check entering the radiation:
	instead say "[one of]That's what sails are for[or]That's what sails are for[or]You could catch the radiation stream if you rigged your sails for it[or]You could catch the radiation stream if your sails were tighter[stopping]."

Instead of doing anything except examining, entering, taking the radiation:
	say "That makes no sense."

Nebula-Lane is a room in Journey-Two. The printed name is "Corridor in Nebula".

The description is "You are [if spreadness is 1]moving[else if spreadness is 2]diving[else]streaking[end if] along a narrow passage, an open lane through the nebula's streams of dust. Far behind you, the pulsar illuminates your sails every .02 seconds or so.[para]A small blue-white star stands out in this empty zone."

The far-pulsar is scenery in Nebula-Lane. The printed name is "pulsar".
Understand  "beating", "heart", "neutron star", "dead star", "pulsar" as the far-pulsar.
Understand "bright", "pure", "clear", "hot", "radiation", "high", "energy", "blaze", "polar", "beam", "beams", "whirling", "spiral", "whirl" as the far-pulsar.

The description is "The pulsar's nest is far behind you now, but the whirling beams of energy still reach you."

Check entering the far-pulsar:
	instead say "You are riding the pulsar's energy [italic type]away[roman type] from it."

Instead of doing anything except examining, entering the far-pulsar:
	say "You have left the pulsar behind."

The star-2 is a star in Nebula-Lane. The color of star-2 is white. The printed name is "blue-white star".

The description is "[if the location is Nebula-Lane]It stands alone in this empty corridor[else]It's common enough for a star of its spectral class[end if]."

Understand "small", "blue", "white", "blue-white" as star-2.

System-2 is a system in Journey-Two. The printed name is "Somewhere Else -- Far Orbit".
The description is "This blue-white sun has no planets, only a broad ring of asteroidal trash. One planetoid seems touched with an unusual glow."

The star-system of star-2 is System-2.

The planetoid is a planet-prop in System-2.
The description is "The planetoid seems laced with a faint glow, even on its dark side."

Understand "unusual", "faint", "glow", "glowing" as the planetoid.

Planet-2 is a planet in Journey-Two. The printed name is "By Planetoid".

The description is "This is a dusty, cratered potato of a rock just like billions of others... except for the strange pale light which pools in the deepest craters."

The trash is scenery in System-2.
Understand "asteroid", "ring" as the trash.

Instead of doing anything to the trash:
	instead say "Only one planetoid is unusual enough be worth a look."

System-2 overlays Planet-2.

The liquid is treasure in Planet-2. The printed name is "liquid light". The indefinite article is "some".
The description is "[if the player does not carry the liquid]The light seems fluid -- as if starlight had condensed on this lonely rock, and dripped down to puddle in the cracks and crevices[one of]. You know no chemistry which could explain such a phenomenon[or][stopping][else]The hold contains several carboys of the pale liquid light. It seems to pulse faintly in its containers[end if]."

Understand "strange", "pale", "light", "fluid", "luminescence" as the liquid.
Understand "pool", "pools", "pool of", "pools of", "phenomenon" as the liquid when the liquid is in Planet-2.
Understand "carboy", "carboys", "container", "carboy of", "carboys of", "containers of" as the liquid when the player carries the liquid.

Rule for implicitly taking the liquid:
	instead say "You don't have [the liquid]."

Check touching the liquid:
	instead say "The liquid is insubstantial."

Check taking the liquid when the player carries the liquid:
	instead say "You have already taken a quantity of the liquid light on board."

Check tasting the liquid:
	instead try drinking the liquid.

Check drinking the liquid:
	instead say "Drinking light? Poetic, but it would be either ineffectual or instantly fatal, and you don't know enough physics to decide which."

Report taking the liquid:
	instead say "You venture out with several storage carboys. The liquid light registers no mass nor temperature, but it seems to respect the fused-quartz surface of the containers. You fill them, and stow your prize in the hold, where it gleams gently."

Check opening the liquid:
	if the location is Lightless:
		remove the liquid from play;
		now Lightless is zlit;
		instead say "You lever the carboys out of the hold, crack the seals, and expose the liquid light to space.[para]A thin streamer of light spreads from [Horizon]'s hold. It does little to shift the darkness... but another streamer rolls outward, and then more. Soon you can make out dust particles and shreds of debris -- a star's remains, now aggregated by chance or [Horizon]'s own gravity into a swirling mass. Some aeon this might become a planet.[para]The light diffuses quickly, but your surroundings are illuminated now. You have a chance of getting clear of this space[if the current-sail is new-sails].[para]In the new light, you notice a faint silver vapor subliming from your replacement sails. Apparently this material, light as it is, is not perfectly suited for space travel. Best you hurry[end if].";
	if the player carries the liquid:
		instead say "If you opened the containers, the liquid light would escape."

Check dropping the liquid when the location is Lightless:
	instead try opening the liquid.

Pouring is an action applying to one thing.
Understand "pour [something]" as pouring.
Understand "pour [other things] on/onto [something]" as putting it on.
Understand "pour [other things] in/inside/into/to [something]" as inserting it into.
Understand the commands "empty", "spill", "drain" as "pour".

Check pouring the liquid:
	instead try dropping the liquid.
Check pouring the compass:
	if the compass is fixed:
		instead say "But you just filled it!";
	else:
		instead say "Draining the[if the compass is broken] remaining[end if] liquid helium would destroy the compass."
Report pouring:
	say "[That-Those-are noun]n't liquid."

Check filling the liquid:
	instead say "The containers are already full of light."

[### free liquid]

Chapter - Journey the Third

[Travel to the ice-planet and pick up the tablets.]

Journey-Three is a region.

The maze-count is a number that varies. The maze-count is zero.

The flux is a backdrop in Journey-Three. The printed name is "neutrino flux".
The description is "[neutrino-desc]."
Understand "neutrino", "neutrinos", "eerie", "shift", "signal", "spectral", "opalescence", "coloring", "flavor" as the flux.

The flux can be detected or undetected. The flux is undetected.

To say neutrino-desc:
	if the player carries the tablets:
		say "Someday, someone will come to learn about this world -- to discover what shifts neutrinos in their flight. That will not be you; you have found your token";
		stop;
	say "The normal white hiss of the neutrino background -- the cosmic noise of burning stars -- has shifted, somewhere";
	if the location is:
		-- To-Lower: say " to the side";
		-- To-Raise: say " ahead";
		-- otherwise: say " nearby";
	say ". One flavor follows another in a delicate, shimmering opalescence[one of]. You know of no property of space which could cause such a thing[or][stopping]"

Check entering the flux:
	instead say "It will take clever navigation to track this signal."

Instead of tasting, listening to the flux:
	instead try examining the flux.

Instead of pushing, pulling, turning, touching, taking the flux:
	say "Even d'Accord science won't let you clutch a neutrino like a pebble in your hand."

After printing the locale description when the location is in Journey-Three and the flux is in location and the location is not solar-systemic:
	if the flux is undetected:
		say "[line break][one of]You feel, more than hear, an eerie shift in the neutrino flux. It's not a signal... you think; but the natural white noise of neutrinos has modulated to a spectral opalescence. And the odd flux is[or]You sense the eerie flux once again. It is[stopping]";
		now the flux is detected;
	else:
		say "[line break]The odd neutrino flux is";
	if the location is:
		-- To-Raise: say " coming from straight ahead, on the far side of the bubble[one of][or]. You're not sure you can reach it, in these crosscurrents[or]. You will have to accelerate to reach it across these currents[stopping].";
		-- To-Lower: say " off to the side, tangled in the maze[one of][or]. You risk overshooting it, at your speed[or]. If you do not slow down, you will overshoot it[stopping].";
		-- To-Tighter: say " coming from beyond the binary. But your sails are rippling[one of][or] loosely[or] loosely, unable to resist the X-ray storm[stopping].";
		-- To-Tight: say " coming from beyond the binary. But your sails are rippling[one of][or] loosely[or] loosely, unable to resist the ultraviolet storm[stopping].";
		-- To-Loose: say " coming from beyond the clouds. But your sails are shuddering[one of][or] tensely[or] tensely in the heavy dust currents[stopping][if just-moved-maze is true]. Controlling your course is difficult[end if].";
		-- To-Looser: say " coming from beyond the clouds. But your sails are shuddering[one of][or] tensely[or] tensely in the thick dust currents[stopping][if just-moved-maze is true]. Controlling [Horizon] is difficult[end if].";
		-- Brown-Dwarf: say " coming from the vicinity of the dwarf star.";
		-- otherwise: say " (BUG) somewhere.";
	now just-moved-maze is false.

Elder is a room. The printed name is "Galactic Halo".
The description is "This region is dominated by old, old stars -- the suns of the early universe, scant of life's rich elements. [one of]Perhaps they have nothing for you. But a fey mood is on you, and you determine to[or]But you will[stopping] forge ahead until you have found something worthy of your time."

Elder-Retry is a room. The printed name is "Somewhere in the Halo".
The description is "You [if the spreadness is one]trawl[else if the spreadness is two]sail[else]hurtle[end if] among the halo's ancient stars. You can no longer sense the eerie neutrino signal; but you are certain that it is somewhere nearby."

To-Raise is a room in Journey-Three.
The desc-generator is the j3-raise rule.

This is the j3-raise rule:
	if a random number between 1 and 3 is:
		-- 1: now the printed name of To-Raise is "Empty Void";
		-- 2: now the printed name of To-Raise is "Hollow Space";
		-- 3: now the printed name of To-Raise is "Bubble";
	if the spreadness is three:
		say "(BUG) To-Raise with sails spread.";
	say "You have [one of]passed into[or]entered[cycling] a starless bubble in the cluster";
	if the tightness is:
		-- 1: say ". Thick waves of dust pour across your keel";
		-- 2: say ". Solar winds howl through the space";
		-- 3: say "; your sail is filled with the ultraviolet light of new suns";
	say "[one of]. The galactic spiral is spread in a long glorious arc below you[or][or]. Somewhere out of sight you can hear a variable star thumping[cycling]";
	say "."

To-Lower is a room in Journey-Three.
The desc-generator is the j3-lower rule.

This is the j3-lower rule:
	if a random number between 1 and 3 is:
		-- 1: now the printed name of To-Lower is "Crowded Cluster";
		-- 2: now the printed name of To-Lower is "Thicket";
		-- 3: now the printed name of To-Lower is "Copse of Suns";
	if the spreadness is one:
		say "(BUG) To-Lower with sails lowered.";
	say "You have [one of]passed into[or]fallen into[or]moved into[cycling] a dense [one of]cluster[or]tangle[at random] of ancient stars";
	if the tightness is:
		-- 1: say ". Murky currents swirl around you";
		-- 2: say ". Starlight pushes you this way and that";
		-- 3: say ". Clear hot energy rains past you";
	say "[one of]. Somewhere out of sight, you hear a nova-chain crackling away[or]. The galactic core shines down, an indistinct patch streaked with distant clouds[or][cycling]";
	say "."

To-Tighter is a room in Journey-Three. The printed name is "X-Ray Binary".
The desc-generator is the j3-tighter rule.

This is the j3-tighter rule:
	if the tightness is three:
		say "(BUG) To-Tighter with sails taut.";
	say "A red, bloated star is locked in tight binary orbit with a white dwarf. You swing past the pair at a safe distance; the dwarf glows X-ray hot with infalling gas, and the radiation floods all this part of space";
	say "."

The binary-red is a star in To-Tighter. The color of binary-red is red. The star-descriptor of binary-red is swollen.
Understand "bloated", "giant", "binary" as binary-red.
The description of binary-red is "The giant is a typical boiling mass of red-hot vapor. Streamers of its substance are drawn away by its companion, spiralling into blinding incandescence as they fall."

The binary-white is a star in To-Tighter. The color of binary-white is white. The star-descriptor of binary-white is tiny.
Understand "dwarf", "binary" as binary-white.
The description of binary-white is "The dwarf star is a tiny, quick-spinning core. Its gravity pulls continual streamers of gas from its larger companion; they blaze white-hot as they spiral down."

To-Tight is a room in Journey-Three. The printed name is "Stellar Nursery".
The desc-generator is the j3-tight rule.

This is the j3-tight rule:
	if the tightness is not one:
		say "(BUG) To-Tight with sails taut.";
	say "New suns are condensing here -- an unusual phenomenon in these halo reaches. Their ultraviolet flares have swept this region free of the dust that birthed them";
	say "."

To-Loose is a room in Journey-Three. The printed name is "Birth Clouds".
The desc-generator is the j3-loose rule.

This is the j3-loose rule:
	if the tightness is not three:
		say "(BUG) To-Loose with sails loose.";
	say "Tattered jets of stellar gas buffet [Horizon]. You recognize the effluvia of newborn stars. Somewhere nearby they are flaring to life, ejecting these dense clouds into the cluster's marches";
	say "."

To-Looser is a room in Journey-Three. The printed name is "Dust Whorl".
The desc-generator is the j3-looser rule.

This is the j3-looser rule:
	if the tightness is one:
		say "(BUG) To-Looser with sails loose.";
	say "Stellar gas presses in on you, drawn together by who knows what confluence of nebular magnetism and solar winds";
	say "."

Brown-Dwarf is a room in Journey-Three. The printed name is "Approaching Brown Dwarf".
The desc-generator is the j3-brown-dwarf rule.

This is the j3-brown-dwarf rule:
	say "Here at the heart of the halo cluster, a brown dwarf star slowly gutters towards exhaustion."

The star-3 is a star in Brown-Dwarf. The color-modifier of star-3 is dim. The star-descriptor of star-3 is tiny. The printed name is "brown dwarf star".

The description is "It is very old, and its fire long since lost. Only infrared radiation remains; one day that too will fade[if the location is Brown-Dwarf]. But the strange neutrino coloring you have been tracking comes from somewhere in the dwarf's orbit[end if]."

Understand "brown", "dwarf" as the star-3.

System-3 is a system in Journey-Three. The printed name is "Somewhere Again -- Far Orbit".
The description is "[if System-3 is not looted]The brown dwarf[one of], you discover,[or][stopping] is circled by a lone, frozen planet[else]The ice-world shrinks behind you, as you rise to the edge of the brown dwarf's orbit[end if]."

The star-system of star-3 is System-3.

The iceworld is a planet-prop in System-3.
The description is "The ice-world is the source, or at least the locus, of the neutrino shift."

Understand "ice", "lone", "frozen", "ice-world" as the iceworld.

Planet-3 is a planet in Journey-Three. The printed name is "Ice-World".

The description is "This planet might once have been a chilly wasteland. Now[one of] it is nothing but slabs of[or] you see little but[stopping] black ice, layered with the ancient snow that was once an atmosphere.[para][one of]Or, no. Those protrusions of ice are too angular to be natural. They are monuments -- how old, you have no way of knowing. But sheltering beneath them are row upon row of engraved tablets[or]Angular monuments rise above rows of engraved tablets[stopping]."

System-3 overlays Planet-3.

The ice is scenery in Planet-3.

Understand "ancient", "black", "snow" as the ice.

Check melting the ice:
	instead say "The whole planet? With what, a supernova?"

Instead of doing anything except melting to the ice:
	instead say "The ice is ice, and the snow is snow."

The monuments are plural-named scenery in Planet-3. The description is "Perhaps the monuments were buildings, or sculptures. Now they are worn to featureless, angular slabs of mineral nitrogen. They serve only to mark the tablets, and perhaps protect them from the slow corrosion of starlight."

Understand "monument", "protrusion", "angular", "building", "buildings", "sculpture", "slab", "slabs", "mineral", "nitrogen" as the monuments.

Check entering the monuments:
	instead say "There are no spaces to enter."

Check searching the monuments:
	instead try examining the monuments.

Check taking the monuments:
	instead say "The smallest of the monuments wouldn't fit in your ship. Besides, the tablets are what's interesting."

Check touching the monuments:
	instead say "They are cold enough to crystallize you, and you are glad you cannot feel them directly."

Check repairing the monuments:
	instead say "They're worn away, not broken down."

Check melting the monuments:
	instead say "On any livable planet, they'd be vapor. Here, they'd be no easier to melt than stone."

The tablets are plural-named treasure in Planet-3. The printed name is "helium tablets".
The tablets can be detected or undetected. The tablets are undetected.

To decide whether not-yet-detected tablets:
	if the tablets are undetected:
		now the tablets are detected;
		decide yes.

The description of the tablets is "You can make nothing of the engravings[if the location is not Lightless]. You will have to bring them back to the linguists of d'Accord[end if][if the location is Planet-3][tablets-extra][end if]."

To say tablets-extra:
	say "[if not-yet-detected tablets].[para]The tablets themselves have a vitreous shine. You realize, inspecting carefully, that they are pure helium -- frozen helium, a substance that should not exist on the surface of a world[else]. The tablets themselves are pure frozen helium[end if]".

Understand "frozen", "helium", "tablet", "engraved", "engravings" as the tablets.

Understand "row", "rows", "row of", "rows of" as the tablets when the location is Planet-3.

Rule for implicitly taking the tablets:
	instead say "You don't have any of the tablets."

Check touching the tablets:
	instead say "Your touch would destroy them instantly."

Instead of eating, tasting, drinking the tablets:
	try touching the tablets.

Check taking the tablets when the player carries the tablets:
	instead say "You have already taken several of the tablets on board."

Report taking the tablets:
	if not-yet-detected tablets:
		say "You realize, inspecting carefully, that the tablets are carved of pure helium -- frozen helium, a substance that should not exist on the surface of a world.[para]";
	instead say "You seal several of the tablets in layers of vacuum insulation -- and then layers on top of that. Moving as delicately as you can, you transport the bulky packages to your cryohold. A few tense moments reveal no sublimation of the frozen helium, to your relief."

Check opening the tablets:
	if the location is not Lightless:
		instead say "If you unwrapped the tablets, they would evaporate instantly.";
	else:
		instead try melting the tablets.

Melting is an action applying to one thing.
Understand "melt [something]" as melting.

Understand the command "light" as something new.
Understand the command "burn" as something new.
Understand the commands "burn", "heat", "warm" as "melt".

Report melting:
	say "[That-Those noun] would be difficult to melt."

Check melting the tablets:
	if the location is Lightless:
		remove the tablets from play;
		now the compass is fixed;
		now known-broken is true;
		instead say "You can think of no other choice.[para]You fashion a capillary line from the last of your insulation, and connect it to the compass chamber. Carefully, you lower the line onto the first of the frozen helium tablets. The thermal gradient shifts; the priceless artifact begins to melt.[para]The arrangement works perfectly, of course. One by one, the tablets liquefy and are drawn up into the compass. By the time the last one is gone, the helium bath is full enough to function.";
	instead say "Destroying the tablets would be an incalculable loss."

Filling is an action applying to one thing.
Understand "fill [something]" as filling.
Understand "fill [something] with/from [something]" as inserting it into (with nouns reversed).

Understand the commands "refill", "recharge" as "fill".

Report filling:
	say "[That-Those noun] can't contain things."

Check filling the compass:
	if the compass is not broken:
		instead say "The compass is already full.";
	if the player carries the tablets:
		instead try melting the tablets;
	instead say "(BUG) How?"

Instead of inserting the tablets into the compass:
	try melting the tablets.
Instead of putting the tablets on the compass:
	try melting the tablets.

Instead of inserting the compass into the compass:
	say "The liquid helium[if the compass is broken] -- what's left of it --[end if] is already in the compass."

Instead of inserting the liquid into the compass:
	say "[if the compass is broken]The compass needs to be filled, but it[else]The compass[end if] doesn't run on liquid light."
Instead of putting the liquid on the compass:
	say "[if the compass is broken]The compass needs to be filled, but it[else]The compass[end if] doesn't run on liquid light."

Instead of inserting something into the compass:
	say "[That-Those noun] won't fit into the compass."
Instead of putting something on the compass:
	say "[That-Those noun] won't fit into the compass."

Chapter - Disaster

[The endgame.]

Roiling is a room. The printed name is "Approaching Roiling Star".

The description is "A rare sight drifts into view, far ahead: a red supergiant guttering on the edge of catastrophe. It is a crimson, billowing cauldron of turbulent fire -- pulsing irregularly, choked with helium and carbon ash."

The boom-star is a star in Roiling. The printed name is "red supergiant". The color of the boom-star is red.
The description is "The star is in the last stages of its lit life. The core must be long exhausted of hydrogen. Heavier elements now burn within, in their ragged, quickening cycles of fire.[para]If this star has anything to offer, you should seek it now. It will not last another thousand years."

Understand "giant", "super", "supergiant", "cauldron", "fire", "turbulent", "crimson", "roiling" as the boom-star.

Known-broken is a truth state that varies. Known-broken is false.

To decide whether not-yet-known-broken:
	if known-broken is false:
		now known-broken is true;
		decide yes;
	else:
		decide no.

To suffer disaster:
	say "[line break]By the time you see oxygen and argon boiling into the red star's corona, it is too late to turn aside. The light of fusing metals washes over [Horizon], and the shockwave is only fractionally behind.";
	say "[line break]... ";
	wait for keystroke;
	say "[line break]";
	now the spreadness is zero;
	now the compass is broken;
	remove the old-sails from play;
	now the current-sail is no-sails;
	now the current-sail is part of the ship;
	now the player is in Lightless.

Lightless is a system. The printed name is "[if zlit]Debris[else]Darkness[end if]".

Lightless is smugged.
Lightless can be unzlit or zlit. Lightless is unzlit.

The description is "[one of]Lights appear on the control consoles, one by one. [HorizonOfNight] is coming back to life. The walls around you are dim and radiation-scarred; you have no idea how long it's taken the ship to recover enough function to support you. But you are awake. You stretch in your couch, shudder, and take stock.[para]Outside is blackness, pure and opaque[or][dark-prop-desc][stopping]."

The dark-prop is scenery in Lightless. The printed name is "darkness".

The description is "[dark-prop-desc]."

To say dark-prop-desc:
	if Lightless is unzlit:
		say "You are surrounded by blackness, pure and opaque. Whatever corner of space you've been flung into, it's dense enough to block all starlight. Only the vague thermal wash of microwaves reassures you that the universe is out there at all";
	else:
		say "You are surrounded by thick, swirling debris. It is dangerous, but";
		if the compass is broken and the current-sail is no-sails:
			say " you might navigate it -- if you had [if the compass is he-unknown][he-discover]helium for your[else]a[end if] compass. And sails";
		else if the current-sail is no-sails:
			say " you might navigate it -- if you had sails to raise";
		else if the compass is broken:
			say " you might navigate it -- if you had [if the compass is he-unknown][he-discover]helium for your[else]a[end if] compass";
		else:
			say " you are sure you can navigate it[one of][or]. Time to set sail, and see[stopping]";

Understand "dark", "darkness", "black", "blackness", "pure", "opaque", "thermal", "wash", "microwave", "space" as the dark-prop.
Understand "debris" as the dark-prop when Lightless is zlit.

Instead of inserting the liquid into the dark-prop:
	try opening the liquid.
Instead of putting the liquid on the dark-prop:
	try opening the liquid.
Instead of throwing the liquid at the dark-prop:
	try opening the liquid.

Check entering the dark-prop:
	if Lightless is zlit:
		instead try flying;
	else:
		instead say "You are already in the darkness."

Instead of doing anything except examining, entering to the dark-prop:
	say "Impossible."

Chapter - Epilogia

To wait it out:
	let N be the number of treasures carried by the player;
	if N is:
		-- 3: say "You wrestle with the question; but in the end, you refuse to sacrifice your treasures to [Horizon]'s repair. Whether that is avarice or respect, you will not decide until you awaken.";
		-- 0: say "You have already sacrificed all of your treasures. Is this shame, or a belated repentance? You will not decide until you awaken.";
		-- otherwise:
			if the compass is broken:
				say "You wrestle with the question; but in the end, you refuse to sacrifice the ancient tablets to [Horizon]'s repair. Whether that is avarice or respect, you will not decide until you awaken.";
			else:
				say "The tablets were perhaps the greatest of your discoveries, and they are gone. But you stop short -- is this shame, or a belated repentance? You will not decide until you awaken.";
	say "[line break]You set the cryohold to chill you down, and prepare to sleep through the years -- or centuries, or millennia -- until rescue might come.";
	end the game saying "Waiting it out".

To end it:
	say "You hoist the sails -- what has yet survived your touch -- and bring [HorizonOfNight] under way.";
	say "[line break]... ";
	wait for keystroke;
	say "[para]";
	say "You are not so far from Myrmidal, at this end of your wandering. You pass by suns on the way home; they do not hold your interest, not long enough to slow [Horizon] in its course. And there are the sails, to be sure. You leave a trail of vapor in your wake, as the iridescent fabric decays. Delay is no temptation now.[para]";
	say "In the end, it is the touch of Myrmidal's solar wind that brushes the last shreds of sail away.[para]";
	say "[Horizon] falls across the system, through the staticky noise of civilization, until the patrol tenders match your course and bring you in tow. They jibe your ill luck, and offer you the gossip of your centuries outward-gone. You swap them stories of treasures found; floating creatures and icy ruins; the sound a ship's sails make as they explode in supernova-light. The patrollers laugh and applaud a lie well-told. You leave it at that.[para]";
	end the game saying "Home".

