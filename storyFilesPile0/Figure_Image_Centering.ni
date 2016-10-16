"FigureImageAlignA" by "Community"

The story genre is "Other". The release number is 1.  [genre: http://www.intfiction.org/forum/viewtopic.php?f=7&t=6165 ]
The story headline is "Glulx technical demonstration".

[ Inform 6M62 has Version 4 of this built in?]
Include Glulx Image Centering by Emily Short.

[
======================================================================================
==  Images / Photographs / Drawings / Figures / Illustrations
======================================================================================
       Install these in the Inform materials folder name "Figures".
       The images are somewhat large so that cropping behavior with the 'side window' can be seen. A mix of gif, png and jpg was used to just to have some technical variety. 

       gif format is formally disallowed in the Blorb distribution, reference: http://www.intfiction.org/forum/viewtopic.php?f=7&t=20659
]

Figure field-illustration is the file "field.png".
Figure duck-illustration is the file "duck.png".
Figure gopher-snapshot is the file "gopher.jpg".


Showing the picture is an action out of world. Understand "picture" as showing the picture.

Carry out showing the picture:
	say "Here is a duck. 'display' was issued without any conditions.";
	display figure duck-illustration.

Showing the pic2 is an action out of world. Understand "pic2" as showing the pic2.

Carry out showing the pic2:
	say "Here is a duck. 'display' was issued with 'centered'.";
	display figure duck-illustration centered.

Place is a room. "Commands: picture, pic2.  Technical Warning: To do this, 'Glulx Image Centering' uses up the first of the two available custom user text styles, defining it to be center-justified. There can be many uses for these two user text styles and they are a scarce resource.".
