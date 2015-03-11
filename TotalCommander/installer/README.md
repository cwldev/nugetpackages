# Total Commander installer
## Instructions for creating a silent installer for Total Commander

As of version 8.51 it seems Total Commander has changed the installer, so that the self extracting ZIP archive
does not first extract and then invoke install.exe, but rather it seems the installer is part of the self extracting
ZIP itself.                                                                      

### 1. Download and extract
First you need to download the version of Total Commander that you want to create a silent installer for. 
Use the combined 32+64 bit version.

Then extract the files of that installer into some working directory. For this purpose, use Total Commander itself
and press `Ctrl + Page Down` when the installer is selected.

### 2. Edit `INSTALL.INF` and `INSTALL64.INF`
After the files have been extracted, edit `INSTALL.INF` and `INSTALL64.INF` and replace `auto=0` with `auto=1`.
This is documented in the [Total Commander Wiki](http://www.ghisler.ch/wiki/index.php/How_to_make_installation_fully_automatic%3F).

### 3. Replace `SFXHEAD.SFX`
Some of this information can be found in the [Total Commander forum](http://www.ghisler.ch/board/viewtopic.php?p=117280)
but the info and files linked are a bit outdated. This directory contains three files that will allow you to package 
a silent installer for recent versions of Total Commander.

Your Total Commander installation directory contains a file called `SFXHEAD.SFX`, that contains the .exe head that
will be added to your ZIP file when you create a self extracting ZIP archive from within Total Commander. We are
temporarily going to replace it.

First backup your original `SFXHEAD.SFX`. (In case you loose it just reinstall Total Commander.) Then replace the
`SFXHEAD.SFX` in your Total Commander with [the one in this directory](SFXHEAD.SFX).

### 4. Add `INSTALL.EXE` and `INSTALL64.EXE`
As mentioned earlier `INSTALL.EXE` and `INSTALL64.EXE` have been removed from the Total Commander installation archive
and integrated into the .exe itself. This directory contains those files taken from the 8.01 version.
[Download](INSTALL.EXE) [them](INSTALL64.EXE) and place in the working directory where you extracted the installer
in step 1.

### 5. Create the new installer
Now ZIP the contents of your working directory using Total Commander, and tick the checkbox to create a self extracting
archive. Voila! You now have your silent installer. Considering using the same filename as the original.

### 6. Restore `SFXHEAD.SFX`
Before you forget you should restore the original `SFXHEAD.SFX` in your Total Commander directory, so that you can
create self extracting ZIP archives that will not act as Total Commander installers.