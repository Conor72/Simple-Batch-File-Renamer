//REMOVE THESE COMMENTS OTHERWISE SCRIPT WILL NOT WORK

//This simple script automatically renames a file and puts the first 4 characters to the end of the new name
//EXAMPLE: 1234_UNWANTEDNAME.txt renames to => NEWNAME1_1234.csv
//Store the files in a folder and then paste the directory at the top of the code
//Then double-click this file to run the script

cd YOUR-DIRECTORY-HERE
setlocal enabledelayedexpansion

for %%a in (*UNWANTEDNAME*) do (            //Rename file that contains 'UNWANTEDNAME' 
  set oldName=%%a
  Set newName=!oldName:~0,4!                //Grab the first 4 characters
  Ren "!oldName!" "NEWNAME1_!newName!" )    //Add in the NEWNAME1_ followed by the first 4 characters now attached to the end


for %%a in (*UNWANTEDNAME2*) do (
  set oldName=%%a
  Set newName=!oldName:~0,4!
  Ren "!oldName!" "NEWNAME2_!newName!" )


for %%a in (*UNWANTEDNAME*) do (
  set oldName=%%a
  Set newName=!oldName:~0,4!
  Ren "!oldName!" "NEWNAME3_!newName!" )

ren *.* *.csv    //RENAME ALL FILES TO BECOME CSV files


