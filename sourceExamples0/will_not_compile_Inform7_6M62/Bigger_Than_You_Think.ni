"Bigger Than You Think" by "Andrew Plotkin". 
[IFID:bb6e1e06-a664-4ed7-97e1-a3b99485d510] 

The story headline is "An interactive riff". 
Release number is 4. 

[Release along with cover art. ]

[ 
Bigger Than You Think is copyright 2012 by Andrew Plotkin. This source code is provided for personal, educational use only. The story and text  belong to me; you may not use them or create derivative works which contain them. However, you have permission to use the programming techniques of this game in your own works, and you may use the source code excluding game text. 

I wrote this for the Yuletide 2012 fanfic exchange (http://archiveofourown.org/collections/yuletide2012). It was received with great enthusiasm, for which I am very grateful! The Yuletide page for this game is http://archiveofourown.org/collections/yuletide2012/works/598023. (Note that Yuletide offerings are anonymous until January 1; that's why all the December comments are addressed to "anonymous author".) 

I figured I would post the source code. I hope it is useful to people, but I'm afraid I have *not* done a good job of making it easily remixable. Sorry! I was writing in a hurry. It's the usual problem: I did everything the hard way because I did not have time to do it the easy way. Furthermore, I make use of an unreleased extension and an unreleased compiler feature, so this will not compile directly for anybody else. (But you can get there with a small amount of hacking.) 

The game is written in a mixture of Inform 6 and Inform 7. If you're not familiar with these languages, the difference is easy to spot: I7 looks like English, and I6 looks like a programming language. 

The game logic is all I7, and pretty tidy at that -- there's a single rulebook to display the "room description", and another rulebook that handles all object responses. (That's roughly the last half of this file.) The I6 code handles all the interface tweaking: the big fancy status window, the clickable option links, the keyword-based input parser, and the autosave. (All the ugly code in the first half. There are I7 extensions that let you do most of that cleanly, but again, I didn't have time for that; I just hacked it all up myself. Perils of being a good hacker who knows how the system works at a low level.) 

I implemented this game using Inform 7 build 6G60. It probably won't work with earlier releases, and I can't make guarantees about future ones. 
] 

Chapter - Introductory Stuff 

[The game does not have a score. This line prevents the system from printing "0 points out of 0" when the game ends.] 
Use no scoring. 

[The next  section just makes the final game file smaller. I didn't want to put unnecessary strain on people's web browsers.] 

[Tell the low-level I6 compiler stage to leave out unused function code. It shaves about 12% off the final Glulx game file. This is an unreleased I6 feature! If you are using the stock I7 build 6G60, this line will be ignored.] 
Use OMIT_UNUSED_ROUTINES of 1. 

[This is a private extension I keep around that drops all of the normal I7 grammar. ("take", "look", and so on.) This game doesn't use the normal I7 parser, so dropping the grammar does not affect functionality at all -- it is, again, just to save space. If you're trying to compile the game yourself, delete this line.] 
Include Quash Normal Grammar by Andrew Plotkin. 

[Strip out all the code from the I7 parser's largest function. Once again, this does not affect anything, because that function will never be called.] 
Include (- -) instead of "Parser Letter A" in "Parser.i6t". 
Include (- -) instead of "Parser Letter B" in "Parser.i6t". 
Include (- -) instead of "Parser Letter C" in "Parser.i6t". 
Include (- -) instead of "Parser Letter D" in "Parser.i6t". 
Include (- -) instead of "Parser Letter E" in "Parser.i6t". 
Include (- -) instead of "Parser Letter F" in "Parser.i6t". 
Include (- -) instead of "Parser Letter G" in "Parser.i6t". 
Include (- -) instead of "Parser Letter H" in "Parser.i6t". 
Include (- -) instead of "Parser Letter I" in "Parser.i6t". 
Include (- -) instead of "Parser Letter J" in "Parser.i6t". 
Include (- -) instead of "Parser Letter K" in "Parser.i6t". 

[Rip out most of I7's standard turn sequence. We will not be using timed events, light sources, or a normal inventory, so we just drop all of that code. (It wouldn't really hurt anything to leave it in, but again, I wanted to trim down as much as possible.)]
The timed events rule is not listed in the turn sequence rulebook. 
The update chronological records rule is not listed in the turn sequence rulebook. 
The adjust light rule is not listed in the turn sequence rulebook. 
The note object acquisitions rule is not listed in the turn sequence rulebook. 
The notify score changes rule is not listed in the turn sequence rulebook. 
The advance time rule is not listed in the turn sequence rulebook. 

[Finally, code that does something! This is the rule that begins normal play. We set up the input system to accept hyperlink clicks, and then display the pre-game introduction. (The "basic help text" phrase is defined later on.)] 
When play begins: 
	initial hyperlink requests; 
	say "[basic help text][para][para]". 

[Another pre-game rule. This goes in a different rulebook, though -- the "startup rules" rather than the "when play begins" rules.] 
Startup rule (this is the initial autorestore rule): 
	attempt auto-restore. 
The initial autorestore rule is listed before the initial room description rule in the startup rules. 

Chapter - Utilities 

[We do not define the game's locations as normal I7 rooms. (I could have done it that way, but I didn't.) However, the I7 compiler requires one real room in the game. It has no description, and if it did the player would never see it -- it's just scaffolding.] 
The Sole-Room is a room. 

[The normal "startup rules" rulebook include a rule for an initial "look around" action. We want that, but we don't want a normal "look" around the Sole-Room -- that would be boring. Instead, we invoke the magic formula to display the game's current state. (A "look" command during the game will invoke this same formula.)] 
Instead of looking: 
	follow the state-desc rules for the curstate. 

[A few shortcuts for italics and fixed-width font. I7 provides these features, but they're verbose, and I prefer shorter commands.] 
To say em -- running on: 
	(- style underline; -). 
To say /em -- running on: 
	(- style roman; -). 
To say fix -- running on: 
	(- font off; -). 
To say /fix -- running on: 
	(- font on; -). 

[More shortcuts.] 

To say period -- running on: 
	(- print "."; -). 

To say br -- running on: 
	(- new_line; -). 

To say para -- running on: 
	(- DivideParagraphPoint(); new_line; -). 

Chapter - Bare-Arrays 

[I apologize even more for this one. Bare arrays are a feature that I implemented for another game -- they work like I7 tables, but they take slightly less memory, are slightly faster, and are much less powerful. And they're not documented at all. 

In other words, the classic bad hacker tradeoff! If you want to write a game like this, for zog's sake use ordinary tables. Don't do what I do.] 

A bare-array is a kind of value. 

To clear (B - bare-array): (- barearray_clear({B}); -). 
To decide what number is the limit of (B - bare-array): (- barearray_limit({B}) -). 
To decide what number is the count of (B - bare-array): (- (({B})-->1) -). 
To decide what object is object (N - number) of (B - bare-array): (- barearray_get({B}, {N}) -). 
To decide whether object (O - object) is listed in (B - bare-array): (- barearray_contains({B}, {O}) -). 
To add (O - object) to (B - bare-array): (- barearray_append({B}, {O}); -). 
To remove last from (B - bare-array): (- barearray_remove_last({B}); -). 

Barelist-containment relates an object (called O) to a bare-array (called B) when object O is listed in B. The verb to be barelist-in implies the barelist-containment relation. 

Include (- 
! arr-->0 is the Inform table size (fixed); arr-->1 is the current count; entries 2 through 11 (ten of them) are the potential entries. Note that the limit is (arr-->0)-1. 
Array generic_barearray table 21; 

[ barearray_clear arr; 
	arr-->1 = 0; 
]; 
[ barearray_limit arr; 
	return (arr-->0) - 1; 
]; 
[ barearray_append arr obj limit pos; 
	limit = (arr-->0) - 1; 
	if (arr-->1 >= limit) 
		print_ret "(BUG) Bare-array append: overflowed limit of ", limit, "."; 
	pos = arr-->1; 
	arr-->1 = pos + 1; 
	arr-->(pos+2) = obj; 
]; 
[ barearray_remove_last arr; 
	if (arr-->1 == 0) { 
		print "(BUG) Bare-array remove last: array is empty.^"; 
		return; 
	} 
	arr-->1 = (arr-->1) - 1; 
]; 
[ barearray_get arr pos; 
	if (pos < 0 || pos >= arr-->1) { 
		print "(BUG) Bare-array get: pos ", pos, " out of range of ", arr-->1, ".^"; 
		return nothing; 
	} 
	return arr-->(pos+2); 
]; 
[ barearray_contains arr obj ix; 
	for (ix=0 : ix<arr-->1 : ix++) { 
		if (arr-->(ix+2) == obj) 
			rtrue; 
	} 
	rfalse; 
]; 
-). 
To decide what bare-array is generic-bare-array: (- generic_barearray -). 

Chapter - Types 

[Now we will define the basic types upon which the game logic will be built.] 

[A "state" describes the notion of "where you are in the game". If this were a CYOA book, it would be the page number. I am defining it as a container because each state has several options; it was convenient to put the options *in* the state. Like stuffing falafel into a pita.] 
A state is a kind of container. 

[Options are things you can type -- or click -- but *not* takeable objects; those are handled separately. State-specific options will be placed inside the appropriate state container. Global options (like "start" or "look") will be placed inside a "universal" container.] 
An option is a kind of thing. 
An option can be silent or unsilent. [Silent means it should not be displayed in the status window.] 
An option can be inactive or active. An option is usually active. 

[It's always nice to have a null object. This is sometimes used to represent "can't do anything" or "no such option".] 
No-option is an inactive option. 

[This ensures that whenever we print the name of an option, it's boldface and hyperlinked.] 
Rule for printing the name of an option: 
	print bold link for the item described. 

[Takeables are thing that you can type -- or click -- which you pick up and use throughout the course of the game. They are similar to options, but different enough that I defined a separate type.] 
A takeable is a kind of thing. 

A takeable can be taken or untaken. 
A takeable can be used or unused. [Used means it's been used up this cycle. Reset on restart.] 
A takeable can be completed or uncompleted. [Completed means it's been taken and then placed correctly.] 
A takeable can be physical or mental. A takeable is usually physical. [The inventory listing divides up "physical" possessions (the rope, the crowbar) from "mental" ones (the runes, the word).] 
A takeable has an option called the take-option. The take-option of a takeable is usually no-option. 
A takeable has some text called the inv-text. The inv-text of a takeable is usually "a [item described]". 

[This ensures that whenever we print the name of an option, it's boldface and hyperlinked.] 
Rule for printing the name of an takeable: 
	print bold link for the item described. 

[Purely informational options, like "look" and "about", do not affect the game state -- so we don't count them as "undo" points.] 
A thing can be undoable or nonundoable. A thing is usually undoable. 

Include (- 
Array taken_barearray table 21; 
-). 
To decide what bare-array is taken-bare-array: (- taken_barearray -). 

Chapter - Rulebooks 

[Curstate is a global variable that says what state the player is in, right now. It's the equivalent of "location" in a normal I7 game.] 
The curstate is a state that varies. 
[At-start is a global flag that says whether the player has done anything yet. This is mostly to allow better message display. If the player types "start" right off, for example, the game will respond "But the story has just begun!"] 
At-start is a truth state that varies. 

[This is the rulebook that handles all the state descriptions. Every state has a "state-desc" rule that prints the text on that page, so to speak.] 
The state-desc rules are a state based rulebook. 

[The last-ditch "state-desc" rule. If I fail to write text for some state, it will devolve to this one and yell about it. (That way, bugs are easy to track down! This is very important. If you accidentally release a buggy game -- which is always possible -- you want your players to realize it immediately and report it, rather than staring in confusion.)] 
The last state-desc rule for a state (called st): 
	say "(BUG) [st] is not described." 

[This is the rulebook that handles every option. All of the game logic is defined as "perform" rules. This demonstrates one of I7's strengths: we can start with general rules and work down to specifics, so it's very easy to add new ones without disrupting existing code.] 
The perform rules are a thing based rulebook. 

[The last-ditch "perform" rule. If I fail to write code for an option or takeable, it will devolve to this one and yell about it.] 
The last perform rule for a thing (called T): 
	say "(BUG) [T] is not implemented." 

Chapter - Turn Sequence 

[This is a bunch of I6 code for the low-level work of reading the keyboard and figuring out what option was typed (or clicked). It is the nasty stuff, and I won't try to explain it.] 

The sel-option is a thing that varies. 

The my read command rule is listed instead of the parse command rule in the turn sequence rulebook. 
The my generate action rule is listed instead of the generate action rule in the turn sequence rulebook. 
The carry out action rule is listed after the my generate action rule in the turn sequence rulebook. 

The my read command rule translates into I6 as "ReadOneCommand". 
The my generate action rule translates into I6 as "GenerateOneAction". 

Include (- 
Replace Keyboard; 
-) before "Parser.i6t". 

Include (- 

! Read a line of input. 
[ Keyboard  a_buffer a_table  nw i w w2 x1 x2; 
while (true) { 
	! Print the prompt, and read in the words and dictionary addresses 
		PrintPrompt(); 
	DrawStatusLine(); 
		KeyboardPrimitive(a_buffer, a_table); 

	! Echo the input 
	if (EchoControlAvailable()) { 
		glk_set_style(style_Input); 
		glk_put_buffer(a_buffer+WORDSIZE, a_buffer-->0); 
		glk_set_style(style_Normal); 
		new_line; 
	} 

	! Set nw to the number of words 
		#Ifdef TARGET_ZCODE; nw = a_table->1; #Ifnot; nw = a_table-->0; #Endif; 

	return nw; 
} 
]; 

Global cmdword = 0; 
Constant unknownword = ',unknown'; 
Global emptycount = 0; 

! Read a line of input, ensure it is a single word, and store that word into cmdword. 
[ ReadOneCommand; 
	Keyboard(buffer, parse); 
	num_words = WordCount(); 
	cmdword = 0; 
	
	if (num_words == 0) { 
		emptycount++; 
		if (emptycount >= 4) { 
			print "[Type one of the boldface words above to select an option"; 
			if (LinksAvailable()) 
				print ". You may also click on words to select them"; 
			print ".]^^"; 
		} 
		rtrue; 
	} 
	
	emptycount = 0; 
	
	if (num_words > 1) { 
		print "[This game does not accept IF-style commands such as ~go north~ or ~take lamp~. Type a single word to select the one the boldface options.]^^"; 
		rtrue; 
	} 
	
	wn = 1; 
	cmdword = NextWord(); 
	if (cmdword == 0) 
		cmdword = unknownword; 
	
	rfalse; 
]; 

[ ThingMatches obj 
	k l m; 
	if (obj.parse_name~=0) { 
		parser_action = NULL; 
		wn = 1; 
		k = RunRoutines(obj, parse_name); 
		return (k >= 1); 
	} 
	
	k = obj.&name; l = (obj.#name)/WORDSIZE-1; 
	for (m=0 : m<=l : m++) { 
		if (cmdword == k-->m) rtrue; 
	} 
	rfalse; 
]; 

! Check cmdword against all available options and takeables. Set sel-option to the one that matches. 
[ GenerateOneAction 
	opt found; 

	found = 0; 
	(+ sel-option +) = nothing; 

	if (cmdword == 0) 
		rtrue; 
	
	!print "Word: ", (address) cmdword, "^^"; 
	
	if (~~found && (+ curstate +) ) { 
		objectloop (opt in (+ curstate +) ) { 
			if (GetEitherOrProperty(opt, (+ inactive +) )) 
				continue; 
			if (ThingMatches(opt)) { 
				found = opt; 
				break; 
			} 
		} 
	} 
	
	if (~~found) { 
		objectloop (opt in (+ takeable-set +) ) { 
			if (~~GetEitherOrProperty(opt, (+ taken +) )) 
				continue; 
			if (ThingMatches(opt)) { 
				found = opt; 
				break; 
			} 
		} 
	} 

	if (~~found) { 
		objectloop (opt in (+ universal +) ) { 
			if (ThingMatches(opt)) { 
				found = opt; 
				break; 
			} 
		} 
	} 

	if (~~found) { 
		print "[I don't recognize ~"; 
		PrintSnippet(101); 
		print "~ as an option here. Type one of the boldface words.]^^"; 
		rtrue; 
	} 
	
	!print "Found option: ", (name) found, "^"; 
	
	(+ sel-option +) = found; 
	rfalse; 
]; 

! Utility functions to save and restore undo state and the autosave state. (Undo is the normal Glulx undo feature; autosave is a Glk data file.) 

[ AppSaveUndo i; 
	i = VM_Save_Undo(); 
	undo_flag = 2; 
		if (i == -1) undo_flag = 0; 
		if (i == 0) undo_flag = 1; 
		if (i == 2) { 
		rtrue; 
	} 
	rfalse; 
]; 

Array autosave_filename -> $E0 'B' 'T' 'Y' 'T' 'S' 'A' 'V' 'E' 0; 

[ AppSaveFile 
	fref res; 
	fref = glk_fileref_create_by_name(0, autosave_filename, 0); 
	if (fref == 0) jump SFailed; 
	gg_savestr = glk_stream_open_file(fref, $01, GG_SAVESTR_ROCK); 
	glk_fileref_destroy(fref); 
	if (gg_savestr == 0) jump SFailed; 
	@save gg_savestr res; 
	if (res == -1) { 
		! We just auto-restored. 
		GGRecoverObjects(); 
		glk_stream_close(gg_savestr, 0); ! stream_close 
		gg_savestr = 0; 
		rtrue; 
	} 
	glk_stream_close(gg_savestr, 0); ! stream_close 
	gg_savestr = 0; 
	if (res == 0) { 
		rfalse; ! successful save 
	} 
	.SFailed; 
	rfalse; 
]; 

[ AppRestoreFile 
	fref res; 
	fref = glk_fileref_create_by_name(0, autosave_filename, 0); 
	if (fref == 0) jump RFailed; 
	res = glk_fileref_does_file_exist(fref); 
	if (res == 0) { 
		! No such file. 
		glk_fileref_destroy(fref); 
		rfalse; 
	} 
	gg_savestr = glk_stream_open_file(fref, $02, GG_SAVESTR_ROCK); 
	glk_fileref_destroy(fref); 
	if (gg_savestr == 0) jump RFailed; 
	@restore gg_savestr res; 
	glk_stream_close(gg_savestr, 0); 
	gg_savestr = 0; 
	.RFailed; 
	print "[Unable to auto-restore your previous position. You will have to start from the beginning -- sorry about that.]^^"; 
	rfalse; 
]; 

[ AppRemoveAutosaveFile 
	fref res; 
	fref = glk_fileref_create_by_name(0, autosave_filename, 0); 
	if (fref == 0) rfalse; 
	res = glk_fileref_does_file_exist(fref); 
	if (res == 0) { 
		! No such file. 
		glk_fileref_destroy(fref); 
		rfalse; 
	} 
	glk_fileref_delete_file(fref); 
	glk_fileref_destroy(fref); 
]; 

-). 

To decide whether saving undo short-circuits: (- AppSaveUndo() -). 

To decide whether auto-saving short-circuits: (- AppSaveFile() -). 

To attempt auto-restore: (- AppRestoreFile(); -). 

To clobber the autosave file: (- AppRemoveAutosaveFile(); -). 

To cancel deadflag: (- deadflag = 0; -). 

[This rule goes into the turn sequence rulebook. It looks at the selected option (stored in sel-option) and carries it out. That's actually very simple; most of this rule deals with undo and autosave.] 
This is the carry out action rule: 
	if sel-option is undoable: 
		if saving undo short-circuits: 
			say "[em](Undoing the '[printed name of sel-option]' choice...)[/em][para]"; 
			try looking; 
			stop; 
	follow the perform rules for sel-option; [Carry out the option!] 
	if sel-option is undoable: 
		increment the turn count; 
	if sel-option is undoable and sel-option is not restart-option: 
		now at-start is false; 
	if auto-saving short-circuits: 
		if the story has ended: 
			say "[em](Marco Polo begins the story again...)[/em][para]"; 
			cancel deadflag; 
			start over; 
		else: 
			say "[em](Marco Polo continues the story from where he left off...)[/em][para]"; 
			follow the state-desc rules for the curstate; 


Chapter - Final Question 

[Replace the standard I7 end-of-game prompt with a customized one. (It's the same wording, really, but we hyperlink the response options.)] 

The my final question rule is listed instead of the print the final question rule in before handling the final question rules. 

This is the my final question rule: 
	say "Would you like to [final-restart] the game from the very beginning, [final-quit] the game, or [final-undo] the last command?" 

Final-restart is an option. The printed name is "restart". 
Final-quit is an option. The printed name is "quit". 
Final-undo is an option. The printed name is "undo". 


Chapter - Hyperlinking 

[Another wodge of low-level I6 code. This sets up the in-game hyperlinks, and also some tedious mucking around with the input line. 

Note that not all interpreters support hyperlinks. If hyperlink support is not detected, we can run without them.] 

Include (- 

[ LinksAvailable; 
	return glk_gestalt(gestalt_Hyperlinks, 0); 
]; 

[ EchoControlAvailable; 
	return glk_gestalt(17, 0); ! gestalt_LineInputEcho 
]; 

[ InitialLinkRequests; 
	if (LinksAvailable()) { 
		if (gg_mainwin) 
			glk_request_hyperlink_event(gg_mainwin); 
		if (gg_statuswin) 
			glk_request_hyperlink_event(gg_statuswin); 
	} 
	if (EchoControlAvailable()) { 
		glk($0150, gg_mainwin, 0); ! glk_set_echo_line_event 
	} 
]; 

[ DisplayBoldLink opt   avail; 
	avail = LinksAvailable(); 
	glk_set_style(style_Subheader); 
	if (avail) 
		glk_set_hyperlink(opt); 
	PrintText(opt.short_name); 
	if (avail) 
		glk_set_hyperlink(0); 
	glk_set_style(style_Normal); 
]; 

[ HandleGlkEvent ev ischar buffer    linkval; 
	if (ev-->0 == evtype_Hyperlink) { 
		linkval = ev-->2; 
		if (ev-->1 == gg_mainwin && gg_mainwin) 
			glk_request_hyperlink_event(gg_mainwin); 
		if (ev-->1 == gg_statuswin && gg_statuswin) 
			glk_request_hyperlink_event(gg_statuswin); 
		if (ischar == 0) { 
			glk_cancel_line_event(gg_mainwin, ev); 
			VM_PrintToBuffer(buffer, INPUT_BUFFER_LEN-WORDSIZE, linkval.short_name); 
			
			if (~~EchoControlAvailable()) { 
				print "> "; 
				glk_set_style(style_Input); 
				PrintText(linkval.short_name); 
				glk_set_style(style_Normal); 
				print "^"; 
			} 
			return 2; 
		} 
	} 
	return 0; 
]; 

-) before "Stubs" in "Glulx.i6t". 

To decide whether hyperlinks available: (- LinksAvailable() -). 

To initial hyperlink requests: (- InitialLinkRequests(); -). 

To print bold link for (opt - object): (- DisplayBoldLink({opt}); -). 


Chapter - Status Line 

[Even more low-level I6 code, to display the fancy status line.] 

To decide whether writing status line: (- statuswin_current -). 

Include (- 

Constant ItemWidth = 12; 
Constant MaxTempItems = 20; 
Array leftoptlist --> MaxTempItems; 
Array rightoptlist --> MaxTempItems; 

[ DrawStatusLine 
	colsperside width opt leftopts rightopts rows val cx cy xstart ix; 
	
	if (gg_statuswin == 0) return; 

	VM_MoveCursorInStatusLine(1, 1); 
	width = VM_ScreenWidth(); 
	colsperside = ((width - 6) / 2 / 12); 
	if (colsperside < 1) 
		colsperside = 1; 
	if (colsperside > 4) 
		colsperside = 4; 
		
	leftopts = 0; 
	if ( (+ curstate +) ) { 
		objectloop (opt in (+ curstate +) ) { 
			if (GetEitherOrProperty(opt, (+ inactive +) )) 
				continue; 
			if (GetEitherOrProperty(opt, (+ silent +) )) 
				continue; 
			if (leftopts >= MaxTempItems) { 
				break; 
			} 
			leftoptlist-->leftopts = opt; 
			leftopts++; 
		} 
	} 
	
	rightopts = 1; 
	rightoptlist-->0 = (+ restart-option +) ; 
	if (1) { 
		for (ix=0 : ix < taken_barearray-->1 : ix++ ) { 
			opt = barearray_get(taken_barearray, ix); 
			if (~~GetEitherOrProperty(opt, (+ taken +) )) 
				continue; 
			if (GetEitherOrProperty(opt, (+ completed +) )) 
				continue; 
			if (rightopts >= MaxTempItems) { 
				break; 
			} 
			rightoptlist--> rightopts = opt; 
			rightopts ++; 
		} 
	} 
	
	if (deadflag) { 
		rightopts = 3; 
		rightoptlist-->0 = (+ final-restart +) ; 
		rightoptlist-->1 = (+ final-quit +) ; 
		rightoptlist-->2 = (+ final-undo +) ; 
	} 
	
	rows = (leftopts + (colsperside-1)) / colsperside; 
	val = (rightopts + (colsperside-1)) / colsperside; 
	if (rows < val) 
		rows = val; 
	
	ClearParagraphing(); 
	VM_StatusLineHeight(rows+1); 
	VM_ClearScreen(WIN_STATUS); 
	VM_MoveCursorInStatusLine(1, (width-21)/2); 
	print "Bigger Than You Think"; 
	
	!style bold; 

	xstart = 2; 
	cx = 0; 
	cy = 0; 
	for (val=0 : val < leftopts : val++) { 
		opt = leftoptlist-->val; 
		VM_MoveCursorInStatusLine(2+cy, xstart+cx*ItemWidth); 
		DisplayBoldLink(opt); 
		cx++; 
		if (cx >= colsperside) { 
			cx = 0; 
			cy++; 
		} 
	} 

	xstart = width - (ItemWidth+2); 
	cx = 0; 
	cy = 0; 
	for (val=0 : val < rightopts : val++) { 
		opt = rightoptlist-->val; 
		VM_MoveCursorInStatusLine(2+cy, xstart-cx*ItemWidth); 
		DisplayBoldLink(opt); 
		cx++; 
		if (cx >= colsperside) { 
			cx = 0; 
			cy++; 
		} 
	} 
	
	!style roman; 
	
	VM_MoveCursorInStatusLine(1, 1); VM_MainWindow(); 
	ClearParagraphing(); 
]; 

-) instead of "Status Line" in "Printing.i6t". 

[And that's the last of the I6! The rest of the code is all I7. I'm sure you're relieved.] 

Chapter - Basic Actions 

[Here we define some utility phrases for common tasks. These will be used by various "perform" rules.] 

To go to (R - state): 
	now curstate is R; 
	try looking. 

To decide whether at (R - state): 
	if R is curstate: 
		decide yes. 

To take (T - takeable): 
	let R be the take-option of T; 
	if R is not no-option: 
		now R is inactive; 
	if T is not taken: 
		add T to taken-bare-array; 
		now T is taken. 

To start over: 
	now all takeables are unused; 
	now curstate is Story-Start; 
	now at-start is true; 
	try looking. 

[The most complex task here turns out to be displaying the "inventory". (Most players will never type "inventory", but it is automatically displayed in the starting state description: "(You have equipped yourself for this journey...)"] 

To say inv text list for (B - bare-array): 
	repeat with J running from 0 to the count of B minus one: 
		let opt be object J of B; 
		if J is not zero: 
			if the count of B is 2: 
				say " and "; 
			else if J is the count of B minus 1: 
				say ", and "; 
			else: 
				say ", "; 
		say inv-text of opt; 
		if opt is used: 
			say " (used)"; 

To display inventory, parenthesized: 
	if parenthesized: 
		say "("; 
	let physcount be the number of taken uncompleted physical takeables; 
	let mentcount be the number of taken uncompleted mental takeables; 
	if physcount is zero and mentcount is zero: 
		say "You are wearing your trusty lamp-helmet"; 
	else: 
		if physcount is not zero: 
			if at-start is true: 
				say "You have equipped yourself for this journey with "; 
			else: 
				say "You have brought along "; 
			clear generic-bare-array; 
			repeat with J running from 0 to the count of taken-bare-array minus one: 
				let opt be object J of taken-bare-array; 
				if opt is a taken uncompleted physical taken: 
					add opt to generic-bare-array; 
			say inv text list for generic-bare-array; 
		if mentcount is not zero: 
			if physcount is not zero: 
				say ". "; 
			say "You have memorized "; 
			clear generic-bare-array; 
			repeat with J running from 0 to the count of taken-bare-array minus one: 
				let opt be object J of taken-bare-array; 
				if opt is a taken uncompleted mental taken: 
					add opt to generic-bare-array; 
			say inv text list for generic-bare-array; 
	if parenthesized: 
		say ".)"; 
	else: 
		say "." 

[This is the ungraceful idiom for customizing an I7 library message. (A normal person would use one of the extensions which accomplishes this cleanly -- e.g., "Custom Library Messages by Ron Newcomb". I did it the fast-and-dirty way, as usual.)] 
To decide if intervened in action message: 
	if library message action is restoring the game action: 
		[Customize the "restore" message.] 
		if library message number is 2: 
			say "[em](...You return to the story.)[/em][para]"; 
			follow the state-desc rules for the curstate; 
			decide on true; 
	decide on false; 


Chapter - Takeables 

[The takeables are never physically moved around; they always exist in this notional container object. We know which ones the player has picked up by giving them the "taken" property.] 
The takeable-set is a container. 
All takeables are in takeable-set. 

The no-thing is a takeable. [never taken] 

[Let us now define all the takeable items. Note that for each one, we define a general "perform" rule that will handle its response in most conditions. State-specific responses will be defined later. 

A few objects can be "used", that is, used up -- either by discarding (the coin), burning up (the fireworks), or affixing to the landscape (the rope). This "used" flag is reset whenever the game starts over. You'll see a special "perform ... when used" rule to cover those cases.] 

The crowbar is a takeable. The inv-text is "a handy [crowbar]". 
Understand "bar" as the crowbar. 

Perform crowbar: 
	instead say "You can't think of anything to do with the crowbar here." 

The umbrella is a takeable. The inv-text is "an [umbrella]". 

Perform umbrella: 
	instead say "You have no need for an umbrella here." 

The flare is a takeable. 
Understand "cap" as the flare. 

Perform flare when the flare is used: 
	instead say "You have already used the flare." 
Perform flare: 
	now the flare is used; 
	instead say "You twist the flare's cap, producing a satisfying blue-white burst of flame. It only lasts a few seconds, though, and then you are blinking away afterimages in the dimness." 

The smoke is a takeable. The inv-text is "a [smoke] tube". 
Understand "tube" as the smoke. 

Perform smoke when the smoke is used: 
	instead say "You have already used the smoke tube." 
Perform smoke: 
	now the smoke is used; 
	instead say "You crack the tube, and smoke gushes out, filling the space. (It smells rather nice.) Despite the stillness of the air here, the smoke cloud soon disperses, or dissolves, or evaporates." 

The Ata-runes is a mental takeable. The printed name is "Atalantë". The inv-text is "the runes of [Ata-runes]". 
Understand "atalante", "atalantë" as the Ata-runes. 

Perform Ata-runes: 
	instead say "Your knowledge of the runes of Atalantë will not help you here." 

The Uabar-runes is a mental takeable. The printed name is "Uabar".The inv-text is "the runes of [Uabar-runes]". 
Understand "uabar" as the Uabar-runes. 

Perform Uabar-runes: 
	instead say "Your knowledge of the runes of Uabar will not help you here." 

The key is a takeable. The inv-text is "a stone [key]". 

Perform the key: 
	instead say "There is nothing to unlock here." 

The rope is a takeable. The inv-text is "a coil of [rope]". 

Perform rope when the rope is used: 
	if at 3-Tall-Chamber: 
		continue the action; 
	instead say "You have already used the rope." 
Perform rope: 
	instead say "You have no need for rope here." 

The shoes is a takeable. The inv-text is "a pair of small [shoes]". 
Understand "shoe", "slippers", "slipper" as the shoes. 

Perform shoes: 
	instead say "The shoes are too small for your feet." 

The sign is a mental takeable. The inv-text is "a ritual [sign]". 
Understand "pose" as the sign. 

Perform sign: 
	instead say "You make a formal gesture with your hands, but nobody is watching." 

The coin is a takeable. The inv-text is "an old gold [coin]". 
Understand "gold" as the coin. 

Perform coin when the coin is used: 
	instead say "You have already tossed the gold coin away." 
Perform coin: 
	instead say "This is no place to spend money." 

The egg is a takeable. The inv-text is "a curious glass [egg]". 
Understand "glass" as the egg. 

Perform egg when the egg is used: 
	instead say "You have already destroyed the glass egg." 
Perform egg: 
	now the egg is used; 
	instead say "You roll the glass egg in your hand, and then fling it down on the stone floor. It smashes satisfyingly into a heap of green glass splinters.[para]The splinters continue to roil and shift, however. The heap begins to stretch into a sort of glass tendril, which quests around feebly. Whatever it is seeking, it does not find; the tendril soon goes limp and slumps back into bits of glass." 

The word is a mental takeable. The inv-text is "an untranslateable [word]". 

Perform the word: 
	instead say "You carefully pronounce the alien word that you once found in a storybook. But no one is listening." 

The crystal is a takeable. The inv-text is "a unique black [crystal]". 
Understand "black" as the crystal. 

Perform the crystal: 
	instead say "You are not sure what the black crystal is for." 

Chapter - Universal Options 

[These options are always available.] 

The universal is a container. 

Restart-option is an option in universal. The printed name is "start". 
Understand "start", "restart", "begin", "beginning" as restart-option. 

Perform restart-option: 
	if at-start is true: 
		instead say "[em](But the story has just begun!)[/em][br]"; 
	say "[para][em](...You begin again.)[/em][para]"; 
	instead start over. 

About-option is a nonundoable option in universal. 
Understand "about", "help", "credits", "version" as about-option. 

Perform about-option: 
	try requesting the story file version; 
	say "[br][basic help text][br]"; 
	say "This game was written for the Yuletide 2012 fanfic exchange ([fix]http://archiveofourown.org/collections/yuletide2012[/fix]). The Yuletide comment page is [fix]http://archiveofourown.org/collections/yuletide2012/works/598023[/fix]. The game was inspired -- perhaps loosely -- by Randall Munroe's comic xkcd-1110: 'Click and Drag' ([fix]http://www.xkcd.com/1110/[/fix]). The touch of Calvino is purely for added flavor.[para]"; 
	say "[em]Bigger Than You Think[/em] is copyright 2012 by Andrew Plotkin (erkyrath@eblong.com). It may be distributed for free, but not sold or included in any for-profit collection without written permission from the author.[para]"; 
	say "Thanks to Zach for beta-testing, and the PR-IF for more pre-release feedback. And very much thank you to all you Yuletiders who left enthusiastic comments during December!"; 
	stop. 

[This text is printed when the game begins, and is also part of the "about" output.] 
To say basic help text: 
	say "[em]Bigger Than You Think[/em] is a choice-based interactive narrative. Every few paragraphs, you will have the opportunity to decide what happens next in the story. Type one of the boldface words[if hyperlinks available] (or click on it)[end if] to select an option.[para]"; 
	say "You may return to the beginning of the story by typing [restart-option]. (This option is always available.) Note that this game has an autosave feature; if you quit and then start a new session, it should pick up where you left off." 

Look-option is a nonundoable option in universal. 
Understand "look", "l" as look-option. 

Perform look-option: 
	instead try looking. 

[It's an IF tradition to include a response to "XYZZY". I also threw in some more magic words, because I knew Flourish would be playing.] 
Xyzzy-option is a nonundoable option in universal. 
Understand "xyzzy", "plugh", "alohomora", "incendio", "diffindo", "fuego" as xyzzy-option. 

Perform xyzzy-option: 
	instead say "Fairy-tale magic words won't solve anything." 

Reset-option is a nonundoable option in universal. 
Understand "reset" as reset-option. 

Perform reset-option: 
	say "The 'reset' option will return you to the beginning in the story, [em]and also[/em] reset all your progress. You will lose everything you have collected and everything you have discovered. Are you sure you want to do this?[para]"; 
	say "Type YES or NO > "; 
	if the player consents: 
		clobber the autosave file; 
		follow the immediately restart the VM rule; 
		instead say "Huh. It didn't work."; 
	stop. 

Undo-option is a nonundoable option in universal. 
Understand "undo" as undo-option. 

Perform undo-option: 
	follow the immediately undo rule; 
	stop. 

Script-option is a nonundoable option in universal. 
Understand "script", "transcript" as script-option. 

To decide whether the story transcript is currently on: (- gg_scriptstr -). 
Perform script-option: 
	if the story transcript is currently on: 
		try switching the story transcript off; 
	else: 
		try switching the story transcript on; 
	stop. 

Save-option is a nonundoable option in universal. 
Understand "save" as save-option. 

Perform save-option: 
	instead try saving the game. 

Restore-option is a option in universal. The printed name is "restore". 
Understand "restore", "load" as restore-option. 

Perform restore-option: 
	instead try restoring the game. 

Inv-option is a nonundoable option in universal. 
Understand "inventory", "inv", "i" as inv-option. 

Perform inv-option: 
	instead display inventory. 

Chapter - Debug Options - not for release 

[When testing, it's handy to have some cheat commands! The "not for release" notation tells the I7 compiler to omit these from the final build.] 

Zap-showall is an option in universal. 
Understand "zap-show", "zap-showall" as zap-showall. 

Perform zap-showall: 
	repeat with opt running through takeables: 
		say "[printed name of opt]:[if opt is taken] taken[end if][if opt is completed] completed[end if][if opt is used] used[end if][br]"; 
	stop. 

Zap-takeall is an option in universal. 
Understand "zap-take", "zap-takeall" as zap-takeall. 

Perform zap-takeall: 
	let N be zero; 
	repeat with opt running through takeables: 
		if opt is not no-thing and opt is not taken: 
			take opt; 
			increment N; 
	instead say "([N] takeables taken.)". 

Zap-egg is an option in universal. 
Understand "zap-egg" as zap-egg. 

Perform zap-egg: 
	take the egg; 
	instead say "(Egged.)" 

Zap-grotto is an option in universal. 
Understand "zap-rope", "zap-bar", "zap-grotto" as zap-grotto. 

Perform zap-grotto: 
	take the rope; 
	take the crowbar; 
	take the Ata-runes; 
	take the Uabar-runes; 
	instead say "(Ready for grotto.)" 

Chapter - States 

[Now, all 32 states of the game. (They're numbered from 1 to 26, and then I wound up with some extras. If I were a tidy person, I'd have renumbered everything at the end. I'm not) For each state, we define a "state-desc rule", which prints its text. We then define the state-specific options, and the "perform" rules for each of them, and also the "perform" rules for any takeable which has a special response in that state. 

Notice that the takeable "perform" rules are all written like: 
	Perform rope when at 1-Upper-Chimney: ... 
The "at STATE" test there isn't native to I7; I defined it earlier in the source code. It's a shortcut for "when curstate is STATE". Not much of a shortcut, but I did it anyhow! 

Some of the descriptions are rather complicated, with variations based on whether you've solved a puzzle or not. I wanted to ensure that you never have to solve the same puzzle twice, so if you re-enter a state, the puzzle appears already solved -- which may mean that an item is magically marked "used". Similarly, if you've taken an item, the description omits it thereafter. This is all tedious and requires a lot of testing, but it's not complicated when you get down to it.] 

Story-Start is a state. 
[Set up the initial conditions. (I could have done this in the "when play begins" rule, but eh, works either way.)] 
The curstate is Story-Start. At-start is true. 

State-desc rule for Story-Start: 
	say "After descending into the Earth [em](said Marco Polo to the Khan)[/em] you seek through long, silent passages of stone. Your helmet's dim illumination presses back the dark, but does not break it; darkness follows in your footsteps and obliterates them.[para]"; 
	say "You descend chasms, you crawl through low chambers. Occasionally you see a discarded scrap or a bootprint in the mud, for these tunnels are not uninhabited, but you leave these signs undisturbed and add few of your own. Companionship on the journey is not what you seek. Silence, the unchanging textures of stone lull you; you push ahead into the dark, but your mind wanders. Did the children of Atalantë explore here as you do? Did they lose themselves, fade into shadow?[para]"; 
	say "You come to yourself at a chimney's precipitous lip. Not so peaceful an end, had you stumbled! Will you climb [start-up] or [start-down]?"; 
	if the number of taken takeables is not zero: 
		say line break; 
		display inventory, parenthesized; 
	stop. 

Start-up is an option in Story-Start. The printed name is "upwards". 
Understand "u", "up", "upward", "upwards", "ascend" as start-up. 

Perform start-up: 
	instead go to 1-Upper-Chimney. 

Start-down is an option in Story-Start. The printed name is "downwards". 
Understand "d", "down", "downward", "downwards", "descend" as start-down. 

Perform start-down: 
	instead go to 2-Lower-Chimney. 


1-Upper-Chimney is a state. 

State-desc rule for 1-Upper-Chimney: 
	say "You press yourself between the shoulders of stone [em](said Marco Polo)[/em] and begin working your way up the shaft. Your progress is slow, measured in the ache of your back and the strain of your thighs.[para]"; 
	say "After timeless time, you pass a hollow in the chimney wall, an opening into a passage that stretches out of sight. Will you enter the [1-passage], or continue [1-climbing]?"; 
	stop. 

1-passage is an option in 1-Upper-Chimney. The printed name is "passage". 
Understand "passage", "enter", "opening", "hollow", "side" as 1-passage. 

Perform 1-passage: 
	instead go to 3-Tall-Chamber. 

1-climbing is an option in 1-Upper-Chimney. The printed name is "climbing". 
Understand "u", "up", "upward", "upwards", "ascend", "climb", "climbing", "continue" as 1-climbing. 

Perform 1-climbing: 
	instead go to 4-Root-Chamber. 

Perform rope when at 1-Upper-Chimney: 
	instead say "There's nothing here to tie a line to." 

Perform egg when at 1-Upper-Chimney: 
	now the egg is used; 
	instead say "You smash the egg against the stone wall. Green glass splinters tumble away down the pit." 


2-Lower-Chimney is a state. 

State-desc rule for 2-Lower-Chimney: 
	say "You slide into the pit, and begin lowering yourself carefully from ledge to ledge. The stone is cool and slick; a torrent must once have poured down this chimney, though now only dripping moisture remains.[para]"; 
	say "[em]'Caverns measureless to man?'[/em] Indeed.[para]"; 
	say "After uncounted subterranean time, you pass a gaping crack, an opening into a twisting side canyon. The pit continues to descend, but the walls grow wider and smoother, and you are not certain of your safety.[para]"; 
	if the crowbar is untaken: 
		say "A steel crowbar is caught crossways in the shaft here -- no doubt dropped by an earlier explorer, somewhere above.[para]"; 
	say "Will you explore the [2-canyon][if the crowbar is untaken], take the [take-crowbar][end if], or continue [2-climbing] down?"; 
	stop. 

2-canyon is an option in 2-Lower-Chimney. The printed name is "canyon". 
Understand "crack", "canyon", "opening", "side", "twisting" as 2-canyon. 

Perform 2-canyon: 
	instead go to 5-Fork. 

2-climbing is an option in 2-Lower-Chimney. The printed name is "climbing". 
Understand "d", "down", "downward", "downwards", "descend", "climb", "climbing", "continue" as 2-climbing. 

Perform 2-climbing: 
	instead go to 6-Falling. 

take-crowbar is an option in 2-Lower-Chimney. The printed name is "crowbar". 
The take-option of the crowbar is take-crowbar. 
Understand "take", "get", "bar", "crowbar" as take-crowbar. 

Perform take-crowbar: 
	take the crowbar; 
	instead say "You give the crowbar a tentative tug. It comes easily free. You were wise not to put your weight on it, you suppose." 

Perform rope when at 2-Lower-Chimney: 
	instead say "There's nothing here to tie a line to." 

Perform egg when at 2-Lower-Chimney: 
	now the egg is used; 
	instead say "You smash the egg against the stone wall. Green glass splinters tumble away down the pit." 

3-Tall-Chamber is a state. 

State-desc rule for 3-Tall-Chamber: 
	say "You ease yourself back onto level stone. Happily, the passage is tall enough for you to stand.[para]"; 
	say "You meander through the darkness, until the walls open up: a tall chamber, strung with irregular columns and stalagmites.[para]"; 
	if the rope is not completed: 
		say "Another pit opens at your feet, but this one is impossible to descend: its walls are featureless. However, someone has been this way before. A rough iron eye-bolt has been hammered into the pit's lip.[para]"; 
	else: 
		now the rope is used; 
		say "Another [3-pit] opens at your feet. A rough iron eye-bolt has been hammered into the pit's lip; a rope is tied to it, and descends out of sight. Clearly, someone has been this way before.[para]"; 
	say "Your helmet-light reflects dimly from the walls -- unless that is a gleam of illumination coming from up [3-ahead]? But you can also hear water trickling, somewhere off to the [3-side].[para]"; 
	stop. 

3-ahead is an option in 3-Tall-Chamber. The printed name is "ahead". 
Understand "ahead", "forward", "forwards", "light", "gleam", "illumination" as 3-ahead. 

Perform 3-ahead: 
	instead go to 7-Trees. 

3-side is an option in 3-Tall-Chamber. The printed name is "side". 
Understand "side", "water", "sideways" as 3-side. 

Perform 3-side: 
	instead go to 8-Pool. 

3-pit is a silent option in 3-Tall-Chamber. The printed name is "pit". 
Understand "pit", "d", "down", "downward", "downwards", "descend", "climb" as 3-pit. 

Perform 3-pit: 
	if the rope is completed: 
		now 14-Hatch is unropey; 
		instead go to 14-Hatch; 
	instead say "The pit is unclimbable." 

Perform crowbar when at 3-Tall-Chamber: 
	instead say "You bang on the iron bolt, but it's firmly seated in the rock." 

Perform rope when at 3-Tall-Chamber: 
	if the rope is completed: 
		now the rope is used; 
		now 14-Hatch is unropey; 
		instead go to 14-Hatch; 
	now the rope is completed; 
	now the rope is used; 
	now 3-pit is not silent; 
	now 14-Hatch is ropey; 
	instead go to 14-Hatch. 

4-Root-Chamber is a state. 

State-desc rule for 4-Root-Chamber: 
	say "You push upwards, and upwards, through a shaft which is sometimes too wide to span and occasionally -- almost -- too narrow to pass your shoulders.[para]"; 
	say "You are nearly exhausted when something rough brushes your face -- a rope? No, a tree root; you must be approaching the surface. You haul yourself up into a wide root chamber, and flop full-length on the knobbly floor.[para]"; 
	say "'Would you like to hear a story?' asks the shaven-headed young monk. You sit up so fast you nearly knock your helmet off. The strange figure is sitting calmly at the back of the chamber, wrapped in a yellow robe and a sporty climbing harness.[para]"; 
	say "'I came down here to seek out the origins of the Lost Ones,' the monk adds. You open your mouth, but can get nothing out -- is everyone in the world on the same quest?[para]"; 
	say "The monk raises an eyebrow, then continues. 'I have found little of value in this chamber. A few tablets, but I couldn't make head or tail of them, so--' An airy gesture in the direction of the open pit behind you. '-- I hope you weren't in the shaft when I... no? That's all right then.' (You shudder.) 'Perhaps, then, we should pool our knowledge.'[para]"; 
	say "Will you ask about the lost city of [4-Uabar] in the desert, or [4-Ata] in the reaches of the sea?"; 
	stop. 

4-Uabar is an option in 4-Root-Chamber. The printed name is "Uabar". 
Understand "uabar", "city", "desert" as the 4-Uabar. 

Perform 4-Uabar: 
	instead go to 9-Uabar. 

4-Ata is an option in 4-Root-Chamber. The printed name is "Atalantë". 
Understand "atalante", "atalantë", "island", "sea" as the 4-Ata. 

Perform 4-Ata: 
	instead go to 10-Ata. 

Perform sign when at 4-Root-Chamber: 
	instead say "You make a formal gesture with your hands. The monk raises his other eyebrow." 

Perform word when at 4-Root-Chamber: 
	instead say "You carefully pronounce the alien word that you once found in a storybook. The monk stares at you as if you had made an embarrassing noise." 

Perform coin when at 4-Root-Chamber: 
	instead say "You pull out your antique gold coin. The monk looks it over, and shrugs." 

Perform shoes when at 4-Root-Chamber: 
	instead say "You pull out the leather shoes. The monk looks them over, then hands them back, saying, 'Not my size.'" 

Perform rope when at 4-Root-Chamber: 
	instead say "You consider tying your rope to the roots. But it wouldn't reach even as far down as the passage where you entered this chimney." 


5-Fork is a state. 

State-desc rule for 5-Fork: 
	say "You lever your body through the crack, and leave the chimney behind. The canyon doglegs wildly, but never very tightly, and with a slow, steady descent.[para]"; 
	say "After a time, the passage stops -- at a tall, crude, but clearly hand-carved marble door, set deep into the wall[if the key is completed], though slightly ajar[end if]. Lines of petroglyphs spiral around its face. To either side of the door, smaller cracks lead away.[para]"; 
	say "Will you examine the [5-carvings][if key is not completed], try to [5-open] the locked door[else], [5-open] the unlocked door[end if], or continue to the [5-left] or [5-right]?"; 
	stop. 

5-left is an option in 5-Fork. The printed name is "left". 
Understand "left" as 5-left. 

Perform 5-left: 
	instead go to 11-Sinkhole. 

5-right is an option in 5-Fork. The printed name is "right". 
Understand "right" as 5-right. 

Perform 5-right: 
	instead go to 12-Monster. 

5-open is an option in 5-Fork. The printed name is "open". 
Understand "open", "door", "keyhole", "enter", "in" as 5-open. 

5-carvings is an option in 5-Fork. The printed name is "carvings". 
Understand "carving", "carvings", "petroglyph", "face", "read", "examine" as the 5-carvings. 

Perform 5-carvings: 
	say "The carvings are pictorial. They show a circle of hands approaching a larger circle, cut with intricate boundaries -- and if you had any doubt of your mark, they are now dispelled, for those outlines are [em]continental[/em]. It is Earth which the circle-of-hands approaches. The map is not precise... or, no, it [em]is[/em]: you make out the thickened land masses of the last Ice Age, twenty thousand years past.[para]"; 
	say "Whatever the story, these inscriptions do not reveal the end of it. The smaller circle shatters, and hand-outlines drift down like snowflakes across the world."; 
	stop. 

Perform 5-open: 
	if the key is completed: 
		now 16-Living is unkeysey; 
		instead go to 16-Living; 
	instead say "You push and tug, but the door does not move at all. Upon closer inspection, you see a keyhole by the door's edge; apparently this will not be a matter of main force." 

Perform key when at 5-Fork: 
	now the key is completed; 
	now 16-Living is keysey; 
	instead go to 16-Living. 

Perform crowbar when at 5-Fork: 
	instead say "You try to jam the crowbar in at the door's edge, but even that added leverage does not shift the stone." 

Perform word when at 5-Fork: 
	instead say "You carefully pronounce the alien word that you once found in a storybook. But the door is listening." 

6-Falling is a state. 

State-desc rule for 6-Falling: 
	say "Another stretched-step downward, groping for ledges with your toes. Then another, then another -- until slick stone shrugs your foot away.[para]"; 
	say "Now you are plunging through the darkness, which roars at you and blurs past your flailing hands.[para]"; 
	if the umbrella is not completed: 
		say "Somewhere below is the end of your journey. Such a thing should not be spoken of, lest one decide that life has yielded up its last marvel. Shall we instead [restart-option] the story from the beginning?"; 
	else: 
		say "It would be wise to open your umbrella and [6-descend] in style. Or we might [restart-option] the story from the beginning."; 
	stop. 

6-descend is a silent option in 6-Falling. The printed name is "descend". 
Understand "d", "down", "fall", "descend" as 6-descend. 

Perform 6-descend: 
	if the umbrella is completed: 
		instead go to 17-Tablets; 
	instead say "You are already heading down." 

Perform umbrella when at 6-Falling: 
	now the umbrella is completed; 
	now 6-descend is not silent; 
	instead go to 17-Tablets. 

Perform crowbar when at 6-Falling: 
	instead say "The crowbar won't save your life." 

Perform key when at 6-Falling: 
	instead say "There's nothing to unlock here, and if there were, you wouldn't have time to unlock it." 

Perform shoes when at 6-Falling: 
	instead say "The shoes won't save your life." 

Perform rope when at 6-Falling: 
	instead say "It's too late for rope now." 

Perform sign when at 6-Falling: 
	instead say "Sign language is not going to help now." 

Perform word when at 6-Falling: 
	instead say "The wind tears the word away, unheard." 

Perform flare when at 6-Falling: 
	instead say "This is no time for fireworks." 

Perform smoke when at 6-Falling: 
	instead say "This is no time for fireworks." 

Perform egg when at 6-Falling: 
	now the egg is used; 
	instead say "You try to smash the egg against the stone wall, but it slips from your fingers and is lost in the fall." 

7-Trees is a state. 

State-desc rule for 7-Trees: 
	say "The light brightens as you approach... though only in contrast to the stone-darkness do you call it bright.[para]"; 
	say "Eventually you make out veins of crystal overhead, which shed the slow-flaring orange glow. No such phosphorescent mineral is natural to the Earth's geology, you are sure; is this at last the sign you have sought?[para]"; 
	say "The crystal veins join and knot as the ceiling rises, until you walk in a wide cavern as well-lit as your own study. But your study contains nothing like the shadows that rise ahead: stalagmites cloaked in shifting darkness... no, [em]trees[/em], growing underground in the orange light. Surely only the arts of the Lost Peoples could nurture such a thing, here beneath the earth.[para]"; 
	if the umbrella is not taken: 
		say "An umbrella lies discarded, though neatly folded, at the subterranean forest's eaves.[para]"; 
	say "Will you[if the umbrella is not taken] take the [take-umbrella] or[end if] advance into the [7-forest]?"; 
	stop. 

7-forest is an option in 7-Trees. The printed name is "forest". 
Understand "forest", "advance", "tree", "trees", "shadow", "shadows" as 7-forest. 

Perform 7-forest: 
	instead go to 13-Watchers. 

take-umbrella is an option in 7-Trees. The printed name is "umbrella". 
The take-option of the umbrella is take-umbrella. 
Understand "take", "get", "umbrella" as take-umbrella. 

Perform take-umbrella: 
	take the umbrella; 
	instead say "You pick up the umbrella. It's a nice big sturdy one. Why someone needed an umbrella underground, you have no notion." 


8-Pool is a state. 

State-desc rule for 8-Pool: 
	say "You follow a descending passage, with the sound of water echoing somewhere ahead. You see nothing, but surely--[para]"; 
	say "Ah, here: you round a final turn, and see a dark pool ahead. It lies at the foot of a carved stone wall. Water trickles down the wall's face, feeding the pool from some unknown source above.[para]"; 
	say "The descending stream chuckles happily to itself; but the pool is oddly still, and opaque. But no -- your headlamp picks out a faint gleam, somewhere below the surface. Gold? Or the eye of some cave-fish, if they have eyes?[para]"; 
	say "Will you examine the [8-inscriptions], or reach into the [8-water][if the coin is completed]? Or shall we [restart-option] the story over[end if]?"; 
	stop. 

8-inscriptions is an option in 8-Pool. The printed name is "[if writing status line]inscription[else]inscriptions[end if]". 
Understand "inscriptions", "carvings", "carving", "wall", "read", "examine" as 8-inscriptions. 

Perform 8-inscriptions: 
	instead say "The inscriptions tell, in awkward but decipherable Latin, of a war-party of titans who were flung from the heavens during the gods[apostrophe] war against Cronos. These titans sailed around the edge of the world seven times seeking the gates of Cronos's kingdom, but they could not be found, for all of that ur-kingdom had been sunk into the underworld. The titans dug... but beyond this, the text is unreadable, obliterated by the flowing water." 

8-water is an option in 8-Pool. The printed name is "water". 
Understand "pool", "water", "reach", "gleam", "swim", "drink" as 8-water. 

Perform 8-water: 
	instead go to 8x-Pool-Death. 

Perform egg when at 8-Pool: 
	now the egg is used; 
	instead say "You toss the glass egg into the pool. It disappears with a bloop." 

Perform coin when at 8-Pool: 
	take the word; 
	now the coin is completed; 
	now the coin is used; 
	say "You pull out the old gold coin with its indecipherable markings. In for a penny, in for a priceless artifact of the Lost, you think, and toss the coin into the pool.[para]"; 
	say "The gold sinks, becoming only another glint in the depths. Then the water stirs. A fish-tail slaps the surface, the fin of some long golden carp-like creature. Then...[para]"; 
	say "...the fish does not [em]speak[/em]. Fish can't talk. You definitely don't hear anything. But there is the sense of a word being [em]pronounced[/em], with precision and vast intent. When it is finished -- indeed, while it is occurring -- it is etched into your memory.[para]"; 
	say "The fish flips once again, and disappears into the murk. That will be all from this pool, you decide. Shall we [restart-option] the story over?"; 
	stop. 

Perform word when at 8-Pool: 
	instead say "You carefully pronounce the alien word. The fish does not respond." 


8x-Pool-Death is a state. 

State-desc rule for 8x-Pool-Death: 
	say "You plunge your hand into the water. The chilly shock sends you numb, instantly, to the elbow. You withdraw your hand -- but the skin is blue, and the icy numbness is crawling up past your shoulder now. Not just cold, then, you think. A pity. Your helmet-lamp grows dim, and the stone grows distant.[para]"; 
	say "Your story will end here, unless you wish to [restart-option] from the beginning."; 
	stop. 

Perform a takeable when at 8x-Pool-Death: 
	instead say "You are unable to move." 


9-Uabar is a state. 

State-desc rule for 9-Uabar: 
	say "You were born in Uabar, [em](the monk begins)[/em], great Uabar, city of the towers, queen of the desert. You grew in its alleys, chasing imaginary revolutionaries, rolling under palanquins to escape the dreamed pursuit of djinn-lords, dodging between coaches and lizard-beeves to delight phantom admirers. Soon you will be grown, and stately walk the avenues with a modest headcloth and the mist of fountain-spray brushing your face. But that day is not today.[para]"; 
	say "The men and women of Uabar crowd past you today, ignoring the slight form of a still-child leaning on the old stone well. (The first well of Uabar, which stood in the deep desert long before the People came here and built fountains and avenues and towers.) You hear a commotion in the alleys, as your playmates gather for yet another game. But your eyes are drawn to a nearby square: the day's debates are beginning.[para]"; 
	if the key is not taken: 
		say "A stone key lies forgotten on the lip of the well.[para]"; 
	say "Will you[if the key is not taken] pick up the [take-key],[end if] run and climb [9-towers] with your friends, or slip into the [9-square] and hear what the citizens are discussing?"; 
	stop. 

9-towers is an option in 9-Uabar. The printed name is "towers". 
Understand "tower", "towers", "climb", "friend", "friends", "run", "u", "up" as 9-towers. 

Perform 9-towers: 
	if the shoes are completed: 
		now 26-Towers is nonshoey; 
		instead go to 26-Towers; 
	instead say "You meet your friends, but you have forgotten your climbing gear at home today! Oh, the embarrassment. You resign yourself to an afternoon of napping in the shade before dinner." 

9-square is an option in 9-Uabar. The printed name is "square". 
Understand "slip", "square", "market", "listen", "hear", "discussing", "discussion", "citizen", "citizens" as 9-square. 

Perform 9-square: 
	instead go to 25-Square. 

take-key is an option in 9-Uabar. The printed name is "key". 
The take-option of the key is take-key. 
Understand "take", "get", "stone", "key" as take-key. 

Perform take-key: 
	take the key; 
	instead say "You toss the stone key a few times -- nicely chunky -- and then tuck it away in your purse." 

Perform shoes when at 9-Uabar: 
	now the shoes are completed; 
	now 26-Towers is shoey; 
	instead go to 26-Towers. 

Perform Uabar-runes when at 9-Uabar: 
	instead say "You are too young to have learned the runes." 

Perform coin when at 9-Uabar: 
	now the coin is used; 
	instead say "On a whim, you pull out the ancient gold coin you once found, and toss it into the well. A whim? Too late now." 

Perform egg when at 9-Uabar: 
	now the egg is used; 
	instead say "You pull out your green glass egg, and drop it into the well. After a long moment, you hear it [em]kerplunk[/em] into the water. Belatedly, you hope it wasn't poisonous or anything." 

Perform smoke when at 9-Uabar: 
	now the smoke is used; 
	instead say "You crack the tube, and smoke gushes out. Irritated passers-by glare at you and wave it away." 

Perform flare when at 9-Uabar: 
	now the flare is used; 
	instead say "You twist the flare's cap, producing a satisfying blue-white burst of flame. Nobody is much impressed." 

Perform umbrella when at 9-Uabar: 
	instead say "Old ladies might need umbrellas in the bright sun, but you scorn to." 


10-Ata is a state. 

State-desc rule for 10-Ata: 
	say "When your ship approaches Atalantë, [em](the monk begins)[/em], the sea appears empty -- perhaps bluer, brighter, than the remote Atlantic depths might warrant. You will not see Atalantë[apostrophe]s black-sand shores unless you know the way, the tide, and the path of sunlight that leads inward to them. The Masters of the Island have a duty of privacy to their people, and they hold it rigorously.[para]"; 
	say "But you [em]do[/em] know the way, and so you return home.[para]"; 
	say "Now you stand in the Queen's Square, lingering after the morning's ritual attendance. The place will soon fill with a more cheerful crowd -- people drifting in to sit, meet friends, eat lunch, or all three -- but you relish the moments of quiet.[para]"; 
	say "Will you [10-approach] the sealed doors of the Temple? Or go [10-down] to the bustling markets?"; 
	stop. 

10-approach is an option in 10-Ata. The printed name is "approach". 
Understand "door", "doors", "temple", "approach", "enter", "in" as 10-approach. 

Perform 10-approach: 
	say "You hesitantly approach the great doors. You know only what every citizen knows: those who seek higher training may knock and be admitted -- or not. You have never considered the priesthood, but years of travel to the Continents have knotted suddenly into a desire for change.[para]"; 
	if the sign is not completed: 
		say "You raise your hand... and a panel opens, silently, before you can knock. The face that peers out is bland and mild, awaiting some sign. But you do not know what is expected of you. Perhaps this is just a passing whim, after all."; 
	else: 
		say "You raise your hand... and a panel opens, silently, before you can knock. The face that peers out is bland and mild."; 
		instead go to 24-Temple; 
	stop. 

10-down is an option in 10-Ata. The printed name is "down". 
Understand "down", "d", "market", "markets" as 10-down. 

Perform 10-down: 
	instead go to 23-Market. 

Perform sign when at 10-Ata: 
	now the sign is completed; 
	instead go to 24-Temple. 

Perform Ata-runes when at 10-Ata: 
	instead say "You are too young to have learned the runes." 

Perform word when at 10-Ata: 
	instead say "You carefully pronounce the alien word that you learned on a long-ago voyage. Nobody pays any attention." 

Perform flare when at 10-Ata: 
	instead say "Setting off fireworks in the Queen's Square would get you thrown out on your ear." 

Perform smoke when at 10-Ata: 
	instead say "Setting off fireworks in the Queen's Square would get you thrown out on your ear." 

Perform egg when at 10-Ata: 
	instead say "Setting off a construction packet in the Queen's Square would get you thrown out on your ear." 


11-Sinkhole is a state. 

State-desc rule for 11-Sinkhole: 
	say "The narrow passage rises slightly as it runs. You turn sideways to slip between the limestone formations, and continue your progress.[para]"; 
	say "When green light begins seeping into the canyon, somewhere ahead, you are disoriented: surely you have not ascended so far as the surface? But you press forward, and the illumination soon dispels your confusion, as you step free into wide, round space -- the bottom of a deep sinkhole. Far above, foliage burns viridian in the distant circle of daylight.[para]"; 
	if the rope is not taken: 
		say "A rope sprawls in ungainly coils across the floor of the sinkhole. No doubt some explorer once descended this way, but the return route has become dislodged.[para]"; 
	if the egg is completed: 
		now the egg is used; 
		say "A glassy green vine clings to the sinkhole wall, running up and out of sight.[para]"; 
	say "Will you attempt to [11-climb][if the rope is not taken], gather up the [take-rope][end if], or [restart-option] the story over?"; 
	stop. 

11-climb is an option in 11-Sinkhole. The printed name is "climb". 
Understand "u", "up", "upward", "upwards", "ascend", "climb", "climbing", "attempt" as 11-climb. 

Perform 11-climb: 
	if the egg is completed: 
		instead go to 18-Treasure; 
	instead say "The sinkhole walls are smooth and slightly overhung. You might be able to climb a few meters, here or there, but certainly not the sinkhole's entire height." 

take-rope is an option in 11-Sinkhole. The printed name is "rope". 
The take-option of the rope is take-rope. 
Understand "take", "get", "gather", "rope" as take-rope. 

Perform take-rope: 
	take the rope; 
	instead say "You coil up the rope and stow it away." 

Perform rope when at 11-Sinkhole: 
	instead say "The rope is at the bottom of the sinkhole with you, so it won't help you ascend." 

Perform egg when at 11-Sinkhole: 
	now the egg is completed; 
	now the egg is used; 
	say "You roll the glass egg in your hand, and then fling it down on the stone floor. It smashes satisfyingly into a heap of green glass splinters.[para]"; 
	say "The splinters continue to roil and shift, however. They seem to be stretching upwards; no, they [em]are[/em] stretching upwards, towards the light far above. Soon the heap of glass has grown into a vine-like sprout -- two feet high, four feet high, higher than you can reach. Tendrils reach out and touch the sinkhole wall; and then the thing [em]really[/em] gets going.[para]"; 
	say "When the crackling growth ceases, the vine runs all the way to the top of the sinkhole. Will you [11-climb] it?"; 
	stop. 


12-Monster is a state. 

State-desc rule for 12-Monster: 
	say "The narrow passage descends slightly as it runs, but it slowly widens as well.[para]"; 
	say "You are lost in thought, making your way forward, when an eerie hiss startles you nearly from your feet. You look back, but the canyon behind you is thick with shadow. There -- an oblong shape moves, somewhere beyond the range of your helmet lamp. It hisses again. It glides towards you.[para]"; 
	if the flare is not completed: 
		say "Will you [12-turn] to confront the shape, or [12-flee] it?"; 
	else: 
		now the flare is used; 
		say "You turn, pull the flare from your belt, and twist the cap. It bursts to life, etching the passage with blue-white light.[para]The shape shrieks and falls backwards. You have no desire to wait and see if it recovers; you drop the flare and [12-flee]."; 
	stop. 

12-turn is an option in 12-Monster. The printed name is "turn". 
Understand "turn", "confront", "attack", "fight", "defend" as 12-turn. 

Perform 12-turn: 
	if the flare is completed: 
		instead say "That's a terrible idea."; 
	now 12x-Monster-Dead is fighty; 
	instead go to 12x-Monster-Dead. 

12-flee is an option in 12-Monster. The printed name is "[if flare is not completed]flee[else]run[end if]". 
Understand "flee", "run", "go", "ahead", "forward", "forwards" as 12-flee. 

Perform 12-flee: 
	if the flare is completed: 
		instead go to 21-Saucer; 
	now 12x-Monster-Dead is runny; 
	instead go to 12x-Monster-Dead. 

Perform smoke when at 12-Monster: 
	now the smoke is used; 
	now 12x-Monster-Dead is smoky; 
	instead go to 12x-Monster-Dead. 

Perform crowbar when at 12-Monster: 
	if the flare is completed: 
		instead say "That's a terrible idea."; 
	now 12x-Monster-Dead is fighty; 
	instead go to 12x-Monster-Dead. 

Perform flare when at 12-Monster: 
	now the flare is completed; 
	now the flare is used; 
	instead say "You turn, pull the flare from your belt, and twist the cap. It bursts to life, etching the passage with blue-white light.[para]The shape shrieks and falls backwards. You have no desire to wait and see if it recovers; you drop the flare and [12-flee].". 

Perform word when at 12-Monster: 
	instead say "You shout the word. The creature ignores it." 

Perform sign when at 12-Monster: 
	instead say "Being polite to the creature is probably not going to help." 

Perform umbrella when at 12-Monster: 
	instead say "Whack it with an umbrella? No." 

Perform egg when at 12-Monster: 
	if the flare is completed: 
		instead say "Not now."; 
	now the egg is used; 
	instead say "You fling the glass egg at the creature. There is a faint smashing noise, but the shape ignores it and continues to advance." 


12x-Monster-Dead is a state. 
12x-Monster-Dead can be fighty, runny, or smoky. 

State-desc rule for 12x-Monster-Dead: 
	if 12x-Monster-Dead is fighty: 
		say "You advance on the shape. It seems wary of your light, sidling backwards into the shadows. Perhaps you can drive it away...[para]"; 
		say "You are a few steps away when the creature emits an inhuman whistle, like a furious steam valve, and leaps at you. Perhaps not, then.[para]"; 
	else if 12x-Monster-Dead is runny: 
		say "You hurry your steps, hoping to outdistance the creature. But it paces you, seemingly at home in the underground environment, remaining just out of your helmet's circle of illumination.[para]"; 
		say "You lengthen your stride, only to hear an eager hiss from just at your heels. You break into a run -- and stumble, and crash full-length to the stone. Your helmet goes spinning out of reach. Then the hissing shape is upon you.[para]"; 
	else if 12x-Monster-Dead is smoky: 
		say "You crack the tube. Dense smoke fills the passage.[para]An oblong shape looms out of the smoke. You realize, somewhat late, that the creature probably doesn't hunt by sight at all.[para]"; 
	else: 
		say "(BUG) Monster outcome not determined.[para]"; 
	say "The remaining details are unpleasant; best we [restart-option] the story from the beginning."; 
	stop. 

Perform a takeable when at 12x-Monster-Dead: 
	instead say "It's far too late." 


13-Watchers is a state. 

State-desc rule for 13-Watchers: 
	say "You move between the trees, and the orange light -- thin-spread as it was -- is quickly blotted out by overhanging branches. Only faint yellow gleams penetrate the foliage.[para]"; 
	say "It takes some time, in this rediscovered gloom, to realize that the glints among the foliage are paired. Eyes, in amber reflectance. You glance around nervously, and the eyes blink, in unison, all around you.[para]"; 
	if the smoke is not completed: 
		say "Will you [13-move] past the watchers, or [13-stand]?"; 
	else: 
		now the smoke is used; 
		say "You crack the tube, and smoke gushes everywhere -- rolling between the trees, drifting into the foliage, and obscuring those yellow-watching pairs of eyes. Now! You dodge forward, hunching down into the smoke, and [13-move] for your life."; 
	stop. 

13-move is an option in 13-Watchers. The printed name is "[if smoke is not completed]move[else]run[end if]". 
Understand "move", "past", "go", "run", "flee", "ahead", "forward", "forwards" as 13-move. 

Perform 13-move: 
	if smoke is completed: 
		instead go to 15-Glade; 
	instead go to 13x-Watchers-Death. 

13-stand is an option in 13-Watchers. The printed name is "stand". 
Understand "stand", "stay", "stop", "wait" as 13-stand. 

Perform 13-stand: 
	if smoke is completed: 
		instead say "Not here."; 
	instead say "You freeze, but the sense of being watched only grows more intolerable." 

Perform a takeable when at 13-Watchers and the smoke is completed: 
	instead say "Better [13-move]." 

Perform smoke when at 13-Watchers: 
	now smoke is completed; 
	now smoke is used; 
	instead say "You crack the tube, and smoke gushes everywhere -- rolling between the trees, drifting into the foliage, and obscuring those yellow-watching pairs of eyes. Now! You dodge forward, hunching down into the smoke, and [13-move] for your life." 

Perform flare when at 13-Watchers: 
	now the flare is used; 
	instead say "You twist the flare's cap, producing a satisfying blue-white burst of flame. The eyes around you do not flinch, however, and the flare soon burns out." 

Perform umbrella when at 13-Watchers: 
	instead say "You pop open the umbrella and try to hide behind it. It really doesn't work very well." 

Perform word when at 13-Watchers: 
	instead say "You shout the alien word, but there is no response." 

Perform sign when at 13-Watchers: 
	instead say "You make a formal gesture with your hands. The watchers do not seem to be impressed." 


13x-Watchers-Death is a state. 

State-desc rule for 13x-Watchers-Death: 
	say "You turn to run, but which way? The eyes surround you. You spin, trying to keep your back to a tree-trunk, but it is no use: you are [em]seen[/em].[para]Better to cast a veil over that scene. Shall we [restart-option] the story over?"; 
	stop. 

Perform a takeable when at 13x-Watchers-Death: 
	instead say "It's far too late." 


14-Hatch is a state. 
14-Hatch can be ropey or unropey. 

State-desc rule for 14-Hatch: 
	say "[if 14-Hatch is ropey]You run the rope through the eye-bolt, and fasten it with a hitch that you don't remember the name of. [end if]You wrap the rope around yourself and ease yourself steadily down the pit.[para]"; 
	say "You have only descended a few lengths, however, when your feet hit -- not stone, but chilly metal. The pit narrows here, and someone has installed a heavy steel hatch, blocking the descent.[para]"; 
	say "You brace yourself on a ledge, and run your fingers over the rusty metal. Is this modern workmanship, showing a few years of rust... or an unknown alloy of lost history, just starting to decay after centuries?[para]"; 
	if the crowbar is not completed: 
		say "Will you attempt to [14-open] the hatch, consider its relation to [14-history], or abandon your descent and [restart-option] the story over?"; 
	else: 
		say "You unship your crowbar, wedge it under the hatch's rim, and start shoving. The hinges cough and wail, but soon the hatch has cracked open, and it is only a few more minutes before you have enough room to pass.[para]"; 
		say "Will you [14-open], or stop and consider the hatch's relation to [14-history]?"; 
	stop. 

14-open is an option in 14-Hatch. The printed name is "[if crowbar is not completed]open[else]descend[end if]". 
Understand "open", "hatch", "d", "down", "climb", "descend", "descent" as 14-open. 

Perform 14-open: 
	if the crowbar is completed: 
		instead go to 19-Grotto; 
	instead say "You tug on the hatch, but the rusty hinges defeat you. Your fingers slip on the damp edges -- there's nowhere to get a good grip." 

14-history is an option in 14-Hatch. The printed name is "history". 
Understand "history", "lost", "relation", "consider" as 14-history. 

Perform 14-history: 
	say "One might imagine [em](you began your thesis)[/em] that the impact of a foreign history onto ours would be comparable to the Colonial era of [em]our[/em] history. The shock of contact; then tribes of strangers, perhaps with puissant arts or techne, spreading out into lands that we previously imagined to be our birthright; then displacement, or assimilation, or slaughter.[para]"; 
	say "It may be so. But this is only the simplest surface of intersection. The full impact of two streams of history would be impossible for any historic observer to judge. The ramified interactions would occur up and down the 'linear' scale of time. Legends and stories in the mythic past; artifacts embedded in the historic record; prophecies, visions, and dialectics of the expected future; new peoples in the present, or nations, or even lands or seas. All would be visible (or understood, or inferred, or presumed) by observers in every age of history. Only the intangible, inexpressible [em]shock of difference[/em] would mark the moment of intersection in the [em]now[/em]..."; 
	stop. 

Perform key when at 14-Hatch: 
	instead say "The hatch has no keyhole." 

Perform crowbar when at 14-Hatch: 
	if the crowbar is completed: 
		instead say "The hatch is already open."; 
	now the crowbar is completed; 
	say "You unship your crowbar, wedge it under the hatch's rim, and start shoving. The hinges cough and wail, but soon the hatch has cracked open, and it is only a few more minutes before you have enough room to pass.[para]"; 
	say "Will you [14-open], or stop and consider the hatch's relation to [14-history]?"; 
	stop. 

Perform egg when at 14-Hatch: 
	now the egg is used; 
	instead say "You roll the glass egg in your hand, and then fling it down on the steel hatch. It smashes satisfyingly into a heap of green glass splinters.[para]The splinters continue to roil and shift, however. The heap begins to stretch into a sort of glass tendril, which quests around feebly. Whatever it is seeking, it does not find; the tendril soon goes limp and slumps back into bits of glass." 


15-Glade is a state. 

State-desc rule for 15-Glade: 
	say "The smoke brightens, and thins, and you realize you have broken out into an open glade. The orange light of the cavern roof slants down; the watchers appears to have gone.[para]"; 
	if the crystal is not taken: 
		say "In the center of the glade, a black crystal prism lies on a small pedestal. Is this what the forest guardians were protecting?[para]"; 
		say "Will you take the black [take-crystal]?"; 
	else: 
		say "In the center of the glade stands an empty pedestal. Has someone been here before you? How frustrating![para]"; 
		say "There is no more to be learned here. Let us [restart-option] the story anew."; 
	stop. 

take-crystal is an option in 15-Glade. The printed name is "crystal". 
The take-option of the crystal is take-crystal. 
Understand "take", "get", "crystal", "black", "prism" as take-crystal. 

Perform take-crystal: 
	take the crystal; 
	instead say "You pick up the crystal prism and turn it in your fingers. This, no doubt, is some artifact of the Lost; you have the rest of your life to discover its purpose.[para]There is no more to be learned here. Let us [restart-option] the story anew." 


16-Living is a state. 
16-Living can be keysey or unkeysey. 

State-desc rule for 16-Living: 
	if 16-Living is keysey: 
		say "You take out the stone key that you brought down into these tunnels. You slip it into the door's keyhole... and it turns. Click. Unlocked.[para]"; 
		say "A startling stroke of luck, this. Or -- if your theories about the behavior of merging histories are anywhere near right -- perhaps not luck at all.[para]"; 
	say "The door opens easily, or as easily as a ton of marble on limestone hinges could move. The chamber beyond is mostly empty, but with clear signs of human habitation. It appears to have been some sort of living space; a sleeping nook, a few carved niches for storage. One blackened recess is certainly a fireplace, with -- yes -- a connection to a natural chimney in the rear.[para]"; 
	if the shoes are not taken: 
		say "The only items that remain are two folded bits of leather, surprisingly supple and neatly made. (Or, again... not so surprising.) Upon closer inspection, they appear to be shoes, quite small -- perhaps a child's?[para]"; 
		say "Will you take the [take-shoes]? Or will you leave this trove for paleological analysis, and [restart-option] the story anew?"; 
	else: 
		say "Of personal possessions, only a few splinters of wood and flakes of stone remain. Nonetheless, you eagerly anticipate the dating and paleological analysis that this trove will offer.[para]"; 
		say "Shall we leave that for the future, and [restart-option] the story anew?"; 
	stop. 

take-shoes is an option in 16-Living. The printed name is "shoes". 
The take-option of the shoes is take-shoes. 
Understand "take", "get", "shoes", "shoe", "slipper", "slippers", "leather" as take-shoes. 

Perform take-shoes: 
	take the shoes; 
	instead say "You pick up the leather shoes. The soles are particularly rough, almost toothy; they might be sharkskin." 


17-Tablets is a state. 

State-desc rule for 17-Tablets: 
	say "The notion is absurd, but do you have a better idea while plummeting to your death? You yank out your umbrella and pop it open.[para]"; 
	say "[em]Whump![/em] The handle yanks you around hard. You crack your knee and shoulder against the rushing stone... but you hang on to the bumbershoot, and somehow the roaring in your ears is decreasing. You cannot tell, in the dimness, how much the umbrella slows you -- but when the bottom of the pit reaches up and smacks you, the impact is bruising, not fatal.[para]"; 
	say "You gather yourself up from a pile of stone slabs. No, stone tablets! Signs and diagrams are carved across their faces.[para]"; 
	if the sign is not taken: 
		say "Will you examine the [take-sign], or shall we [restart-option] the story from the beginning?"; 
	else: 
		say "You mull the ritual poses and signs shown on the tablets. They will certainly warrant further study... but immediate problem is to extricate yourself from this pit. That will be enough for now.[para]"; 
		say "Let us leave that climb for another telling, and [restart-option] this story from the beginning."; 
	stop. 

take-sign is an option in 17-Tablets. The printed name is "tablets". 
[The take-option of the sign is take-sign.] 
Understand "get", "take", "read", "examine", "tablet", "tablets", "pose", "sign", "signs", "diagram", "diagrams" as take-sign. 

Perform take-sign: 
	take the sign; 
	say "The tablets seem to show ritual poses. If you are understanding them correctly, they indicate different castes of a society -- priest, merchanter, explorer, speaker-to-crowds -- and each caste has its set of postures and hand signs, from low rank to high.[para]"; 
	say "You mull the diagrams, and commit a few to memory. They will certainly warrant further study... but immediate problem is to extricate yourself from this pit. That will be enough for now.[para]"; 
	say "Let us leave that climb for another telling, and [restart-option] this story from the beginning."; 
	stop. 

Perform umbrella when at 17-Tablets: 
	instead say "The umbrella has given its all for you." 

Perform rope when at 17-Tablets: 
	instead say "No doubt the rope will be helpful on the climb back up." 

Perform Ata-runes when at 17-Tablets: 
	instead say "The tablets are pictorial, not rune-inscribed." 

Perform Uabar-runes when at 17-Tablets: 
	instead say "The tablets are pictorial, not rune-inscribed." 


18-Treasure is a state. 

State-desc rule for 18-Treasure: 
	say "You touch the glass vine carefully. It is rough, but not glass-sharp, and even slightly flexible -- like a real vine, though you can see light glinting through it.[para]"; 
	say "You have plenty of time to admire the thing as you haul yourself up the sinkhole, of course. The climb is tiring, but quite easy.[para]"; 
	say "When you reach the top, and pull your head above the lip, you are briefly disappointed: this is not the surface. You are at the bottom of a much larger pit, open to the sunlight and thick with foliage, but still well below ground level.[para]"; 
	say "Then you look around, and disappointment is driven from your mind. You are surrounded by mounds of gold! Or, if not mounds, at least thick drifts. Shining gold coins lie everywhere -- half-buried in the mulch, overgrown by grass and saplings.[para]"; 
	say "Somewhere above, perhaps centuries ago, some tribe or nation or civilization must have used this crater for ritual sacrifice: not of blood, but of treasure. Year after year, coins dropped into the depths... Or is that your own cultural projection? It could have been sport, or challenge, or the equivalent of a wishing well.[para]"; 
	if the coin is not taken: 
		say "One day you will know -- or have a more informed guess, at least. In the meantime, you may take one [take-coin] as a souvenir, or [restart-option] the story from the beginning."; 
	else: 
		say "One day you will know -- or have a more informed guess, at least. In the meantime, you may [restart-option] the story from the beginning."; 
	stop. 

take-coin is an option in 18-Treasure. The printed name is "coin". 
The take-option of the coin is take-coin. 
Understand "get", "take", "gold", "golden", "coin" as take-coin. 

Perform take-coin: 
	take the coin; 
	instead say "You select a golden coin. One face shows the face of the world, seen from space; the other has the outline of a hand, surrounded by geometric runes." 

Perform coin when at 18-Treasure: 
	instead say "The coin in your pocket is just like the ones scattered all around you." 

Perform rope when at 18-Treasure: 
	instead say "The rope won't help you climb farther up." 

Perform umbrella when at 18-Treasure: 
	instead say "You consider opening the umbrella and jumping back down the sinkhole. But the thrill probably wouldn't be worth the risk." 

Perform flare when at 18-Treasure: 
	instead say "You twist the flare's cap, producing a satisfying blue-white burst of flame. It only lasts a few seconds, though." 


19-Grotto is a state. 

State-desc rule for 19-Grotto: 
	say "You continue your descent for a long while. Fortunately, the chimney ends before your rope does, and you emerge into...[para]"; 
	say "Light -- reflecting your helmet-lamp from all directions. You blink for a moment, but it is not truly blinding, only startling. You peer around. Glittering light... and words! Or pictographs, or letters. Mathematical symbols, for all you know. The crystal walls are ringed with them, washed with them, dripping with [if Ata-runes are completed or Uabar-runes are completed]obscure[else]incomprehensible[end if] runes.[para]"; 
	if Ata-runes are completed and Uabar-runes are completed: 
		say "You recognize the rune-forms of Uabar and Atalantë! This is certainly what you have been seeking -- or an aspect of it, at least.[para]"; 
		say "You trace the writing across the walls. You are not fluent enough to understand it all; you will certainly return here, in the coming years, to absorb it all"; 
		if the egg is not taken: 
			say ". But you grasp enough to follow the arguments, around and around...[para]"; 
			say "...around and down to a niche, cunningly concealed in the chamber's floor. A glittering green glass egg rests within.[para]"; 
			say "Will you take the [take-egg], or return to the [restart-option] of the story?"; 
		else: 
			say ".[para]Lacking that time, we should [restart-option] the story over from the beginning."; 
	else if Ata-runes are completed or Uabar-runes are completed: 
		say "This is certainly what you have been seeking... and you recognize the rune-forms of the language of [if Ata-runes are completed]Atalantë[else]Uabar[end if]! But that is not the only writing system represented here. Half of the symbols are unknown to you. Without further knowledge, it will take years of study to absorb the meaning of this chamber.[para]"; 
		say "Lacking that time, we should [restart-option] the story over from the beginning."; 
	else: 
		say "This is certainly what you have been seeking. But without further knowledge of the Lost Peoples and their writing systems, it will take years of study to absorb the meaning of this chamber.[para]"; 
		say "Lacking that time, we should [restart-option] the story over from the beginning."; 
	stop. 

take-egg is an inactive option in 19-Grotto. The printed name is "egg". 
The take-option of the egg is take-egg. 
Understand "get", "take", "green", "glass", "egg" as take-egg. 

Perform take-egg: 
	take the egg; 
	instead say "You pick up the glass egg and turn it in your fingers. This, no doubt, is some artifact of the Lost; you have the rest of your life to discover its purpose.[para]There is no more to be learned here. Let us [restart-option] the story anew." 

Perform Ata-runes when at 19-Grotto: 
	if the Ata-runes are completed and Uabar-runes are completed: 
		instead say "The runes of Atalantë and Uabar surround you."; 
	if the Ata-runes are completed: 
		instead say "The runes of Atalantë are traced on the walls, but there are other signs you do not recognize."; 
	now Ata-runes are completed; 
	if Uabar-runes are not completed: 
		instead say "You recognize the rune-forms of the language of Atalantë! But that is not the only writing system represented here. Half of the symbols are unknown to you."; 
	say "You recognize the rune-forms of Uabar and Atalantë! This is certainly what you have been seeking -- or an aspect of it, at least.[para]You trace the writing across the walls. You are not fluent enough to understand it all; you will certainly return here, in the coming years, to absorb it all"; 
	if the egg is not taken: 
		now take-egg is active; 
		instead say ". But you grasp enough to follow the arguments, around and around...[para]...around and down to a niche, cunningly concealed in the chamber's floor. A glittering green glass [take-egg] rests within."; 
	else: 
		instead say ".[para]Lacking that time, we should [restart-option] the story over from the beginning." 

Perform Uabar-runes when at 19-Grotto: 
	if the Uabar-runes are completed and Ata-runes are completed: 
		instead say "The runes of Uabar and Atalantë surround you."; 
	if the Uabar-runes are completed: 
		instead say "The runes of Uabar are traced on the walls, but there are other signs you do not recognize."; 
	now Uabar-runes are completed; 
	if Ata-runes are not completed: 
		instead say "You recognize the rune-forms of the language of Uabar! But that is not the only writing system represented here. Half of the symbols are unknown to you."; 
	say "You recognize the rune-forms of Atalantë and Uabar! This is certainly what you have been seeking -- or an aspect of it, at least.[para]You trace the writing across the walls. You are not fluent enough to understand it all; you will certainly return here, in the coming years, to absorb it all"; 
	if the egg is not taken: 
		now take-egg is active; 
		instead say ". But you grasp enough to follow the arguments, around and around...[para]...around and down to a niche, cunningly concealed in the chamber's floor. A glittering green glass [take-egg] rests within."; 
	else: 
		instead say ".[para]Lacking that time, we should [restart-option] the story over from the beginning." 

Perform crowbar when at 19-Grotto: 
	instead say "Smash up the walls? Never." 

Perform flare when at 19-Grotto: 
	now the flare is used; 
	instead say "You twist the flare's cap, producing a satisfying blue-white burst of flame. The reflections on the crystal walls dazzle you, until the flare fades." 


[There is no 20.] 


21-Saucer is a state. 

State-desc rule for 21-Saucer: 
	say "The flare soon winks out behind you. Only the dim glow of your helmet precedes you down the passage. The shape -- whatever it was -- does not reappear behind you. Fled, stunned, or set on fire; you don't care, as long as it stays away.[para]"; 
	say "The tunnel runs long, and you fall back into your meditative stroll. And then you are startled out of it, as your lamplight is thrown back by a polished curve of metal.[para]"; 
	say "You move forward, picking the shape out of cavernous darkness. It is wide, lenticular -- ten feet high, perhaps fifty across -- in fact, it is the archetypical flying saucer. Only it could never have flown, not down here, in a natural space barely larger than the saucer's hull.[para]"; 
	say "(But is it the saucer that landed here, or the archetype...?)[para]"; 
	say "You can see the outline of a hatch, or portal, in the broad metal underbelly. It is a thin groove, however -- barely visible. The only possible means of access is a shape etched in the center of the portal: the outline of a human hand.[para]"; 
	say "Will you [21-touch] the panel?"; 
	stop. 

21-touch is an option in 21-Saucer. The printed name is "touch". 
Understand "touch", "hand", "outline", "hatch", "portal", "panel", "open" as 21-touch. 

Perform 21-touch: 
	say "You press your hand against the outline. The metal is cave-cool -- and then electric-hot, for just a moment. You snatch your hand back, but you are unharmed.[para]"; 
	say "From somewhere within the saucer, a voice echoes, in no language you have ever heard. There is a pause; the question is repeated.[para]"; 
	if the word is not completed: 
		say "You say your name, for lack of any better idea, but it provokes no further response. Unless you have some other notion, we will have to [restart-option] the story over."; 
	else: 
		say "Will you say the [word] of entry, or shall we [restart-option] the story over?"; 
	stop. 

Perform word when at 21-Saucer: 
	now the word is completed; 
	instead go to 22-Inside. 

Perform crowbar when at 21-Saucer: 
	instead say "The crowbar doesn't even scratch the edge of the portal, much less budge it." 

Perform key when at 21-Saucer: 
	instead say "The hatch has no keyhole." 

Perform Ata-runes when at 21-Saucer: 
	instead say "Nothing is written on the saucer." 

Perform Uabar-runes when at 21-Saucer: 
	instead say "Nothing is written on the saucer." 


22-Inside is a state. 

State-desc rule for 22-Inside: 
	say "You place your hand against the outline, and pronounce the Word that you learned so long ago.[para]"; 
	say "The hatch does not open, exactly. But when you look again, it is an open space, and a curved ramp runs down from the space to the stone at your feet. You take it as an invitation.[para]"; 
	say "The interior of the saucer is a glass cocoon. It is difficult to focus on any part of the structure; some aspects seem to be revolving around you, although you cannot be sure. What is clear is the pedestal in the center. It supports a faceted matrix of black crystal, with a single polyhedral gap in its center.[para]"; 
	say "Is this the end of your story, or will you [restart-option] again?"; 
	stop. 

Perform word when at 22-Inside: 
	instead say "You repeat the Word. This time, nothing happens." 

Perform Ata-runes when at 22-Inside: 
	instead say "The visual constructs around you have some distant visual relation to the runes of Atalantë, but not enough to be readable." 

Perform Uabar-runes when at 22-Inside: 
	instead say "The visual constructs around you have some distant visual relation to the runes of Uabar, but not enough to be readable." 

Perform key when at 22-Inside: 
	instead say "This isn't a VW Microbus, and you're not going to start it by turning a key." 

Perform smoke when at 22-Inside: 
	now the smoke is used; 
	instead say "You crack the tube, and smoke gushes out. It does not linger, however; some invisible system clears the air immediately." 

Perform coin when at 22-Inside: 
	instead say "Bus fare?" 

Perform sign when at 22-Inside: 
	instead say "You make a formal gesture with your hands. Nothing around you responds." 

Perform crystal when at 22-Inside: 
	now the crystal is completed; 
	instead go to Story-End. 


23-Market is a state. 

State-desc rule for 23-Market: 
	say "You descend the curving streets to the great market of Atalantë. The smells of street-wagon coffee and hot frying fish strike you like... like... there is nothing that they are like; this is home.[para]"; 
	say "You look over a table of fireworks -- toys, though they would terrify the primitive Continentals you have just spent months among. Terrifying them, though, is not the goal. It is power that Atalantë requires, power for the great engines and the greater ones which must be built. Whether that power can come from rare ores, or rock-pitch, or other sources yet unknown -- that is what you have spent your life trying to discover.[para]"; 
	say "Perhaps the answer does not lie in the remote Continents. The fire-dowsers have begun speaking of power from the Earth; the notion of rekindling the volcanic fires that once built Atalantë from the sea floor. Dangerous, surely, but if it can be done... you have become weary of travel.[para]"; 
	if the flare is taken and the smoke is taken: 
		instead say "But these are idle thoughts. You look out over the market, and begin considering options for your remaining weeks at home.[para]Shall we [restart-option] the story from the beginning?"; 
	say "But these are idle thoughts. Will you look at"; 
	if the flare is untaken and the smoke is untaken: 
		say " the [take-flare] or the [take-smoke] tube in the fireworks tray"; 
	else if the smoke is untaken: 
		say " the [take-smoke] tube in the fireworks tray"; 
	else if the flare is untaken: 
		say " the [take-flare] in the fireworks tray"; 
	else: 
		say " the (BUG)"; 
	say "? Or, if the markets are of no more interest, you may [restart-option] the story from the beginning."; 
	stop. 

take-flare is an option in 23-Market. The printed name is "flare". 
The take-option of the flare is take-flare. 
Understand "take", "get", "flare" as take-flare. 

Perform take-flare: 
	take the flare; 
	instead say "The merchant nods. 'That will burn with a clean bright light, even underwater. Very practical.' You take it, and pass over a slip of silver." 

take-smoke is an option in 23-Market. The printed name is "smoke". 
The take-option of the smoke is take-smoke. 
Understand "take", "get", "smoke", "tube" as take-smoke. 

Perform take-smoke: 
	take the smoke; 
	instead say "'Crack that and it will create enough smoke to fill half of the Queen's Square. Not that you should [em]do[/em] it in the Square, of course!' You return his wink, and purchase the tube." 

Perform Ata-runes when at 23-Market: 
	instead say "You are too young to have learned the runes." 

Perform word when at 23-Market: 
	instead say "You carefully pronounce the alien word that you learned on a long-ago voyage. Nobody pays any attention." 

Perform flare when at 23-Market: 
	now the flare is used; 
	instead say "You twist the flare's cap, producing a satisfying blue-white burst of flame. The merchant grins at your evident pyromaniac enthusiasm." 

Perform smoke when at 23-Market: 
	now the smoke is used; 
	instead say "You crack the tube, and smoke gushes out. The merchant waves the cloud away, shrugging apologetically at irritated passers-by." 

Perform egg when at 23-Market: 
	now the egg is used; 
	instead say "You fling the construction egg down on the ground. It smashes into green splinters. However, the bustle of the crowd and the chaotic arrangement of temporary stalls is too much confusion; the construction material rattles around and falls dead." 

Perform sign when at 23-Market: 
	instead say "You make a formal gesture with your hands. A passing priest-attendant gives you a confused look." 

Perform coin when at 23-Market: 
	instead say "Spend your lucky antique gold coin? Surely not." 


24-Temple is a state. 

State-desc rule for 24-Temple: 
	say "You take the Postulant's Pose. The woman behind the door nods, without a word, and closes her panel. You stand there, gazing at the great Temple doors, unsure if they will open.[para]"; 
	say "There is a touch on your elbow. The woman is standing beside you. She gestures for you to follow, around the side of the Temple. 'The doors are [em]very[/em] noisy, you know. We usually use the back gate.'[para]"; 
	say "Will you [24-follow] her? Or shall we [restart-option] this story from the beginning?"; 
	stop. 

24-follow is an option in 24-Temple. The printed name is "follow". 
Understand "follow", "temple", "enter", "back", "gate", "in" as 24-follow. 

Perform 24-follow: 
	take Ata-runes; 
	instead go to 24x-Temple-Learn. 

Perform Ata-runes when at 24-Temple: 
	instead say "You are too young to have learned the runes." 

Perform sign when at 24-Temple: 
	instead say "You just did that." 

Perform word when at 24-Temple: 
	instead say "You carefully pronounce the alien word that you learned on a long-ago voyage. The woman looks confused." 

Perform flare when at 24-Temple: 
	instead say "Setting off fireworks in the Queen's Square would get you thrown out on your ear." 

Perform smoke when at 24-Temple: 
	instead say "Setting off fireworks in the Queen's Square would get you thrown out on your ear." 

Perform egg when at 24-Temple: 
	instead say "Setting off a construction packet in the Queen's Square would get you thrown out on your ear." 


24x-Temple-Learn is a state. 

State-desc rule for 24x-Temple-Learn: 
	say "You will pass into the Temple, and begin learning the deeper histories of Atalantë -- its origins, its languages, its secret knowledge and its runes. The study will fill the remainder of your life. It will be a satisfying life -- but you will never again leave Atalantë[apostrophe]s shores.[para]"; 
	say "Shall we [restart-option] this story from the beginning?"; 
	stop. 

Perform Ata-runes when at 24x-Temple-Learn: 
	instead say "You hope to spend the rest of your life learning them." 

Perform a takeable when at 24x-Temple-Learn: 
	instead say "That is in the past. Shall we [restart-option] again?" 



25-Square is a state. 

State-desc rule for 25-Square: 
	say "You climb the low wall and sit looking into the square. The citizens of Uabar talk, as they often talk, of metal: of steel and silver and nickel, of quicksilver and saltlith and skylith and the rarer alchemical metals. All the substances which are so dear in the desert, which have forced Uabar to grow in spires of stone, with only traces of precious metal within.[para]"; 
	say "A hortator stands and begins extolling the virtues of Starfall. You have heard the word before, but now you begin to understand its import: a vision of falling fire, raw ore from the sky, a bounty of metal for Uabar to mine from the sands. It is within reach, if enough citizens turn their hands to the project...[para]"; 
	say "You are entranced, and shout for the hortator, even though your voice is not yet legally heard. In a few months it will be; and you will take study with the scholars of the paths of the heavens, working to solve the remaining intricacies of Starfall. It will not be easy, but it will begin in your lifetime.[para]"; 
	say "That is another story, however. Will you [restart-option] yours over from the beginning?"; 
	stop. 

Perform Uabar-runes when at 25-Square: 
	instead say "You are too young to have learned the runes." 

Perform a takeable when at 25-Square: 
	instead say "Perhaps you will need such a thing someday, but it is not foremost in your mind." 


26-Towers is a state. 
26-Towers can be shoey or nonshoey. 

State-desc rule for 26-Towers: 
	if 26-Towers is shoey: 
		say "Wait -- here are your climbing slippers! You had them in your purse all the time; how silly. You strap them on and leap to the tower wall, digging your toes into the seams of the stone.[para]"; 
	else: 
		say "You strap on your climbing slippers and leap to the tower wall, digging your toes into the seams of the stone.[para]"; 
	say "The day passes in a clamor of laughter and dizzy ascent. You swarm rooftops with your friends, claw your way over balustrades, sit in company and watch the sun sink over the towers of Uabar.[para]"; 
	say "What sticks in your mind, however, is a window-glimpse of a chalkboard of runes. You cannot climb towers forever, and surely there are secrets deeper than the best rooftop spots to hide-and-scurry.[para]"; 
	say "Will you return to speak to the Keepers of the [26-runes]? Or shall we [restart-option] this story from the beginning?"; 
	stop. 

26-runes is an option in 26-Towers. The printed name is "Runes". 
Understand "rune", "runes", "keeper", "keepers", "speak", "talk", "learn" as 26-runes. 

Perform 26-runes: 
	take the Uabar-runes; 
	instead go to 26x-Towers-Learn. 

Perform Uabar-runes when at 26-Towers: 
	instead say "You have not yet learned the runes." 

Perform shoes when at 26-Towers: 
	instead say "You've climbed enough for a while." 

Perform a takeable when at 26-Towers: 
	instead say "Perhaps you will need such a thing someday, but it is not foremost in your mind." 


26x-Towers-Learn is a state. 

State-desc rule for 26x-Towers-Learn: 
	say "On your birthday, you will return and knock at the tower door. The Keepers will hear your plea to take study in the ancient language of the People. If you are steadfast and intent on your course, you will finish your days among their number -- reading the runes, while keeping an eye out for curious faces at the window.[para]"; 
	say "Shall we [restart-option] this story from the beginning?"; 
	stop. 

Perform Uabar-runes when at 26x-Towers-Learn: 
	instead say "You hope to spend the rest of your life learning them." 

Perform a takeable when at 26x-Towers-Learn: 
	instead say "That is in the past. Shall we [restart-option] again?" 


Story-End is a state. 

State-desc rule for Story-End: 
	say "You slide the black crystal into the matrix. The pedestal retracts into the floor.[para]"; 
	say "You notice then -- although you're not sure how long it's been -- that the saucer's hatch is closed. The cocoon surrounds you entirely.[para]"; 
	say "It is not my intent [em](said Marco Polo to Kublai Khan)[/em] to complete this story. No, do not turn such a glance upon me! I have given you the necessities; you can continue the tale on your own. Whether the saucer is a craft of travel between worlds, or a library of learning, or some other unfathomable instrument -- I cannot presume to guess. I did not undertake this journey, these discoveries! You did, o Khan. Always, it was you.[para]"; 
	say "The lost cities, Uabar, Atalantë -- some would number Xanadu among them, but do we not sit here, in your stately garden? This is your cocoon, Great Khan, your nest, your dome. I leave you now, to make of it what you will."; 
	now all takeables are completed; 
	end the story finally saying "The story is over"; 
	stop. 

[The end.] 
