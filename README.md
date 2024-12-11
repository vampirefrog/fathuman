fathuman
========

![Project status](https://img.shields.io/badge/Project%20status-Beta-blue.svg)

About
-----

A tool for handling Human68k (Sharp X68000) FAT12/FAT16 disk images.

For now, it can be used for listing and extracting files from XDF and DIM images. These are the most common, and other formats can be supported if requested. I can also add support for creating and altering images, if anyone requests it.

It uses the [elm-chan FatFS library](http://elm-chan.org/fsw/ff/00index_e.html) for reading the FAT filesystem, with small modifications.

Command-line usage
------------------

```
Usage: ./fathuman <action> <file> [<arguments>]
Actions:
        list     - List all the files (recursively)
        copyout - extract one file, specify as third argument
```

Using in Midnight Commander (mc)
--------------------------------

Add the executable (or create a link) in /usr/lib/mc/extfs.d/.
Add the following line to /etc/mc/mc.ext or ~/.config/mc/mc.ext
```
  regex/\.(xdf|dim|XDF|DIM)$
  	Open=%cd %p/fathuman://
```

Restart mc and you should now be able to just tap enter on dim and xdf files to view their content.


Licensing
---------

Please see the LICENSE file for more information.

Contributing
------------

If you would like to improve or contribute to this project, I highly encourage you to submit pull requests instead of maintaining your own fork. This way, it is less confusing for users. I will do my best to include your patches.
