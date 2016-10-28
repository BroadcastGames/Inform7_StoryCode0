"UnicodeGlulxInterpreterA" by "Community"

The story genre is "Other". The release number is 5.  [genre: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6165 ]
The story headline is "Glulx technical demonstration".

[ 
Right now, this test is focused on 'inline unicode'. Where an author can free-form use language outside the latin character sets. Chinese, Arabic, etc.  The conclusion is that in routine text output, 'say' statements, this seems to work on many interpreters. However, object names, room names, etc - likley will not.
]

[
Thanks to Pogoman GO! for code sample
https://github.com/sussman/pogoman-go/commit/ddcb5ccfa232f25da58f06f28da2300bfd56dd4f
]
To decide whether unicodage is enabled:
 	(-  glk_gestalt(gestalt_Unicode, 0) -)

Place is a room. "Welcome to the Place. To the west there is a testing room."

The Wild West is west of the Place. "This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. West is another room that is even more wild.".

The Wilder West is west of the Wild West.  "[italic type]This is Italic type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. [bold type]This is bold type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. [fixed letter spacing]This is fixed letter spacing type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D, E どうもありがとうミスターロボット E. Another west?"

The West囍ern End is west of Wilder West.  "Je ne suis pour toi qu'un renard semblable à cent mille renards. Mais, si tu m'apprivoises, nous aurons besoin l'un de l'autre. Tu seras pour moi unique au monde. ... Mais si tu m'apprivoises, ma vie sera comme ensoleillée.[paragraph break]Conditional test, do you see Unicode frowns and a happy Arabic greeting? [unicode 9785][unicode 9785][unicode 9785]. [if unicodage is enabled][unicode 9785][unicode 9785][unicode 9785] - enough of that, positive: أهلاً وسهلاً --- IMPORTANT NOTE: The room name should be 'West囍ern End' with Han 'double happiness' U+56cd symbol between 'West' and 'ern'. [otherwise]No, your Interpreter told me no Unicode. Logic test of Unicode said NOT HERE.[end if] More appears to be to the west.".

The A西部B is west of the West囍ern End.  "This is The Westest, named 'A西部B', there are no spaces between the 'A' and 'B', only two Chinese Unicode characters. Even more appears to be to the west.".

The CD is west of the AB. "This is the CD room, west of the AB. Testing on Git interpreter finds you don't end up here going west of the previous room.".

The EF is west of the A B. "This is the EF room, west of the 'A B', space between 'A' and 'B'. If you ended up here, you skipped room CD and the conclusion on Inform 7 build 6M62 is that roon names strip Unicode and compress the high-value characters into a single space.  Normal text output, like what you are c̸̩̞̱̙̬̯ͤ̈̊ͪ̈ͅū̆̎͒̿͌r͆͐r̲̼͇̻̦̩͓̊ͥ͛ͥ̎̊́͡ě̺̻̤͎̩ͮ̂̓n̙̪͚̹̂ͤ̓͂̏̎ͯ͟t̙̃̚͜l̳͙̼y̶͉͉̰̜͖̠͙͐̂̽̉̈ ͇ͯͮr̸͎e̪̮̣͉ͯͥ͛͗͑̒̀a̸̦̞̎ͦ̃̓̇͒̋d̖͎̩̣̺̣͓i̸̩ͧ͋ͮ͐͆n͍̆ͥ̊͞g̳͎͝ ̡͋̉̑ȓ̵͔͕̩͇̣̹̒̒ͪ̂̀i͕̜̼̰̱̼̜g͈̼̺̬͖̣̍͂̉ͧh̠̰̒̋͡ͅt͇̯͍ ͖̯̹̹̅͒̒́ͬͪ̌n̴͚͛ͮ̒̅o͑̒wͭ͗̾ͤ͜  (Zalgo text of 'currently reading right now').".

[Low-level observation #1: The generated Glulx code for the room names seems to always use put_char without unicode for room names.]
