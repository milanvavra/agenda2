!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/18/2016 13:21'!
databaseName
	^FileDirectory default fullNameFor: 'items.db'
	"REMINDER for ':memory:' to work cannot close connection after each query"
! !
