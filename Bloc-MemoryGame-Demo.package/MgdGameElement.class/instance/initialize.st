accessing
initialize
	super initialize .
	self layout: BlGridLayout horizontal .
	self layout: (BlGridLayout horizontal cellSpacing: 20).
	self
		constraintsDo: [ :aLayoutConstraints|
			aLayoutConstraints horizontal fitContent .
			aLayoutConstraints vertical fitContent  ]