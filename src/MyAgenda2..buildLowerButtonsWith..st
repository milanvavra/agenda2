!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/18/2016 20:45'!
buildLowerButtonsWith: builder
	| panelSpec b |
	panelSpec := builder pluggablePanelSpec new
		layout: #horizontal;
		spacing: -1;
		children: OrderedCollection new;
		yourself.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'New';
			horizontalResizing: #shrinkWrap;
			help: 'Erase data in memory' translated;
			state: nil;
			action: #askNew.

	panelSpec children add: b.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'Save';
			horizontalResizing: #shrinkWrap;
			help: 'Save data to text file named with "File"' translated;
			state: nil;
			action: #askSave.

	panelSpec children add: b.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'Load';
			horizontalResizing: #shrinkWrap;
			help: 'Erase data in memory and Load data from text file named with "File"' translated;
			state: nil;
			action: #askLoad.

	panelSpec children add: b.

	b := builder pluggableButtonSpec new.
	b
			model: self;
			label: 'Open';
			horizontalResizing: #shrinkWrap;
			help: 'Open the URL of the selected Item in "Items Selected" in a web browser' translated;
			state: nil;
			action: #askOpenItem.

	panelSpec children add: b.


	^panelSpec
! !
