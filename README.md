cd-to-iTerm2
============

Applescript to open an iTerm2 terminal from the current directory in Finder

iTerm2 (http://www.iterm2.com/) is the best terminal app that OSX has and is loaded with great features including awesome search, built-in autocomplete, mouseless copy, and the very visually cool Instant Replay.

In addition to original now script opens path always in new iTerm 2 tab

```
-- Stefan van den Oord, 2010-12-29-- The "cd to" command for iTerm2tell application "Finder"	set _cwd to POSIX path of ((folder of (front window)) as alias)end telltell application "iTerm 2"	activate		try		set _term to current terminal	on error		set _term to (make new terminal)	end try		tell _term		launch session "xterm"		set _session to current session	end tell	tell _session		-- write text "pushd \"" & _cwd & "\""		write text "pushd '" & _cwd & "'"			end tellend tell
```