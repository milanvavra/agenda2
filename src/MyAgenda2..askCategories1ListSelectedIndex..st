!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/19/2016 00:15'!
askCategories1ListSelectedIndex: tmpIndex
	| tmpCategoryNumber query args cols rows |

	(thisContext sender sender sender methodSelector =  #keyStroke:
	or: [tmpIndex = 0]) ifFalse: [

	self askAndCategoriesSelected ifTrue: [
		tmpCategoryNumber := (self askCategories1List at: tmpIndex) at: 1.

		query := 'INSERT INTO [AndCategory]([Category*Number]) VALUES(?)'.
		args := {tmpCategoryNumber}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	].
	self askNotCategoriesSelected ifTrue: [
		tmpCategoryNumber := (self askCategories1List at: tmpIndex) at: 1.

		query := 'INSERT INTO [NotCategory]([Category*Number]) VALUES(?)'.
		args := {tmpCategoryNumber}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	].

	varItems2ListSelectedIndex := 0.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow

	]
! !
