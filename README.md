humanfloppy
===========

About
-----

A tool for handling Human68k (Sharp X68000) floppy images.

It can be used for listing and extracting files from XDF and DIM images. These are the most common, and other formats can be supported if requested.

It uses the [elm-chan FatFS library](http://elm-chan.org/fsw/ff/00index_e.html) for reading the FAT filesystem, with small modifications.

Using in Midnight Commander (mc)
--------------------------------

Add the executable (or create a link) in /usr/lib/mc/extfs.d/humanfloppy.
Add the following line to /etc/mc/mc.ext or ~/.config/mc/mc.ext
 regex/\.(xdf|dim|XDF|DIM)$
 	Open=%cd %p/xdf://

Restart mc and you should now be able to just tap enter on dim and xdf files to view their content.


Licensing
---------

Please see the LICENSE file for more information.

Contributing
------------

If you would like to improve or contribute to this project, I highly encourage you to submit pull requests instead of maintaining your own fork. This way, it is less confusing for users. I will do my best to include your patches.
