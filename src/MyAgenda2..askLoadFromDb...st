!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/27/2016 04:29'!
askLoadFromDb
	self askDbConnection loadOrSaveDb: (FileDirectory default fullNameFor: 'items.db') with: false.
	self askUpdateWindow
! !
