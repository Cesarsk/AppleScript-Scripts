tell application "Finder" to set sel to selection

tell application "Terminal"
	set fol to POSIX path of ((item 1 of sel) as text)
	if (count of windows) is not 0 then
		do script "cd " & quoted form of fol & ";clear" in window 1
	else
		do script "cd " & quoted form of fol & ";clear"
	end if
	activate
end tell
