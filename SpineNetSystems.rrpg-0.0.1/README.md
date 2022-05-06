# RPG for Visual Studio Code

## What is this?
Syntax highlighting for IBM RPG, RPGLE and ASNA Visual RPG 

This is only an editor. The extension will in no way connect to an external AS400 / iSeries computer

## What is it useful for?
Quick viewing and editing of RPG source code without being limited to a 5250 editor. 
features incudes:
+ Support for fixed-format RPG 4
+ Support for free-format syntax both with full free and imbedded
+ Support for ASNA Visual RPG
+ Includes IBM format lines to help position structured code
+ IntelliSense for structured and free-format keywords
+ fix-format RPG4 code begins on either column 6 (IBM standard) or colomn 1. You will not need to make any setting changes this is an automatic feature dependent on your coding style.
* Block matching for both structured and free-format 

## File Types
These are the supported file extensions for RPG 4 and 3 

| Extension(s)        | Description        |
| --------------------| ------------------ |
| .rpg, .rpgle        | RPG4 and SQLRPGL |
| .rpg3               | RPG/400  |
| .vr                 | ASNA Visual RPG |

## Tools for fixed format RPG
SEU format bar

Called by typing in the source code _(spec)format_. Examples and demos are shown below.

|  |Spec| Command | Note |
|--|--|---------|-------------|
|RPG 4 /3 | F | **f**format| 
|RPG 4 | D | **d**format|
|RPG 4 /3 | I | **i**format| Description only for external files |
|RPG 4 /3 | C | **c**format| 
|RPG 4 /3 | O | **o**format| No Description just SEU bar
|RPG 4 | P | **p**format|
|RPG 3 | E | **e**format| No Description just SEU bar

### F-spec
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/FSpecFormatLine.gif)
### I-spec
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/ISpecVerbos.jpg)
### D-spec
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/DFormatLine.gif)
### D-spec with explanation
![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/DFormatLine2.gif)
### C-spec
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/CSpecFormatLine.gif)
### Indicator delineation
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/HiLoEq_higlight.png)
### Block matching
 Removed because: see todo section.
## TODO
+ Create an independint block macher. In VSC v. 1.67 a new block colorizor was implemented, this ovrided the colors for the all control blocks in the extension.
+ Add support for RPG 3 specs, current specs and their status are
    * **H** spec: completed
    * **F** spec: incomplete documentation needed
    * **E** spec: incomplete documentation needed
    * **I** spec: mostly complete but citation needed
    * **C** spec: mostly complete
    * **O** spec: incomplete documentation needed
    
    * **T** spec: Not currently supported
    * **U** spec: Only format line
    * **L** spec: Only format line
    
+ Test Color highlighting with different color themes current tests where done only with default dark and light themes
+ Support for ASNA code is not complete. You can still make classes subroutines and procedures but any special operations are not included. I will need to see more examples.

# What does it look like?
### Fixed Format Syntax
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/StructRPG.png)

### RPG/400
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/RPG3.png)

### Free Tags
 ![freeTags.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/freeTags.png)

### Fully Free
 ![fullFree](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/FreeFormat.png)
