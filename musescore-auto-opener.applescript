(*
Copyright (c) 2025 Ethan Griffith
Licensed under the MIT License. See LICENSE file for details.
*)

-- open a .mcsz file in a specific version of musescore depending on its name

-- if the user opens the script itself
on run
	-- make fun of them just a little
	display alert "just open a .mcsz file, silly. it works automatically" buttons {"whoops"} default button "whoops"
end run
-- if the user opens one/several .mcsz file(s)
on open theseFiles
	-- loop through each score passed to the script
	repeat with aFile in theseFiles
		-- get the filepath of the score
		set filePath to POSIX path of aFile
		-- extract the filename from the filepath
		set fileName to do shell script "basename " & quoted form of filePath
		-- check if the filename contains "-ms3" or "MS3-"
		if fileName contains "-ms3" then
			-- open the file in musescore 3 if the filename contains "-ms3"
			do shell script "open -a 'MuseScore 3' " & quoted form of filePath
		else if fileName contains "MS3-" then
			-- open the file in musescore 3 if the filename contains "MS3-"
			do shell script "open -a 'MuseScore 3' " & quoted form of filePath
		else
			-- default to musescore 4 if neither are in the filename
			do shell script "open -a 'MuseScore 4' " & quoted form of filePath
		end if
	end repeat
end open
