!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/18/2016 21:36'!
askOpenUrl: tmpUrl
	| tmp1001 |

	tmp1001 := (Smalltalk vm getSystemAttribute: 1001).

	tmp1001 = 'Mac OS'
	ifTrue: [
		"NBMacShell open: tmpItem askItemUrl"
		Smalltalk system: 'open ', tmpUrl.
	].

	tmp1001 = 'unix'
	ifTrue: [ | tmpCommand |
		tmpCommand := 'firefox ', tmpUrl, ' '.
		MyAgenda nbSystem: tmpCommand.
	].


"	tmp1001 = 'Win32'
	ifTrue: [
		NBWin32Shell shellBrowse: tmpUrl.
	].
"
! !
