
NimbRo-OP software & CAD files release
======================================

Software
--------

This repository contains patches against the ROBOTIS software for DARwIn OP
to make it work with [our](http://ais.uni-bonn.de) [NimbRo-OP](http://nimbro.net/OP)
humanoid TeenSize robot.

The patches apply against version 1.5.0, which is available at
[sourceforge](http://sourceforge.net/projects/darwinop/files/Software/Main%20Controller/Source%20Code/DARwIn-OP_ROBOTIS_v1.5.0.zip/download)
and the sub controller code version 0x13, available
[here](http://sourceforge.net/projects/darwinop/files/Software/Sub%20Controller/CM730_FIRMWARE_VER0x13_20110922.zip/download).

In order to get you started we include a shell script (fetch_and_patch.sh) to download
the correct files and patch the sources. Simply call it by

	./fetch_and_patch.sh

and it will set everything up for you.

CAD files
---------

CAD drawings of the robot are available in the Hardware folder.


Documentation
-------------

Documetation & Manuals will be available soon. 


Authors & License
-----------------

The patches and CAD robot parts were developed at the [Autonomous Intelligent Systems Group](http://ais.uni-bonn.de),
[Rheinische Friedrich-Wilhelms-Universität Bonn](http://www.uni-bonn.de). The software contents of this repository are released
under the BSD-3 license (see LICENSE file for details).
The CAD drawings of this repository are released under the Attribution-NonCommercial-ShareAlike 3.0 (CC BY-NC-SA 3.0) license 
(see "HARDWARE LICENSE CreativeCommonsLicense CC BY-NC-SA 3.0.txt" for details).

Links
-----

For more information, take a look at our webpages:

* NimbRo-OP: http://nimbro.net/OP
* Autonomous Intelligent Systems: http://ais.uni-bonn.de
* RobotSource community (forum): http://www.robotsource.org/xe/Circle_NimbRo_OP
