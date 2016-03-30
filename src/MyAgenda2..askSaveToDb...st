!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/27/2016 04:11'!
askSaveToDb
	self askDbConnection loadOrSaveDb: (FileDirectory default fullNameFor: 'items.db') with: true.

! !
