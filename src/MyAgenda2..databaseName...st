!MyAgenda2 methodsFor: 'sql' stamp: 'mva 3/26/2016 05:21'!
databaseName
	^':memory:'
	"
	^FileDirectory default fullNameFor: 'items.db'
	"
	"REMINDER for ':memory:' to work cannot close connection after each query"
! !
