tell application "Finder"
	set theItems to selection
	repeat with itemRef in theItems
		set myfolder to (get folder of itemRef) as string
		set myfolder to POSIX path of myfolder
		set myfile to "'" & myfolder & (get name of itemRef) & "'"
	end repeat
end tell

tell application "Terminal"
	activate
	do script

	set size of window 1 to {800, 600}

	set cmd to "openssl md5 " & myfile
	set cmd2 to "openssl sha " & myfile

	try
		do script with command " " in window 1
		do script with command cmd in window 1
		do script with command " " in window 1
		do script with command cmd2 in window 1
	end try
end tell
