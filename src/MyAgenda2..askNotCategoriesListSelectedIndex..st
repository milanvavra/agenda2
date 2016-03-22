!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/19/2016 00:15'!
askNotCategoriesListSelectedIndex: tmpIndex
	| tmpCategoryNumber query args cols rows |

	(thisContext sender sender sender methodSelector =  #keyStroke:
	or: [tmpIndex = 0]) ifFalse: [

	tmpCategoryNumber := (self askNotCategoriesList at: tmpIndex) at: 1.

	self askAndCategoriesSelected ifTrue: [
		query := 'INSERT INTO [AndCategory]([Category*Number]) VALUES(?)'.
		args := {tmpCategoryNumber}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	].

	query := 'DELETE FROM [NotCategory] WHERE [Category*Number] = ?'.
	args := {tmpCategoryNumber}.
	cols := OrderedCollection new. rows := OrderedCollection new.
	self executeQuery: query args: args cols: cols rows: rows.

	varItems2ListSelectedIndex := 0.
	self
		changed: #askItems2ListHasSelectedIndex;
		changed: #askItems2ListSelectedIndex.

	self askUpdateWindow

	]
! !
