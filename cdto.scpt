-- Stefan van den Oord, 2010-12-29
-- The "cd to" command for iTerm2

tell application "Finder"
	set _cwd to POSIX path of ((folder of (front window)) as alias)
end tell

tell application "iTerm 2"
	activate
	
	try
		set _term to current terminal
	on error
		set _term to (make new terminal)
	end try
	
	tell _term
		launch session "xterm"
		set _session to current session
	end tell
	tell _session
		-- write text "pushd \"" & _cwd & "\""
		write text "pushd '" & _cwd & "'"
		
	end tell
end tell
