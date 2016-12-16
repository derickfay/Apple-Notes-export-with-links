tell application "Notes"
	activate
	tell application "System Events"
		keystroke "a" using command down
		keystroke "c" using command down
	end tell
	tell application "TextEdit"
		make new document
		activate
		tell application "System Events" to keystroke "v" using command down
	end tell
end tell
