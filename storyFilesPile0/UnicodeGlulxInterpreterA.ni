"UnicodeGlulxInterpreterA" by "Community"

The story genre is "Other". The release number is 4.  [genre: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6165 ]
The story headline is "Glulx technical demonstration".

[
Thanks to Pogoman GO! for code sample
https://github.com/sussman/pogoman-go/commit/ddcb5ccfa232f25da58f06f28da2300bfd56dd4f
]
To decide whether unicodage is enabled:
 	(-  glk_gestalt(gestalt_Unicode, 0) -)

Place is a room. "Welcome to the Place. To the west there is a testing room."

The Wild West is west of the Place. "This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D. West is another room that is even more wild.".

The Wilder West is west of the Wild West.  "[italic type]This is Italic type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D. [bold type]This is bold type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D. [fixed letter spacing]This is fixed letter spacing type. This is Unicode content. A नमस्ते A, B أهلاً وسهلاً B, C 你好 C, D 봉주르 D. Another west?"

The West End is west of Wilder West.  "Je ne suis pour toi qu'un renard semblable à cent mille renards. Mais, si tu m'apprivoises, nous aurons besoin l'un de l'autre. Tu seras pour moi unique au monde. ... Mais si tu m'apprivoises, ma vie sera comme ensoleillée.[paragraph break]Conditional test, do you see Unicode frowns and a happy Arabic greeting? [unicode 9785][unicode 9785][unicode 9785]. [if unicodage is enabled][unicode 9785][unicode 9785][unicode 9785] - enough of that, positive: أهلاً وسهلاً[otherwise]No, your Interpreter told me no Unicode. Logic test of Unicode said NOT HERE.[end if]".
