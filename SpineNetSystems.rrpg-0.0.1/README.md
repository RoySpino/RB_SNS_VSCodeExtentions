# RPG for Visual Studio Code

## What is this?
Syntax highlighting for for IBM RPG, RPGLE and ASNA Visual RPG 

This is only an editer. The extention will in no way connect to an external AS400 / iSeries computer

## What is it useful for?
Quick viewing and editing of RPG source code without being limited to a 5250 editer. 
features incudes:
+ Suport for structured RPG 4
+ Suport for free-format syntax both with full free and inbeded
+ Suport for ASNA Visual RPG
+ Includes IBM format lines to help position structured code
+ Intelisence for structured and free-format keywords
* Block matching for both structured and free-format 

## File Types (case insensitive)
These are the suported file extensions for RPG 4 and 3

| Extension(s)        | Description        |
| --------------------| ------------------ |
| .rpg, .rpgle        | RPG4 and SQLRPGL |
| .rpg3               | RPG/400  |

## tools for fixed format RPG
SEU format bar
### F-spec
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/FSpecFormatLine.gif)
### D-spec
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/DFormatLine.gif)
### D-spec with explanation
![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/DFormatLine2.gif)
### C-spec
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/CSpecFormatLine.gif)


## TODO
+ add suport for RPG 3 specs, current specs and their status are
    * **H** spec: compleated
    * **F** spec: incompleate documentation needed
    * **I** spec: Not currently suported
    * **C** spec: mostly compleate but citation needed
    * **O** spec: incompleate documentation needed

    * **E** spec: Not currently suported
    * **T** spec: Not currently suported
    * **U** spec: Not currently suported
    * **L** spec: Not currently suported
+ Test Color hilighting with diffrent color theams current tests where done only with default dark and light theams
+ add suport for columns 1-6. currently these columns are ignored for RPG4. 
specifications for fixed format  code but are requiered for RPG3

# What does it look like?
### structured syntax
 ![struc.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/StructRPG.png)

### free tags
 ![freeTags.rpg](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/freeTags.png)

### fully free
 ![fullFree](https://raw.githubusercontent.com/RoySpino/RB_SNS_VSCodeExtentions/main/Images/FreeFormat.png)