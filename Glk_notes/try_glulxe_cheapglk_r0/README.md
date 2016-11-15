http://www.intfiction.org/forum/viewtopic.php?f=38&t=19322

The intended (simplistic) setup is that the "glulxe" and "cheapglk" directories are children of the same parent directory. The ".." in the Makefile means "parent directory", so Glulxe will look for a sibling directory called "cheapglk" and find its files there.

Do "make" in the cheapglk directory, then "make" in the glulxe directory. If this succeeds without errors, then you have built a working interpreter. Type "./glulxe" to run it.
