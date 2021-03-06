Updated for 9.26 

dcraw.c -- Dave Coffin's raw photo decoder
  Copyright 1997-2015 by Dave Coffin, dcoffin a cybercom o net

	With updates by Waitman Gobble
	Copyright 2015 <ns@waitman.net>
	1) add DCRAW_OFFSET env variable to adjust timezone to camera
	when using -z switch
	2) add ImageMagick magicwand function to auto-rotate extracted
	thumbnails (-R -e)
	3) add DCRAW_RTC env variable to flip degrees of auto-rotate.
	it seems that some cameras are reversed.
	4) slightly modified three sections to avoid clang compiler warnings

   This is a command-line ANSI C program to convert raw photos from
   any digital camera on any computer running any operating system.

   No license is required to download and use dcraw.c.  However,
   to lawfully redistribute dcraw, you must either (a) offer, at
   no extra charge, full source code* for all executable files
   containing RESTRICTED functions, (b) distribute this code under
   the GPL Version 2 or later, (c) remove all RESTRICTED functions,
   re-implement them, or copy them from an earlier, unrestricted
   Revision of dcraw.c, or (d) purchase a license from the author.

   The functions that process Foveon images have been RESTRICTED
   since Revision 1.237.  All other code remains free for all uses.

   *If you have not modified dcraw.c in any way, a link to my
   homepage qualifies as "full source code".

   $Revision: 1.476 $
   $Date: 2015/05/25 02:29:14 $

Example

# setenv DCRAW_RTC 1
# dcraw-m -R -e IMG_4700.CR2
# display IMG_4700.thumb.jpg 


References

WWW: http://www.cybercom.net/~dcoffin/dcraw/
WWW: https://dx.mehomi.com/autorot.html
WWW: https://dx.mehomi.com/photohack.html

Note

Debian makefile (bmake) is Makefile.debian (uses pkg-config)

